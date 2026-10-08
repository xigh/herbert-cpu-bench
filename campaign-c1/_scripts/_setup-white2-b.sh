#!/bin/bash
# white2, second part (the machine is on Wi-Fi at ~1-2 MB/s: nothing big is copied over the network): llama.cpp b11177
# native build, a conversion venv (python3 -m venv + pip, the machine has no uv) to make the GGUF bf16 --no-mtp files
# locally from the checkpoints already here (0.8B, 4B; the 2B once its download ends), then the published copy and the
# probe (_setup-pub.sh). Full output on stdout.   env: MODELS (which GGUF to convert now)
set -u; B=~/bench-engines; mkdir -p $B/logs $B/gguf; S=$(dirname "$0"); MODELS=${MODELS:-"Qwen3.5-0.8B Qwen3.5-4B"}
log() { echo "[setup] $(date -u +%FT%TZ) $*"; }
log "host $(hostname) $(grep -m1 'model name' /proc/cpuinfo) load $(cat /proc/loadavg)"
cd $B; [ -d llama.cpp ] || git clone -q https://github.com/ggml-org/llama.cpp
cd llama.cpp && git fetch -q --tags && git checkout -q b11177 && log "llama.cpp $(git log -1 --format='%h %ci %s')"
cmake -B build -DCMAKE_BUILD_TYPE=Release -DGGML_NATIVE=ON > $B/logs/llama-cmake.log 2>&1
cmake --build build -j $(nproc) --target llama-bench llama-server > $B/logs/llama-build.log 2>&1 && log "llama-bench and llama-server built: $(sha256sum build/bin/llama-bench | cut -c1-16)"
echo | gcc -march=native -dM -E - | grep -E "__AVX2__|__AVX512F__|__AVX512BF16__" | tr '\n' ' '; echo
grep -E "^(CMAKE_C_FLAGS|GGML_NATIVE|GGML_AVX2|GGML_AVX512)" build/CMakeCache.txt | head -6
[ -x $B/venv-convert/bin/python ] || python3 -m venv $B/venv-convert
. $B/venv-convert/bin/activate
pip install -q --upgrade pip > $B/logs/convert-venv.log 2>&1
pip install -q -r requirements/requirements-convert_hf_to_gguf.txt --extra-index-url https://download.pytorch.org/whl/cpu >> $B/logs/convert-venv.log 2>&1; log "convert venv: $(python -c 'import torch, transformers, gguf; print("torch", torch.__version__, "transformers", transformers.__version__, "gguf", gguf.__version__)' 2>&1 | tail -1)"
for m in $MODELS; do
  o=$B/gguf/$m-bf16.gguf
  [ -s $o ] || { log "convert $m"; python convert_hf_to_gguf.py ~/models/$m --outtype bf16 --no-mtp --outfile $o > $B/logs/convert-$m.log 2>&1; }
  log "$m gguf: $(stat -c %s $o 2>/dev/null) bytes sha256 $(sha256sum $o 2>/dev/null | cut -c1-16)"
done
deactivate
log "published copy and probe"; bash $S/_setup-pub.sh 2>&1
log "done"
