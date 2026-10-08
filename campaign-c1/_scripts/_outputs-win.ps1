# C1 exactness on a Windows machine (g5500): Herbert (published copy, --max-tokens 32, [ids] line) and llama.cpp
# (official b11177 llama-server.exe fed the same prompt ids) against the float32 reference of C1 (the Qwen3.5-*.json of
# beast: prompt ids and reference_fp32, identical on the four Linux machines). No transformers / vLLM / OpenVINO here.
# Writes the same files as _outputs.sh into OUT so that _outputs_table.py reads them unchanged.
param(
  [string]$Models = "Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B",
  [int]$T = 6,
  [string]$MDir = "$env:USERPROFILE\models",
  [string]$Herb = "$env:USERPROFILE\c1\pub\target\release\herbert-bf16-chat.exe",
  [string]$LS = "$env:USERPROFILE\bench-engines\llama-win\llama-server.exe",
  [string]$Gguf = "$env:USERPROFILE\bench-engines\gguf",
  [string]$Ref = "$env:USERPROFILE\c1\ref",
  [string]$Out = "$env:USERPROFILE\c1\logs\outputs-g5500-$((Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssZ'))"
)
[Console]::OutputEncoding = [Text.Encoding]::UTF8; $OutputEncoding = [Text.Encoding]::UTF8
$LONG = "Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
function Now { (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ") }
function Say($s) { "## $(Now) $s" }
function Sha($p) { (Get-FileHash -Algorithm SHA256 $p).Hash.ToLower().Substring(0, 16) }
New-Item -ItemType Directory -Force $Out | Out-Null
Say "host $env:COMPUTERNAME out $Out herbert $(Sha $Herb) llama-server $(Sha $LS) T=$T (reference: the C1 JSON of beast, transformers 5.17.0 float32)"
foreach ($m in $Models.Split(" ")) {
  # the C1 JSON of beast gives the prompt ids and the float32 reference; its vllm_bf16 (beast's) is removed: no vLLM here
  $J = Get-Content "$Ref\$m.json" -Raw -Encoding UTF8 | ConvertFrom-Json; $J.PSObject.Properties.Remove("vllm_bf16"); $J | Add-Member -NotePropertyName reference_origin -NotePropertyValue "beast outputs-beast-20261008T111845Z" -Force; [IO.File]::WriteAllText("$Out\$m.json", ($J | ConvertTo-Json -Depth 5), [Text.Encoding]::UTF8)
  $R = Get-Content "$Out\$m.json" -Raw -Encoding UTF8 | ConvertFrom-Json
  $ids = $R.prompt_ids; $want = $R.reference_fp32.ids
  Say "$m herbert (published copy, --max-tokens 32)"
  & $Herb "$MDir\$m" --threads $T --no-system --no-think --max-tokens 32 --ask $LONG 2>&1 | Out-File -Encoding UTF8 "$Out\$m-herbert.log"; "## exit $LASTEXITCODE"
  Get-Content "$Out\$m-herbert.log" -Encoding UTF8 | Select-String '^\[(ids|decoded|turn)' | ForEach-Object { $_.Line }
  $hl = (Get-Content "$Out\$m-herbert.log" -Encoding UTF8 | Select-String '^\[ids\] ' | Select-Object -First 1).Line
  if ($hl) { $h = $hl.Substring(6).Trim().Split(" ") | ForEach-Object { [int]$_ }; $n = [math]::Min($h.Count, $want.Count); $first = "none"; for ($i = 0; $i -lt $n; $i++) { if ($h[$i] -ne $want[$i]) { $first = $i; break } }; "[agreement] herbert compared $n first_divergence $first" }
  Say "$m llama.cpp (llama-server, same ids, top_k 1)"
  $srv = Start-Process -FilePath $LS -ArgumentList @("-m", "$Gguf\$m-bf16.gguf", "-t", "$T", "-c", "1024", "-np", "1", "--port", "18080", "--host", "127.0.0.1") -RedirectStandardOutput "$Out\$m-llama-server.log" -RedirectStandardError "$Out\$m-llama-server.err" -PassThru -WindowStyle Hidden
  $ok = $false; for ($i = 0; $i -lt 180; $i++) { try { $r = Invoke-WebRequest -UseBasicParsing "http://127.0.0.1:18080/health" -TimeoutSec 2; if ($r.Content -match "ok") { $ok = $true; break } } catch {}; Start-Sleep 1 }
  if ($ok) {
    $body = @{ prompt = $ids; n_predict = 32; temperature = 0; top_k = 1; samplers = @("top_k"); return_tokens = $true; cache_prompt = $false; ignore_eos = $true } | ConvertTo-Json -Compress -Depth 4
    $resp = Invoke-WebRequest -UseBasicParsing -Method Post -Uri "http://127.0.0.1:18080/completion" -ContentType "application/json; charset=utf-8" -Body ([Text.Encoding]::UTF8.GetBytes($body)) -TimeoutSec 600
    [IO.File]::WriteAllText("$Out\$m-llama.json", $resp.Content, [Text.Encoding]::UTF8)
    $L = $resp.Content | ConvertFrom-Json; $lt = $L.tokens; $n = [math]::Min($lt.Count, $want.Count); $first = "none"; for ($i = 0; $i -lt $n; $i++) { if ($lt[$i] -ne $want[$i]) { $first = $i; break } }
    "[outputs] llama.cpp: $($L.content)"; "[agreement] llama compared $n first_divergence $first"
  } else { "[outputs] llama-server did not become healthy" }
  Stop-Process -Id $srv.Id -Force -ErrorAction SilentlyContinue; Start-Sleep 2
}
Say "finished -> $Out"
