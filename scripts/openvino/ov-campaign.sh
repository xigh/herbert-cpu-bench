#!/bin/bash
# OpenVINO campaign. Per model: exactness first (32 greedy tokens against the fp32
# reference, SDPA backend), then 3 interleaved repetitions of
#   Herbert   : control arm, all physical cores, the same 148-token prompt (same binary as campaigns 1-2)
#   OpenVINO  : GenAI LLMPipeline, bf16 / KV bf16 / no dynamic quantization / SDPA, thread sweep,
#               3 warm-up + 10 measured generations of 64 tokens per process
# Usage: THREADS=1,2,4,... ov-campaign.sh [MODELS...]      Full output, never filtered.
set -u
B=~/bench-engines; O=$B/openvino; H=~/herbert-zen6/herbert-bf16-chat
T=$(( $(nproc) / 2 ))
THREADS=${THREADS:?THREADS=1,2,4,...}
MD=${MODELS_DIR:-$HOME/models/qwen}
MODELS=${*:-Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B}
PY=$B/venv-openvino/bin/python
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
echo "[ov-campaign] $(date -u +%FT%TZ) $(hostname) $(grep -m1 'model name' /proc/cpuinfo) T=$T threads=$THREADS models=$MD"
echo "[ov-campaign] herbert $(sha256sum $H | cut -c1-16) $($PY -c 'import openvino as ov, openvino_genai as g; print("openvino", ov.__version__, "genai", g.__version__)')"
echo "[ov-campaign] ov_bench.py $(sha256sum $O/ov_bench.py | cut -c1-16)"
for m in $MODELS; do
  echo "[ov-campaign] $m IR $(cd $O/ir/$m && sha256sum openvino_model.xml openvino_model.bin | cut -c1-16 | tr '\n' ' ')"
  echo "== $m outputs openvino threads $T $(date -u +%FT%TZ)"
  $PY $O/ov_bench.py outputs $O/ir/$m $O/ref/$m.json $T 2>&1
  for rep in 1 2 3; do
    sleep 10; echo "== $m rep $rep herbert threads $T load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
    $H $MD/$m --threads $T --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1
    for t in ${THREADS//,/ }; do
      sleep 10; echo "== $m rep $rep openvino threads $t load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
      $PY $O/ov_bench.py bench $O/ir/$m $O/ref/$m.json $t 10 2>&1
    done
  done
done
echo "[ov-campaign] done $(date -u +%FT%TZ)"
