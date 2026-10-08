#!/bin/bash
# C1 bisection arms (beast): native builds of herbert-avx-bf16 at the commits between zen6@88579c5 and main@236dba5,
# from `git archive` tarballs in ~/c1/src (made on the Mac). Full output on stdout.
set -u; export PATH=$HOME/.cargo/bin:$PATH
say() { echo "## $(date -u +%FT%TZ) $*"; }
say "host $(hostname)"; rustc -V; cargo -V; mkdir -p ~/c1/arms; cd ~/c1/arms
for t in ~/c1/src/*.tar.gz; do n=$(basename $t .tar.gz); rm -rf $n; tar xzf $t
  say "$n: cargo build --release --locked"
  ( cd $n && cargo build --release --locked 2>&1; echo "## exit $?"
    [ -x target/release/herbert-bf16-chat ] || { say "$n: retry without --locked"; cargo build --release 2>&1; echo "## exit $?"; }
    sha256sum target/release/herbert-bf16-chat )
done
say done
