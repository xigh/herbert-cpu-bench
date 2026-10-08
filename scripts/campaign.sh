#!/bin/bash
# CPU comparison, bf16 everywhere: Herbert (zen6 branch 88579c5) vs llama.cpp
# (b11177, GGUF bf16 --no-mtp) vs vLLM 0.30.0+cpu, on Qwen3.5-0.8B/2B/4B.
# All physical cores (T = nproc/2), 3 interleaved repetitions per model.
#   Herbert   : the 148-token prompt (ends by itself at 44 tokens on the 0.8B)
#   llama.cpp : llama-bench pp148 (-p 148 -n 0) and tg64 at depth 148 (-p 0 -n 64 -d 148), -r 5
#   vLLM      : bench latency, input 148, output 1 and 65, batch 1, 3 warmup + 10 iters;
#               prefill = 148 / L1, decode = 64 / (L65 - L1)
# Usage: [MODELS_DIR=dir] campaign.sh [MODELS...]   Full output, never filtered.
# MODELS_DIR: where the HF checkpoints are (default ~/models/qwen; beast: /opt3/models).
set -u
B=~/bench-engines; H=~/herbert-zen6/herbert-bf16-chat
T=$(( $(nproc) / 2 )); BIND="0-$((T-1))"
MODELS=${*:-Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B}
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
IOMP=$(find $B/venv-vllm -name libiomp5.so | head -1)
echo "[bench] $(date -u +%FT%TZ) $(hostname) $(grep -m1 'model name' /proc/cpuinfo) T=$T bind=$BIND governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)"
echo "[bench] models ${MODELS_DIR:-$HOME/models/qwen}: $(for m in $MODELS; do echo -n "$m $(cat ${MODELS_DIR:-$HOME/models/qwen}/$m/*.safetensors | head -c 0; ls ${MODELS_DIR:-$HOME/models/qwen}/$m/*.safetensors | wc -l) files; "; done)"
echo "[bench] herbert $(sha256sum $H | cut -c1-16) llama.cpp $(git -C $B/llama.cpp log -1 --format=%h) vllm $($B/venv-vllm/bin/python -c 'import vllm;print(vllm.__version__)' 2>/dev/null)"
for m in $MODELS; do
  M=${MODELS_DIR:-$HOME/models/qwen}/$m; G=$B/gguf/$m-bf16.gguf
  for rep in 1 2 3; do
    sleep 15; echo "== $m rep $rep herbert load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
    $H $M --threads $T --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1
    sleep 15; echo "== $m rep $rep llama pp148 load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
    $B/llama.cpp/build/bin/llama-bench -m $G -p 148 -n 0 -r 5 -t $T -lm none -o jsonl 2>&1
    echo "== $m rep $rep llama tg64@148 $(date -u +%FT%TZ)"
    $B/llama.cpp/build/bin/llama-bench -m $G -p 0 -n 64 -d 148 -r 5 -t $T -lm none -o jsonl 2>&1
    for out in 1 65; do
      sleep 15; echo "== $m rep $rep vllm latency out=$out load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
      J=$B/logs/vllm-$m-rep$rep-out$out-$(date -u +%Y%m%dT%H%M%SZ).json
      LD_PRELOAD=$IOMP VLLM_CPU_KVCACHE_SPACE=8 VLLM_CPU_OMP_THREADS_BIND=$BIND \
        $B/venv-vllm/bin/vllm bench latency --model $M --dtype bfloat16 --language-model-only \
        --max-model-len 1024 --batch-size 1 --input-len 148 --output-len $out \
        --num-iters-warmup 3 --num-iters 10 --output-json $J 2>&1
      echo "[vllm-json] $J $(cat $J 2>/dev/null)"
    done
  done
done
echo "[bench] done $(date -u +%FT%TZ)"
