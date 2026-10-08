#!/bin/bash
# beast: bandwidth probe, then the three-engine campaign; full logs.
L=~/bench-engines/logs/campaign-$(hostname)-$(date -u +%Y%m%dT%H%M%SZ).log
{
echo "[probe-bw] sha256 $(sha256sum ~/bench-engines/probe-bw | cut -c1-16)"
~/bench-engines/probe-bw --gib 4 --passes 5
MODELS_DIR=/opt3/models ~/bench-engines/campaign.sh
} 2>&1 | tee -a "$L"
