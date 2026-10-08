## Réglages par défaut (tous les cœurs physiques ; vLLM sans zentorch ; OpenVINO SDPA), médianes de 5 répétitions entrelacées

| machine | modèle | moteur | préfill (jetons/s) | décodage (jetons/s) | Go/s lus | % sonde, même nombre de threads | % meilleure sonde |
|---|---|---|---|---|---|---|---|
| beast | 0.8B | Herbert | 2 268 | 27.71 | 41.7 | 94.5 % | 83.3 % |
| beast | 0.8B | llama.cpp | 957 | 25.87 | 38.9 | 88.3 % | 77.8 % |
| beast | 0.8B | vLLM | 1 619 | 24.02 | 36.2 | 81.9 % | 72.3 % |
| beast | 0.8B | OpenVINO-SDPA | 1 297 | 23.74 | 35.7 | 81.0 % | 71.4 % |
| beast | 2B | Herbert | 1 103 | 11.51 | 43.3 | 98.2 % | 90.5 % |
| beast | 2B | llama.cpp | 529 | 11.15 | 42.0 | 95.1 % | 87.6 % |
| beast | 2B | vLLM | 869 | 10.63 | 40.0 | 90.7 % | 83.6 % |
| beast | 2B | OpenVINO-SDPA | 686 | 10.54 | 39.7 | 89.9 % | 82.9 % |
| beast | 4B | Herbert | 461 | 5.12 | 43.1 | 98.0 % | 85.8 % |
| beast | 4B | llama.cpp | 276 | 4.91 | 41.3 | 94.1 % | 82.3 % |
| beast | 4B | vLLM | 418 | 4.88 | 41.0 | 93.4 % | 81.7 % |
| beast | 4B | OpenVINO-SDPA | 303 | 4.81 | 40.5 | 92.1 % | 80.6 % |
| beta | 0.8B | Herbert | 1 664 | 33.30 | 50.1 | 92.8 % | 92.6 % |
| beta | 0.8B | llama.cpp | 636 | 31.88 | 48.0 | 88.8 % | 88.6 % |
| beta | 0.8B | vLLM | 1 465 | 26.43 | 39.8 | 73.6 % | 73.5 % |
| beta | 0.8B | OpenVINO-SDPA | 1 061 | 28.70 | 43.2 | 79.9 % | 79.8 % |
| beta | 2B | Herbert | 678 | 13.71 | 51.6 | 95.5 % | 95.3 % |
| beta | 2B | llama.cpp | 329 | 13.50 | 50.8 | 94.1 % | 93.9 % |
| beta | 2B | vLLM | 638 | 11.96 | 45.0 | 83.3 % | 83.1 % |
| beta | 2B | OpenVINO-SDPA | 525 | 12.79 | 48.1 | 89.1 % | 88.9 % |
| beta | 4B | Herbert | 282 | 6.15 | 51.7 | 95.8 % | 95.6 % |
| beta | 4B | llama.cpp | 133 | 5.95 | 50.0 | 92.6 % | 92.4 % |
| beta | 4B | vLLM | 262 | 5.60 | 47.1 | 87.2 % | 87.0 % |
| beta | 4B | OpenVINO-SDPA | 209 | 5.83 | 49.1 | 90.8 % | 90.6 % |
| omnibook | 0.8B | Herbert | 141 | 38.87 | 58.5 | 57.1 % | 57.1 % |
| omnibook | 0.8B | llama.cpp | 260 | 30.95 | 46.6 | 45.4 % | 45.4 % |
| omnibook | 0.8B | vLLM | 133 | 36.90 | 55.5 | 54.2 % | 54.2 % |
| omnibook | 2B | Herbert | 64 | 17.31 | 65.2 | 67.6 % | 67.6 % |
| omnibook | 2B | llama.cpp | 107 | 14.48 | 54.5 | 56.5 % | 56.5 % |
| omnibook | 2B | vLLM | 83 | 17.40 | 65.5 | 67.9 % | 67.9 % |
| omnibook | 4B | Herbert | 25 | 7.59 | 63.8 | 66.7 % | 66.7 % |
| omnibook | 4B | llama.cpp | 42 | 6.50 | 54.7 | 57.1 % | 57.1 % |
| omnibook | 4B | vLLM | 32 | 7.81 | 65.7 | 68.6 % | 68.6 % |
| white2 | 0.8B | Herbert | 287 | 20.78 | 31.3 | 91.1 % | 91.0 % |
| white2 | 0.8B | llama.cpp | 417 | 19.61 | 29.5 | 86.0 % | 85.8 % |
| white2 | 2B | Herbert | 134 | 8.63 | 32.5 | 97.0 % | 94.2 % |
| white2 | 2B | llama.cpp | 184 | 8.38 | 31.6 | 94.2 % | 91.5 % |
| white2 | 4B | Herbert | 52 | 3.87 | 32.6 | 95.0 % | 94.5 % |
| white2 | 4B | llama.cpp | 74 | 3.74 | 31.4 | 91.8 % | 91.3 % |
| g5500 | 0.8B | Herbert | 154 | 18.50 | 27.8 | 91.9 % | 89.4 % |
| g5500 | 0.8B | llama.cpp | 300 | 17.58 | 26.5 | 87.3 % | 84.9 % |
| g5500 | 2B | Herbert | 88 | 7.83 | 29.5 | 96.9 % | 94.6 % |
| g5500 | 2B | llama.cpp | 136 | 7.64 | 28.8 | 94.5 % | 92.3 % |
| g5500 | 4B | Herbert | 34 | 3.50 | 29.4 | 96.8 % | 94.2 % |
| g5500 | 4B | llama.cpp | 55 | 3.40 | 28.6 | 94.2 % | 91.7 % |

