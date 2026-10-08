#!/usr/bin/env python3
"""_bisect_analyze.py LOG [--csv OUT.csv] : per (model, arm) median prefill / decode tok/s and spread, from _bisect.sh;
plus each arm relative to zen6musl, and the share of the zen6musl -> pub log-gap that each step carries."""
import re, sys, csv, math, statistics as S
from collections import defaultdict
ARMS = ["zen6musl", "zen6gnu", "base", "review", "prealign", "align", "main", "pub"]
R = defaultdict(lambda: defaultdict(list)); cur = None
for l in open(sys.argv[1], errors="replace"):
    m = re.match(r"^== (\S+) (\S+) t=(\d+) rep (\d+)", l)
    if m: cur = (m[2], m[1]); continue
    m = re.search(r"\[turn 1\] \d+ prompt tokens in [\d.]+ s \(([\d.]+) tok/s\) · (\d+) generated in [\d.]+ s \(([\d.]+) tok/s\)", l)
    if m and cur: R[cur]["prefill"].append(float(m[1])); R[cur]["decode"].append(float(m[3])); R[cur]["gen"].append(int(m[2]))
def med(v): return S.median(v)
def spr(v): return 100 * (max(v) - min(v)) / med(v)
rows = []
print(f"{'model':13}{'arm':9}{'n':>2} {'prefill':>8} {'spr%':>5} {'vs zen6musl':>11} {'decode':>8} {'spr%':>5} {'vs zen6musl':>11} {'gen':>4} {'share of log-gap':>16}")
for mo in sorted({k[0] for k in R}):
    ref = R[(mo, "zen6musl")]; pz = med(ref["prefill"]); dz = med(ref["decode"])
    gap = math.log(med(R[(mo, "pub")]["prefill"]) / pz) if (mo, "pub") in R else float("nan")
    prev = None
    for a in ARMS:
        if (mo, a) not in R: continue
        r = R[(mo, a)]; p = med(r["prefill"]); d = med(r["decode"])
        share = 100 * math.log(p / prev) / gap if prev and gap else float("nan")
        print(f"{mo:13}{a:9}{len(r['decode']):>2} {p:8.1f} {spr(r['prefill']):5.1f} {100*(p/pz-1):+10.1f}% {d:8.3f} {spr(r['decode']):5.1f} {100*(d/dz-1):+10.1f}% {int(med(r['gen'])):>4} {share:15.1f}%")
        rows.append((mo, a, len(r["decode"]), p, spr(r["prefill"]), 100 * (p / pz - 1), d, spr(r["decode"]), 100 * (d / dz - 1), share)); prev = p
if "--csv" in sys.argv:
    with open(sys.argv[sys.argv.index("--csv") + 1], "w", newline="") as f:
        w = csv.writer(f); w.writerow(["model", "arm", "n", "prefill_tok_s", "prefill_spread_pct", "prefill_vs_zen6musl_pct", "decode_tok_s", "decode_spread_pct", "decode_vs_zen6musl_pct", "step_share_of_loggap_pct"]); w.writerows(rows)
