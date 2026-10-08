# C1 campaign on a Windows machine (g5500): Herbert (published copy, MSVC build), llama.cpp (official b11177 Windows CPU
# binaries, not a native build: no cmake / cl on the machine) and the bandwidth probe (probe-bw-win), same protocol as
# _c1.sh (protocol.md, section "Windows" of 2026-10-08): one process per measure, 10 s rest + idle >= 97 % before each,
# load and top processes logged, arms interleaved per repetition, order rotated, the probe opens each repetition.
# Same header lines as _c1.sh so that _analyze.py reads the log unchanged.
param(
  [string]$Models = "Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B",
  [string]$Arms = "herbert:6 llama:6 herbert:1 llama:1",
  [string]$ProbeThreads = "1 2 4 6",
  [int]$Reps = 5,
  [string]$MDir = "$env:USERPROFILE\models",
  [string]$Herb = "$env:USERPROFILE\c1\pub\target\release\herbert-bf16-chat.exe",
  [string]$Probe = "$env:USERPROFILE\c1\probe-bw-win\target\release\probe-bw-win.exe",
  [string]$LB = "$env:USERPROFILE\bench-engines\llama-win\llama-bench.exe",
  [string]$Gguf = "$env:USERPROFILE\bench-engines\gguf"
)
[Console]::OutputEncoding = [Text.Encoding]::UTF8; $OutputEncoding = [Text.Encoding]::UTF8
$LONG = "Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase."
function Now { (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ") }
function Say($s) { "## $(Now) $s" }
function Idle {
  # % idle over 1 s: the English counter name, else the locale-neutral ids (238 = Processor, 1482 = % Idle Time), else 100 - load
  foreach ($path in @('\Processor(_Total)\% Idle Time', '\238(_Total)\1482')) {
    try { $c = Get-Counter -Counter $path -SampleInterval 1 -MaxSamples 1 -ErrorAction Stop; if ($c.CounterSamples) { return [math]::Round($c.CounterSamples[0].CookedValue, 1) } } catch {}
  }
  Start-Sleep 1; return (100 - (Get-CimInstance Win32_Processor).LoadPercentage)
}
function Load { (Get-CimInstance Win32_Processor).LoadPercentage }
function Top { (Get-Process | Sort-Object CPU -Descending | Select-Object -First 3 | ForEach-Object { "$($_.Name):$([math]::Round($_.CPU,0))s" }) -join " " }
function WaitRest { Start-Sleep 10; $i = Idle; $n = 0; while ($i -lt 97) { if ($n -eq 0) { "# $(Now) idle $i% < 97%: waiting" }; $n++; Start-Sleep 10; $i = Idle }; "# $(Now) idle $i% load $(Load)% top $(Top)" }
function Header($e, $m, $t, $rep) { "== $e $m t=$t rep $rep load $(Load)% $((Get-Date).ToUniversalTime().ToString('HH:mm:ss')) procs>5%: (windows: load% of the package; top $(Top))" }
function Sha($p) { (Get-FileHash -Algorithm SHA256 $p).Hash.ToLower().Substring(0, 16) }
$cpu = Get-CimInstance Win32_Processor; $os = Get-CimInstance Win32_OperatingSystem
Say "host $env:COMPUTERNAME · $($os.Caption) $($os.Version) · $($cpu.Name) ($($cpu.NumberOfCores) cores, $($cpu.NumberOfLogicalProcessors) logical)"
"power scheme $((powercfg /getactivescheme) -replace '.*\((.*)\).*','$1') · memory $([int]($os.TotalVisibleMemorySize/1MB)) GiB · DDR $((Get-CimInstance Win32_PhysicalMemory | Select-Object -First 1).Speed) MT/s · load $(Load)%"
"processes (top CPU time): $(Top)"
"versions: herbert $(Sha $Herb) probe $(Sha $Probe) llama $(Sha $LB) ($(& $LB --version 2>&1 | Select-Object -First 1)) vllm - vllm-zen - openvino -"
"config MODELS=$Models ARMS=$Arms PROBE_THREADS=$ProbeThreads REPS=$Reps NICE=0 MDIR=$MDir REF=-"
foreach ($m in $Models.Split(" ")) { $g = "$Gguf\$m-bf16.gguf"; if (Test-Path $g) { "gguf $m $((Get-Item $g).Length) bytes" } }
$PT = $ProbeThreads -replace " ", ","
function RunArm($e, $m, $t, $rep) {
  $g = "$Gguf\$m-bf16.gguf"
  switch ($e) {
    "herbert" { WaitRest; Header herbert $m $t $rep; & $Herb "$MDir\$m" --threads $t --no-system --no-think --max-tokens 64 --ask $LONG 2>&1; "## exit $LASTEXITCODE" }
    "llama" {
      WaitRest; Header llama-pp148 $m $t $rep; & $LB -m $g -p 148 -n 0 -r 1 -t $t -lm none -o jsonl 2>&1; "## exit $LASTEXITCODE"
      WaitRest; Header llama-tg64 $m $t $rep; & $LB -m $g -p 0 -n 64 -d 148 -r 1 -t $t -lm none -o jsonl 2>&1; "## exit $LASTEXITCODE"
    }
  }
}
foreach ($m in $Models.Split(" ")) {
  for ($rep = 1; $rep -le $Reps; $rep++) {
    WaitRest; Header probe $m $PT $rep; & $Probe --gib 4 --passes 5 --threads $PT 2>&1; "## exit $LASTEXITCODE"
    # not $arms: PowerShell variable names are case-insensitive and $Arms is a [string] parameter (an array assigned to it is joined back into one string)
    $armList = @($Arms.Split(" ")); $n = $armList.Count; $k = ($rep - 1) % $n
    $rot = @(); for ($i = 0; $i -lt $n; $i++) { $rot += $armList[($k + $i) % $n] }
    foreach ($a in $rot) { "### model $m rep $rep arm $a"; $p = $a.Split(":"); RunArm $p[0] $m ([int]$p[1]) $rep }
  }
}
Say "finished"
