#!/bin/bash
# C1 exactness on one host (protocol.md): fp32 reference + vLLM (venv-vllm python), llama.cpp (llama-server fed the same ids),
# Herbert (published copy, --max-tokens 32, [ids] line), OpenVINO 2026.4.1 SDPA and, as a diagnostic, its default backend (PA).
#   env: MODELS MDIR T (threads) BENCH HERB OVPY IR OUT (dir) NICE (0) OV (1: run OpenVINO)
set -u; . "$(dirname "$0")/_common.sh"
BENCH=${BENCH:-$HOME/bench-engines}; NICE=${NICE:-0}; OV=${OV:-1}; HERB=${HERB:-$HOME/c1/pub/target/release/herbert-bf16-chat}
OVPY=${OVPY:-$BENCH/venv-openvino-241/bin/python}; IR=${IR:-$BENCH/openvino/ir}; OVB=$(dirname "$0")/_ov_bench.py
OUT=${OUT:-$HOME/c1/logs/outputs-$(hostname)-$(date -u +%Y%m%dT%H%M%SZ)}; mkdir -p $OUT
IOMP=$(find $BENCH/venv-vllm -name libiomp5.so 2>/dev/null | head -1); PY=$BENCH/venv-vllm/bin/python; RV=$(dirname "$0")/_reference_and_vllm.py
env_header; echo "out $OUT herbert $(sha256sum $HERB | cut -c1-16) T=$T transformers $($PY -c 'import transformers,torch;print(transformers.__version__, torch.__version__)' 2>/dev/null | tail -1)"
for m in $MODELS; do
  if [ -n "${REFDIR:-}" ]; then
    say "$m reference fp32: the C1 JSON of beast ($REFDIR/$m.json: prompt ids + reference_fp32 + vllm_bf16 of beast), no transformers / vLLM on this machine"
    cp $REFDIR/$m.json $OUT/$m.json; python3 -c "import json;d=json.load(open('$OUT/$m.json'));d.pop('vllm_bf16',None);d['reference_origin']='beast outputs-beast-20261008T111845Z';json.dump(d,open('$OUT/$m.json','w'),ensure_ascii=False,indent=1)"
  else
  say "$m reference fp32 (transformers)"; nice -n $NICE $PY $RV ref $MDIR/$m $OUT/$m.json 2>&1; echo "## exit $?"
  [ -s $OUT/$m.json ] || { echo "[outputs] $m: no reference, skipped"; continue; }
  say "$m vllm bf16"; LD_PRELOAD=$IOMP VLLM_CPU_KVCACHE_SPACE=8 VLLM_CPU_OMP_THREADS_BIND=0-$((T-1)) nice -n $NICE $PY $RV vllm $MDIR/$m $OUT/$m.json 2>&1 | tr '\r' '\n'; echo "## exit ${PIPESTATUS[0]}"
  fi
  ids=$(python3 -c "import json;print(json.dumps(json.load(open('$OUT/$m.json'))['prompt_ids']))")
  say "$m llama.cpp (llama-server, same ids, top_k 1)"
  nice -n $NICE $BENCH/llama.cpp/build/bin/llama-server -m $BENCH/gguf/$m-bf16.gguf -t $T -c 1024 -np 1 --port 18080 --host 127.0.0.1 > $OUT/$m-llama-server.log 2>&1 &
  S=$!; for i in $(seq 180); do curl -s 127.0.0.1:18080/health | grep -q ok && break; sleep 1; done
  curl -s 127.0.0.1:18080/completion -H 'Content-Type: application/json' \
    -d "{\"prompt\": $ids, \"n_predict\": 32, \"temperature\": 0, \"top_k\": 1, \"samplers\": [\"top_k\"], \"return_tokens\": true, \"cache_prompt\": false, \"ignore_eos\": true}" > $OUT/$m-llama.json
  kill $S; wait $S 2>/dev/null
  echo "[outputs] llama.cpp: $(python3 -c "import json;d=json.load(open('$OUT/$m-llama.json'));print(repr(d.get('content')), d.get('tokens'))" 2>&1)"
  say "$m herbert (published copy, --max-tokens 32)"; nice -n $NICE $HERB $MDIR/$m --threads $T --no-system --no-think --max-tokens 32 --ask "$LONG" > $OUT/$m-herbert.log 2>&1; echo "## exit $?"
  grep -E "^\[(ids|decoded|turn)" $OUT/$m-herbert.log
  if [ "$OV" = 1 ]; then
    say "$m openvino 2026.4.1 SDPA"; nice -n $NICE $OVPY $OVB outputs $IR/$m $OUT/$m.json $T 2>&1 | tee $OUT/$m-ov-sdpa.log; echo "## exit ${PIPESTATUS[0]}"
    say "$m openvino 2026.4.1 PA (default backend, diagnostic)"; OV_PROPS='{"ATTENTION_BACKEND": "PA"}' nice -n $NICE $OVPY $OVB outputs $IR/$m $OUT/$m.json $T 2>&1 | tee $OUT/$m-ov-pa.log; echo "## exit ${PIPESTATUS[0]}"
  fi
done
say "finished -> $OUT"
