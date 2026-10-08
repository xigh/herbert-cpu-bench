#!/bin/bash
# OpenVINO 2026.4.1 (the latest on PyPI on 2026-10-08: openvino 2026.4.1, openvino-genai 2026.4.1.0,
# openvino-tokenizers 2026.4.1.0) in a venv of its own, next to venv-openvino (2026.4.0, #435). Full output on stdout.
set -u; export PATH=$HOME/.local/bin:/snap/bin:$PATH; B=~/bench-engines; V=$B/venv-openvino-241; NICE=${NICE:-0}
say() { echo "## $(date -u +%FT%TZ) $*"; }
say "host $(hostname)"
[ -x $V/bin/python ] || uv venv -q --python 3.12 $V
nice -n $NICE uv pip install --python $V/bin/python "openvino==2026.4.1" "openvino-genai==2026.4.1.0" "openvino-tokenizers==2026.4.1.0" \
  "optimum-intel==2.2.0" "optimum==2.3.0" "nncf==3.4.0" "transformers==5.2.*" torch torchvision \
  --index-strategy unsafe-best-match --extra-index-url https://download.pytorch.org/whl/cpu 2>&1; echo "## exit $?"
$V/bin/python -c "import openvino as ov, openvino_genai as g, transformers as t, torch; print('openvino', ov.__version__, '| genai', g.__version__, '| transformers', t.__version__, '| torch', torch.__version__)" 2>&1
say "pip freeze"; uv pip freeze --python $V/bin/python 2>&1
say done
