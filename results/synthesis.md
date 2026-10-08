# Synthèse transversale (générée par `results/synthesis.py`)

Médianes de trois répétitions entrelacées. Pour chaque moteur, sa meilleure configuration mesurée (nombre de threads, zentorch pour vLLM, `--ne-convert` pour Herbert), indiquée entre parenthèses. bf16 partout, requête unique, prompt de 148 jetons. Bande passante de lecture mesurée par `probe-bw` (meilleur nombre de threads) : beast 50,3 Go/s à 1 thread (44,2 à 12), beta 54,1 à 8, omnibook 102,8 à 4 cœurs P.

## Décodage (jetons/s) — la bande passante

| machine | modèle | Herbert | llama.cpp | vLLM |
|---|---|---|---|---|
| beast | Qwen3.5-0.8B | 28.71 (2 threads) | **29.14** (1 thread) | 24.18 (12 threads + zentorch) |
| beast | Qwen3.5-2B | 11.80 (2 threads) | **12.49** (1 thread) | 10.67 (12 threads + zentorch) |
| beast | Qwen3.5-4B | 5.26 (2 threads) | **5.62** (1 thread) | 4.92 (12 threads + zentorch) |
| beta | Qwen3.5-0.8B | **33.95** (4 threads) | 31.98 (tous les cœurs (défaut)) | 26.60 (8 threads + zentorch) |
| beta | Qwen3.5-2B | **13.96** (4 threads) | 13.51 (8 threads) | 12.09 (8 threads + zentorch) |
| beta | Qwen3.5-4B | **6.22** (4 threads) | 6.00 (tous les cœurs (défaut)) | 5.63 (8 threads + zentorch) |
| omnibook | Qwen3.5-0.8B | **40.29** (4 cœurs P + --ne-convert) | 30.64 (4 cœurs P) | 35.63 (4 cœurs P) |
| omnibook | Qwen3.5-2B | **17.28** (4 cœurs P + --ne-convert) | 13.85 (4 cœurs P) | 16.59 (4 cœurs P) |
| omnibook | Qwen3.5-4B | **7.76** (4 cœurs P + --ne-convert) | 6.14 (4 cœurs P) | 6.98 (4 cœurs P) |

## Préfill (jetons/s, 148 jetons) — le calcul

| machine | modèle | Herbert | llama.cpp | vLLM |
|---|---|---|---|---|
| beast | Qwen3.5-0.8B | 1767 (8 threads) | 1025 (24 threads) | **1971** (12 threads + zentorch) |
| beast | Qwen3.5-2B | **983** (tous les cœurs) | 567 (24 threads) | 914 (12 threads + zentorch) |
| beast | Qwen3.5-4B | 409 (12 threads) | 277 (tous les cœurs (défaut)) | **419** (tous les cœurs (défaut)) |
| beta | Qwen3.5-0.8B | **1457** (tous les cœurs) | 725 (tous les cœurs (défaut)) | 1450 (tous les cœurs (défaut)) |
| beta | Qwen3.5-2B | **640** (tous les cœurs) | 391 (tous les cœurs (défaut)) | 640 (tous les cœurs (défaut)) |
| beta | Qwen3.5-4B | **270** (tous les cœurs) | 135 (16 threads) | 263 (tous les cœurs (défaut)) |
| omnibook | Qwen3.5-0.8B | 214 (4 cœurs P + --ne-convert) | **260** (4 cœurs P) | 124 (4 cœurs P) |
| omnibook | Qwen3.5-2B | **116** (4 cœurs P + --ne-convert) | 106 (4 cœurs P) | 77 (4 cœurs P) |
| omnibook | Qwen3.5-4B | **44** (4 cœurs P + --ne-convert) | 38 (4 cœurs P) | 27 (4 cœurs P) |

## Décodage × octets de poids par jeton, meilleure configuration, part de la bande passante mesurée

| machine | modèle | Herbert | llama.cpp | vLLM | sonde |
|---|---|---|---|---|---|
| beast | Qwen3.5-0.8B | 43.2 Go/s (86 %) | 43.9 Go/s (87 %) | 36.4 Go/s (72 %) | 50.3 |
| beast | Qwen3.5-2B | 44.4 Go/s (88 %) | 47.0 Go/s (93 %) | 40.2 Go/s (80 %) | 50.3 |
| beast | Qwen3.5-4B | 44.2 Go/s (88 %) | 47.3 Go/s (94 %) | 41.4 Go/s (82 %) | 50.3 |
| beta | Qwen3.5-0.8B | 51.1 Go/s (94 %) | 48.1 Go/s (89 %) | 40.0 Go/s (74 %) | 54.1 |
| beta | Qwen3.5-2B | 52.5 Go/s (97 %) | 50.8 Go/s (94 %) | 45.5 Go/s (84 %) | 54.1 |
| beta | Qwen3.5-4B | 52.3 Go/s (97 %) | 50.5 Go/s (93 %) | 47.4 Go/s (88 %) | 54.1 |
| omnibook | Qwen3.5-0.8B | 60.6 Go/s (59 %) | 46.1 Go/s (45 %) | 53.6 Go/s (52 %) | 102.8 |
| omnibook | Qwen3.5-2B | 65.0 Go/s (63 %) | 52.1 Go/s (51 %) | 62.4 Go/s (61 %) | 102.8 |
| omnibook | Qwen3.5-4B | 65.3 Go/s (64 %) | 51.7 Go/s (50 %) | 58.7 Go/s (57 %) | 102.8 |
