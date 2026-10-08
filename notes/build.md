# Construction des binaires mesurés

Produits sur le Mac (Apple M5, macOS arm64), compilation croisée ; aucun binaire n'a été construit sur les machines mesurées, sauf llama.cpp et vLLM (voir `scripts/setup.sh`).

## Herbert (`herbert-bf16-chat`)

- dépôt : `herbert-avx-bf16`, worktree `~/Sources/herbert-avx-bf16-zen6`, branche `zen6`, commit `88579c5554896f4e53d4cfb1181b81330e3567ba` (2026-09-25 06:52:11 +0200)
- arbre de travail propre au moment du build : 0 fichier(s) modifié(s)
- `Cargo.lock` sha256 : `74802b54382d16d140ffb8bc55dc2204531de9561c1d3bec177f92e3cc5911d1`
- toolchain : `rustc 1.98.0 (88d9e12ae 2026-08-18)`, `cargo 1.98.0 (797e8a9bc 2026-08-05)`
- cible : `x86_64-unknown-linux-musl`, profil `release` du dépôt (opt-level 3, lto, codegen-units 1), lien statique par `rust-lld` contre la musl fournie par rustup
- binaire : sha256 `53bc98c18cb8ffa7542098d3b87d9b0eaf97dcecf24006b49fd3ba82ab9df1b8`

```
cd ~/Sources/herbert-avx-bf16-zen6 && git checkout 88579c5
CARGO_TARGET_X86_64_UNKNOWN_LINUX_MUSL_LINKER=rust-lld \
CARGO_TARGET_X86_64_UNKNOWN_LINUX_MUSL_RUSTFLAGS="-C target-feature=+crt-static -C link-self-contained=yes" \
cargo build --release --target x86_64-unknown-linux-musl --bin herbert-bf16-chat
```

## Sondes (`probe-bw`, `probe-zen6`)

- dépôt `~/Sources/qemu`, crate `estim`, commit `92283766313a0dd7c8a5cfb1c154b3468e6f76a8`, même toolchain et même cible
- `probe-bw` sha256 `b8690353810be289a5ebe852cdf1221fd31fa6a3cdfd9c7766e570732609c59b` — boucle de lecture émise par iced-x86 (8 × `vmovdqa64` zmm par pas de 512 octets), source copiée dans `scripts/probe-bw.rs`
- `probe-zen6` sha256 `e2ed9452c68c24d55a00f2d5c863e8a93ed5642f8a06fa80e427d0d40dbdabe9` — `--cpuid` lit le CPUID par une instruction émise
