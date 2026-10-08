#!/usr/bin/env python3
"""OpenVINO GenAI on CPU, bf16 without quantization: exactness and latency.

  ov_bench.py outputs IR_DIR REF_JSON THREADS           32 greedy tokens on the reference prompt ids,
                                                        compared with the fp32 reference (transformers)
  ov_bench.py bench   IR_DIR REF_JSON THREADS [ITERS]   prefill / decode on the same 148 prompt ids:
                                                        3 warm-up generations, then ITERS (10) measured

Prefill tok/s = prompt tokens / TTFT (TTFT includes sampling the first token, as
vLLM's L1); decode tok/s = 1 / TPOT over 64 generated tokens (EOS ignored).
Every property given to the plugin is printed, and read back from the compiled
model when the pipeline exposes it.
"""
import json, os, resource, statistics as st, sys, time

import numpy as np
import openvino as ov
import openvino_genai as ov_genai

PROPS = {
    "INFERENCE_PRECISION_HINT": "bf16",      # bf16 compute (weights exported fp32 = exact bf16 values)
    "KV_CACHE_PRECISION": "bf16",            # default u8 would quantize the KV cache
    "DYNAMIC_QUANTIZATION_GROUP_SIZE": 0,    # no dynamic int8 of the activations
    # GenAI's default backend on CPU, paged attention ("PA"), computes Qwen3.5 wrongly: its
    # greedy output leaves the fp32 reference at token 2 even in f32 / f32, where a single
    # forward pass of the same IR is exact to 0.02 logit (logs ov-paths-*, ov-logits-*,
    # 2026-09-25). SDPA (stateful model) matches the reference in all four precision pairs.
    "ATTENTION_BACKEND": "SDPA",
}


def pipeline(ir, threads):
    # OV_PROPS='{"INFERENCE_PRECISION_HINT": "f32"}' overrides, for the controls (never for the published numbers)
    props = dict(PROPS, INFERENCE_NUM_THREADS=int(threads), **json.loads(os.environ.get("OV_PROPS", "{}")))
    print(f"[ov] openvino {ov.__version__} genai {ov_genai.__version__} props {props}", flush=True)
    t0 = time.time()
    p = ov_genai.LLMPipeline(ir, "CPU", **props)
    print(f"[ov] pipeline ready in {time.time() - t0:.1f} s, maxrss {resource.getrusage(resource.RUSAGE_SELF).ru_maxrss / 1e6:.2f} GB", flush=True)
    return p


def generate(p, ids, n):
    cfg = ov_genai.GenerationConfig()
    cfg.max_new_tokens = n
    cfg.min_new_tokens = n
    cfg.do_sample = False
    cfg.ignore_eos = True
    inp = ov_genai.TokenizedInputs(ov.Tensor(np.array([ids], dtype=np.int64)), ov.Tensor(np.ones((1, len(ids)), dtype=np.int64)))
    r = p.generate(inp, cfg)
    return [int(t) for t in r.tokens[0]], r.perf_metrics


def main():
    mode, ir, ref, threads = sys.argv[1:5]
    iters = int(sys.argv[5]) if len(sys.argv) > 5 else 10
    R = json.load(open(ref))
    ids = R["prompt_ids"]
    p = pipeline(ir, threads)
    if mode == "outputs":
        toks, pm = generate(p, ids, 32)
        want = R["reference_fp32"]["ids"]
        first = next((i for i, (a, b) in enumerate(zip(toks, want)) if a != b), None)
        tok = p.get_tokenizer()
        print(f"[ids] {toks}", flush=True)
        print(f"[decoded] {tok.decode(toks)!r}", flush=True)
        print(f"[reference] {R['reference_fp32']['text']!r}", flush=True)
        print(f"[agreement] compared {min(len(toks), len(want))} first_divergence {first if first is not None else 'none'}", flush=True)
        return
    for i in range(3):
        generate(p, ids, 64)
    pre, dec = [], []
    for i in range(iters):
        _, pm = generate(p, ids, 64)
        ttft, tpot = pm.get_ttft().mean, pm.get_tpot().mean      # ms
        pre.append(len(ids) / (ttft / 1000))
        dec.append(1000 / tpot)
        print(f"[iter {i}] prompt {pm.get_num_input_tokens()} ttft {ttft:.2f} ms tpot {tpot:.3f} ms generated {pm.get_num_generated_tokens()} "
              f"-> prefill {pre[-1]:.1f} tok/s decode {dec[-1]:.2f} tok/s", flush=True)
    print(f"[ov-bench] prefill_median {st.median(pre):.2f} decode_median {st.median(dec):.3f} tok/s iters {iters} "
          f"maxrss {resource.getrusage(resource.RUSAGE_SELF).ru_maxrss / 1e6:.2f} GB", flush=True)


if __name__ == "__main__":
    main()
