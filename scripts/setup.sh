#!/bin/bash
# Engines for the CPU comparison (Herbert vs llama.cpp vs vLLM), bf16 only,
# installed apart from everything else in ~/bench-engines. Full log kept.
set -uo pipefail
B=~/bench-engines; mkdir -p $B/logs $B/gguf; cd $B
log() { echo "[setup] $(date -u +%FT%TZ) $*"; }
log "host $(hostname) $(grep -m1 'model name' /proc/cpuinfo)"
export PATH=$HOME/.local/bin:/snap/bin:$PATH
command -v uv >/dev/null || { log "installing uv (user)"; curl -LsSf https://astral.sh/uv/install.sh | sh; export PATH=$HOME/.local/bin:$PATH; }

# 1. models (instruct, from HF; existing copies kept if their sha256 matches HF's etag)
for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do
  d=~/models/qwen/$m; mkdir -p $d
  files=$(curl -sSL "https://huggingface.co/api/models/Qwen/$m/tree/main" | python3 -c 'import json,sys; print(" ".join(f["path"] for f in json.load(sys.stdin) if f["type"]=="file"))')
  for f in $files; do
    want=$(curl -sSIL "https://huggingface.co/Qwen/$m/resolve/main/$f" | tr -d '\r' | awk -F': ' 'tolower($1)=="x-linked-etag"{gsub(/"/,"",$2);print $2}' | tail -1)
    if [ -s "$d/$f" ] && [ -n "$want" ] && [ "$(sha256sum "$d/$f" | cut -d' ' -f1)" = "$want" ]; then continue; fi
    if [ -s "$d/$f" ] && [ -z "$want" ]; then continue; fi
    log "download $m/$f"; mkdir -p "$(dirname "$d/$f")"
    curl -sSL --fail -o "$d/$f.part" "https://huggingface.co/Qwen/$m/resolve/main/$f" && mv "$d/$f.part" "$d/$f"
  done
  log "$m: $(du -sh $d | cut -f1), safetensors sha256: $(sha256sum $d/*.safetensors | cut -c1-16 | tr '\n' ' ')"
done

# 2. llama.cpp b11177, native build
[ -d llama.cpp ] || git clone -q https://github.com/ggml-org/llama.cpp
cd llama.cpp && git fetch -q --tags && git checkout -q b11177 && log "llama.cpp $(git log -1 --format='%h %ci %s')"
uv venv -q --python 3.12 $B/venv-convert && . $B/venv-convert/bin/activate
uv pip install -q cmake -r requirements/requirements-convert_hf_to_gguf.txt --index-strategy unsafe-best-match --extra-index-url https://download.pytorch.org/whl/cpu
cmake -B build -DCMAKE_BUILD_TYPE=Release -DGGML_NATIVE=ON > $B/logs/llama-cmake.log 2>&1
cmake --build build -j $(nproc) --target llama-bench llama-cli > $B/logs/llama-build.log 2>&1 && log "llama-bench built"
./build/bin/llama-bench --help >/dev/null 2>&1; echo | gcc -march=native -dM -E - | grep -c AVX512BF16 | xargs -I{} echo "[setup] gcc -march=native AVX512BF16 defines: {}"
# 3. GGUF bf16, no MTP
for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do
  o=$B/gguf/$m-bf16.gguf
  [ -s $o ] || { log "convert $m"; python convert_hf_to_gguf.py ~/models/qwen/$m --outtype bf16 --no-mtp --outfile $o > $B/logs/convert-$m.log 2>&1; }
  log "$m gguf: $(ls -la $o | awk '{print $5}') bytes"
done
deactivate; cd $B

# 4. vLLM 0.30.0 CPU wheel
uv venv -q --python 3.12 $B/venv-vllm && . $B/venv-vllm/bin/activate
uv pip install "https://github.com/vllm-project/vllm/releases/download/v0.30.0/vllm-0.30.0+cpu-cp38-abi3-manylinux_2_39_x86_64.whl" --torch-backend cpu > $B/logs/vllm-install.log 2>&1 && log "vllm installed: $(python -c 'import vllm,torch;print(vllm.__version__, torch.__version__)' 2>&1 | tail -1)"
log "libiomp5: $(find $B/venv-vllm -name 'libiomp5.so' | head -1)"
deactivate
log "done"
