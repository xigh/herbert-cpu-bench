#!/usr/bin/env python3
"""_analyze.py LOG [--csv OUT.csv] [--machine NAME] : tables from the raw lines of _c1.sh (protocol.md).
Per (model, arm = engine:T): prefill and decode tok/s, median over the repetitions and spread (max-min)/median in %;
the probe per thread count (best of the 5 passes per repetition, then median over repetitions); the share of the
bandwidth read by the decode, against the probe at the arm's thread count and against the probe's best thread count.
Engines: herbert ([turn 1] line), llama (jsonl avg_ts of pp148 and tg64), vllm/vllmzen (Avg latency of out 1 and 65),
ov ([ov-bench] medians), probe ([probe-bw] threads=T best=B)."""
import re, sys, json, csv, statistics as S
from collections import defaultdict
BYTES = {"Qwen3.5-0.8B": 1.505e9, "Qwen3.5-2B": 3.764e9, "Qwen3.5-4B": 8.412e9}
log = open(sys.argv[1], errors="replace").read().split("\n")
out_csv = sys.argv[sys.argv.index("--csv") + 1] if "--csv" in sys.argv else None
machine = sys.argv[sys.argv.index("--machine") + 1] if "--machine" in sys.argv else ""
vals = defaultdict(lambda: defaultdict(list))   # (model, arm) -> metric -> [per rep]
probe = defaultdict(lambda: defaultdict(list))  # model -> T -> [best per rep]
gen = defaultdict(list)
cur = None   # (model, rep, arm, kind)
pending = {}  # (model, rep, arm) -> partial dict
model = rep = arm = None
for l in log:
    m = re.match(r"^### model (\S+) rep (\d+) arm (\S+)", l)
    if m: model, rep, arm = m[1], int(m[2]), m[3]; continue
    m = re.match(r"^== probe (\S+) t=\S+ rep (\d+)", l)
    if m: model, rep, arm = m[1], int(m[2]), "probe"; continue
    m = re.match(r"^== (\S+) (\S+) t=(\d+) rep (\d+)", l)
    if m: cur = m[1]; continue
    if model is None: continue
    key = (model, rep, arm)
    m = re.match(r"^\[probe-bw\] threads=(\d+) best=([\d.]+) median=([\d.]+)", l)
    if m: probe[model][int(m[1])].append(float(m[2])); continue
    m = re.search(r"\[turn 1\] \d+ prompt tokens in [\d.]+ s \(([\d.]+) tok/s\) · (\d+) generated in [\d.]+ s \(([\d.]+) tok/s\)", l)
    if m and arm.startswith("herbert"):
        vals[(model, arm)]["prefill"].append(float(m[1])); vals[(model, arm)]["decode"].append(float(m[3])); gen[(model, arm)].append(int(m[2])); continue
    if l.startswith("{") and '"avg_ts"' in l and arm.startswith("llama"):
        j = json.loads(l)
        if j["n_prompt"] and not j["n_gen"]: vals[(model, arm)]["prefill"].append(j["avg_ts"])
        else: vals[(model, arm)]["decode"].append(j["avg_ts"]); gen[(model, arm)].append(j["n_gen"])
        continue
    m = re.match(r"^Avg latency: ([\d.]+) seconds", l.strip())
    if m and arm.startswith("vllm"):
        p = pending.setdefault(key, {})
        if cur and cur.endswith("-out1"): p["l1"] = float(m[1])
        elif cur and cur.endswith("-out65"): p["l65"] = float(m[1])
        if "l1" in p and "l65" in p:
            vals[(model, arm)]["prefill"].append(148 / p["l1"]); vals[(model, arm)]["decode"].append(64 / (p["l65"] - p["l1"])); gen[(model, arm)].append(64)
        continue
    m = re.search(r"\[ov-bench\] prefill_median ([\d.]+) decode_median ([\d.]+)", l)
    if m and arm.startswith("ov"):
        vals[(model, arm)]["prefill"].append(float(m[1])); vals[(model, arm)]["decode"].append(float(m[2])); gen[(model, arm)].append(64); continue
def med(v): return S.median(v)
def spr(v): return 100 * (max(v) - min(v)) / med(v) if v and med(v) else float("nan")
ORDER = ["herbert", "llama", "vllm", "vllmzen", "ov"]
rows = []
print(f"# {machine} probe (GB/s, best of 5 passes per repetition, median over repetitions, spread %)")
for mo in sorted(probe):
    print(f"{mo:13} " + "  ".join(f"T={t}: {med(v):.2f} ({spr(v):.1f}%, n={len(v)})" for t, v in sorted(probe[mo].items())))
print()
print(f"{'model':13}{'arm':12}{'n':>2} {'prefill':>8} {'spr%':>5} {'decode':>8} {'spr%':>5} {'gen':>4} {'GB/s':>6} {'%BW(T)':>7} {'%BW*':>6} {'BW(T)':>6} {'BW*':>6}")
for (mo, a) in sorted(vals, key=lambda k: (k[0], ORDER.index(k[1].split(":")[0]) if k[1].split(":")[0] in ORDER else 9, int(k[1].split(":")[1]))):
    r = vals[(mo, a)]; e, t = a.split(":"); t = int(t)
    if not r["decode"]: continue
    pr = probe.get(mo, {})
    bwt = med(pr[t]) if t in pr and pr[t] else float("nan")
    bws = max(med(v) for v in pr.values()) if pr else float("nan")
    gbs = med(r["decode"]) * BYTES[mo] / 1e9
    g = int(S.median(gen[(mo, a)])) if gen[(mo, a)] else 0
    line = (machine, mo, e, t, len(r["decode"]), med(r["prefill"]) if r["prefill"] else float("nan"), spr(r["prefill"]) if r["prefill"] else float("nan"),
            med(r["decode"]), spr(r["decode"]), g, gbs, 100 * gbs / bwt, 100 * gbs / bws, bwt, bws)
    rows.append(line)
    print(f"{mo:13}{a:12}{line[4]:>2} {line[5]:8.1f} {line[6]:5.1f} {line[7]:8.3f} {line[8]:5.1f} {g:>4} {gbs:6.2f} {line[11]:7.1f} {line[12]:6.1f} {bwt:6.2f} {bws:6.2f}")
if out_csv:
    with open(out_csv, "w", newline="") as f:
        w = csv.writer(f); w.writerow(["machine", "model", "engine", "threads", "n", "prefill_tok_s", "prefill_spread_pct", "decode_tok_s", "decode_spread_pct", "generated_tokens", "decode_gb_s", "pct_bw_same_threads", "pct_bw_best", "bw_same_threads_gb_s", "bw_best_gb_s"]); w.writerows(rows)
        for mo in sorted(probe):
            for t, v in sorted(probe[mo].items()): w.writerow([machine, mo, "probe", t, len(v), "", "", "", "", "", med(v), "", "", "", spr(v)])
