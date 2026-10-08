#!/bin/bash
# omnibook (Core Ultra 7 258V, Lunar Lake, no AVX-512, AVX-NE-CONVERT): bandwidth
# probe, then Herbert on its AVX2 path, 4 threads (P cores) and 8 (all),
# without and with --ne-convert, Qwen3.5 0.8B/2B/4B, 3 interleaved repetitions.
set -u
D=~/herbert-bench; M=~/models; H=$D/herbert-bf16-chat
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
echo "[bench] $(date -u +%FT%TZ) $(hostname) $(grep -m1 'model name' /proc/cpuinfo) governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor) epp=$(cat /sys/devices/system/cpu/cpu0/cpufreq/energy_performance_preference) profile=$(cat /sys/firmware/acpi/platform_profile 2>/dev/null) ac=$(cat /sys/class/power_supply/ADP1/online 2>/dev/null)"
echo "[bench] herbert $(sha256sum $H | cut -c1-16) probe-bw $(sha256sum $D/probe-bw | cut -c1-16)"
$D/probe-bw --gib 4 --passes 5 --threads 1,2,4,8
for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do
  for rep in 1 2 3; do
    for T in 4 8; do
      for ne in "" "--ne-convert"; do
        sleep 15; echo "== $m rep $rep herbert threads $T ${ne:-no-ne-convert} load $(cut -d' ' -f1 /proc/loadavg) $(date -u +%FT%TZ)"
        $H $M/$m --threads $T $ne --no-system --no-think --max-tokens 64 --ask "$LONG" 2>&1
      done
    done
  done
done
echo "[bench] done $(date -u +%FT%TZ)"
