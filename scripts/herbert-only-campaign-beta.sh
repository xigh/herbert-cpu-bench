#!/bin/bash
# beta (EPYC 4344P, Zen 4, 8 cores, DDR5 at 5200 MT/s, 2 channels) — Herbert zen6 branch 88579c5,
# Qwen3.5-0.8B, the long prompt of the Bochs run C, 64 tokens; interleaved
# arms, 3 repetitions, 20 s rest, load check before each run.
cd ~/herbert-zen6
M=~/models/qwen/Qwen3.5-0.8B
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
echo "[beta] $(date -u +%FT%TZ) $(uname -r) $(grep -m1 'model name' /proc/cpuinfo) governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor) epp=$(cat /sys/devices/system/cpu/cpu0/cpufreq/energy_performance_preference)"
sha256sum herbert-bf16-chat
for rep in 1 2 3; do
  for T in 8 1; do
    sleep 20
    echo "== rep $rep threads $T load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
    ./herbert-bf16-chat $M --threads $T --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1
  done
done
echo "[beta] done $(date -u +%FT%TZ)"
