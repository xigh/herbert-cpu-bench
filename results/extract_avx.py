#!/usr/bin/env python3
"""AVX-512 vs AVX2 (--force-avx2) campaign: median prefill / decode per model, threads and ISA.
Usage: extract_avx.py LOG [LOG...]  -> markdown table on stdout"""
import re, sys, statistics as st
for path in sys.argv[1:]:
    host = None; cur = None; d = {}
    for line in open(path, encoding="utf-8", errors="replace"):
        m = re.match(r"\[avx\] \S+ (\S+) ", line)
        if m and host is None: host = m.group(1)
        m = re.match(r"== (\S+) rep (\d+) threads (\d+) (\S+)", line)
        if m: cur = (m.group(1), int(m.group(3)), m.group(4)); continue
        m = re.search(r"\[turn 1\] \d+ prompt tokens in [\d.]+ s \(([\d.]+) tok/s\) · \d+ generated in [\d.]+ s \(([\d.]+) tok/s\)", line)
        if m and cur: d.setdefault(cur, []).append((float(m.group(1)), float(m.group(2))))
    print(f"\n**{host}** (`{path}`) — médianes de 3 répétitions, jetons/s\n")
    print("| modèle | threads | AVX-512 préfill | AVX2 préfill | gain AVX-512 | AVX-512 décodage | AVX2 décodage | gain AVX-512 |")
    print("|---|---|---|---|---|---|---|---|")
    for (mo, t) in sorted({(k[0], k[1]) for k in d}, key=lambda x: (x[0], -x[1])):
        a = d.get((mo, t, "avx512"), []); b = d.get((mo, t, "--force-avx2"), [])
        if not a or not b: continue
        ap, ad = st.median(x[0] for x in a), st.median(x[1] for x in a)
        bp, bd = st.median(x[0] for x in b), st.median(x[1] for x in b)
        print(f"| {mo} | {t} | {ap:.0f} | {bp:.0f} | ×{ap/bp:.2f} | {ad:.2f} | {bd:.2f} | ×{ad/bd:.3f} |")
