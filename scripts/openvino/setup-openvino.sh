#!/bin/bash
# OpenVINO for the CPU comparison, bf16 without any quantization, installed apart
# in ~/bench-engines/venv-openvino. Full log on stdout (redirect with tee).
#
# Lossless path: the Qwen3.5 checkpoint (vision + text) is reloaded text-only
# (AutoModelForCausalLM -> Qwen3_5ForCausalLM, optimum-intel issue #1721) and
# saved as is (bf16), then exported to OpenVINO IR with --weight-format fp32
# (bf16 -> fp32 is exact; optimum-cli has no bf16 weight format, and without
# --weight-format it compresses to int8 above 1e9 parameters). At run time the
# CPU plugin gets INFERENCE_PRECISION_HINT=bf16, KV_CACHE_PRECISION=bf16 and
# DYNAMIC_QUANTIZATION_GROUP_SIZE=0 (see ov_bench.py): the weights it computes
# with are the checkpoint's bf16 values again.
#
# optimum-intel 2.2.0 refuses to export above transformers 5.2.* ("Maximum required is 5.2.*").
# Usage: [MODELS_DIR=dir] setup-openvino.sh [MODEL...]
set -uo pipefail
B=~/bench-engines; O=$B/openvino; MD=${MODELS_DIR:-$HOME/models/qwen}
mkdir -p $O/text $O/ir
export PATH=$HOME/.local/bin:$PATH
log() { echo "[ov-setup] $(date -u +%FT%TZ) $*"; }
log "host $(hostname) $(grep -m1 'model name' /proc/cpuinfo) models=$MD"

if [ ! -x $B/venv-openvino/bin/python ]; then
  uv venv -q --python 3.12 $B/venv-openvino
fi
uv pip install --python $B/venv-openvino/bin/python \
  "openvino==2026.4.0" "openvino-genai==2026.4.0.0" "openvino-tokenizers==2026.4.0.0" \
  "optimum-intel==2.2.0" "optimum==2.3.0" "nncf==3.4.0" "transformers==5.2.*" \
  torch torchvision --index-strategy unsafe-best-match --extra-index-url https://download.pytorch.org/whl/cpu 2>&1
$B/venv-openvino/bin/python -c "import openvino as ov, openvino_genai as g, transformers as t, torch, optimum.intel as oi; print('[ov-setup] openvino', ov.__version__, '| genai', g.__version__, '| transformers', t.__version__, '| torch', torch.__version__, '| optimum-intel', getattr(oi, '__version__', '?'))" 2>&1

for m in ${@:-Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B}; do
  if [ ! -s $O/text/$m/config.json ]; then
    log "$m: text-only reload and save (bf16, unchanged)"
    $B/venv-openvino/bin/python - "$MD/$m" "$O/text/$m" <<'EOF' 2>&1
import sys, torch
from transformers import AutoModelForCausalLM, AutoTokenizer
src, dst = sys.argv[1], sys.argv[2]
m = AutoModelForCausalLM.from_pretrained(src, dtype=torch.bfloat16)
print("[ov-setup] class", type(m).__name__, "dtype", m.dtype, "params", sum(p.numel() for p in m.parameters()))
m.save_pretrained(dst)
AutoTokenizer.from_pretrained(src).save_pretrained(dst)
EOF
  fi
  if [ ! -s $O/ir/$m/openvino_model.xml ]; then
    log "$m: export OpenVINO IR, weight format fp32"
    $B/venv-openvino/bin/optimum-cli export openvino --model $O/text/$m --task text-generation-with-past \
      --weight-format fp32 $O/ir/$m 2>&1
  fi
  log "$m: IR $(du -sh $O/ir/$m | cut -f1), files: $(cd $O/ir/$m && sha256sum openvino_model.xml openvino_model.bin 2>/dev/null | cut -c1-16 | tr '\n' ' ')"
done
log "done"
