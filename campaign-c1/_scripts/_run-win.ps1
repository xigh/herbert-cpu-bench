# C1 launcher on g5500 (Windows): exactness, then the campaign; one log per step under %USERPROFILE%\c1\logs, never filtered.
#   powershell -NoProfile -ExecutionPolicy Bypass -File _run-win.ps1   (detached by Start-Process from the ssh session)
$ErrorActionPreference = "Continue"
$L = "$env:USERPROFILE\c1\logs"; $S = "$env:USERPROFILE\c1\_scripts"; $st = (Get-Date).ToUniversalTime().ToString("yyyyMMddTHHmmssZ")
"run g5500 $st steps: outputs c1" | Out-File -Encoding UTF8 "$L\run-g5500-$st.log"
& powershell -NoProfile -ExecutionPolicy Bypass -File "$S\_outputs-win.ps1" -Out "$L\outputs-g5500-$st" *> "$L\outputs-g5500-$st.log"
"step outputs done $((Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ'))" | Out-File -Append -Encoding UTF8 "$L\run-g5500-$st.log"
& powershell -NoProfile -ExecutionPolicy Bypass -File "$S\_c1-win.ps1" *> "$L\c1-g5500-$st.log"
"step c1 done $((Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ'))" | Out-File -Append -Encoding UTF8 "$L\run-g5500-$st.log"
"finished $((Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ'))" | Out-File -Append -Encoding UTF8 "$L\run-g5500-$st.log"
"finished" | Out-File -Encoding UTF8 "$L\finished-g5500-$st"
