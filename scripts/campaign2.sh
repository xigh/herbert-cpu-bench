#!/bin/bash
# Campaign 2: the competitors tuned. Per model, 3 interleaved repetitions:
#   llama.cpp : llama-bench pp148 and tg64 at depth 148, thread sweep (-t LIST), -r 3
#   Herbert   : the same thread sweep, 148-token prompt
#   vLLM+zen  : vllm[zen] (zentorch) venv, all physical cores, latency out 1 and 65
# Usage: [MODELS_DIR=dir] THREADS=1,2,4,... campaign2.sh [MODELS...]   Full output, never filtered.
set -u
B=~/bench-engines; H=~/herbert-zen6/herbert-bf16-chat
T=$(( $(nproc) / 2 )); BIND="0-$((T-1))"
THREADS=${THREADS:?THREADS=1,2,4,...}
MD=${MODELS_DIR:-$HOME/models/qwen}
MODELS=${*:-Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B}
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
IOMP=$(find $B/venv-vllm-zen -name libiomp5.so | head -1)
echo "[bench2] $(date -u +%FT%TZ) $(hostname) $(grep -m1 'model name' /proc/cpuinfo) T=$T threads=$THREADS models=$MD"
echo "[bench2] herbert $(sha256sum $H | cut -c1-16) llama.cpp $(git -C $B/llama.cpp log -1 --format=%h) vllm-zen $($B/venv-vllm-zen/bin/python -c 'import vllm,zentorch;print(vllm.__version__, "zentorch", zentorch.__version__)' 2>/dev/null)"
for m in $MODELS; do
  M=$MD/$m; G=$B/gguf/$m-bf16.gguf
  for rep in 1 2 3; do
    sleep 15; echo "== $m rep $rep llama pp148 sweep load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
    $B/llama.cpp/build/bin/llama-bench -m $G -p 148 -n 0 -r 3 -t $THREADS -lm none -o jsonl 2>&1
    echo "== $m rep $rep llama tg64@148 sweep $(date -u +%FT%TZ)"
    $B/llama.cpp/build/bin/llama-bench -m $G -p 0 -n 64 -d 148 -r 3 -t $THREADS -lm none -o jsonl 2>&1
    for t in ${THREADS//,/ }; do
      sleep 10; echo "== $m rep $rep herbert threads $t load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
      $H $M --threads $t --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1
    done
    for out in 1 65; do
      sleep 15; echo "== $m rep $rep vllm-zen latency out=$out load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
      J=$B/logs/vllmzen-$m-rep$rep-out$out-$(date -u +%Y%m%dT%H%M%SZ).json
      LD_PRELOAD=$IOMP VLLM_CPU_KVCACHE_SPACE=8 VLLM_CPU_OMP_THREADS_BIND=$BIND \
        $B/venv-vllm-zen/bin/vllm bench latency --model $M --dtype bfloat16 --language-model-only \
        --max-model-len 1024 --batch-size 1 --input-len 148 --output-len $out \
        --num-iters-warmup 3 --num-iters 10 --output-json $J 2>&1
      echo "[vllm-json] $J $(cat $J 2>/dev/null)"
    done
  done
done
echo "[bench2] done $(date -u +%FT%TZ)"
