# sourced by the S2 drivers (runs on the measured machine). Full output on stdout.
LONG="Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
IDLE_MIN=${IDLE_MIN:-97}; REST=${REST:-10}
say() { echo "## $(date -u +%FT%TZ) $*"; }
load() { cut -d' ' -f1 /proc/loadavg; }
idle() {
  local a b
  a=$(awk '/^cpu /{print $5+$6, $2+$3+$4+$5+$6+$7+$8+$9}' /proc/stat); sleep 1
  b=$(awk '/^cpu /{print $5+$6, $2+$3+$4+$5+$6+$7+$8+$9}' /proc/stat)
  echo "$a $b" | awk '{d=$4-$2; if (d<=0) print 100; else printf "%.1f\n", 100*($3-$1)/d}'
}
wait_rest() {
  sleep "$REST"; local n=0 i; i=$(idle)
  while awk -v i="$i" -v m="$IDLE_MIN" 'BEGIN{exit !(i<m)}'; do
    [ $n -eq 0 ] && echo "# $(date -u +%T) idle $i% < $IDLE_MIN%: waiting"
    n=$((n+1)); sleep 10; i=$(idle)
  done
  echo "# $(date -u +%T) idle $i% load $(load) $(pgrep -c 'ffmpeg|hdmi_view' || true) ffmpeg/hdmi_view"
}
env_header() {
  say "host $(hostname) · $(uname -srm)"; grep -m1 'model name' /proc/cpuinfo
  echo "governor $(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor) epp $(cat /sys/devices/system/cpu/cpu0/cpufreq/energy_performance_preference 2>/dev/null) · load $(cat /proc/loadavg)"
  echo "processes >5% cpu: $(ps -eo pcpu,comm --sort=-pcpu | awk 'NR>1 && $1>5' | tr '\n' ';')"
  echo "ffmpeg/hdmi_view running: $(pgrep -a 'ffmpeg|hdmi_view' | tr '\n' ';')"
}
