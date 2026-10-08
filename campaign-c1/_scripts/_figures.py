#!/usr/bin/env python3
"""_figures.py [OUTDIR] : the two SVG figures of the article from results/c1-<machine>.csv (made by _analyze.py). No dependency.
 c1-decode-bw.svg       decode as % of the measured read bandwidth (probe at the engine's thread count), four engines at
                        their default settings, one panel per model, one group per machine, a wall at 100 %
 c1-decode-bw-best.svg  the same against the probe's best thread count
 c1-prefill.svg         prefill tok/s (148 tokens), same layout
Palette: the dataviz reference palette, slots 1-4 (blue, orange, aqua, yellow), light and dark in the same SVG
(prefers-color-scheme); validated 2026-10-08 with dataviz/scripts/validate_palette.js, adjacent pairs, both modes: PASS
(relief for aqua/yellow on the light surface: the value is written at the tip of every bar, and the tables of rapport.md)."""
import csv, glob, math, os, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = sys.argv[1] if len(sys.argv) > 1 else os.path.join(ROOT, "figures")
os.makedirs(OUT, exist_ok=True)
ENG = [("herbert", "Herbert (copie publiée)", "c1"), ("llama", "llama.cpp", "c2"), ("vllm", "vLLM", "c3"), ("ov", "OpenVINO-SDPA", "c4")]
MACH = [("beast", "beast · Ryzen 9 9900X, 12 cœurs, AVX-512"), ("beta", "beta · EPYC 4344P, 8 cœurs, AVX-512"), ("omnibook", "omnibook · Core Ultra 7 258V, 4 cœurs P, AVX2"), ("white2", "white2 · Ryzen 7 5700G, 8 cœurs, AVX2, Linux"), ("g5500", "g5500 · Ryzen 5 5500GT, 6 cœurs, AVX2, Windows")]
DEFAULT_T = {"beast": 12, "beta": 8, "omnibook": 4, "white2": 8, "g5500": 6}
MODELS = ["Qwen3.5-0.8B", "Qwen3.5-2B", "Qwen3.5-4B"]
STYLE = """<style>
:root{--bg:#fcfcfb;--ink:#0b0b0b;--ink2:#52514e;--grid:#e3e2de;--c1:#2a78d6;--c2:#eb6834;--c3:#1baf7a;--c4:#eda100}
@media (prefers-color-scheme:dark){:root{--bg:#1a1a19;--ink:#ffffff;--ink2:#c3c2b7;--grid:#34342f;--c1:#3987e5;--c2:#d95926;--c3:#199e70;--c4:#c98500}}
text{font-family:-apple-system,Helvetica,Arial,sans-serif;fill:var(--ink2);font-size:12px}
.t{fill:var(--ink);font-size:15px;font-weight:600}.p{fill:var(--ink);font-size:12px;font-weight:600}.v{fill:var(--ink);font-size:11px}
.grid{stroke:var(--grid);stroke-width:1}.axis{stroke:var(--ink2);stroke-width:1}.wall{stroke:var(--ink);stroke-width:1.5}
.c1{fill:var(--c1)}.c2{fill:var(--c2)}.c3{fill:var(--c3)}.c4{fill:var(--c4)}
</style>"""
def load():
    rows = []
    for f in sorted(glob.glob(os.path.join(ROOT, "results", "c1-*.csv"))):
        for r in csv.DictReader(open(f)):
            if r["engine"] == "probe": continue
            rows.append(r)
    return rows
def value(rows, machine, model, eng, key):
    t = DEFAULT_T[machine]
    for r in rows:
        if r["machine"] == machine and r["model"] == model and r["engine"] == eng and int(r["threads"]) == t:
            try: return float(r[key])
            except ValueError: return None
    return None
def bar_tip(x, y, w, h, cls):  # bar from the baseline (left) with a 4px rounded data-end on the right, square at the baseline
    r = min(4, w / 2, h / 2)
    return (f'<path class="{cls}" d="M{x:.1f},{y:.1f} h{w - r:.1f} a{r},{r} 0 0 1 {r},{r} v{h - 2 * r:.1f} a{r},{r} 0 0 1 -{r},{r} h-{w - r:.1f} z"/>')
