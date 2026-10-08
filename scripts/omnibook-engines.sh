#!/bin/bash
# omnibook: the three engines, same protocol as campaign.sh, on the 4 P cores
# (cpus 0-3): Herbert (AVX2, with and without --ne-convert), llama.cpp -t 4,
# vLLM bound to 0-3. MODELS="..." restricts the models. Full output, never filtered.
set -u
B=~/bench-engines; H=~/herbert-bench/herbert-bf16-chat; MD=~/models; T=4; BIND=0-3
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
IOMP=$(find $B/venv-vllm -name libiomp5.so | head -1)
echo "[bench] $(date -u +%FT%TZ) $(hostname) $(grep -m1 'model name' /proc/cpuinfo) T=$T bind=$BIND ac=$(cat /sys/class/power_supply/ADP1/online)"
echo "[bench] herbert $(sha256sum $H | cut -c1-16) llama.cpp $(git -C $B/llama.cpp log -1 --format=%h) vllm $($B/venv-vllm/bin/python -c 'import vllm;print(vllm.__version__)' 2>/dev/null)"
for m in ${MODELS:-Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B}; do
  M=$MD/$m; G=$B/gguf/$m-bf16.gguf
  for rep in 1 2 3; do
    for ne in "" "--ne-convert"; do
      sleep 15; echo "== $m rep $rep herbert ${ne:-no-ne-convert} load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
      $H $M --threads $T $ne --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1
    done
    sleep 15; echo "== $m rep $rep llama pp148 load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
    $B/llama.cpp/build/bin/llama-bench -m $G -p 148 -n 0 -r 5 -t $T -lm none -o jsonl 2>&1
    echo "== $m rep $rep llama tg64@148 $(date -u +%FT%TZ)"
    $B/llama.cpp/build/bin/llama-bench -m $G -p 0 -n 64 -d 148 -r 5 -t $T -lm none -o jsonl 2>&1
    for out in 1 65; do
      sleep 15; echo "== $m rep $rep vllm latency out=$out load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
      J=$B/logs/vllm-$m-rep$rep-out$out-$(date -u +%Y%m%dT%H%M%SZ).json
      LD_PRELOAD=$IOMP VLLM_CPU_KVCACHE_SPACE=4 VLLM_CPU_OMP_THREADS_BIND=$BIND \
        $B/venv-vllm/bin/vllm bench latency --model $M --dtype bfloat16 --language-model-only \
        --max-model-len 1024 --batch-size 1 --input-len 148 --output-len $out \
        --num-iters-warmup 3 --num-iters 10 --output-json $J 2>&1
      echo "[vllm-json] $J $(cat $J 2>/dev/null)"
    done
  done
done
echo "[bench] done $(date -u +%FT%TZ)"
