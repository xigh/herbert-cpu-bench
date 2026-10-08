# Évaluation des prédictions (`notes/predictions.md`, commit `98f0486`)

Évaluées le 2026-09-25 après les campagnes complètes des deux machines, sur les médianes de `results/summary.md`. Le fichier des prédictions n'a pas été modifié.

**P1 — borne physique : non réfutée.** 18 cas ; le plus proche de la borne : beast, Qwen3.5-4B, Herbert, 43.3 Go/s effectifs pour une borne de 46.4 Go/s (93 %). 0 violation(s).

**P2 — la thèse : non réfutée.** Herbert, part de la bande passante mesurée : beast Qwen3.5-2B 97.7 %, beast Qwen3.5-4B 98.0 %, beta Qwen3.5-2B 95.7 %, beta Qwen3.5-4B 95.6 % (seuil 75 %).

**P3 — le décodage suit la taille : non réfutée.** Rapports 0.8B/4B (attendu 5,59 ± 20 %) et 0.8B/2B (2,50 ± 20 %) : beast herbert 5.36 et 2.41, beast llama.cpp 5.25 et 2.32, beta herbert 5.43 et 2.43, beta llama.cpp 5.33 et 2.37.

**P4 — préfill de llama.cpp inférieur : non réfutée.** llama.cpp contre Herbert : beast Qwen3.5-2B 528 < 983, beast Qwen3.5-4B 277 < 407, beta Qwen3.5-2B 391 < 640, beta Qwen3.5-4B 133 < 270.

**P5 — le décodage suit la machine : non réfutée.** BW(beast)/BW(beta) = 0.817 (± 15 % : 0.694 à 0.940) ; Herbert décodage beast/beta : Qwen3.5-2B 0.834, Qwen3.5-4B 0.837.

**Aucune prédiction réfutée.** Ce qui les aurait réfutées n'a pas été observé : aucun moteur ne décode au-delà de la bande passante mesurée ; Herbert reste à 95–98 % de ce plafond sur 2B et 4B ; le décodage suit la taille du modèle et la bande passante de la machine. Portée : deux machines, une requête unique, un prompt de 148 jetons, les réglages par défaut de llama.cpp et de vLLM.
