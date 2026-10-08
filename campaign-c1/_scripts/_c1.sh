#!/bin/bash
# C1 campaign on one machine (protocol.md): Herbert (published copy), llama.cpp, vLLM, vLLM+zentorch, OpenVINO-SDPA and the
# bandwidth probe, all in the same run. One process per measure; the probe opens each repetition; the arms are interleaved
# inside each repetition, their order rotated by (rep-1) positions. Everything on stdout; the caller keeps all of it.
#   env: MODELS "Qwen3.5-0.8B ..."  ARMS "herbert:12 llama:12 vllm:12 vllmzen:12 ov:12 ov:4 herbert:1 llama:1"
#        PROBE_THREADS "1 2 4 6 8 12"  REPS (5)  MDIR (HF checkpoints)  BENCH (~/bench-engines)  NICE (0)
#        HERB (published binary)  PROBE (probe-bw binary)  OVPY (OpenVINO venv python)  IR (IR dir)  REF (dir of <model>.json)
set -u; . "$(dirname "$0")/_common.sh"
REPS=${REPS:-5}; BENCH=${BENCH:-$HOME/bench-engines}; NICE=${NICE:-0}
HERB=${HERB:-$HOME/c1/pub/target/release/herbert-bf16-chat}; PROBE=${PROBE:-$HOME/c1/probe-bw/target/release/probe-bw}
OVPY=${OVPY:-$BENCH/venv-openvino-241/bin/python}; IR=${IR:-$BENCH/openvino/ir}; REF=${REF:-$BENCH/openvino/ref}
OVB=$(dirname "$0")/_ov_bench.py; LB=$BENCH/llama.cpp/build/bin/llama-bench
IOMP=$(find $BENCH/venv-vllm -name libiomp5.so 2>/dev/null | head -1); IOMPZ=$(find $BENCH/venv-vllm-zen -name libiomp5.so 2>/dev/null | head -1)
PT=$(echo $PROBE_THREADS | tr ' ' ,)
env_header
echo "versions: herbert $(sha256sum $HERB | cut -c1-16) probe $(sha256sum $PROBE | cut -c1-16) llama $(git -C $BENCH/llama.cpp log -1 --format=%h 2>/dev/null) vllm $($BENCH/venv-vllm/bin/python -c 'import vllm,torch;print(vllm.__version__, torch.__version__)' 2>/dev/null | tail -1) vllm-zen $($BENCH/venv-vllm-zen/bin/python -c 'import vllm,zentorch;print(vllm.__version__, zentorch.__version__)' 2>/dev/null | tail -1) openvino $($OVPY -c 'import openvino as ov, openvino_genai as g; print(ov.__version__, g.__version__)' 2>/dev/null)"
echo "config MODELS=$MODELS ARMS=$ARMS PROBE_THREADS=$PROBE_THREADS REPS=$REPS NICE=$NICE MDIR=$MDIR REF=$REF"
for m in $MODELS; do [ -d $IR/$m ] && echo "ir $m $(cd $IR/$m && sha256sum openvino_model.xml openvino_model.bin | cut -c1-16 | tr '\n' ' ')"; [ -f $BENCH/gguf/$m-bf16.gguf ] && echo "gguf $m $(stat -c %s $BENCH/gguf/$m-bf16.gguf) bytes"; done
header() { echo "== $1 $2 t=$3 rep $4 load $(load) $(date -u +%T) procs>5%: $(ps -eo pcpu,comm --sort=-pcpu | awk 'NR>1 && $1>5{printf "%s ",$2}')"; }
run_arm() { # ENGINE MODEL T REP
  local e=$1 m=$2 t=$3 rep=$4 g=$BENCH/gguf/$2-bf16.gguf v io out
  case $e in
   herbert) wait_rest; header herbert $m $t $rep
            nice -n $NICE $HERB $MDIR/$m --threads $t --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1; echo "## exit $?";;
   llama)   wait_rest; header llama-pp148 $m $t $rep
            nice -n $NICE $LB -m $g -p 148 -n 0 -r 1 -t $t -lm none -o jsonl 2>&1; echo "## exit $?"
            wait_rest; header llama-tg64 $m $t $rep
            nice -n $NICE $LB -m $g -p 0 -n 64 -d 148 -r 1 -t $t -lm none -o jsonl 2>&1; echo "## exit $?";;
   vllm|vllmzen) v=venv-vllm; io=$IOMP; [ $e = vllmzen ] && { v=venv-vllm-zen; io=$IOMPZ; }
            for out in 1 65; do wait_rest; header $e-out$out $m $t $rep
              LD_PRELOAD=$io VLLM_CPU_KVCACHE_SPACE=8 VLLM_CPU_OMP_THREADS_BIND="0-$((t-1))" nice -n $NICE $BENCH/$v/bin/vllm bench latency \
                --model $MDIR/$m --dtype bfloat16 --language-model-only --max-model-len 1024 --batch-size 1 --input-len 148 \
                --output-len $out --num-iters-warmup 1 --num-iters 5 2>&1 | tr '\r' '\n'; echo "## exit ${PIPESTATUS[0]}"; done;;
   ov)      wait_rest; header ov $m $t $rep
            nice -n $NICE $OVPY $OVB bench $IR/$m $REF/$m.json $t 5 1 2>&1; echo "## exit $?";;
  esac
}
for m in $MODELS; do
 for rep in $(seq 1 $REPS); do
  wait_rest; header probe $m "$PT" $rep; nice -n $NICE $PROBE --gib 4 --passes 5 --threads $PT 2>&1; echo "## exit $?"
  arms=($ARMS); n=${#arms[@]}; k=$(( (rep-1) % n )); arms=("${arms[@]:k}" "${arms[@]:0:k}")
  for a in "${arms[@]}"; do echo "### model $m rep $rep arm $a"; run_arm ${a%%:*} $m ${a##*:} $rep; done
 done
done
say finished
