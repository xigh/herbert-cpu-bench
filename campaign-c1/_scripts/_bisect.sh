#!/bin/bash
# C1 bisection of the prefill gap zen6 -> published copy (protocol.md), beast, 12 threads, Qwen3.5-0.8B and 4B.
# Arms: zen6musl (the #427 binary), then native builds of herbert-avx-bf16 at 88579c5 (zen6gnu), f69213f (base),
# 81ebb6c (review), 6a7a917 (prealign), 76bc95a (align), 236dba5 (main), and the published copy (pub).
# REPS interleaved repetitions, order rotated; then --dump-asm of the arms that have it and diff of the listings.
set -u; . "$(dirname "$0")/_common.sh"
REPS=${REPS:-5}; T=${T:-12}; MDIR=${MDIR:-/opt3/models}; MODELS=${BISECT_MODELS:-"Qwen3.5-0.8B Qwen3.5-4B"}; A=$HOME/c1/arms
declare -A BIN=([zen6musl]=$HOME/herbert-zen6/herbert-bf16-chat [zen6gnu]=$A/zen6gnu/target/release/herbert-bf16-chat
  [base]=$A/base/target/release/herbert-bf16-chat [review]=$A/review/target/release/herbert-bf16-chat
  [prealign]=$A/prealign/target/release/herbert-bf16-chat [align]=$A/align/target/release/herbert-bf16-chat
  [main]=$A/main/target/release/herbert-bf16-chat [pub]=$HOME/c1/pub/target/release/herbert-bf16-chat)
ARMS="zen6musl zen6gnu base review prealign align main pub"
env_header; echo "config T=$T REPS=$REPS MODELS=$MODELS"
for a in $ARMS; do echo "arm $a $(sha256sum ${BIN[$a]} | cut -c1-16) $(stat -c %s ${BIN[$a]}) bytes"; done
for m in $MODELS; do
 for rep in $(seq 1 $REPS); do
  arms=($ARMS); n=${#arms[@]}; k=$(( (rep-1) % n )); arms=("${arms[@]:k}" "${arms[@]:0:k}")
  for a in "${arms[@]}"; do
   wait_rest; echo "== $a $m t=$T rep $rep load $(load) $(date -u +%T)"
   ${BIN[$a]} $MDIR/$m --threads $T --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1; echo "## exit $?"
  done
 done
done
say "dump-asm, Qwen3.5-0.8B, $T threads"; D=$HOME/c1/dump
for a in zen6gnu prealign align main pub; do
  rm -rf $D/$a; mkdir -p $D/$a; echo "== dump $a"
  ${BIN[$a]} $MDIR/Qwen3.5-0.8B --threads $T --dump-asm $D/$a 2>&1 | tail -5; echo "## exit ${PIPESTATUS[0]}"
  echo "files: $(ls $D/$a | wc -l), bytes: $(cat $D/$a/* 2>/dev/null | wc -c), sha256 of the sorted listing: $(cd $D/$a && cat $(ls | sort) 2>/dev/null | sha256sum | cut -c1-16)"
done
prev=; for a in zen6gnu prealign align main pub; do
  [ -n "$prev" ] && { echo "== diff $prev $a"; diff -rq $D/$prev $D/$a; echo "differing lines: $(diff -r $D/$prev $D/$a | grep -c '^[<>]')"; }; prev=$a
done
say finished
