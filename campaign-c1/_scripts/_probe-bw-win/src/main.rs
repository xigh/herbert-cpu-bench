//! probe-bw — memory read bandwidth of an x86-64 machine, the measured loop
//! emitted at run time by iced-x86 (no intrinsics, no C, no asm!: what runs is
//! exactly what is emitted, never rewritten by a compiler).
//!
//! Kernel `fn(ptr, bytes)`: sequential loads covering 512 bytes per step, into
//! independent registers (no dependency chain), `bytes` a multiple of 512:
//! 8 × `vmovdqa64` zmm with AVX-512F, otherwise 16 × `vmovdqa` ymm (AVX2).
//! Each thread is pinned to one core, cpus 0..T-1 in order (on the SMT
//! machines measured, the siblings are N..2N-1, `lscpu -e`; on the omnibook
//! 0..3 are the P cores, 4..7 the LP-E cores), and
//! reads its own contiguous slice of one buffer much larger than the L3.
//! Threads start together (barrier); a pass lasts from the first start to the
//! last end. GB/s = bytes read / pass time (1 GB = 1e9 bytes).
//!
//! Windows variant (C1, 2026-10-08): the emitted kernel and the measure are the same; only the four system calls
//! change (VirtualAlloc / VirtualProtect for the code and the buffer, SetThreadAffinityMask to pin). On Windows the
//! SMT siblings of a core are adjacent logical processors (2k, 2k+1): thread i is pinned to logical cpu i * stride,
//! stride 2 when SMT (--stride to override); physical cores = logical / 2 when SMT (--physical to override).
//!
//! Usage: probe-bw-win [--gib G (4)] [--passes P (5)] [--threads 1,2,4,...|all] [--avx2] [--stride S] [--physical N] [--smt 0|1]
use iced_x86::code_asm::*;
use std::sync::{Arc, Barrier};
use std::time::Instant;

#[link(name = "kernel32")]
unsafe extern "system" {
    fn VirtualAlloc(addr: *mut u8, size: usize, alloc_type: u32, protect: u32) -> *mut u8;
    fn VirtualProtect(addr: *mut u8, size: usize, protect: u32, old: *mut u32) -> i32;
    fn GetCurrentThread() -> *mut u8;
    fn SetThreadAffinityMask(thread: *mut u8, mask: usize) -> usize;
}
const MEM_COMMIT_RESERVE: u32 = 0x3000;
const PAGE_READWRITE: u32 = 0x04;
const PAGE_EXECUTE_READ: u32 = 0x20;

struct Exec(*mut u8, usize);
unsafe impl Send for Exec {}
unsafe impl Sync for Exec {}

fn emit(avx512: bool) -> Exec {
    // rdi = ptr, rsi = bytes (multiple of 512)
    let mut a = CodeAssembler::new(64).unwrap();
    a.set_prefer_vex(true);
    let mut top = a.create_label();
    let zmms = [zmm0, zmm1, zmm2, zmm3, zmm4, zmm5, zmm6, zmm7];
    let ymms = [ymm0, ymm1, ymm2, ymm3, ymm4, ymm5, ymm6, ymm7, ymm8, ymm9, ymm10, ymm11, ymm12, ymm13, ymm14, ymm15];
    a.add(rsi, rdi).unwrap(); // end pointer
    a.set_label(&mut top).unwrap();
    if avx512 {
        for (k, z) in zmms.iter().enumerate() {
            a.vmovdqa64(*z, zmmword_ptr(rdi + (64 * k) as i32)).unwrap();
        }
    } else {
        for (k, y) in ymms.iter().enumerate() {
            a.vmovdqa(*y, ymmword_ptr(rdi + (32 * k) as i32)).unwrap();
        }
    }
    a.add(rdi, 512).unwrap();
    a.cmp(rdi, rsi).unwrap();
    a.jb(top).unwrap();
    a.vzeroupper().unwrap();
    a.ret().unwrap();
    let code = a.assemble(0).unwrap();
    unsafe {
        let p = VirtualAlloc(std::ptr::null_mut(), 4096, MEM_COMMIT_RESERVE, PAGE_READWRITE);
        assert!(!p.is_null(), "VirtualAlloc(code)");
        std::ptr::copy_nonoverlapping(code.as_ptr(), p, code.len());
        let mut old = 0u32;
        assert_ne!(VirtualProtect(p, 4096, PAGE_EXECUTE_READ, &mut old), 0, "VirtualProtect");
        Exec(p, code.len())
    }
}

