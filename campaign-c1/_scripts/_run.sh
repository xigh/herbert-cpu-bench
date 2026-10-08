#!/bin/bash
# C1 launcher on one machine: exactness first (its <model>.json give OpenVINO its prompt ids), then on beast the bisection,
# then the campaign, then on beast the OpenVINO diagnostic. One log per step under ~/c1/logs, never filtered.
#   usage: nohup _run.sh MACHINE > ~/c1/logs/run-MACHINE-STAMP.log 2>&1 &
set -u; M=$1; S=$HOME/c1/_scripts; L=$HOME/c1/logs; mkdir -p $L; st=$(date -u +%Y%m%dT%H%M%SZ)
export MODELS=${MODELS:-"Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B"} REPS=${REPS:-5}
case $M in
 beast)    export MDIR=/opt3/models T=12 NICE=0 OV=1 ARMS="herbert:12 llama:12 vllm:12 vllmzen:12 ov:12 ov:4 herbert:1 llama:1 herbert:2" PROBE_THREADS="1 2 4 6 8 12";;
 beta)     export MDIR=$HOME/models/qwen T=8 NICE=10 OV=1 ARMS="herbert:8 llama:8 vllm:8 vllmzen:8 ov:8 ov:4 herbert:1 llama:1 herbert:4" PROBE_THREADS="1 2 4 6 8";;