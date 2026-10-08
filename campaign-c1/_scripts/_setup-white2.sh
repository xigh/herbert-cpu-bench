#!/bin/bash
# white2 (Ryzen 7 5700G, Zen 3, AVX2, Linux): what C1 needs and the machine lacks — Qwen3.5-2B from HF (0.8B and 4B are
# already in ~/models, sha256 checked), llama.cpp b11177 native build (llama-bench, llama-server; no venvs: vLLM and
# OpenVINO are not measured here), then the published copy and the probe (_setup-pub.sh). GGUF files and the fp32
# reference JSONs are copied from beast separately (same converter output, same prompt ids). Full output on stdout.
set -u; B=~/bench-engines; mkdir -p $B/logs $B/gguf; S=$(dirname "$0")
log() { echo "[setup] $(date -u +%FT%TZ) $*"; }
log "host $(hostname) $(grep -m1 'model name' /proc/cpuinfo) load $(cat /proc/loadavg)"
for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do
  d=~/models/$m; mkdir -p $d
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
cd $B; [ -d llama.cpp ] || git clone -q https://github.com/ggml-org/llama.cpp
cd llama.cpp && git fetch -q --tags && git checkout -q b11177 && log "llama.cpp $(git log -1 --format='%h %ci %s')"
cmake -B build -DCMAKE_BUILD_TYPE=Release -DGGML_NATIVE=ON > $B/logs/llama-cmake.log 2>&1
cmake --build build -j $(nproc) --target llama-bench llama-server > $B/logs/llama-build.log 2>&1 && log "llama-bench and llama-server built: $(sha256sum build/bin/llama-bench | cut -c1-16)"
echo | gcc -march=native -dM -E - | grep -cE "AVX512BF16|__AVX2__" | xargs -I{} echo "[setup] gcc -march=native AVX2/AVX512BF16 defines: {}"
grep -E "^(CMAKE_C_FLAGS|GGML_NATIVE|GGML_AVX2|GGML_AVX512)" build/CMakeCache.txt | head -8
log "published copy and probe"; bash $S/_setup-pub.sh 2>&1
log "done"
