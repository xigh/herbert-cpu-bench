#!/bin/bash
# omnibook: which cores for which regime (P cores 0-3, LP-E cores 4-7).
# All arms with --ne-convert: 4 threads (P only); 8 threads (all);
# 8 threads for the prefill and 4 for the decode (--decode-workers 4).
set -u
D=~/herbert-bench; M=~/models; H=$D/herbert-bf16-chat
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
echo "[bench] $(date -u +%FT%TZ) $(hostname) ac=$(cat /sys/class/power_supply/ADP1/online) herbert $(sha256sum $H | cut -c1-16)"
for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do
  for rep in 1 2 3; do
    for arm in "--threads 4" "--threads 8" "--threads 8 --decode-workers 4"; do
      sleep 15; echo "== $m rep $rep arm [$arm] load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
      $H $M/$m $arm --ne-convert --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1
    done
  done
done
echo "[bench] done $(date -u +%FT%TZ)"
