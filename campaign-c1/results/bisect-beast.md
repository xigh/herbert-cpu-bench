# Bissection de l'écart de préfill `zen6` → copie publiée (beast, 12 threads)

Log complet : `logs/beast/bisect-beast-20261008T111845Z.log` (2026-10-08, 11:24–11:49 UTC, beast au repos : charge relevée avant chaque run, ni `ffmpeg` ni `hdmi_view`, rien arrêté). Dépouillement : `_scripts/_bisect_analyze.py` → `results/bisect-beast.csv`. Protocole : `protocol.md` ; prédiction : P10 de `predictions.md`.

Huit bras, même invite de 148 jetons, `--threads 12 --no-system --no-think --max-tokens 64`, 5 répétitions entrelacées, ordre tourné, repos de 10 s et garde d'inactivité ≥ 97 % avant chaque run. `zen6musl` est le binaire du #427 (`88579c5`, musl, `53bc98c18cb8ffa7`) ; les six suivants sont des `git archive` de `herbert-avx-bf16` construits sur beast (`cargo build --release --locked`, rustc 1.98.0, cible gnu, `logs/beast/setup-beast-20261008T110551Z.log`) ; `pub` est la copie publiée construite de même (`d293c27d60d3f39a`).

| bras | commit | 0.8B préfill (jetons/s) | écart | 0.8B décodage | 4B préfill | écart | 4B décodage |
|---|---|---|---|---|---|---|---|
| zen6musl | `88579c5`, musl (#427) | 1 752,5 (0,7 %) | — | 27,67 | 407,1 (0,9 %) | — | 5,14 |
| zen6gnu | `88579c5`, gnu | 1 744,8 (0,8 %) | −0,4 % | 27,70 | 425,9 (0,9 %) | **+4,6 %** | 5,14 |
| base | `f69213f` (base de fusion) | 1 742,0 (0,8 %) | −0,6 % | 27,71 | 425,2 (1,5 %) | +4,4 % | 5,14 |
| review | `81ebb6c` (`fault_in` sur le pool) | 1 738,7 (2,1 %) | −0,8 % | 27,73 | 424,6 (0,9 %) | +4,3 % | 5,14 |
| prealign | `6a7a917` (vérifié au #462) | 1 740,2 (1,8 %) | −0,7 % | 27,71 | 428,6 (2,8 %) | +5,3 % | 5,14 |
| align | `76bc95a` (ligne de cache par défaut) | **2 263,9** (1,8 %) | **+29,2 %** | 27,80 | **466,9** (1,5 %) | **+14,7 %** | 5,14 |
| main | `236dba5` | 2 262,7 (2,0 %) | +29,1 % | 27,77 | 466,0 (1,0 %) | +14,5 % | 5,14 |
| pub | copie publiée | 2 265,4 (2,9 %) | +29,3 % | 27,75 | 467,8 (1,5 %) | +14,9 % | 5,14 |

Entre parenthèses : écart max − min rapporté à la médiane sur les 5 répétitions ; « écart » : médiane du bras rapportée à celle de `zen6musl`. Jetons générés : 44 (0.8B) et 43 (4B) pour tous les bras.

## Lecture

- **Tout l'écart de préfill tient en un pas, `prealign` → `align`** : ×1,301 au 0.8B (102 % de l'écart logarithmique `zen6musl` → `pub`), ×1,089 au 4B (62 % de l'écart). C'est le commit `76bc95a` (« align: a cache line by default everywhere », après le knob `eb55b98`) : les packs R16, le cache KV et les activations sont placés sur une ligne de 64 octets au lieu du 16 mod 64 de glibc (#443 avait mesuré +14 % sur une invite de 17 jetons et +2 % sur 1 666 jetons au 4B ; ici, sur 148 jetons, +9 % au 4B et +30 % au 0.8B).
- **Le build compte au 4B, pas au 0.8B** : `88579c5` construit sur beast en gnu préfille 4,6 % au-dessus du même commit construit sur le Mac en musl statique (32 % de l'écart logarithmique au 4B) ; au 0.8B les deux sont à 0,4 %. Les commits `f69213f`, `81ebb6c`, `6a7a917` sont dans ±1 % de `zen6gnu` ; `236dba5` et la copie dans ±0,5 % de `align`.
- **Le code émis est identique** : `--dump-asm` (0.8B, 12 threads) donne 90 listings par bras (`prefill/`, `decode/`), et `diff -r` est vide entre `zen6gnu`, `prealign`, `align`, `main` et `pub` (empreinte des listings concaténés `dbb6339adc1628e1` pour les cinq). L'alignement change où tombent les buffers, pas les instructions ; `base`, `review` n'ont pas `--dump-asm`.
- **Décodage** : les huit bras sont dans ±0,5 % (0.8B 27,67–27,80 ; 4B 5,14 partout) : borné par la mémoire, insensible à l'alignement et au build, comme attendu.
- Conséquence pour l'article : les préfills de la campagne 1 (#427, binaire `zen6` musl, buffers non alignés) ne sont pas ceux du binaire publié ; sur beast à 12 threads, le lecteur qui reproduit avec la copie trouvera ≈ +29 % (0.8B) et ≈ +15 % (4B) au-dessus des chiffres du #427, pour les raisons ci-dessus. Les décodages, eux, se reproduisent.

⚠️ Une machine (beast), deux modèles, un nombre de threads (12), une campagne. Le rapport musl / gnu n'a été isolé que sur `88579c5`.
