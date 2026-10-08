#!/usr/bin/env python3
"""_outputs_table.py OUTDIR... : agreement table against the fp32 reference, from the outputs-<host>-<stamp>/ dirs of _outputs.sh
(<model>.json: prompt ids, reference_fp32, vllm_bf16; <model>-llama.json; <model>-herbert.log; <model>-ov-sdpa.log, <model>-ov-pa.log).
Prints a markdown table: tokens compared, index of the first token that differs (none = identical over the compared length)."""
import json, os, re, sys
def first_diff(a, b):
    n = min(len(a), len(b))
    for i in range(n):
        if a[i] != b[i]: return i, n
    return None, n
def ov_ids(path):
    if not os.path.exists(path): return None
    ids = txt = None
    for line in open(path, encoding="utf-8", errors="replace"):
        if line.startswith("[ids] "): ids = json.loads(line[6:])
        if line.startswith("[decoded] "): txt = line[len("[decoded] "):].strip().strip("'\"")
    return (ids, txt or "") if ids else None
print("| machine | modèle | moteur | jetons comparés | premier écart | texte |")
print("|---|---|---|---|---|---|")
for d in sys.argv[1:]:
    host = re.search(r"outputs-([^-]+)-", os.path.basename(d.rstrip("/"))).group(1)
    for m in ["Qwen3.5-0.8B", "Qwen3.5-2B", "Qwen3.5-4B"]:
        p = os.path.join(d, m + ".json")
        if not os.path.exists(p): continue
        r = json.load(open(p)); ref = r["reference_fp32"]["ids"]; eng = {}
        if "vllm_bf16" in r: eng["vLLM"] = (r["vllm_bf16"]["ids"], r["vllm_bf16"]["text"])
        lp = os.path.join(d, m + "-llama.json")
        if os.path.exists(lp):
            try:
                l = json.load(open(lp))
                if l.get("tokens"): eng["llama.cpp"] = (l["tokens"], l.get("content", ""))
            except json.JSONDecodeError: pass
        hp = os.path.join(d, m + "-herbert.log")
        if os.path.exists(hp):
            ids = txt = None
            for line in open(hp, encoding="utf-8", errors="replace"):
                if line.startswith("[ids] "): ids = [int(x) for x in line.split()[1:]]
                if line.startswith("[decoded] "): txt = line[len("[decoded] "):].strip().strip('"')
            if ids: eng["Herbert"] = (ids, txt or "")
        for name, suf in (("OpenVINO-SDPA", "-ov-sdpa.log"), ("OpenVINO-PA", "-ov-pa.log")):
            r2 = ov_ids(os.path.join(d, m + suf))
            if r2: eng[name] = r2
        print(f"| {host} | {m} | référence fp32 | {len(ref)} | — | {r['reference_fp32']['text']!r} |")
        for e in ["Herbert", "llama.cpp", "vLLM", "OpenVINO-SDPA", "OpenVINO-PA"]:
            if e not in eng: print(f"| {host} | {m} | {e} | — | pas de sortie | |"); continue
            ids, txt = eng[e]; i, n = first_diff(ref, ids)
            print(f"| {host} | {m} | {e} | {n} | {'aucun' if i is None else i} | {txt!r} |")
