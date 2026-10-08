#!/bin/bash
# Stops herbert-api for the three-engine campaign and ALWAYS restarts it.
L=~/bench-engines/logs/campaign-$(hostname)-$(date -u +%Y%m%dT%H%M%SZ).log
restart() {
  sudo -n systemctl start herbert-api; sleep 20
  c=$(curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:30010/v1/models)
  echo "[wrap] $(date -u +%FT%TZ) herbert-api: $(systemctl is-active herbert-api), http /v1/models $c" | tee -a "$L"
}
trap restart EXIT
echo "[wrap] $(date -u +%FT%TZ) herbert-api before: $(systemctl is-active herbert-api)" | tee -a "$L"
sudo -n systemctl stop herbert-api; sleep 5
echo "[wrap] $(date -u +%FT%TZ) herbert-api stopped: $(systemctl is-active herbert-api), mem: $(free -g | sed -n 2p)" | tee -a "$L"
~/bench-engines/campaign.sh "$@" 2>&1 | tee -a "$L"
