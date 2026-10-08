| machine | modèle | moteur | jetons comparés | premier écart | texte |
|---|---|---|---|---|---|
| beast | Qwen3.5-0.8B | référence fp32 | 32 | — | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| beast | Qwen3.5-0.8B | Herbert | 31 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands" |
| beast | Qwen3.5-0.8B | llama.cpp | 32 | 13 | 'Les architectures récentes ont multiplié les canaux mémoire, empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour compenser' |
| beast | Qwen3.5-0.8B | vLLM | 32 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| beast | Qwen3.5-0.8B | OpenVINO-SDPA | 32 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| beast | Qwen3.5-0.8B | OpenVINO-PA | 32 | 2 | "Les architectures modernes ont multiplié les canaux mémoire et l'emploier la mémoire pour compenser la lenteur des processeurs, assurant" |
| beast | Qwen3.5-2B | référence fp32 | 32 | — | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| beast | Qwen3.5-2B | Herbert | 31 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour sur' |
| beast | Qwen3.5-2B | llama.cpp | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| beast | Qwen3.5-2B | vLLM | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| beast | Qwen3.5-2B | OpenVINO-SDPA | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| beast | Qwen3.5-2B | OpenVINO-PA | 32 | 13 | "Les architectures récentes de mémoire pour les modèles de langage combinent le multi-canaux, l'empilement et les caches pour surmonter le" |
| beast | Qwen3.5-4B | référence fp32 | 32 | — | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| beast | Qwen3.5-4B | Herbert | 31 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la' |
| beast | Qwen3.5-4B | llama.cpp | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| beast | Qwen3.5-4B | vLLM | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| beast | Qwen3.5-4B | OpenVINO-SDPA | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| beast | Qwen3.5-4B | OpenVINO-PA | 32 | 1 | 'Pour surmonter le retard de la mémoire par rapport aux processeurs, les architectures récentes de modèles de langage multiplient les canaux, rappro' |
| beta | Qwen3.5-0.8B | référence fp32 | 32 | — | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| beta | Qwen3.5-0.8B | Herbert | 31 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands" |
| beta | Qwen3.5-0.8B | llama.cpp | 32 | 13 | 'Les architectures récentes ont multiplié les canaux mémoire, empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour compenser' |
| beta | Qwen3.5-0.8B | vLLM | 32 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| beta | Qwen3.5-0.8B | OpenVINO-SDPA | 32 | 13 | 'Les architectures récentes ont multiplié les canaux mémoire, empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour compenser' |
| beta | Qwen3.5-0.8B | OpenVINO-PA | 32 | 2 | "Les architectures modernes ont multiplié les canaux mémoire et l'emploier la mémoire pour compenser la lenteur des processeurs, assurant" |
| beta | Qwen3.5-2B | référence fp32 | 32 | — | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| beta | Qwen3.5-2B | Herbert | 31 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour sur' |
| beta | Qwen3.5-2B | llama.cpp | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| beta | Qwen3.5-2B | vLLM | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| beta | Qwen3.5-2B | OpenVINO-SDPA | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| beta | Qwen3.5-2B | OpenVINO-PA | 32 | 13 | "Les architectures récentes de mémoire pour les modèles de langage combinent le multi-canaux, l'empilement et les caches pour surmonter le" |
| beta | Qwen3.5-4B | référence fp32 | 32 | — | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| beta | Qwen3.5-4B | Herbert | 31 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la' |
| beta | Qwen3.5-4B | llama.cpp | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| beta | Qwen3.5-4B | vLLM | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| beta | Qwen3.5-4B | OpenVINO-SDPA | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| beta | Qwen3.5-4B | OpenVINO-PA | 32 | 1 | 'Pour surmonter le retard de la mémoire par rapport aux processeurs, les architectures récentes de modèles de langage multiplient les canaux, rappro' |
| omnibook | Qwen3.5-0.8B | référence fp32 | 32 | — | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| omnibook | Qwen3.5-0.8B | Herbert | 31 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands" |
| omnibook | Qwen3.5-0.8B | llama.cpp | 32 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| omnibook | Qwen3.5-0.8B | vLLM | 32 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| omnibook | Qwen3.5-0.8B | OpenVINO-SDPA | — | pas de sortie | |
| omnibook | Qwen3.5-0.8B | OpenVINO-PA | — | pas de sortie | |
| omnibook | Qwen3.5-2B | référence fp32 | 32 | — | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| omnibook | Qwen3.5-2B | Herbert | 31 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour sur' |
| omnibook | Qwen3.5-2B | llama.cpp | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| omnibook | Qwen3.5-2B | vLLM | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| omnibook | Qwen3.5-2B | OpenVINO-SDPA | — | pas de sortie | |
| omnibook | Qwen3.5-2B | OpenVINO-PA | — | pas de sortie | |
| omnibook | Qwen3.5-4B | référence fp32 | 32 | — | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| omnibook | Qwen3.5-4B | Herbert | 31 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la' |
| omnibook | Qwen3.5-4B | llama.cpp | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| omnibook | Qwen3.5-4B | vLLM | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| omnibook | Qwen3.5-4B | OpenVINO-SDPA | — | pas de sortie | |
| omnibook | Qwen3.5-4B | OpenVINO-PA | — | pas de sortie | |
| white2 | Qwen3.5-0.8B | référence fp32 | 32 | — | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| white2 | Qwen3.5-0.8B | Herbert | 31 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands" |
| white2 | Qwen3.5-0.8B | llama.cpp | 32 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| white2 | Qwen3.5-0.8B | vLLM | — | pas de sortie | |
| white2 | Qwen3.5-0.8B | OpenVINO-SDPA | — | pas de sortie | |
| white2 | Qwen3.5-0.8B | OpenVINO-PA | — | pas de sortie | |
| white2 | Qwen3.5-2B | référence fp32 | 32 | — | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| white2 | Qwen3.5-2B | Herbert | 31 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour sur' |
| white2 | Qwen3.5-2B | llama.cpp | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| white2 | Qwen3.5-2B | vLLM | — | pas de sortie | |
| white2 | Qwen3.5-2B | OpenVINO-SDPA | — | pas de sortie | |
| white2 | Qwen3.5-2B | OpenVINO-PA | — | pas de sortie | |
| white2 | Qwen3.5-4B | référence fp32 | 32 | — | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| white2 | Qwen3.5-4B | Herbert | 31 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la' |
| white2 | Qwen3.5-4B | llama.cpp | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| white2 | Qwen3.5-4B | vLLM | — | pas de sortie | |
| white2 | Qwen3.5-4B | OpenVINO-SDPA | — | pas de sortie | |
| white2 | Qwen3.5-4B | OpenVINO-PA | — | pas de sortie | |
| g5500 | Qwen3.5-0.8B | référence fp32 | 32 | — | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| g5500 | Qwen3.5-0.8B | Herbert | 31 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands" |
| g5500 | Qwen3.5-0.8B | llama.cpp | 32 | aucun | "Les architectures récentes ont multiplié les canaux mémoire, l'empilé la mémoire au plus près des cœurs et ajouté des caches plus grands pour" |
| g5500 | Qwen3.5-0.8B | vLLM | — | pas de sortie | |
| g5500 | Qwen3.5-0.8B | OpenVINO-SDPA | — | pas de sortie | |
| g5500 | Qwen3.5-0.8B | OpenVINO-PA | — | pas de sortie | |
| g5500 | Qwen3.5-2B | référence fp32 | 32 | — | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| g5500 | Qwen3.5-2B | Herbert | 31 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour sur' |
| g5500 | Qwen3.5-2B | llama.cpp | 32 | aucun | 'Les architectures récentes de mémoire pour les modèles de langage combinent multiplexage de canaux, empilement des modules et caches augmentés pour surmon' |
| g5500 | Qwen3.5-2B | vLLM | — | pas de sortie | |
| g5500 | Qwen3.5-2B | OpenVINO-SDPA | — | pas de sortie | |
| g5500 | Qwen3.5-2B | OpenVINO-PA | — | pas de sortie | |
| g5500 | Qwen3.5-4B | référence fp32 | 32 | — | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| g5500 | Qwen3.5-4B | Herbert | 31 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la' |
| g5500 | Qwen3.5-4B | llama.cpp | 32 | aucun | 'Pour accélérer la génération des modèles de langage, les architectures récentes optimisent la bande passante mémoire en multipliant les canaux, rapprochant la mémoire' |
| g5500 | Qwen3.5-4B | vLLM | — | pas de sortie | |
| g5500 | Qwen3.5-4B | OpenVINO-SDPA | — | pas de sortie | |
| g5500 | Qwen3.5-4B | OpenVINO-PA | — | pas de sortie | |