def figure(rows, key, title, subtitle, xlabel, wall, fmt, fname, xmax_fixed=None):
    W = 1000; left = 300; right = 70; pw = W - left - right; bar = 14; gap = 2; groupgap = 14
    sub = subtitle.split(" ; ")
    out = [STYLE, f'<rect width="100%" height="100%" fill="var(--bg)"/>', f'<text class="t" x="24" y="34">{title}</text>']
    sy = 54
    for line in sub: out.append(f'<text x="24" y="{sy}">{line}</text>'); sy += 16
    # legend
    lx = 24; ly = sy + 2
    for e, name, cls in ENG:
        out.append(f'<rect class="{cls}" x="{lx}" y="{ly - 10}" width="12" height="12" rx="2"/><text x="{lx + 17}" y="{ly + 1}">{name}</text>'); lx += 17 + 7 * len(name) + 22
    y = ly + 14
    vals = {}
    for mo in MODELS:
        for ma, _ in MACH:
            for e, _, _ in ENG:
                v = value(rows, ma, mo, e, key)
                if v is not None: vals[(mo, ma, e)] = v
    if not vals: return
    for mo in MODELS:
        machines = [m for m in MACH if any((mo, m[0], e) in vals for e, _, _ in ENG)]
        if not machines: continue
        # one scale per model panel when no fixed scale (prefill); the fixed scale keeps the 100 % wall common
        xmax = xmax_fixed or max(v for (m2, _, _), v in vals.items() if m2 == mo) * 1.12
        y += 30; out.append(f'<text class="p" x="24" y="{y}">{mo}</text>'); y += 10
        top = y; bars = []
        for ma, label in machines:
            engs = [e for e in ENG if (mo, ma, e[0]) in vals]
            gh = len(engs) * (bar + gap) - gap
            bars.append(f'<text x="{left - 10}" y="{y + gh / 2 + 4}" text-anchor="end">{label}</text>')
            yy = y
            for e, name, cls in engs:
                v = vals[(mo, ma, e)]; w = pw * v / xmax
                bars.append(bar_tip(left, yy, max(w, 1), bar, cls))
                bars.append(f'<text class="v" x="{left + w + 5:.1f}" y="{yy + bar - 3}">{fmt(v)}</text>')
                yy += bar + gap
            y += gh + groupgap
        # grid for the panel
        ticks = nice_ticks(0, xmax)
        for t in ticks:
            x = left + pw * t / xmax
            out.append(f'<line class="grid" x1="{x:.1f}" x2="{x:.1f}" y1="{top - 4}" y2="{y - groupgap + 4}"/><text x="{x:.1f}" y="{y - groupgap + 18}" text-anchor="middle">{t:g}</text>')
        if wall is not None:
            x = left + pw * wall / xmax
            out.append(f'<line class="wall" x1="{x:.1f}" x2="{x:.1f}" y1="{top - 8}" y2="{y - groupgap + 4}"/><text class="p" x="{x + 5:.1f}" y="{top - 10}">mur : la sonde, 100 %</text>')
        out.append(f'<line class="axis" x1="{left}" x2="{left}" y1="{top - 4}" y2="{y - groupgap + 4}"/>')
        out.extend(bars)
        y += 14
    out.append(f'<text x="{left + pw / 2}" y="{y + 8}" text-anchor="middle">{xlabel}</text>'); y += 30
    svg = f'<svg xmlns="http://www.w3.org/2000/svg" width="{W}" height="{y}" viewBox="0 0 {W} {y}" role="img" aria-label="{title}">' + "".join(out) + "</svg>"
    open(os.path.join(OUT, fname), "w").write(svg); print("wrote", fname, f"{y}px")
def nice_ticks(lo, hi, k=5):
    span = hi - lo; step = 10 ** math.floor(math.log10(span / k))
    for m in (1, 2, 2.5, 5, 10):
        if span / (m * step) <= k: step *= m; break
    t = []; v = 0
    while v <= hi + 1e-9: t.append(round(v, 6)); v += step
    return t
rows = load()
figure(rows, "pct_bw_same_threads", "Décodage : part de la bande passante mémoire lue (sonde au même nombre de threads)",
       "Qwen3.5 en bf16 sans quantification, requête unique, invite de 148 jetons, 64 jetons générés ; réglages par défaut (tous les cœurs physiques) ; médianes de 5 répétitions entrelacées",
       "décodage × octets de poids par jeton, en % de la bande passante mesurée par la sonde (même nombre de threads, même run)", 100, lambda v: f"{v:.0f} %", "c1-decode-bw.svg", xmax_fixed=128)
figure(rows, "pct_bw_best", "Décodage : part de la bande passante mémoire lue (meilleure sonde)",
       "Mêmes mesures ; la bande passante est la meilleure valeur de la sonde sur tous ses nombres de threads (sur beast, un seul cœur lit plus que douze)",
       "décodage × octets de poids par jeton, en % de la meilleure bande passante mesurée (même run)", 100, lambda v: f"{v:.0f} %", "c1-decode-bw-best.svg", xmax_fixed=128)
figure(rows, "prefill_tok_s", "Préfill : jetons par seconde sur 148 jetons",
       "Qwen3.5 en bf16 sans quantification, réglages par défaut (tous les cœurs physiques) ; médianes de 5 répétitions entrelacées, même run que le décodage",
       "préfill, jetons/s", None, lambda v: f"{v:,.0f}".replace(",", " "), "c1-prefill.svg")
