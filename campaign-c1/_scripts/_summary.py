#!/usr/bin/env python3
"""_summary.py : the final tables of C1 from results/c1-<machine>.csv (made by _analyze.py), markdown on stdout.
Table 1: machine x model x engine at the default settings (all physical cores; vLLM without zentorch; OpenVINO SDPA):
prefill, decode, decode as % of the probe at the same thread count and of the probe's best thread count.
Table 2: the tuned arms (llama.cpp and Herbert at 1 thread, Herbert at its #431 best, vLLM + zentorch, OpenVINO at 4).
Table 3: the probe per machine and thread count."""
import csv, glob, os
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MACH = [("beast", 12), ("beta", 8), ("omnibook", 4), ("white2", 8), ("g5500", 6)]
ENG = [("herbert", "Herbert"), ("llama", "llama.cpp"), ("vllm", "vLLM"), ("vllmzen", "vLLM + zentorch"), ("ov", "OpenVINO-SDPA")]
MODELS = ["Qwen3.5-0.8B", "Qwen3.5-2B", "Qwen3.5-4B"]
rows = []; probe = {}
for f in sorted(glob.glob(os.path.join(ROOT, "results", "c1-*.csv"))):
    for r in csv.DictReader(open(f)):
        if r["engine"] == "probe": probe[(r["machine"], r["model"], int(r["threads"]))] = float(r["decode_gb_s"]); continue
        rows.append(r)
def get(m, mo, e, t):
    for r in rows:
        if r["machine"] == m and r["model"] == mo and r["engine"] == e and int(r["threads"]) == t: return r
    return None
def f1(x): return f"{float(x):,.0f}".replace(",", " ")
print("## Réglages par défaut (tous les cœurs physiques ; vLLM sans zentorch ; OpenVINO SDPA), médianes de 5 répétitions entrelacées\n")
print("| machine | modèle | moteur | préfill (jetons/s) | décodage (jetons/s) | Go/s lus | % sonde, même nombre de threads | % meilleure sonde |")
print("|---|---|---|---|---|---|---|---|")
for m, T in MACH:
    for mo in MODELS:
        for e, name in ENG:
            if e == "vllmzen": continue
            r = get(m, mo, e, T)
            if not r: continue
            print(f"| {m} | {mo.replace('Qwen3.5-', '')} | {name} | {f1(r['prefill_tok_s'])} | {float(r['decode_tok_s']):.2f} | {float(r['decode_gb_s']):.1f} | {float(r['pct_bw_same_threads']):.1f} % | {float(r['pct_bw_best']):.1f} % |")
print("\n## Autres bras (réglés ou à 1 thread)\n")
print("| machine | modèle | bras | préfill | décodage | Go/s lus | % sonde même T | % meilleure sonde |")
print("|---|---|---|---|---|---|---|---|")
for m, T in MACH:
    for mo in MODELS:
        for r in rows:
            if r["machine"] != m or r["model"] != mo: continue
            e, t = r["engine"], int(r["threads"])
            if t == T and e != "vllmzen" and not (e == "ov" and t != T): continue
            name = dict(ENG)[e]
            print(f"| {m} | {mo.replace('Qwen3.5-', '')} | {name} {t} | {f1(r['prefill_tok_s'])} | {float(r['decode_tok_s']):.2f} | {float(r['decode_gb_s']):.1f} | {float(r['pct_bw_same_threads']):.1f} % | {float(r['pct_bw_best']):.1f} % |")
print("\n## Sonde de lecture (Go/s, meilleure des 5 passes par répétition, médiane des 5 répétitions ; bloc du 4B)\n")
ts = sorted({t for (_, _, t) in probe})
print("| machine | " + " | ".join(f"{t} thread{'s' if t > 1 else ''}" for t in ts) + " |")
print("|---|" + "---|" * len(ts))
for m, T in MACH:
    vals = [probe.get((m, "Qwen3.5-4B", t)) for t in ts]
    if not any(vals): continue
    print(f"| {m} | " + " | ".join(f"{v:.1f}" if v else "—" for v in vals) + " |")
