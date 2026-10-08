#!/bin/bash
# What AVX-512 is worth, same machine, same memory: Herbert (zen6 72e8c2a)
# on its AVX-512 path and forced onto its AVX2 path (--force-avx2), all
# physical cores and 1 thread, Qwen3.5 0.8B/2B/4B, 3 interleaved repetitions.
# Usage: [MODELS_DIR=dir] avx-campaign.sh      Full output, never filtered.
set -u
H=~/herbert-zen6/herbert-bf16-chat-72e8c2a; T=$(( $(nproc) / 2 ))
MD=${MODELS_DIR:-$HOME/models/qwen}
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
echo "[avx] $(date -u +%FT%TZ) $(hostname) $(grep -m1 'model name' /proc/cpuinfo) T=$T herbert $(sha256sum $H | cut -c1-16) models=$MD"
for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do
  for rep in 1 2 3; do
    for t in $T 1; do
      for isa in "" "--force-avx2"; do
        sleep 12; echo "== $m rep $rep threads $t ${isa:-avx512} load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
        $H $MD/$m --threads $t $isa --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1
      done
    done
  done
done
echo "[avx] done $(date -u +%FT%TZ)"
