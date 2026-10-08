# Résultats, médianes de trois répétitions entrelacées (jetons/s)

Extraits par `results/extract.py` des logs `logs/beast/campaign-beast-20260925T062328Z.log` et `logs/beta/campaign-maistrow-20260925T061257Z.log` ; valeurs par répétition dans `results/beast.csv`, `results/beta.csv`. Tous les cœurs physiques (12 sur beast, 8 sur beta), bf16, requête unique, prompt de 148 jetons.

| machine | modèle | Herbert préfill | llama.cpp préfill | vLLM préfill | Herbert décodage | llama.cpp décodage | vLLM décodage |
|---|---|---|---|---|---|---|---|
| beast | Qwen3.5-0.8B | 1751 | 944 | 1612 | 27.60 | 25.85 | 24.01 |
| beast | Qwen3.5-2B | 983 | 528 | 869 | 11.47 | 11.13 | 10.62 |
| beast | Qwen3.5-4B | 407 | 277 | 419 | 5.15 | 4.93 | 4.90 |
| beta | Qwen3.5-0.8B | 1457 | 725 | 1450 | 33.41 | 31.98 | 26.29 |
| beta | Qwen3.5-2B | 640 | 391 | 640 | 13.76 | 13.50 | 11.91 |
| beta | Qwen3.5-4B | 270 | 133 | 263 | 6.15 | 6.00 | 5.58 |

Bande passante de lecture mesurée (`probe-bw`, tous les cœurs physiques, meilleure de 5 passes) : beast 44,20 Go/s (50,31 à 1 thread), beta 54,10 Go/s (45,44 à 1 thread).

## Décodage × octets de poids par jeton (Go/s effectifs) et part de la bande passante mesurée

| machine | modèle | Herbert | llama.cpp | vLLM |
|---|---|---|---|---|
| beast | Qwen3.5-0.8B | 41.5 (94 %) | 38.9 (88 %) | 36.1 (82 %) |
| beast | Qwen3.5-2B | 43.2 (98 %) | 41.9 (95 %) | 40.0 (90 %) |
| beast | Qwen3.5-4B | 43.3 (98 %) | 41.4 (94 %) | 41.2 (93 %) |
| beta | Qwen3.5-0.8B | 50.3 (93 %) | 48.1 (89 %) | 39.6 (73 %) |
| beta | Qwen3.5-2B | 51.8 (96 %) | 50.8 (94 %) | 44.8 (83 %) |
| beta | Qwen3.5-4B | 51.7 (96 %) | 50.5 (93 %) | 47.0 (87 %) |
