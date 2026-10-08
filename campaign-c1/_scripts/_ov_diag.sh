#!/bin/bash
# C1: the #435 paged-attention diagnostic replayed with OpenVINO 2026.4.1 (beast, Qwen3.5-0.8B, T threads), on the IR
# exported under 2026.4.0. GenAI LLMPipeline greedy outputs: backend PA / SDPA x precision bf16/bf16, f32/f32 (and the
# mixed pairs); then the single-pass logits (optimum-intel, same IR) and optimum-intel incremental generation; and, as a
# control, the 2026.4.0 venv of #435 with PA bf16/bf16.   env: MDIR T BENCH IR REF (dir of <model>.json) M (model)
set -u; . "$(dirname "$0")/_common.sh"
BENCH=${BENCH:-$HOME/bench-engines}; IR=${IR:-$BENCH/openvino/ir}; M=${M:-Qwen3.5-0.8B}; T=${T:-12}
V1=$BENCH/venv-openvino-241/bin/python; V0=$BENCH/venv-openvino/bin/python; OVB=$(dirname "$0")/_ov_bench.py; S=$(dirname "$0")
env_header; echo "model $M ir $(cd $IR/$M && sha256sum openvino_model.xml openvino_model.bin | cut -c1-16 | tr '\n' ' ') ref $REF/$M.json"
for ver in 241 240; do
  PY=$V1; [ $ver = 240 ] && PY=$V0
  echo "## $(date -u +%T) venv $ver: $($PY -c 'import openvino as ov, openvino_genai as g; print(ov.__version__, g.__version__)')"
  for be in PA SDPA; do for ph in bf16 f32; do for kv in bf16 f32; do
    [ $ver = 240 ] && { [ $be = PA ] || continue; [ $ph = $kv ] || continue; }
    echo "== genai outputs venv $ver backend $be hint $ph kv $kv $(date -u +%T)"
    OV_PROPS="{\"ATTENTION_BACKEND\": \"$be\", \"INFERENCE_PRECISION_HINT\": \"$ph\", \"KV_CACHE_PRECISION\": \"$kv\"}" $PY $OVB outputs $IR/$M $REF/$M.json $T 2>&1; echo "## exit $?"
  done; done; done
done
echo "== fp32 reference margins at the first 4 positions (transformers, venv-openvino-241) $(date -u +%T)"
$V1 $S/_margin.py $MDIR/$M $REF/$M.json 2>&1; echo "## exit $?"
echo "== single-pass logits of the IR against transformers fp32 (optimum-intel, venv-openvino-241) $(date -u +%T)"
$V1 $S/_ov_logits.py $MDIR/$M $IR/$M $REF/$M.json $T 2>&1; echo "## exit $?"
for ph in bf16 f32; do echo "== optimum-intel incremental generation hint $ph kv $ph $(date -u +%T)"; $V1 $S/_ov_optgen.py $IR/$M $REF/$M.json $T $ph $ph 2>&1; echo "## exit $?"; done
say finished
