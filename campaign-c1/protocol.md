# Protocole C1 — les moteurs CPU refaits avec le binaire publié (articles S1 et S3)

Écrit le 2026-10-08 vers 11:15 UTC, **avant la première mesure** de la campagne. Une révision = un nouveau fichier daté ; celui-ci n'est pas retouché. Il reprend le protocole de la campagne S2 (`campaign-s2/protocol.md`), qui l'avait fixé « en référence pour C1 », et le protocole de la campagne 1 (`notes/plan.md`, `scripts/campaign.sh`) pour ce que S2 ne couvrait pas (vLLM sans zentorch, OpenVINO, la sonde dans le même run, l'exactitude).

## État des machines au lancement (2026-10-08, 10:57–11:00 UTC)

Aucune campagne S2 ni autre ne tourne : S2 est close (rapport du 29/09, dépôts #470 à #478). beast (joint par `beast-ext`, le Mac n'est pas sur le LAN) : redémarrée depuis 15 min, charge 0,00, ni `ffmpeg` ni `hdmi_view`, rien à arrêter. beta : production, `herbert-server` (Gemma 26B) actif à 0 % de CPU et 30 % de la mémoire, charge 0,00 ; il n'est pas arrêté. omnibook : joint par le partage de connexion 4G, bureau ouvert (htop, firefox) mais charge 0,01 ; disponible, mesurée sur les 4 cœurs P ; pas d'OpenVINO ni de zentorch dessus (installation de plusieurs Go sur le partage de connexion, et zentorch est propre à AMD).

S2 a déjà mesuré, dans un même run et à N = 5, Herbert (copie publiée), llama.cpp et **vLLM avec zentorch** à tous les nombres de threads sur beast (3 modèles) et beta (0.8B et 4B) : `campaign-s2/results/sweep-*.csv`, dépôt `2026-09-29-s2-balayage-threads-energie`. Ce que S2 n'a pas : vLLM sans zentorch (le réglage par défaut), OpenVINO, la sonde de bande passante dans le même run, le 2B sur beta, l'exactitude avec la copie, l'omnibook. C1 refait donc le tout dans un seul run par machine, et S2 reste citable pour les balayages.

## Unité de mesure, identique pour les cinq bras

**Une mesure = un process lancé une fois**, précédé de 10 s de repos puis de l'attente d'un CPU inactif ≥ 97 % (`_common.sh`), la charge et les processus > 5 % CPU relevés dans le log avant chaque lancement. Dans chaque répétition, les bras sont **entrelacés, dans un ordre tourné d'une répétition à l'autre** (rotation de la liste des bras de (rep − 1) positions) ; les **5 répétitions** (N = 5, médiane, écart max − min / médiane rapporté) d'un même point (machine, modèle) se font l'une derrière l'autre, tous bras compris ; la sonde de bande passante ouvre chaque répétition. Même invite (148 jetons, celle du #427), `--no-system --no-think` pour Herbert, **64 jetons générés pour tous** (Herbert `--max-tokens 64` : il s'arrête de lui-même vers 44 jetons sur le 0.8B, le nombre réel est lu sur la ligne `[turn 1]` ; les autres moteurs ignorent la fin de séquence).

| bras | commande (une par mesure) | préfill | décodage |
|---|---|---|---|
| Herbert (copie publiée) | `herbert-bf16-chat MODEL --threads T --no-system --no-think --max-tokens 64 --ask INVITE` | ligne `[turn 1]` | ligne `[turn 1]` |
| llama.cpp | `llama-bench -m GGUF -p 148 -n 0 -r 1 -t T -lm none`, puis (process séparé) `llama-bench -m GGUF -p 0 -n 64 -d 148 -r 1 -t T -lm none` ; échauffement par défaut | `avg_ts` du run pp148 | `avg_ts` du run tg64@148 |
| vLLM (défaut) et vLLM + zentorch | `vllm bench latency --dtype bfloat16 --language-model-only --max-model-len 1024 --batch-size 1 --input-len 148 --output-len {1,65} --num-iters-warmup 1 --num-iters 5`, `VLLM_CPU_OMP_THREADS_BIND=0-(T−1)`, `VLLM_CPU_KVCACHE_SPACE=8`, `LD_PRELOAD=libiomp5.so` ; venv `venv-vllm` (roue officielle 0.30.0+cpu) ou `venv-vllm-zen` (`vllm[zen]`, zentorch) | 148 / latence(sortie 1) | 64 / (latence(65) − latence(1)) |
| OpenVINO GenAI | `_ov_bench.py bench IR REF T 5 1` : `LLMPipeline` CPU, IR fp32 (poids bf16 exacts), `INFERENCE_PRECISION_HINT=bf16`, `KV_CACHE_PRECISION=bf16`, `DYNAMIC_QUANTIZATION_GROUP_SIZE=0`, **`ATTENTION_BACKEND=SDPA`**, `INFERENCE_NUM_THREADS=T` ; 1 génération d'échauffement puis 5 mesurées de 64 jetons (`ignore_eos`), mêmes 148 identifiants que la référence | médiane de 148 / TTFT | médiane de 1 / TPOT |
| sonde `probe-bw` | `probe-bw --gib 4 --passes 5 --threads LISTE` (lecture séquentielle émise par iced-x86 : 8 × `vmovdqa64` zmm, ou 16 × `vmovdqa` ymm sans AVX-512, un thread par cœur physique) | — | meilleure des 5 passes par nombre de threads, puis médiane des 5 répétitions |

vLLM et OpenVINO gardent plusieurs générations par process (leur démarrage coûte plus qu'une génération) : 1 + 5, comme vLLM dans S2 ; au #427 et au #435 c'était 3 + 10. llama.cpp passe de `-r 5` (#427) à `-r 1` en un process par mesure : S2 a montré que répéter dans le même process lui donne +2,6 à 2,7 % (`campaign-s2/protocol.md`, dépôt `2026-09-29-s2-protocole-llama`), avantage qu'aucun autre moteur ne reçoit.

## Bras par machine (T = nombre de threads ; « défaut » = tous les cœurs physiques, P)

| machine | P | Herbert | llama.cpp | vLLM | vLLM + zentorch | OpenVINO-SDPA | sonde (threads) |
|---|---|---|---|---|---|---|---|
| beast (Ryzen 9 9900X, Zen 5) | 12 | 12, 1, 2 (meilleur décodage au #431) | 12, 1 (meilleur décodage au #431) | 12 | 12 | 12, 4 (meilleur décodage au #435) | 1, 2, 4, 6, 8, 12 |
| beta (EPYC 4344P, Zen 4) | 8 | 8, 1, 4 (meilleur au #431) | 8, 1 | 8 | 8 | 8, 4 | 1, 2, 4, 6, 8 |
| omnibook (Core Ultra 7 258V, Lunar Lake, AVX2) | 4 P | 4, 1 | 4, 1 | 4 | — | — | 1, 2, 4 |

Modèles : Qwen3.5-0.8B, 2B, 4B, bf16 partout (safetensors pour Herbert et vLLM, GGUF bf16 `--no-mtp` pour llama.cpp, IR fp32 exécutée en bf16 pour OpenVINO). Sur beast les checkpoints sont dans `/opt3/models`, ailleurs dans `~/models/qwen` (omnibook : `~/models`). La copie publiée n'a pas le knob `--ne-convert` de la branche `zen6` (il n'est pas dans `main`) : sur l'omnibook elle prend le chemin AVX2 sans AVX-NE-CONVERT, ce que le lecteur obtient.

Placement : Herbert épingle ses workers lui-même (un par cœur physique) ; llama.cpp n'est pas épinglé ; vLLM est lié aux CPU 0 à T − 1 ; OpenVINO n'est pas épinglé (`INFERENCE_NUM_THREADS` seul). Sur beast (2 CCD), les points à T < 12 n'occupent pas forcément les mêmes cœurs d'un moteur à l'autre.

## Ce qu'on calcule

- Octets de poids relus par jeton décodé (bf16, partie langage, embeddings liés ; `notes/predictions.md`) : **0.8B 1,505 Go ; 2B 3,764 Go ; 4B 8,412 Go**.
- Part de la bande passante = décodage (jetons/s) × octets par jeton / BW, donnée **deux fois** : avec BW = sonde au même nombre de threads que le moteur, et avec BW = meilleure valeur de la sonde sur tous ses nombres de threads (sur beast 50,3 Go/s à 1 thread contre 44,2 à 12 au #431). Les deux viennent du même run que le moteur.
- Les préfills ne sont comparés qu'entre moteurs d'un même run ; aucun préfill d'Herbert n'est comparé à la campagne 1 tant que la bissection (ci-dessous) n'a pas expliqué l'écart `zen6` → copie.

## Bissection de l'écart de préfill (beast, 12 threads)

Bras, tous construits sur beast (`cargo build --release --locked`, rustc 1.98.0, cible gnu) sauf le premier : `zen6musl` (le binaire du #427, `88579c5` musl, sha `53bc98c1…`), `zen6gnu` (`88579c5`), `base` (`f69213f`, base de fusion de `zen6` et `main`), `review` (`81ebb6c`, `fault_in` sur le pool, premier commit de `main` touchant le x86 après la base), `prealign` (`6a7a917`, le commit dont #462 a vérifié la copie), `align` (`76bc95a`, alignement à la ligne de cache par défaut), `main` (`236dba5`), `pub` (la copie publiée). Qwen3.5-0.8B et 4B, même invite, `--threads 12 --max-tokens 64`, 5 répétitions entrelacées, ordre tourné, repos et garde d'inactivité comme ci-dessus ; préfill et décodage lus sur `[turn 1]`. Puis `--dump-asm` de chaque bras qui le possède (`zen6gnu`, `prealign`, `align`, `main`, `pub`) sur le 0.8B et `diff -r` des arbres de listings deux à deux.

## Exactitude

Sur chaque machine, par modèle : référence Hugging Face transformers **float32** (CPU, `venv-vllm`), même invite tokenisée par le gabarit de chat (sans système, réflexion désactivée), 32 jetons gloutons ; puis vLLM bf16 (mêmes identifiants), llama.cpp (`llama-server`, `/completion` avec la liste d'identifiants, `top_k 1`, 32 jetons), Herbert copie publiée (`--max-tokens 32`, ligne `[ids]`, 31 jetons comparés), OpenVINO 2026.4.1 SDPA (mêmes identifiants) et, en diagnostic, OpenVINO 2026.4.1 avec le backend par défaut (paged attention). Rapporté : nombre de jetons comparés et position du premier écart.

## OpenVINO : version et diagnostic du paged attention

Dernières versions sur PyPI au 2026-10-08 : openvino 2026.4.1, openvino-genai 2026.4.1.0, openvino-tokenizers 2026.4.1.0 (le #435 avait 2026.4.0). La campagne utilise 2026.4.1 (`venv-openvino-241`) sur les IR fp32 exportées au #435 avec optimum-intel 2.2.0 (même empreinte sur beast et beta). Diagnostic du #435 rejoué en 2026.4.1 sur beast, 0.8B : sorties gloutonnes avec `ATTENTION_BACKEND=PA` et `SDPA`, en bf16/bf16 et f32/f32 ; si PA diverge encore, logits en un passage (optimum-intel) et génération incrémentale, comme au #435. Recherche d'un ticket existant (bug #38256 cité par `notes/plan.md`, et les tickets Qwen3.5 / GatedDeltaNet de `openvinotoolkit/openvino` et `openvino.genai`), puis **texte du signalement seulement** : rien n'est ouvert ni publié.

## Machines et hygiène

- **beast** : aucune autre tâche de calcul lancée sur la machine pendant tous les runs ; `ffmpeg` / `hdmi_view` vérifiés avant chaque mesure (`_common.sh`), arrêt autorisé (#469) et consigné s'il a lieu.
- **beta** (production) : rien n'est arrêté ; tous les processus de mesure sous `nice -n 10` ; charge et processus relevés avant chaque mesure. Si `herbert-server` reçoit une requête pendant un run, le relevé le montre et le point est déclaré.
- **omnibook** : cœurs P seuls (`--threads 4`, `-t 4`, `VLLM_CPU_OMP_THREADS_BIND=0-3`) ; sur secteur ; mesures à priorité normale.
- Logs complets sur chaque machine (`~/c1/logs/`), rapatriés tels quels dans `campaign-c1/logs/<machine>/` puis déposés dans le wiki.

## Versions

Herbert : la copie publiée `~/Sources/herbert-jit-bf16` du Mac, arbre `db062002…` (sha256 des sha256 de tous les fichiers hors `target/`), identique à celle que S2 avait construite sur beast ; poussée telle quelle et construite sur chaque machine (`_setup-pub.sh`, empreinte du binaire dans le log). llama.cpp `b11177` (`1ab7e5ad2`, `GGML_NATIVE`). vLLM 0.30.0+cpu (torch 2.13.0+cpu), zentorch 2.13.0.0. OpenVINO 2026.4.1 / GenAI 2026.4.1.0. Sonde : la crate `probe-bw` (`scripts/probe-bw.rs`, iced-x86 1.21.0), construite sur chaque machine.

## Ce qui change par rapport à la campagne 1 (#427)

N = 3 → 5 ; llama.cpp `-r 5` → `-r 1` en un process par mesure ; vLLM 3 + 10 → 1 + 5 ; repos 15 s → 10 s plus garde d'inactivité ; Herbert `zen6@88579c5` musl → copie publiée construite sur place ; OpenVINO 2026.4.0, 3 + 10 → 2026.4.1, 1 + 5 ; la sonde dans le run (au #427 avant ou après) ; l'omnibook en plus. Les décodages se comparent à la campagne 1 (prédiction P6) ; les préfills seulement une fois la bissection lue.

## Ajout du 2026-10-08, 13:15 UTC — extension à deux machines Zen 3 AVX2 (white2, g5500), ce qui diffère sur Windows

Décision prise après le dépôt #530 : mesurer aussi white2 (Ryzen 7 5700G, Zen 3, 8 cœurs / 16 fils, AVX2 sans AVX-512, 121 Go de DDR4, Linux, rustc 1.98.1) et g5500 (Ryzen 5 5500GT, Zen 3, 6 cœurs / 12 fils, AVX2, 16 Go de DDR4-2133, Windows 11, rustc 1.98.0 MSVC) ; une troisième machine ne répond pas (port 22 fermé depuis beast à 13:00 UTC). Prédictions P13 à P18 dans `predictions-2.md` (commit `d31d0e9`) avant toute mesure sur ces machines. Le reste de ce protocole ne change pas : même invite, 64 jetons, N = 5 entrelacées, ordre tourné, un process par mesure, repos 10 s et garde d'inactivité ≥ 97 %, sonde dans le même run.

- **Bras** : Herbert (copie publiée, chemin AVX2, tous les cœurs physiques et 1 thread), llama.cpp (tous les cœurs physiques et 1 thread), sonde à 1, 2, 4, 8 (white2) et 1, 2, 4, 6 (g5500). Pas de vLLM ni d'OpenVINO : ni l'un ni l'autre n'est installé sur ces machines (vLLM demande une installation lourde ; OpenVINO n'est pas supporté sur ce chemin). Modèles : 0.8B, 2B, 4B (le 2B est téléchargé sur white2 ; les trois checkpoints sont copiés de beast sur g5500, mêmes empreintes).
- **white2 (Linux)** : `_c1.sh` et `_outputs.sh` tels quels, `ARMS="herbert:8 llama:8 herbert:1 llama:1"`, `OV=0`, pas de vLLM (pas de référence fp32 calculée sur place : l'exactitude compare aux `Qwen3.5-*.json` de beast, dont les 148 identifiants d'invite et les 32 de référence sont identiques sur les quatre machines Linux de C1). llama.cpp b11177 construit sur place (`GGML_NATIVE`), GGUF bf16 `--no-mtp` convertis sur place depuis les checkpoints (machine en Wi-Fi : rien de gros n'est copié par le réseau). La machine est au repos (redémarrée à 12:55 UTC, charge 0,06).
- **g5500 (Windows 11)** : la copie publiée construite avec `cargo build --release --locked` (chaîne `stable-x86_64-pc-windows-msvc`, `link.exe` de Visual Studio 2022 Community 14.44, 2 min 44 s, binaire `da677c921db1b025`). **La sonde `probe-bw` ne compile pas telle quelle sous Windows** (`mmap`, `mprotect`, `sched_setaffinity`, `sysconf` n'existent pas dans `libc` pour cette cible ; `logs/g5500/build-probe-bw-linux-crate-g5500.log`) : variante `_scripts/_probe-bw-win/` avec la **même boucle émise** par iced-x86 (16 × `vmovdqa` ymm, 134 octets, identique à l'octet près au noyau AVX2 de la sonde Linux) et seulement les quatre appels système remplacés (`VirtualAlloc`, `VirtualProtect`, `SetThreadAffinityMask` ; un thread par cœur physique, les jumeaux SMT étant les processeurs logiques adjacents sous Windows, d'où un pas de 2). **llama.cpp : pas de build natif** (ni `cmake` ni `cl` sur le PATH, pas de CMake dans Visual Studio) ; à la place, l'archive officielle `llama-b11177-bin-win-cpu-x64.zip` de la release b11177 (sha256 `7f11f910c9ef5907…`, `ggml-cpu-*.dll` à sélection par CPUID, la variante `haswell` = AVX2 sur Zen 3) : **binaire pré-compilé, pas natif, à lire comme tel** ; les GGUF sont ceux de beast (mêmes fichiers). Pilotes PowerShell `_c1-win.ps1`, `_outputs-win.ps1`, `_run-win.ps1`, mêmes en-têtes de log que les pilotes Linux ; repos `Start-Sleep 10` puis attente d'un `% Idle Time` ≥ 97 % (`Get-Counter`), charge relevée par `Win32_Processor.LoadPercentage` et les trois processus au plus de temps CPU (Windows n'a pas de `loadavg`) ; pas de `nice` (priorité normale) ; plan d'alimentation « Balanced » ; Defender (`MsMpEng`) actif en arrière-plan, non arrêté, consigné à chaque relevé. Exactitude : Herbert `--max-tokens 32` et `llama-server.exe` (mêmes identifiants) contre les `Qwen3.5-*.json` de beast ; pas de référence fp32 calculée sur place. Lancement détaché par `Start-Process` depuis la session SSH (shell `cmd`).
