#!/usr/bin/env python3
"""Output agreement against the float32 reference (HF transformers), per model.

For each outputs-<host>-<stamp>/ directory: reads <model>.json (prompt ids,
reference_fp32, vllm_bf16), <model>-llama.json (llama-server tokens) and
<model>-herbert.log ([ids] line). Prints, per engine, the number of generated
tokens compared and the index of the first token that differs from the
reference (none = identical over the compared length). Herbert stops at its
end-of-turn token, so it may compare fewer than 32 tokens.
Usage: compare_outputs.py OUTDIR... > table.md
"""
import json, os, re, sys

def first_diff(a, b):
    n = min(len(a), len(b))
    for i in range(n):
        if a[i] != b[i]:
            return i, n
    return None, n

print("| machine | modèle | prompt | moteur | jetons comparés | premier écart (index) | texte |")
print("|---|---|---|---|---|---|---|")
for d in sys.argv[1:]:
    host = re.search(r"outputs-([^-]+)-", os.path.basename(d.rstrip("/"))).group(1)
    for m in ["Qwen3.5-0.8B", "Qwen3.5-2B", "Qwen3.5-4B"]:
        p = os.path.join(d, m + ".json")
        if not os.path.exists(p):
            continue
        r = json.load(open(p))
        ref = r["reference_fp32"]["ids"]
        eng = {}
        if "vllm_bf16" in r:
            eng["vLLM"] = (r["vllm_bf16"]["ids"], r["vllm_bf16"]["text"])
        lp = os.path.join(d, m + "-llama.json")
        if os.path.exists(lp):
            try:
                l = json.load(open(lp))
                if l.get("tokens"):
                    eng["llama.cpp"] = (l["tokens"], l.get("content", ""))
            except json.JSONDecodeError:
                pass
        hp = os.path.join(d, m + "-herbert.log")
        if os.path.exists(hp):
            ids = txt = None
            for line in open(hp, encoding="utf-8", errors="replace"):
                if line.startswith("[ids] "):
                    ids = [int(x) for x in line.split()[1:]]
                if line.startswith("[decoded] "):
                    txt = line[len("[decoded] "):].strip().strip('"')
            if ids:
                eng["Herbert"] = (ids, txt or "")
        print(f"| {host} | {m} | {r['prompt_len']} | référence fp32 | {len(ref)} | — | {r['reference_fp32']['text']!r} |")
        for e in ["Herbert", "llama.cpp", "vLLM"]:
            if e not in eng:
                print(f"| {host} | {m} | {r['prompt_len']} | {e} | — | pas de sortie | |")
                continue
            ids, txt = eng[e]
            i, n = first_diff(ref, ids)
            print(f"| {host} | {m} | {r['prompt_len']} | {e} | {n} | {'aucun' if i is None else i} | {txt!r} |")
