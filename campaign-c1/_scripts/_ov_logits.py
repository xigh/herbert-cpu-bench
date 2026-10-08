"""Logits of OpenVINO (optimum-intel OVModelForCausalLM, same IR) against transformers fp32,
on the prompt + the first 3 reference tokens, for each (inference precision, KV precision)."""
import json, sys, torch, numpy as np
from transformers import AutoModelForCausalLM
from optimum.intel import OVModelForCausalLM
md, ir, ref, T = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
R = json.load(open(ref)); ids = R["prompt_ids"] + R["reference_fp32"]["ids"][:3]
n0 = len(R["prompt_ids"]) - 1
with torch.no_grad():
    ref_lg = AutoModelForCausalLM.from_pretrained(md, dtype=torch.float32).eval()(torch.tensor([ids])).logits[0, n0:].numpy()
for ph in ("bf16", "f32"):
    for kv in ("bf16", "f32"):
        cfg = {"INFERENCE_PRECISION_HINT": ph, "KV_CACHE_PRECISION": kv, "DYNAMIC_QUANTIZATION_GROUP_SIZE": "0", "INFERENCE_NUM_THREADS": T}
        m = OVModelForCausalLM.from_pretrained(ir, ov_config=cfg, compile=True)
        lg = m(input_ids=torch.tensor([ids]), attention_mask=torch.ones(1, len(ids), dtype=torch.long)).logits[0, n0:].float().numpy()
        for k in range(4):
            a, b = lg[k], ref_lg[k]
            cos = float(a @ b / np.linalg.norm(a) / np.linalg.norm(b))
            top = np.argsort(-a)[:2]
            print(f"[logits] hint {ph} kv {kv} position {k}: max|d| {np.abs(a - b).max():.4f} mean|d| {np.abs(a - b).mean():.5f} cos {cos:.7f} "
                  f"ov top2 {int(top[0])} {int(top[1])} margin {a[top[0]] - a[top[1]]:.3f} | ref argmax {int(b.argmax())}", flush=True)
        del m
