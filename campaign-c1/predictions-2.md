# Prédictions C1, extension Zen 3 AVX2 (white2, g5500) — enregistrées avant les mesures sur ces machines

Enregistrées le 2026-10-08 vers 13:05 UTC, après le dépôt #530 et avant toute mesure sur white2 et g5500 ; le commit git qui introduit ce fichier en fait foi. `predictions.md` n'est pas retouché (ses P1 à P12 restent tels quels ; les numéros ci-dessous continuent à partir de P13 pour ne pas les recouvrir).

## Déjà observé (exclu du test)

- Sur l'omnibook (AVX2 sans AVX-512, Lunar Lake, LPDDR5X 102,8 Go/s), #431 : Herbert sans `--ne-convert` 139 / 38,46 (0.8B), 63 / 16,70 (2B), 24,2 / 7,43 (4B) ; llama.cpp 260 / 30,64, 107 / 13,85, 37,6 / 6,14 ; aucun moteur au-dessus de 64 % de la sonde au décodage. Sur beast forcé en AVX2 (`--force-avx2`, #431) : préfill ×3,9 à ×4,5 plus lent qu'en AVX-512, décodage ×1,00 à tous les cœurs, ×1,13–1,18 plus lent à un seul cœur.
- C1, exactitude sur l'omnibook : llama.cpp identique à la référence fp32 sur les trois modèles (pas de bascule au jeton 13 sans AVX-512 BF16) ; Herbert identique (31 jetons).
- Machines : white2, Ryzen 7 5700G (Zen 3, 8 cœurs, 16 fils, AVX2, L3 16 Mio, 121 Go de DDR4, Linux, rustc 1.98.1) ; g5500, Ryzen 5 5500GT (Zen 3, 6 cœurs, 12 fils, AVX2, Windows 11, rustc 1.98.0, sans cmake ni cl au relevé).

## Prédictions

**P13 — part de la bande passante sur Zen 3 AVX2.** Sur white2 et g5500, Herbert (copie publiée, chemin AVX2, tous les cœurs physiques) tire au décodage **au moins 93 %** de la bande passante mesurée par la sonde au même nombre de threads, sur 2B et 4B (formulation demandée par Philippe). Mon attente, écrite pour être confrontée : sur une DDR4 double canal (≈ 40–50 Go/s mesurés), 8 cœurs Zen 3 AVX2 suffisent à saturer la mémoire, donc oui sur white2 pour 2B et 4B, entre 80 et 93 % au 0.8B ; sur g5500 (6 cœurs) oui aussi sur 4B, incertain (80–93 %) sur 2B.

**P14 — préfill du 0.8B sur AVX2.** Sur white2 et g5500, au 0.8B, **llama.cpp est devant Herbert au préfill** (comme sur l'omnibook, #431 : 260 contre 139 jetons/s), d'au moins 30 % ; au 4B l'écart se resserre (llama.cpp devant de 0 à 60 %) ; au 2B llama.cpp devant.

**P15 — décodage, Herbert contre llama.cpp sur AVX2.** À tous les cœurs physiques, Herbert décode plus vite que llama.cpp sur les trois modèles sur white2 (de 5 à 25 %, comme sur l'omnibook : +25 %, +20 %, +21 %) ; de même sur g5500.

**P16 — exactitude sur AVX2.** Herbert (copie publiée, chemin AVX2) rend les 31 mêmes identifiants que la référence float32 (les `Qwen3.5-*.json` de C1) sur les trois modèles, sur white2 et sur g5500 (mêmes identifiants Linux et Windows) ; llama.cpp (AVX2, sans AVX-512 BF16) identique à la référence sur les trois modèles, comme sur l'omnibook.

**P17 — sondes.** white2 : bande passante de lecture entre 35 et 50 Go/s à 8 threads, supérieure à celle à 1 thread (un cœur Zen 3 ne sature pas la DDR4) ; g5500 : même ordre à 6 threads.

**P18 — Windows contre Linux.** À nombre de cœurs égal, le décodage de la copie publiée sous Windows (g5500) et sous Linux (white2) est borné par la même mémoire : les deux machines donnent un décodage × octets par jeton dans ±10 % l'une de l'autre si leurs sondes sont dans ±10 % ; la sonde iced-x86 compile et tourne sous Windows sans modification.