fn pin(cpu: usize) {
    unsafe {
        assert!(cpu < 64, "pin cpu {cpu}: affinity masks of this probe cover 64 logical cpus");
        assert_ne!(SetThreadAffinityMask(GetCurrentThread(), 1usize << cpu), 0, "pin cpu {cpu}");
    }
}

fn arg(args: &[String], name: &str, default: &str) -> String {
    args.iter().position(|a| a == name).map(|p| args[p + 1].clone()).unwrap_or_else(|| default.into())
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let gib: usize = arg(&args, "--gib", "4").parse().unwrap();
    let passes: usize = arg(&args, "--passes", "5").parse().unwrap();
    let logical = std::thread::available_parallelism().map(|n| n.get()).unwrap_or(1);
    let smt = arg(&args, "--smt", "1") == "1";
    let physical: usize = arg(&args, "--physical", &(if smt { logical / 2 } else { logical }).to_string()).parse().unwrap();
    let stride: usize = arg(&args, "--stride", if smt { "2" } else { "1" }).parse().unwrap();
    // runtime feature detection (CPUID), not an intrinsic: it only picks which
    // emitted kernel runs
    let avx512 = std::arch::is_x86_feature_detected!("avx512f") && !args.iter().any(|a| a == "--avx2");
    let threads: Vec<usize> = match arg(&args, "--threads", "all").as_str() {
        "all" => {
            let mut v: Vec<usize> = (0..).map(|i| 1usize << i).take_while(|&t| t < physical).collect();
            v.push(physical);
            v
        }
        s => s.split(',').map(|x| x.parse().unwrap()).collect(),
    };
    let bytes = gib << 30;
    let buf = unsafe {
        let p = VirtualAlloc(std::ptr::null_mut(), bytes, MEM_COMMIT_RESERVE, PAGE_READWRITE);
        assert!(!p.is_null(), "VirtualAlloc(buffer)");
        std::ptr::write_bytes(p, 1, bytes); // really backed
        p as usize
    };
    let k = Arc::new(emit(avx512));
    println!("[probe-bw] windows logical={logical} physical={physical} smt={smt} stride={stride} kernel={} ({} bytes) buffer={gib} GiB passes={passes}",
        if avx512 { "8 x vmovdqa64 zmm" } else { "16 x vmovdqa ymm" }, k.1);
    for &t in &threads {
        let mut best = 0f64;
        let mut all = Vec::new();
        for pass in 0..passes {
            let slice = (bytes / t) & !511;
            let barrier = Arc::new(Barrier::new(t + 1));
            let hs: Vec<_> = (0..t).map(|i| {
                let (b, k) = (barrier.clone(), k.clone());
                std::thread::spawn(move || {
                    pin(i * stride);
                    let f: extern "sysv64" fn(usize, usize) = unsafe { std::mem::transmute(k.0) };
                    b.wait();
                    f(buf + i * slice, slice);
                })
            }).collect();
            barrier.wait();
            let t0 = Instant::now();
            for h in hs { h.join().unwrap(); }
            let dt = t0.elapsed().as_secs_f64();
            let gbs = (slice * t) as f64 / dt / 1e9;
            println!("[probe-bw] threads={t} pass={pass} bytes={} seconds={dt:.4} GB/s={gbs:.2}", slice * t);
            best = best.max(gbs);
            all.push(gbs);
        }
        all.sort_by(|a, b| a.partial_cmp(b).unwrap());
        println!("[probe-bw] threads={t} best={best:.2} median={:.2} GB/s", all[all.len() / 2]);
    }
}
