import json, sys, torch
from transformers import AutoModelForCausalLM, AutoTokenizer
md, ref = sys.argv[1], sys.argv[2]
R = json.load(open(ref)); ids = R["prompt_ids"]; out = R["reference_fp32"]["ids"]
tok = AutoTokenizer.from_pretrained(md)
m = AutoModelForCausalLM.from_pretrained(md, dtype=torch.float32).eval()
with torch.no_grad():
    lg = m(torch.tensor([ids + out[:4]])).logits[0]
for k in range(4):
    row = lg[len(ids) - 1 + k]; p = torch.softmax(row, -1)
    top = torch.topk(row, 5)
    print(f"[margin] position {k}: " + " | ".join(f"{tok.decode([int(i)])!r} logit {float(v):.3f} p {float(p[i]):.4f}" for v, i in zip(top.values, top.indices)))
