#!/bin/bash
# C1: build the published copy (~/c1/pub, rsynced unchanged from the Mac's ~/Sources/herbert-jit-bf16)
# and the bandwidth probe (~/c1/probe-bw, the crate of scripts/probe-bw.rs) on this machine. Full output on stdout.
set -u; export PATH=$HOME/.cargo/bin:$PATH; NICE=${NICE:-0}
say() { echo "## $(date -u +%FT%TZ) $*"; }
say "host $(hostname) · $(uname -srm) · $(grep -m1 'model name' /proc/cpuinfo)"; rustc -V; cargo -V
cd ~/c1/pub
say "pub tree sha256 (all files, target excluded): $(find . -path ./target -prune -o -type f -print | sort | xargs sha256sum | sha256sum | cut -c1-16)"
say "pub: cargo build --release --locked"; nice -n $NICE cargo build --release --locked 2>&1; echo "## exit $?"
sha256sum target/release/herbert-bf16-chat
cd ~/c1/probe-bw
say "probe-bw: cargo build --release"; nice -n $NICE cargo build --release 2>&1; echo "## exit $?"
sha256sum target/release/probe-bw; grep -A1 'name = "iced-x86"' Cargo.lock | tail -1
say "smoke: probe-bw, 1 GiB, 1 pass, 1 thread"; ./target/release/probe-bw --gib 1 --passes 1 --threads 1 2>&1
say done
