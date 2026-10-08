#!/bin/bash
# Output agreement for one host: reference fp32 + vLLM (python), llama.cpp
# (llama-server fed the same token ids), Herbert (--max-tokens 32, [ids]).
# Usage: [MODELS_DIR=dir] run-outputs.sh     Full output kept in logs/.
set -u
B=~/bench-engines; MD=${MODELS_DIR:-$HOME/models/qwen}; T=$(( $(nproc) / 2 ))
O=$B/logs/outputs-$(hostname)-$(date -u +%Y%m%dT%H%M%SZ); mkdir -p $O
IOMP=$(find $B/venv-vllm -name libiomp5.so | head -1)
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do
  echo "== $m reference+vllm $(date -u +%FT%TZ)"
  $B/venv-vllm/bin/python $B/outputs/reference_and_vllm.py ref $MD/$m $O/$m.json 2>&1
  [ -s $O/$m.json ] || { echo "[outputs] $m: no reference, skipped"; continue; }
  LD_PRELOAD=$IOMP VLLM_CPU_KVCACHE_SPACE=8 VLLM_CPU_OMP_THREADS_BIND=0-$((T-1)) \
    $B/venv-vllm/bin/python $B/outputs/reference_and_vllm.py vllm $MD/$m $O/$m.json 2>&1
  ids=$(python3 -c "import json;print(json.dumps(json.load(open('$O/$m.json'))['prompt_ids']))")
  echo "== $m llama.cpp $(date -u +%FT%TZ)"
  $B/llama.cpp/build/bin/llama-server -m $B/gguf/$m-bf16.gguf -t $T -c 1024 -np 1 --port 18080 --host 127.0.0.1 > $O/$m-llama-server.log 2>&1 &
  S=$!; for i in $(seq 60); do curl -s 127.0.0.1:18080/health | grep -q ok && break; sleep 1; done
  curl -s 127.0.0.1:18080/completion -H 'Content-Type: application/json' \
    -d "{\"prompt\": $ids, \"n_predict\": 32, \"temperature\": 0, \"top_k\": 1, \"samplers\": [\"top_k\"], \"return_tokens\": true, \"cache_prompt\": false, \"ignore_eos\": true}" > $O/$m-llama.json
  kill $S; wait $S 2>/dev/null
  echo "[outputs] llama.cpp: $(python3 -c "import json;d=json.load(open('$O/$m-llama.json'));print(repr(d.get('content')), d.get('tokens'))")"
  echo "== $m herbert $(date -u +%FT%TZ)"
  ~/herbert-zen6/herbert-bf16-chat $MD/$m --threads $T --no-system --no-think --max-tokens 32 --ask "$LONG" > $O/$m-herbert.log 2>&1
  grep -E "^\[(ids|decoded|turn)" $O/$m-herbert.log
done
echo "[outputs] done $(date -u +%FT%TZ) -> $O"
