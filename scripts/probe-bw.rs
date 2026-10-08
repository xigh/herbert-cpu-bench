//! probe-bw — memory read bandwidth of an x86-64 machine, the measured loop
//! emitted at run time by iced-x86 (no intrinsics, no C, no asm!: what runs is
//! exactly what is emitted, never rewritten by a compiler).
//!
//! Kernel `fn(ptr, bytes)`: sequential 512-bit loads, 8 per 512-byte step,
//! into eight independent zmm registers (no dependency chain), `bytes` a
//! multiple of 512. Each thread is pinned to one physical core (cpus
//! 0..N-1: the SMT siblings are N..2N-1 on these machines, `lscpu -e`) and
//! reads its own contiguous slice of one buffer much larger than the L3.
//! Threads start together (barrier); a pass lasts from the first start to the
//! last end. GB/s = bytes read / pass time (1 GB = 1e9 bytes).
//!
//! Usage: probe-bw [--gib G (4)] [--passes P (5)] [--threads 1,2,4,...|all]
use iced_x86::code_asm::*;
use std::sync::{Arc, Barrier};
use std::time::Instant;

struct Exec(*mut libc::c_void, usize);
unsafe impl Send for Exec {}
unsafe impl Sync for Exec {}

fn emit() -> Exec {
    // rdi = ptr, rsi = bytes (multiple of 512)
    let mut a = CodeAssembler::new(64).unwrap();
    let mut top = a.create_label();
    let zmms = [zmm0, zmm1, zmm2, zmm3, zmm4, zmm5, zmm6, zmm7];
    a.add(rsi, rdi).unwrap(); // end pointer
    a.set_label(&mut top).unwrap();
    for (k, z) in zmms.iter().enumerate() {
        a.vmovdqa64(*z, zmmword_ptr(rdi + (64 * k) as i32)).unwrap();
    }
    a.add(rdi, 512).unwrap();
    a.cmp(rdi, rsi).unwrap();
    a.jb(top).unwrap();
    a.vzeroupper().unwrap();
    a.ret().unwrap();
    let code = a.assemble(0).unwrap();
    unsafe {
        let p = libc::mmap(std::ptr::null_mut(), 4096, libc::PROT_READ | libc::PROT_WRITE,
            libc::MAP_PRIVATE | libc::MAP_ANONYMOUS, -1, 0);
        assert_ne!(p, libc::MAP_FAILED);
        std::ptr::copy_nonoverlapping(code.as_ptr(), p as *mut u8, code.len());
        assert_eq!(libc::mprotect(p, 4096, libc::PROT_READ | libc::PROT_EXEC), 0);
        Exec(p, code.len())
    }
}

fn pin(cpu: usize) {
    unsafe {
        let mut set: libc::cpu_set_t = std::mem::zeroed();
        libc::CPU_SET(cpu, &mut set);
        assert_eq!(libc::sched_setaffinity(0, std::mem::size_of::<libc::cpu_set_t>(), &set), 0, "pin cpu {cpu}");
    }
}

fn arg(args: &[String], name: &str, default: &str) -> String {
    args.iter().position(|a| a == name).map(|p| args[p + 1].clone()).unwrap_or_else(|| default.into())
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let gib: usize = arg(&args, "--gib", "4").parse().unwrap();
    let passes: usize = arg(&args, "--passes", "5").parse().unwrap();
    let logical = unsafe { libc::sysconf(libc::_SC_NPROCESSORS_ONLN) } as usize;
    let physical = logical / 2;
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
        let p = libc::mmap(std::ptr::null_mut(), bytes, libc::PROT_READ | libc::PROT_WRITE,
            libc::MAP_PRIVATE | libc::MAP_ANONYMOUS | libc::MAP_POPULATE, -1, 0);
        assert_ne!(p, libc::MAP_FAILED);
        std::ptr::write_bytes(p as *mut u8, 1, bytes); // really backed
        p as usize
    };
    let k = Arc::new(emit());
    println!("[probe-bw] logical={logical} physical={physical} buffer={gib} GiB passes={passes} kernel={} bytes", k.1);
    for &t in &threads {
        let mut best = 0f64;
        let mut all = Vec::new();
        for pass in 0..passes {
            let slice = (bytes / t) & !511;
            let barrier = Arc::new(Barrier::new(t + 1));
            let hs: Vec<_> = (0..t).map(|i| {
                let (b, k) = (barrier.clone(), k.clone());
                std::thread::spawn(move || {
                    pin(i);
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
