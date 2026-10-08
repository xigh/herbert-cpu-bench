"""Greedy 32 tokens through optimum-intel OVModelForCausalLM.generate (stateful IR, incremental decoding)."""
import json, sys, torch
from optimum.intel import OVModelForCausalLM
ir, ref, T, ph, kv = sys.argv[1:6]
R = json.load(open(ref)); ids = R["prompt_ids"]; want = R["reference_fp32"]["ids"]
cfg = {"INFERENCE_PRECISION_HINT": ph, "KV_CACHE_PRECISION": kv, "DYNAMIC_QUANTIZATION_GROUP_SIZE": "0", "INFERENCE_NUM_THREADS": T}
m = OVModelForCausalLM.from_pretrained(ir, ov_config=cfg)
g = m.generate(torch.tensor([ids]), attention_mask=torch.ones(1, len(ids), dtype=torch.long), max_new_tokens=32, min_new_tokens=32, do_sample=False)
toks = [int(t) for t in g[0, len(ids):]]
first = next((i for i, (a, b) in enumerate(zip(toks, want)) if a != b), None)
print(f"[optimum-generate] hint {ph} kv {kv} first_divergence {first if first is not None else 'none'} ids {toks}", flush=True)
