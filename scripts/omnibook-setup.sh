#!/bin/bash
# omnibook: llama.cpp (b11177, native build) + GGUF bf16 + vLLM 0.30.0+cpu,
# in ~/bench-engines. The checkpoints are already in ~/models (copied or found).
set -uo pipefail
B=~/bench-engines; mkdir -p $B/logs $B/gguf; cd $B
log() { echo "[setup] $(date -u +%FT%TZ) $*"; }
export PATH=$HOME/.local/bin:$PATH
log "host $(hostname) $(grep -m1 'model name' /proc/cpuinfo)"
command -v uv >/dev/null || { log "installing uv (user)"; curl -LsSf https://astral.sh/uv/install.sh | sh; export PATH=$HOME/.local/bin:$PATH; }
[ -d llama.cpp ] || git clone -q --depth 1 --branch b11177 https://github.com/ggml-org/llama.cpp
cd llama.cpp && log "llama.cpp $(git log -1 --format='%h %ci %s')"
uv venv -q --python 3.12 $B/venv-convert && . $B/venv-convert/bin/activate
uv pip install -q cmake -r requirements/requirements-convert_hf_to_gguf.txt --index-strategy unsafe-best-match --extra-index-url https://download.pytorch.org/whl/cpu
cmake -B build -DCMAKE_BUILD_TYPE=Release -DGGML_NATIVE=ON > $B/logs/llama-cmake.log 2>&1
cmake --build build -j $(nproc) --target llama-bench llama-server > $B/logs/llama-build.log 2>&1 && log "llama-bench and llama-server built"
echo | gcc -march=native -dM -E - | grep -E -c "__AVX512F__|__AVXVNNI__|__AVXNECONVERT__" | xargs -I{} echo "[setup] gcc -march=native defines (AVX512F/AVXVNNI/AVXNECONVERT): {}"
for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do
  o=$B/gguf/$m-bf16.gguf
  [ -s $o ] || { log "convert $m"; python convert_hf_to_gguf.py ~/models/$m --outtype bf16 --no-mtp --outfile $o > $B/logs/convert-$m.log 2>&1; }
  log "$m gguf: $(ls -la $o | awk '{print $5}') bytes"
done
deactivate; cd $B
uv venv -q --python 3.12 $B/venv-vllm && . $B/venv-vllm/bin/activate
uv pip install "https://github.com/vllm-project/vllm/releases/download/v0.30.0/vllm-0.30.0+cpu-cp38-abi3-manylinux_2_39_x86_64.whl" --torch-backend cpu > $B/logs/vllm-install.log 2>&1 && log "vllm installed: $(python -c 'import vllm,torch;print(vllm.__version__, torch.__version__)' 2>&1 | tail -1)"
deactivate
log "done"