## Autres bras (réglés ou à 1 thread)

| machine | modèle | bras | préfill | décodage | Go/s lus | % sonde même T | % meilleure sonde |
|---|---|---|---|---|---|---|---|
| beast | 0.8B | Herbert 1 | 474 | 27.98 | 42.1 | 84.2 % | 84.2 % |
| beast | 0.8B | Herbert 2 | 867 | 28.94 | 43.6 | 95.2 % | 87.0 % |
| beast | 0.8B | llama.cpp 1 | 242 | 28.60 | 43.0 | 86.0 % | 86.0 % |
| beast | 0.8B | vLLM + zentorch 12 | 1 981 | 24.26 | 36.5 | 82.8 % | 73.0 % |
| beast | 0.8B | OpenVINO-SDPA 4 | 944 | 24.75 | 37.2 | 80.7 % | 74.4 % |
| beast | 2B | Herbert 1 | 197 | 11.72 | 44.1 | 92.2 % | 92.2 % |
| beast | 2B | Herbert 2 | 371 | 11.89 | 44.8 | 97.5 % | 93.5 % |
| beast | 2B | llama.cpp 1 | 76 | 12.46 | 46.9 | 98.0 % | 98.0 % |
| beast | 2B | vLLM + zentorch 12 | 920 | 10.67 | 40.2 | 91.1 % | 83.9 % |
| beast | 2B | OpenVINO-SDPA 4 | 451 | 11.00 | 41.4 | 89.5 % | 86.5 % |
| beast | 4B | Herbert 1 | 77 | 5.12 | 43.1 | 85.8 % | 85.8 % |
| beast | 4B | Herbert 2 | 148 | 5.26 | 44.2 | 96.4 % | 88.1 % |
| beast | 4B | llama.cpp 1 | 42 | 5.37 | 45.1 | 89.9 % | 89.9 % |
| beast | 4B | vLLM + zentorch 12 | 391 | 4.90 | 41.2 | 93.9 % | 82.1 % |
| beast | 4B | OpenVINO-SDPA 4 | 184 | 5.02 | 42.2 | 91.3 % | 84.1 % |
| beta | 0.8B | Herbert 1 | 272 | 26.86 | 40.4 | 86.8 % | 74.7 % |
| beta | 0.8B | Herbert 4 | 984 | 33.81 | 50.9 | 94.3 % | 94.0 % |
| beta | 0.8B | llama.cpp 1 | 154 | 26.80 | 40.3 | 86.6 % | 74.5 % |
| beta | 0.8B | vLLM + zentorch 8 | 1 341 | 26.86 | 40.4 | 74.8 % | 74.6 % |
| beta | 0.8B | OpenVINO-SDPA 4 | 609 | 26.96 | 40.6 | 75.2 % | 74.9 % |
| beta | 2B | Herbert 1 | 108 | 11.83 | 44.5 | 96.0 % | 82.3 % |
| beta | 2B | Herbert 4 | 399 | 13.89 | 52.3 | 96.8 % | 96.6 % |
| beta | 2B | llama.cpp 1 | 62 | 9.70 | 36.5 | 78.8 % | 67.5 % |
| beta | 2B | vLLM + zentorch 8 | 572 | 12.05 | 45.4 | 84.0 % | 83.8 % |
| beta | 2B | OpenVINO-SDPA 4 | 277 | 12.01 | 45.2 | 83.7 % | 83.5 % |
| beta | 4B | Herbert 1 | 42 | 5.34 | 44.9 | 97.4 % | 83.0 % |
| beta | 4B | Herbert 4 | 160 | 6.20 | 52.2 | 96.6 % | 96.4 % |
| beta | 4B | llama.cpp 1 | 20 | 4.92 | 41.4 | 89.7 % | 76.5 % |
| beta | 4B | vLLM + zentorch 8 | 238 | 5.66 | 47.6 | 88.2 % | 88.0 % |
| beta | 4B | OpenVINO-SDPA 4 | 112 | 5.44 | 45.7 | 84.7 % | 84.5 % |
| omnibook | 0.8B | Herbert 1 | 44 | 14.69 | 22.1 | 58.9 % | 21.6 % |
| omnibook | 0.8B | llama.cpp 1 | 77 | 15.05 | 22.6 | 60.3 % | 22.1 % |
| omnibook | 2B | Herbert 1 | 21 | 6.53 | 24.6 | 65.2 % | 25.5 % |
| omnibook | 2B | llama.cpp 1 | 31 | 6.42 | 24.2 | 64.0 % | 25.0 % |
| omnibook | 4B | Herbert 1 | 8 | 2.93 | 24.6 | 65.8 % | 25.7 % |
| omnibook | 4B | llama.cpp 1 | 12 | 2.94 | 24.7 | 66.0 % | 25.8 % |
| white2 | 0.8B | Herbert 1 | 46 | 12.75 | 19.2 | 71.2 % | 55.8 % |
| white2 | 0.8B | llama.cpp 1 | 67 | 12.45 | 18.7 | 69.5 % | 54.5 % |
| white2 | 2B | Herbert 1 | 22 | 5.52 | 20.8 | 76.8 % | 60.3 % |
| white2 | 2B | llama.cpp 1 | 27 | 5.21 | 19.6 | 72.6 % | 56.9 % |
| white2 | 4B | Herbert 1 | 8 | 2.43 | 20.4 | 75.4 % | 59.4 % |
| white2 | 4B | llama.cpp 1 | 11 | 2.29 | 19.3 | 71.1 % | 55.9 % |
| g5500 | 0.8B | Herbert 1 | 38 | 12.06 | 18.2 | 73.1 % | 58.2 % |
| g5500 | 0.8B | llama.cpp 1 | 67 | 11.56 | 17.4 | 70.1 % | 55.9 % |
| g5500 | 2B | Herbert 1 | 18 | 5.27 | 19.8 | 79.1 % | 63.7 % |
| g5500 | 2B | llama.cpp 1 | 27 | 4.92 | 18.5 | 73.7 % | 59.4 % |
| g5500 | 4B | Herbert 1 | 7 | 2.34 | 19.7 | 78.2 % | 63.0 % |
| g5500 | 4B | llama.cpp 1 | 10 | 2.20 | 18.5 | 73.6 % | 59.3 % |

## Sonde de lecture (Go/s, meilleure des 5 passes par répétition, médiane des 5 répétitions ; bloc du 4B)

| machine | 1 thread | 2 threads | 4 threads | 6 threads | 8 threads | 12 threads |
|---|---|---|---|---|---|---|
| beast | 50.2 | 45.9 | 46.2 | 45.9 | 45.1 | 43.9 |
| beta | 46.1 | 53.0 | 54.0 | 54.1 | 54.0 | — |
| omnibook | 37.5 | 68.0 | 95.7 | — | — | — |
| white2 | 27.1 | 34.4 | 34.4 | — | 34.2 | — |
| g5500 | 25.2 | 31.2 | 31.2 | 30.4 | — | — |
