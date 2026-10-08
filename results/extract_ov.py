#!/usr/bin/env python3
"""OpenVINO campaign (scripts/openvino/ov-campaign.sh): per-run CSV on stdout, exactness on stderr.
Columns: host, model, rep, engine, threads, metric, value
  herbert  : "== M rep R herbert threads T" then the [turn 1] line (control arm)
  openvino : "== M rep R openvino threads T" then "[ov-bench] prefill_median P decode_median D"
             (each the median of 10 generations in one process)
Usage: extract_ov.py LOG [LOG...]"""
import re, sys

TURN = re.compile(r"\[turn 1\] \d+ prompt tokens in [\d.]+ s \(([\d.]+) tok/s\) · \d+ generated in [\d.]+ s \(([\d.]+) tok/s\)")
print("host,model,rep,engine,threads,metric,value")
for path in sys.argv[1:]:
    host, cur, model = None, None, None
    for line in open(path, encoding="utf-8", errors="replace"):
        m = re.match(r"\[ov-campaign\] \S+ (\S+) ", line)
        if m and host is None:
            host = m.group(1)
        m = re.match(r"== (\S+) (?:rep (\d+) (herbert|openvino) threads (\d+)|outputs)", line)
        if m:
            model = m.group(1)
            cur = (m.group(2), m.group(3), m.group(4)) if m.group(2) else None
            continue
        m = re.match(r"\[agreement\] compared (\d+) first_divergence (\S+)", line)
        if m:
            print(f"[exactness] {host} {model} openvino compared {m.group(1)} first divergence {m.group(2)}", file=sys.stderr)
        if not cur:
            continue
        rep, eng, t = cur
        if eng == "herbert":
            m = TURN.search(line)
            if m:
                print(f"{host},{model},{rep},herbert,{t},prefill_tok_s,{m.group(1)}")
                print(f"{host},{model},{rep},herbert,{t},decode_tok_s,{m.group(2)}")
                cur = None
        else:
            m = re.search(r"\[ov-bench\] prefill_median ([\d.]+) decode_median ([\d.]+)", line)
            if m:
                print(f"{host},{model},{rep},openvino,{t},prefill_tok_s,{m.group(1)}")
                print(f"{host},{model},{rep},openvino,{t},decode_tok_s,{m.group(2)}")
                cur = None
