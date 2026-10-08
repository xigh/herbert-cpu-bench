#!/usr/bin/env python3
"""Campaign 2 (thread sweep, vLLM with zentorch): per-run CSV on stdout.
Columns: host, model, rep, engine, threads, metric, value
  llama.cpp : from llama-bench jsonl (n_threads, avg_ts)
  herbert   : "== … herbert threads T" then the [turn 1] line
  vllm-zen  : avg_latency out=1 / out=65 -> prefill 148/L1, decode 64/(L65-L1), threads = all physical cores
"""
import json, re, sys

print("host,model,rep,engine,threads,metric,value")
for path in sys.argv[1:]:
    host = allc = None
    cur = None
    lat = {}
    for line in open(path, encoding="utf-8", errors="replace"):
        m = re.match(r"\[bench2\] \S+ (\S+) .* T=(\d+)", line)
        if m and host is None:
            host, allc = m.group(1), int(m.group(2))
        m = re.match(r"== (\S+) rep (\d+) (llama pp148 sweep|llama tg64@148 sweep|herbert threads (\d+)|vllm-zen latency out=(\d+))", line)
        if m:
            cur = (m.group(1), int(m.group(2)), m.group(3), m.group(4), m.group(5))
            continue
        if not cur:
            continue
        model, rep, what, ht, out = cur
        if what.startswith("llama") and line.startswith("{"):
            try:
                j = json.loads(line)
            except json.JSONDecodeError:
                continue
            metric = "prefill_tok_s" if "pp148" in what else "decode_tok_s"
            print(f"{host},{model},{rep},llama.cpp,{j['n_threads']},{metric},{j['avg_ts']:.3f}")
        elif what.startswith("herbert"):
            m = re.search(r"\[turn 1\] \d+ prompt tokens in [\d.]+ s \(([\d.]+) tok/s\) · \d+ generated in [\d.]+ s \(([\d.]+) tok/s\)", line)
            if m:
                print(f"{host},{model},{rep},herbert,{ht},prefill_tok_s,{m.group(1)}")
                print(f"{host},{model},{rep},herbert,{ht},decode_tok_s,{m.group(2)}")
        elif what.startswith("vllm"):
            m = re.search(r'"avg_latency": ([\d.]+)', line)
            if m:
                lat[(model, rep, int(out))] = float(m.group(1))
                if int(out) == 65 and (model, rep, 1) in lat:
                    l1, l65 = lat[(model, rep, 1)], lat[(model, rep, 65)]
                    print(f"{host},{model},{rep},vllm-zen,{allc},prefill_tok_s,{148 / l1:.3f}")
                    print(f"{host},{model},{rep},vllm-zen,{allc},decode_tok_s,{64 / (l65 - l1):.3f}")
