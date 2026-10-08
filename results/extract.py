#!/usr/bin/env python3
"""Extract per-run results from the campaign logs into CSV (stdout).

Columns: host, model, rep, engine, metric, value, unit, source
  herbert : prefill_tok_s, decode_tok_s from "[turn 1] N prompt tokens in … (X tok/s) · M generated in … (Y tok/s)"
  llama   : prefill_tok_s (pp148 avg_ts), decode_tok_s (tg64 at depth 148 avg_ts), from llama-bench jsonl
  vllm    : latency_out1_s, latency_out65_s (avg_latency); prefill_tok_s = 148 / L1; decode_tok_s = 64 / (L65 - L1)
"""
import json, re, sys

def main(paths):
    print("host,model,rep,engine,metric,value,unit,source")
    for path in paths:
        host = None
        section = None  # (model, rep, what)
        vllm = {}
        for line in open(path, encoding="utf-8", errors="replace"):
            m = re.match(r"\[bench\] \S+ (\S+) ", line)
            if m and host is None:
                host = m.group(1)
            m = re.match(r"== (\S+) rep (\d+) (herbert|llama pp148|llama tg64@148|vllm latency out=(\d+))", line)
            if m:
                section = (m.group(1), int(m.group(2)), m.group(3))
                continue
            if section is None:
                continue
            model, rep, what = section
            if what == "herbert":
                m = re.search(r"\[turn 1\] (\d+) prompt tokens in [\d.]+ s \(([\d.]+) tok/s\) · (\d+) generated in [\d.]+ s \(([\d.]+) tok/s\)", line)
                if m:
                    print(f"{host},{model},{rep},herbert,prefill_tok_s,{m.group(2)},tok/s,{path}")
                    print(f"{host},{model},{rep},herbert,decode_tok_s,{m.group(4)},tok/s,{path}")
                    print(f"{host},{model},{rep},herbert,prompt_tokens,{m.group(1)},tokens,{path}")
                    print(f"{host},{model},{rep},herbert,generated_tokens,{m.group(3)},tokens,{path}")
            elif what.startswith("llama") and line.startswith("{"):
                try:
                    j = json.loads(line)
                except json.JSONDecodeError:
                    continue
                metric = "prefill_tok_s" if what == "llama pp148" else "decode_tok_s"
                print(f"{host},{model},{rep},llama.cpp,{metric},{j['avg_ts']:.3f},tok/s,{path}")
                print(f"{host},{model},{rep},llama.cpp,{metric}_stddev,{j['stddev_ts']:.3f},tok/s,{path}")
            elif what.startswith("vllm"):
                m = re.search(r'"avg_latency": ([\d.]+)', line)
                if m:
                    out = int(what.split("=")[1])
                    vllm[(model, rep, out)] = float(m.group(1))
                    print(f"{host},{model},{rep},vllm,latency_out{out}_s,{m.group(1)},s,{path}")
                    l1, l65 = vllm.get((model, rep, 1)), vllm.get((model, rep, 65))
                    if out == 65 and l1 and l65:
                        print(f"{host},{model},{rep},vllm,prefill_tok_s,{148 / l1:.3f},tok/s,{path}")
                        print(f"{host},{model},{rep},vllm,decode_tok_s,{64 / (l65 - l1):.3f},tok/s,{path}")

main(sys.argv[1:])
