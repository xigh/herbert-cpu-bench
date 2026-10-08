# Évaluation des prédictions C1

Fichier séparé de `predictions.md` (commit `4eff6b8`, jamais retouché) et de `predictions-2.md` (commit `d31d0e9`, idem). Évalué le 2026-10-08 contre `results/c1-<machine>.csv` (médianes de 5 répétitions entrelacées, `_scripts/_analyze.py`), `results/bisect-beast.csv`, `results/outputs-agreement.md`, `logs/beast/ovdiag-beast-20261008T111845Z.log`. Les réponses sont « non réfutée », « réfutée » ou « partiellement », avec les chiffres ; ce n'est pas un jugement sur Herbert. g5500 (Windows) est évalué dans la section de l'extension Zen 3. `BW(T)` = sonde au nombre de threads du bras ; `BW*` = meilleure sonde de la machine (même run).

| | prédiction | statut | chiffres |
|---|---|---|---|
| P6 | le binaire publié reproduit la campagne 1 à ±2 % au décodage **et** au préfill, beast et beta, T = P | **décodage non réfutée ; préfill réfutée** | décodage beast +0,4 / +0,3 / −0,6 %, beta −0,3 / −0,4 / 0,0 % ; préfill beast **+29,5 / +12,2 / +13,3 %**, beta **+14,2 / +6,0 / +4,3 %** — expliqué par la bissection (#529) : l'alignement des buffers du commit `76bc95a`, absent du binaire `zen6` de la campagne 1 |
| P10 | bissection : ≥ 80 % de l'écart `zen6` → copie entre `prealign` et `align` ; musl/gnu < 3 % ; listings identiques | **non réfutée au 0.8B, partiellement au 4B** | 0.8B : 102 % de l'écart logarithmique dans le pas `prealign` → `align` ✓, musl/gnu −0,4 % ✓ ; 4B : **62 %** dans ce pas, **musl/gnu +4,6 %** (32 % de l'écart) ; `base`, `review`, `prealign` à ±1 % de `zen6gnu` ✓, `main` et `pub` à ±0,5 % de `align` ✓ ; décodage dans ±0,5 % ✓ ; 90 listings identiques de `zen6gnu` à `pub` ✓ |
| P11 | OpenVINO 2026.4.1 : PA diverge encore au jeton 2 (bf16/bf16 et f32/f32), SDPA identique, décodage SDPA à ±4 % du #435 | **non réfutée** | PA jeton 2 dans les deux paires (2026.4.1 et 2026.4.0), paires mixtes refusées, SDPA identique ×4 ; décodage SDPA à T = P beast 23,74 / 10,54 / 4,81 contre 23,76 / 10,54 / 4,83 (#435), beta 28,70 / 12,79 / 5,83 contre 28,40 / 12,77 / 5,86 : ±1 % |

## Extension Zen 3 AVX2 (`predictions-2.md`), white2 et g5500

| | prédiction | statut | chiffres (white2 ; g5500) |
|---|---|---|---|
| P13 | Herbert à T = P ≥ 93 % de BW(P) sur 2B et 4B ; attente : 80–93 % au 0.8B (white2), 4B oui et 2B incertain (g5500) | **non réfutée** | white2 97,0 / 95,0 % (2B / 4B), 0.8B 91,1 ; g5500 96,9 / 96,8 %, 0.8B 91,9 |
| P14 | llama.cpp devant Herbert au préfill du 0.8B d'au moins 30 % ; devant au 2B ; au 4B de 0 à 60 % | **non réfutée** | white2 +45 / +37 / +42 % ; g5500 +95 / +55 / +59 % (le 4B à la limite haute) |
| P15 | Herbert devant llama.cpp au décodage de 5 à 25 % à T = P | **partiellement réfutée** | white2 +6,0 % ✓, **+3,0 et +3,5 % sous les 5 %** ; g5500 +5,2 % ✓, **+2,5 et +2,8 % sous les 5 %** |
| P16 | Herbert AVX2 identique à la référence (31 jetons) sur les deux machines, mêmes identifiants Linux et Windows ; llama.cpp identique | **non réfutée** | identiques sur les trois modèles, sur les deux machines, dans les deux runs de g5500 ; identifiants d'Herbert identiques Linux / Windows |
| P17 | sonde white2 entre 35 et 50 Go/s à 8 threads, supérieure à 1 thread ; g5500 du même ordre à 6 | **partiellement réfutée** | white2 33,5–34,3 Go/s à 8 threads (**sous 35**), 27,0 à 1 ✓, plateau dès 2 threads ; g5500 30,3–30,4 à 6, **31,2 au mieux (2–4 threads), sous la fourchette**, 24,8–25,2 à 1 ✓ |
| P18 | Windows contre Linux : décodage × octets / sonde à ±10 % ; la sonde compile sous Windows sans modification | **comparaison non réfutée ; sonde réfutée** | g5500 94,6 / 94,2 % de la meilleure sonde contre white2 94,2 / 94,5 % (2B / 4B) : ±1 % ; la sonde Linux ne compile pas sous Windows (`mmap`, `mprotect`, `sched_setaffinity`, `sysconf`), variante `_probe-bw-win` aux mêmes instructions émises |

## Ce que l'expérience a montré et que nous n'avions pas prédit

- **vLLM devant Herbert au décodage sur l'omnibook** (2B et 4B, de 0,5 et 2,9 %) : au #431 Herbert était devant partout ; vLLM a gagné 4 à 12 % entre les deux campagnes (protocole 1 + 5, machine au bureau ouvert), Herbert 1 à 4 %.
- **L'alignement des buffers ne change rien au préfill AVX2** : sur l'omnibook la copie alignée préfille comme `zen6` non aligné (140,7 contre 139 ; 64,1 contre 63 ; 24,8 contre 24,2), alors qu'elle gagne +29 % sur beast en AVX-512.
- **Le build compte au 4B** : `88579c5` construit sur beast (gnu) préfille 4,6 % au-dessus du même commit construit en musl sur le Mac, au 0.8B rien.
- **Sur une DDR4 lente (white2, 34 Go/s), le chemin AVX2 d'Herbert atteint 91–97 % de la sonde** là où sur la LPDDR5X de l'omnibook (96–103 Go/s) il plafonne à 57–68 % : la part de bande passante atteinte dépend du rapport entre la vitesse de la mémoire et ce que les cœurs savent en tirer, pas seulement du moteur.
- **La sonde à 1 thread est le point le plus dispersé** (beast 3 à 18 % entre répétitions, beta 1 à 3 %), alors qu'à tous les cœurs elle l'est de 0,1 à 1 % : la « meilleure sonde » de beast (un thread) est moins sûre que celle à 12 threads.
- **Sous Windows, Herbert n'épingle pas ses workers** (`[pool] 6 workers on cpus [-,-,-,-,-,-]`) : le décodage n'en souffre pas (0,3 à 0,8 % d'écart entre répétitions, 92–97 % de la sonde) mais le préfill à 6 threads est dispersé de 6 à 13 %.
- **Le paged attention d'OpenVINO est faux sur les trois modèles**, pas seulement au 0.8B : jetons 2, 13 et 1, et au 4B la phrase change dès le premier mot.
