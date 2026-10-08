# Prédictions C1 — enregistrées avant les mesures

Enregistrées le 2026-10-08 vers 11:20 UTC ; le commit git qui introduit ce fichier en fait foi. Chaque prédiction est formulée pour pouvoir être **réfutée** par les mesures de C1 (`protocol.md`) ; aucune ne sera reformulée après coup (une révision = un nouveau fichier daté, celui-ci restant tel quel). L'évaluation ira dans un fichier à part.

## Déjà observé à l'heure de l'enregistrement (exclu du test)

- Campagne 1 (#427, `results/summary.md`) : beast 12 threads, décodage Herbert 27,60 / 11,47 / 5,15 jetons/s (0.8B / 2B / 4B), llama.cpp 25,85 / 11,13 / 4,93, vLLM 24,01 / 10,62 / 4,90 ; préfill Herbert 1 751 / 983 / 407 ; beta 8 threads, décodage Herbert 33,41 / 13,76 / 6,15, llama.cpp 31,98 / 13,50 / 6,00, vLLM 26,29 / 11,91 / 5,58, préfill Herbert 1 457 / 640 / 270. Sonde : beast 44,2 Go/s à 12 threads, 50,3 à 1 ; beta 54,1 à 8, 45,4 à 1.
- Campagne 2 (#431) : llama.cpp à 1 thread sur beast 29,14 / 12,49 / 5,62 ; vLLM + zentorch sur beast 1 971 / 914 / 386 au préfill, 24,18 / 10,67 / 4,92 au décodage ; sur beta zentorch ralentit le préfill (1 335, 566, 238). Omnibook sans `--ne-convert` : Herbert 139 / 38,46 (0.8B), 63 / 16,70 (2B), 24,2 / 7,43 (4B) ; llama.cpp 260 / 30,64, 107 / 13,85, 37,6 / 6,14 ; vLLM 124 / 35,63, 77 / 16,59, 27,1 / 6,98 ; sonde 102,8 Go/s à 4 cœurs P.
- OpenVINO 2026.4.0 (#435) : SDPA exact sur beast (trois modèles) ; beta 0.8B diverge au jeton 13 ; PA diverge au jeton 2 même en f32 ; meilleurs décodages beast 24,86 / 10,98 / 5,00, beta 28,43 / 12,77 / 5,86.
- Exactitude (#431) : Herbert et vLLM identiques à la référence fp32 sur les trois modèles et les deux machines ; llama.cpp diverge au jeton 13 sur le 0.8B.
- S2 étape 0 (#470) : la copie publiée décode comme `zen6` (±0,5 %) et comme la campagne 2 ; au préfill à 12 threads elle est à ×1,29 (0.8B) et ×1,13 (4B) de `zen6`. Balayages S2 (#473) : à tous les cœurs Herbert devant llama.cpp de +7,9 / +3,5 / +4,4 % sur beast, de +4,3 / +2,4 % sur beta (0.8B / 4B) ; à 1 thread sur beast llama.cpp devant de 3,8 / 2,8 / 1,9 %. Alignement des buffers (#443) : +14 % au préfill de 17 jetons et +2 % à 1 666 jetons sur beast 4B.

## Quantités de référence

Octets de poids relus par jeton décodé : **0.8B 1,505 Go ; 2B 3,764 Go ; 4B 8,412 Go**. `BW(T)` = sonde `probe-bw` à T threads dans le même run (meilleure des 5 passes, médiane des 5 répétitions) ; `BW*` = la meilleure valeur de la sonde sur ses nombres de threads.

## Prédictions

**P1 — borne physique.** Pour tout bras × machine × modèle : `décodage × octets par jeton ≤ 1,05 × BW*`. Une violation signifierait que le compte d'octets est faux ou que la sonde sous-estime.

**P2 — la thèse.** Herbert à T = P, sur 2B et 4B, sur beast et beta : `décodage × octets par jeton ≥ 0,75 × BW*`. Sur l'omnibook : **non** (entre 0,55 et 0,70 × BW*, comme au #431).

**P3 — le décodage suit la taille du modèle.** Pour Herbert et llama.cpp à T = P, sur chaque machine : `décodage(0.8B) / décodage(4B)` dans ±20 % de 5,59 et `décodage(0.8B) / décodage(2B)` dans ±20 % de 2,50.

**P4 — le préfill de llama.cpp.** Sur 2B et 4B, à T = P, le préfill de llama.cpp est sous celui d'Herbert sur beast et beta (AVX-512 BF16). Sur l'omnibook (AVX2 sans AVX-NE-CONVERT dans la copie), llama.cpp est **devant** Herbert au préfill sur les trois modèles.

**P5 — le décodage suit la machine.** Pour Herbert à T = P, sur 2B et 4B : `décodage(beast) / décodage(beta)` dans ±15 % de `BW(12, beast) / BW(8, beta)`.

**P6 — le binaire publié reproduit la campagne 1** à ±2 % près au décodage **et** au préfill, sur beast et beta, à T = P (prédiction demandée telle quelle ; #462 avait montré copie = source à −0,45…0 %, mais contre `riscv64@6a7a917`, pas `zen6`).

**P7 — part de la bande passante.** Sur chaque machine et chaque modèle, Herbert à T = P tire au décodage au moins 93 % de `BW(P)` (la sonde au même nombre de threads) sur beast et beta. Contre `BW*` : au moins 93 % sur beta, **entre 84 et 90 % sur beast** (un thread y lit plus que douze), **entre 55 et 70 % sur l'omnibook**.

**P8 — au décodage, à réglages par défaut (T = P, vLLM sans zentorch, OpenVINO SDPA à T = P), Herbert est devant llama.cpp, vLLM et OpenVINO** sur beast et beta, sur les trois modèles, d'au moins 1 %. Sur l'omnibook, Herbert devant llama.cpp et vLLM sur les trois modèles (2B : de moins de 2 %). Cas à rapporter, pas à exclure : **llama.cpp à 1 thread sur beast est devant Herbert à 12 threads** sur les trois modèles, de 0 à 5 % ; sur beta, llama.cpp à 1 thread reste sous Herbert à T = P.

**P9 — exactitude.** Herbert, vLLM et OpenVINO-SDPA sont identiques à la référence float32 sur 32 jetons (31 pour Herbert) sur les trois modèles et sur beast et beta (Herbert et vLLM aussi sur l'omnibook) ; llama.cpp diverge au 0.8B au jeton 13 sur les quatre machines et nulle part ailleurs. Exception déjà vue, attendue de nouveau : OpenVINO-SDPA au 0.8B sur beta diverge au jeton 13 (#435).

**P10 — bissection du préfill (beast, 12 threads).** L'écart `zen6` → copie (×1,29 au 0.8B, ×1,13 au 4B au #470) apparaît **entre `prealign` (6a7a917) et `align` (76bc95a)** : au moins 80 % de l'écart logarithmique s'y trouve ; `zen6musl`, `zen6gnu`, `base`, `review`, `prealign` sont dans ±3 % les uns des autres (donc musl contre gnu < 3 %) ; `align`, `main`, `pub` dans ±2 % les uns des autres. Au décodage, les huit bras sont dans ±1,5 %. Listings `--dump-asm` : identiques entre `prealign`, `align`, `main` et `pub` pour les noyaux x86 (l'alignement change le placement des buffers, pas le code émis) ; entre `zen6gnu` et `prealign` seul le GEMM AVX2 peut différer (knob `--ne-convert`), pas les noyaux AVX-512.

**P11 — OpenVINO 2026.4.1.** Le backend paged attention diverge encore de la référence fp32 au jeton 2 sur le 0.8B (bf16/bf16 et f32/f32) ; SDPA reste identique sur 32 jetons ; le décodage OpenVINO-SDPA à T = P sur beast et beta est à ±4 % de celui du #435 (2026.4.0, 3 + 10 itérations).

**P12 — sondes.** beast : `BW(1) > BW(12)` de nouveau (de 10 à 16 %) ; beta : `BW(8) > BW(1)` ; omnibook : `BW(4)` entre 95 et 110 Go/s.

## Ce qui réfuterait la thèse de l'article

P2 fausse sur beast ou beta (Herbert nettement sous le plafond mémoire sur 2B et 4B), ou P5 fausse (le rapport entre machines ne suit pas leur bande passante), ou P1 fausse (un moteur au-delà de la sonde : le compte d'octets ou la sonde seraient faux).
