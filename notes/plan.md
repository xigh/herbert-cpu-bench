# Cadre et plan (2026-09-25)

## La position de l'auteur, pour la publication

Il ne s'agit pas d'être premier partout, même si c'est plaisant. Herbert est un moteur dont chaque noyau est émis par JIT ; il tourne sur x86-64, sur AArch64 et bientôt sur RISC-V — trois architectures, ce qui n'est pas rien — et il reste optimisable. Cette portabilité permet des analyses que les autres moteurs ne permettent pas et étaye la thèse : **pas besoin d'un GPU pour le décodage, à condition d'avoir une bande passante mémoire suffisante — ce qu'aucune machine grand public ne propose pour le moment.**

Comparaisons souhaitées pour être honnête : une machine AMD à mémoire unifiée large (APU Strix Halo, Radeon 8060S, ≈ 256 Go/s) ou un NVIDIA GB10 (DGX Spark, ≈ 273 Go/s), CPU contre GPU sur la même mémoire ; et, ici, la version Metal d'Herbert sur le MacBook Air M5 contre sa version CPU AArch64.

## Fait

- Campagne 1 : Herbert, llama.cpp, vLLM (réglages par défaut) × Qwen3.5 0.8B / 2B / 4B × beast et beta ; bande passante mesurée ; prédictions P1–P5 enregistrées avant, aucune réfutée (`results/`).

## À faire

1. **Exactitude des sorties.** Référence : Hugging Face transformers en fp32 (CPU), décodage glouton de 32 jetons sur le même prompt (148 jetons, même gabarit de chat, sans réflexion). Pour chaque moteur en bf16 : identifiants des jetons générés, position du premier jeton qui diffère de la référence, texte. Un écart tardif est attendu en bf16 ; un écart dès les premiers jetons signalerait un calcul faux.
2. **Campagne 2, réglages des concurrents.** vLLM avec l'extra `zen` (zentorch pour les couches linéaires sur Zen), dans un venv séparé ; llama.cpp avec balayage des threads (beast 1, 2, 4, 6, 8, 12, 24 ; beta 1, 2, 4, 8, 16) ; Herbert balayé de même pour des courbes comparables.
3. **omnibook** (Lunar Lake, sans AVX-512, avec AVX-NE-CONVERT) : Herbert chemin AVX2 avec et sans `--ne-convert`, cœurs P seuls (4) et tous (8) ; llama.cpp si les téléchargements nécessaires restent raisonnables sur le partage de connexion.
4. **OpenVINO** sur les trois machines, sans quantification (voir le journal pour les pièges), exactitude validée contre la référence fp32 avant tout chiffre (bug bf16 #38256).
5. **Requêtes simultanées** (2 à 10) : vLLM (`vllm bench throughput` / serveur), llama.cpp (`llama-batched-bench`, serveur `-np N`), Herbert : `herbert-bf16-chat` ne sert qu'une conversation à la fois — vérifier ce que le moteur sait faire (batch de décodage, serveur) avant de le comparer.
6. **M5** : Herbert AArch64 (CPU, NEON/SME) contre Herbert Metal (GPU) sur les mêmes modèles.
