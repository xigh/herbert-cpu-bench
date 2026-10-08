#!/bin/bash
# Stops herbert-api (Gemma 26B server) for the Qwen 0.8B campaign and ALWAYS
# restarts it (trap EXIT), then checks it is active.
L=~/herbert-zen6/logs/beta-qwen08-real-full-$(date -u +%Y%m%dT%H%M%SZ).log
restart() {
  sudo -n systemctl start herbert-api
  sleep 5
  echo "[wrap] $(date -u +%FT%TZ) herbert-api: $(systemctl is-active herbert-api)" | tee -a "$L"
}
trap restart EXIT
echo "[wrap] $(date -u +%FT%TZ) herbert-api before: $(systemctl is-active herbert-api), mem: $(free -g | sed -n 2p)" | tee -a "$L"
sudo -n systemctl stop herbert-api
sleep 5
echo "[wrap] $(date -u +%FT%TZ) herbert-api stopped: $(systemctl is-active herbert-api), mem: $(free -g | sed -n 2p)" | tee -a "$L"
~/herbert-zen6/campaign.sh 2>&1 | tee -a "$L"
