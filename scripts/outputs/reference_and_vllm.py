#!/usr/bin/env python3
"""Output agreement, part 1 (run with the vLLM venv, which has transformers and torch cpu).

  reference_and_vllm.py ref  MODEL_DIR OUT.json   prompt ids + 32 greedy tokens, HF transformers float32 (CPU)
  reference_and_vllm.py vllm MODEL_DIR OUT.json   adds 32 greedy tokens from vLLM bfloat16 (CPU), same prompt ids

The prompt: the chat template, one user turn, no system, thinking disabled —
what `herbert-bf16-chat --no-system --no-think` builds. vLLM starts its engine
in a spawned process that re-imports this file: everything runs under main().
"""
import json, sys, time

LONG = ("Voici un texte à résumer. La mémoire des ordinateurs a longtemps progressé moins vite que leurs unités de calcul : "
        "les processeurs doublaient leur puissance tous les deux ans, tandis que la bande passante de la mémoire suivait avec retard. "
        "Pour les modèles de langage, chaque jeton généré exige de relire tous les poids du modèle, si bien que la vitesse de génération "
        "dépend surtout de la quantité de données que la mémoire peut livrer par seconde. Les architectures récentes multiplient donc les "
        "canaux mémoire, empilent la mémoire au plus près des cœurs et ajoutent des caches plus grands. Résume ce texte en une phrase.")
N = 32


def reference(model_dir, out):
    import torch
    from transformers import AutoTokenizer, AutoModelForCausalLM
    tok = AutoTokenizer.from_pretrained(model_dir)
    # The template as text, then tokenized without adding special tokens: the
    # same ids whatever apply_chat_template returns (a mapping in transformers 5).
    text = tok.apply_chat_template([{"role": "user", "content": LONG}], add_generation_prompt=True,
                                   enable_thinking=False, tokenize=False)
    ids = [int(t) for t in tok(text, add_special_tokens=False)["input_ids"]]
    res = {"model": model_dir, "prompt_ids": ids, "prompt_len": len(ids), "prompt_text": text, "torch": torch.__version__}
    print(f"[outputs] prompt {len(ids)} tokens", flush=True)
    t0 = time.time()
    m = AutoModelForCausalLM.from_pretrained(model_dir, dtype=torch.float32)
    m.eval()
    with torch.no_grad():
        g = m.generate(torch.tensor([ids]), max_new_tokens=N, min_new_tokens=N, do_sample=False)
    ref = [int(t) for t in g[0, len(ids):].tolist()]
    res["reference_fp32"] = {"ids": ref, "text": tok.decode(ref), "class": type(m).__name__,
                             "seconds": round(time.time() - t0, 1)}
    print(f"[outputs] reference fp32 {type(m).__name__}: {tok.decode(ref)!r}", flush=True)
    json.dump(res, open(out, "w"), ensure_ascii=False, indent=1)


def with_vllm(model_dir, out):
    import vllm
    from vllm import LLM, SamplingParams
    from transformers import AutoTokenizer
    res = json.load(open(out))
    tok = AutoTokenizer.from_pretrained(model_dir)
    llm = LLM(model=model_dir, dtype="bfloat16", max_model_len=1024, language_model_only=True)
    o = llm.generate([{"prompt_token_ids": res["prompt_ids"]}],
                     SamplingParams(temperature=0.0, max_tokens=N, ignore_eos=True))
    v = [int(t) for t in o[0].outputs[0].token_ids]
    res["vllm_bf16"] = {"ids": v, "text": tok.decode(v), "version": vllm.__version__}
    print(f"[outputs] vllm bf16: {tok.decode(v)!r}", flush=True)
    json.dump(res, open(out, "w"), ensure_ascii=False, indent=1)


def main():
    what, model_dir, out = sys.argv[1], sys.argv[2], sys.argv[3]
    {"ref": reference, "vllm": with_vllm}[what](model_dir, out)


if __name__ == "__main__":
    main()
