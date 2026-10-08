#!/usr/bin/env python3
"""Cross-machine synthesis from every campaign log (medians of 3 interleaved repetitions).
Best configuration per engine = the best median over the configurations measured
(threads, zentorch, --ne-convert), each shown with its configuration."""
import csv, glob, json, re, statistics as st
B = {"Qwen3.5-0.8B": 1.505, "Qwen3.5-2B": 3.764, "Qwen3.5-4B": 8.412}
BW = {"beast": 44.20, "beta": 54.10, "omnibook": 102.76}   # probe-bw, best over thread counts except beast (all cores) — see notes
BW1 = {"beast": 50.31, "beta": 45.44, "omnibook": 37.47}
res = {}   # (machine, model, engine) -> list of (config, prefill_median, decode_median)
def add(mach, mo, eng, cfg, p, d):
    res.setdefault((mach, mo, eng), []).append((cfg, p, d))
# campaign 1
for mach, f in [("beast", "results/beast.csv"), ("beta", "results/beta.csv")]:
    rows = list(csv.DictReader(open(f)))
    for mo in B:
        for e in ["herbert", "llama.cpp", "vllm"]:
            g = lambda k: [float(r["value"]) for r in rows if r["model"] == mo and r["engine"] == e and r["metric"] == k]
            add(mach, mo, {"herbert": "Herbert", "llama.cpp": "llama.cpp", "vllm": "vLLM"}[e], "tous les cœurs" + (" (défaut)" if e != "herbert" else ""), st.median(g("prefill_tok_s")), st.median(g("decode_tok_s")))
# campaign 2
for mach, f in [("beast", "results/campaign2-beast.csv"), ("beta", "results/campaign2-beta.csv")]:
    rows = list(csv.DictReader(open(f)))
    for mo in B:
        for e in ["herbert", "llama.cpp", "vllm-zen"]:
            for t in sorted({int(r["threads"]) for r in rows if r["model"] == mo and r["engine"] == e}):
                g = lambda k: [float(r["value"]) for r in rows if r["model"] == mo and r["engine"] == e and int(r["threads"]) == t and r["metric"] == k]
                name = {"herbert": "Herbert", "llama.cpp": "llama.cpp", "vllm-zen": "vLLM"}[e]
                add(mach, mo, name, f"{t} thread" + ("s" if t > 1 else "") + (" + zentorch" if e == "vllm-zen" else ""), st.median(g("prefill_tok_s")), st.median(g("decode_tok_s")))
# omnibook three engines
def omni(path, models):
    cur = None; d = {}; vl = {}
    for l in open(path, errors="replace"):
        m = re.match(r"== (\S+) rep (\d+) (herbert (\S+)|llama pp148|llama tg64@148|vllm latency out=(\d+))", l)
        if m: cur = (m.group(1), int(m.group(2)), m.group(3)); continue
        if not cur or cur[0] not in models: continue
        mo, rep, what = cur
        m = re.search(r"\[turn 1\] \d+ prompt tokens in [\d.]+ s \(([\d.]+) tok/s\) · \d+ generated in [\d.]+ s \(([\d.]+) tok/s\)", l)
        if m and what.startswith("herbert"):
            cfg = "4 cœurs P" + (" + --ne-convert" if "--ne" in what else "")
            d.setdefault((mo, "Herbert", cfg, "p"), []).append(float(m.group(1))); d.setdefault((mo, "Herbert", cfg, "d"), []).append(float(m.group(2)))
        if what.startswith("llama") and l.startswith("{"):
            j = json.loads(l); d.setdefault((mo, "llama.cpp", "4 cœurs P", "p" if "pp" in what else "d"), []).append(j["avg_ts"])
        m = re.search(r'"avg_latency": ([\d.]+)', l)
        if m and what.startswith("vllm"): vl[(mo, rep, int(what.split("=")[1]))] = float(m.group(1))
    for (mo, rep, o), v in vl.items():
        if o == 65 and (mo, rep, 1) in vl:
            l1 = vl[(mo, rep, 1)]; d.setdefault((mo, "vLLM", "4 cœurs P", "p"), []).append(148 / l1); d.setdefault((mo, "vLLM", "4 cœurs P", "d"), []).append(64 / (v - l1))
    for (mo, e, cfg, k) in list(d):
        if k == "p" and len(d[(mo, e, cfg, "p")]) >= 3:
            add("omnibook", mo, e, cfg, st.median(d[(mo, e, cfg, "p")]), st.median(d[(mo, e, cfg, "d")]))
omni(sorted(glob.glob("logs/omnibook/campaign-omnibook-engines-2*.log"))[0], {"Qwen3.5-0.8B", "Qwen3.5-2B"})
omni(sorted(glob.glob("logs/omnibook/campaign-omnibook-engines-4B-*.log"))[-1], {"Qwen3.5-4B"})
out = ["# Synthèse transversale (générée par `results/synthesis.py`)\n",
       "Médianes de trois répétitions entrelacées. Pour chaque moteur, sa meilleure configuration mesurée (nombre de threads, zentorch pour vLLM, `--ne-convert` pour Herbert), indiquée entre parenthèses. bf16 partout, requête unique, prompt de 148 jetons. Bande passante de lecture mesurée par `probe-bw` (meilleur nombre de threads) : beast 50,3 Go/s à 1 thread (44,2 à 12), beta 54,1 à 8, omnibook 102,8 à 4 cœurs P.\n"]
for metric, idx, title in [("décodage", 2, "Décodage (jetons/s) — la bande passante"), ("préfill", 1, "Préfill (jetons/s, 148 jetons) — le calcul")]:
    out.append(f"## {title}\n")
    out.append("| machine | modèle | Herbert | llama.cpp | vLLM |")
    out.append("|---|---|---|---|---|")
    for mach in ["beast", "beta", "omnibook"]:
        for mo in B:
            cells = []
            for e in ["Herbert", "llama.cpp", "vLLM"]:
                c = res.get((mach, mo, e), [])
                if not c: cells.append("—"); continue
                best = max(c, key=lambda x: x[idx])
                cells.append(f"{best[idx]:.2f} ({best[0]})" if idx == 2 else f"{best[idx]:.0f} ({best[0]})")
            vals = [float(x.split(" ")[0]) if x != "—" else 0 for x in cells]
            top = vals.index(max(vals))
            cells[top] = "**" + cells[top].split(" ", 1)[0] + "** " + cells[top].split(" ", 1)[1]
            out.append(f"| {mach} | {mo} | " + " | ".join(cells) + " |")
    out.append("")
out.append("## Décodage × octets de poids par jeton, meilleure configuration, part de la bande passante mesurée\n")
out.append("| machine | modèle | Herbert | llama.cpp | vLLM | sonde |")
out.append("|---|---|---|---|---|---|")
probe = {"beast": 50.31, "beta": 54.10, "omnibook": 102.76}
for mach in ["beast", "beta", "omnibook"]:
    for mo in B:
        cells = []
        for e in ["Herbert", "llama.cpp", "vLLM"]:
            best = max(res[(mach, mo, e)], key=lambda x: x[2])
            gbs = best[2] * B[mo]
            cells.append(f"{gbs:.1f} Go/s ({100 * gbs / probe[mach]:.0f} %)")
        out.append(f"| {mach} | {mo} | " + " | ".join(cells) + f" | {probe[mach]:.1f} |")
open("results/synthesis.md", "w").write("\n".join(out) + "\n")
print("\n".join(out))
