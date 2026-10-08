# Prédictions enregistrées avant les mesures

Enregistrées le 2026-09-25 vers 06:20 UTC ; le commit git qui introduit ce fichier en fait foi. Chaque prédiction est formulée pour pouvoir être **réfutée** par les mesures qui suivent ; aucune ne sera reformulée après coup (une révision éventuelle sera un nouveau fichier daté, celui-ci restant tel quel).

## Déjà observé à l'heure de l'enregistrement (donc exclu du test)

- Herbert seul sur Qwen3.5-0.8B, beast et beta, 1 thread et tous les threads (wiki #424, #425).
- Sur beta, Qwen3.5-0.8B, les répétitions 1 et 2 des trois moteurs (Herbert 1 457 / 33,4 ; llama.cpp 724 / 32,0 ; vLLM ≈ 1 460 / 26,3 jetons/s en préfill / décodage).

**Non encore mesuré** : Qwen3.5-2B et 4B sur les deux machines, tous les moteurs sur beast, et la bande passante mémoire de lecture de chaque machine par une sonde indépendante.

## Quantités de référence

Octets de poids relus par jeton décodé (bf16, partie langage, embeddings liés donc relus en entier par la tête de sortie ; calculés depuis les en-têtes safetensors, tour de vision et MTP exclues) : **0.8B = 1,505 Go ; 2B = 3,764 Go ; 4B = 8,412 Go** — tous très au-delà du L3 (64 Mio sur beast, 32 Mio sur beta), donc relus depuis la DRAM à chaque jeton.

`BW` = bande passante de lecture mesurée sur la machine par la sonde `probe-bw` (lecture séquentielle émise par iced-x86, tous les cœurs physiques, meilleure de plusieurs passes), mesurée après l'enregistrement de ce fichier.

## Prédictions

**P1 — borne physique (dure).** Pour tout moteur × machine × modèle : `décodage (jetons/s) × octets par jeton ≤ 1,05 × BW`. Aucun moteur ne peut décoder plus vite que la mémoire ne livre les poids. Une violation signifierait que notre compte d'octets est faux (poids non relus, compression cachée) ou que la sonde sous-estime BW.

**P2 — la thèse (le décodage est borné par la mémoire).** Herbert, sur 2B et 4B, sur les deux machines : `décodage × octets par jeton ≥ 0,75 × BW`.

**P3 — le décodage suit la taille du modèle.** Pour Herbert et pour llama.cpp, sur chaque machine : `décodage(0.8B) / décodage(4B)` est dans ±20 % de `8,412 / 1,505 = 5,59`, et `décodage(0.8B) / décodage(2B)` dans ±20 % de `3,764 / 1,505 = 2,50`.

**P4 — le préfill de llama.cpp sur Qwen3.5.** Sur 2B et 4B, sur les deux machines, le préfill de llama.cpp (pp148) est inférieur à celui de Herbert (son Gated DeltaNet CPU avance jeton par jeton même au préfill).

**P5 — le décodage suit la machine.** Pour Herbert, sur 2B et 4B : `décodage(beast) / décodage(beta)` est dans ±15 % de `BW(beast) / BW(beta)`.

## Ce qui réfuterait la thèse

P2 fausse (Herbert nettement sous le plafond mémoire sur des modèles plus gros) ou P5 fausse (le rapport entre machines ne suit pas leur bande passante) : alors le décodage sur ces CPU n'est pas, ou pas seulement, une affaire de bande passante.
