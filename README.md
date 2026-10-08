# herbert-cpu-bench

Reproducible CPU benchmarks of [herbert-jit-bf16](https://github.com/xigh/herbert-jit-bf16) against llama.cpp, vLLM and OpenVINO, on Qwen3.5 0.8B, 2B and 4B, in bf16 everywhere and without any quantization (neither the weights nor the KV cache): the protocol, the predictions written before measuring, the exact scripts, the complete raw logs and the extracted results. Companion to the series « On descend d'un cran » on [philippe-anel.fr](https://philippe-anel.fr/).

The question behind it: for inference, a multi-core CPU is enough as long as the memory bandwidth keeps up. Decode (one token at a time) rereads every weight at every token, so it is bound by memory. Prefill (the whole prompt at once) is bound by compute.

## Layout

```
campaign-c1/        the campaign of 8 October 2026 cited by the articles (see below)
scripts/            the exact scripts run on the machines for the first campaign (setup, campaigns)
notes/plan.md       the plan of the first campaign (25 September 2026)
notes/predictions.md  its predictions, written before the measures
notes/journal.md    dated journal of observations, anomalies and caveats
notes/build.md      exact versions and build logs
results/            tables extracted from the logs (CSV and markdown) and the extraction script
logs/<machine>/     complete outputs, never filtered nor edited
```

`campaign-c1/` holds `protocol.md`, `predictions.md` and `predictions-2.md` (written before any measure), `predictions-evaluation.md`, `_scripts/` (the drivers, the bandwidth probe for Linux and for Windows, the analysis and figure scripts), `results/`, `figures/` and `logs/<machine>/`. Six machines: beast, beta, omnibook, white2 and g5500 (Windows 11); Zen 5, Zen 4, Zen 3 and Lunar Lake.

The bandwidth probe, `scripts/probe-bw.rs` (Linux, x86-64) and `campaign-c1/_scripts/_probe-bw-win/` (Windows), measures the read bandwidth of a machine with a loop emitted at run time by iced-x86: what runs is exactly what is emitted, never rewritten by a compiler.

Published as a single commit without history: the prediction files mention the commits that introduced them in the private working tree, and in this copy their dates stand on their own. Private LAN addresses in the logs were replaced by machine names; nothing else was edited.

## Machines of the first campaign

| machine | CPU | cores | AVX-512 | memory | theoretical bandwidth |
|---|---|---|---|---|---|
| beast | AMD Ryzen 9 9900X (Zen 5, 2 CCDs, 64 MiB L3) | 12 (24 threads) | yes, BF16, 512-bit path | 186 GiB DDR5 **capped at 3600 MT/s** (dual channel) | 57.6 GB/s |
| beta | AMD EPYC 4344P (Zen 4, 1 CCD, 32 MiB L3) | 8 (16 threads) | yes, BF16, 256-bit path (two passes) | 2 × 32 GB DDR5-5200 (dual channel) | 83.2 GB/s |

Linux 6.8 (Ubuntu 24.04.4), `powersave` governor with EPP `balance_performance` (defaults, not changed). On beta, a production service is stopped during each campaign, then restarted and checked (`scripts/beta-wrap-*.sh`).

CPU numbering: the physical cores are 0..N−1 and their SMT siblings N..2N−1 (`lscpu -e`); "all cores" means N threads on the physical cores.

## Models

Qwen3.5 instruct from Hugging Face (`Qwen/Qwen3.5-0.8B`, `-2B`, `-4B`): a hybrid architecture (Gated DeltaNet "linear attention" layers and full attention layers), tied embeddings on the small sizes, a vision tower present in the checkpoint but not loaded. sha256 of the safetensors (identical on every machine):

| model | safetensors | GGUF bf16 (llama.cpp, `--no-mtp`) |
|---|---|---|
| Qwen3.5-0.8B | `04b1c301231dd422` | 1,516,744,672 bytes |
| Qwen3.5-2B | `aa33250c4fc64891` | 3,775,709,152 bytes |
| Qwen3.5-4B | `26a93f066e1916ad`, `cb544bd9bfae93dc` (two files) | 8,424,393,600 bytes |

## Engines

| engine | version | format | settings |
|---|---|---|---|
| Herbert | first campaign: the `zen6` branch of the development tree, commit `88579c5`, static musl binary sha256 `53bc98c18cb8ffa7`; campaign C1: the published copy [herbert-jit-bf16 v0.1.0](https://github.com/xigh/herbert-jit-bf16/tree/v0.1.0), built on each machine with `cargo build --release --locked` | safetensors bf16, repacked to R16 at load | AVX-512 path (`vdpbf16ps`), `--threads N --no-system --no-think --max-tokens 64` |
| llama.cpp | tag `b11177` (commit `1ab7e5ad`, 2026-09-25), built with `GGML_NATIVE=ON` (AVX512_BF16 checked) | GGUF bf16 converted by `convert_hf_to_gguf.py --outtype bf16 --no-mtp` | `llama-bench -t N -lm none` |
| vLLM | 0.30.0+cpu (official `manylinux_2_39` wheel), torch 2.13.0+cpu | safetensors bf16 | `--dtype bfloat16 --language-model-only --max-model-len 1024`, `VLLM_CPU_OMP_THREADS_BIND=0-(N−1)`, `VLLM_CPU_KVCACHE_SPACE=8`, `LD_PRELOAD=libiomp5.so`; torch.compile on by default |
| OpenVINO | 2026.4.0 (first campaign, `scripts/openvino/`), 2026.4.1 (C1), GenAI, fp32 IR run in bf16, `ATTENTION_BACKEND=SDPA` | IR exported by optimum-intel | see `campaign-c1/protocol.md` |

## Measurement protocol of the first campaign

Latency of a single request (batch 1), a 148-token prompt, 64 decoded tokens (44 for Herbert, whose answer stops by itself on the 0.8B), all physical cores. The engines are interleaved within each repetition, three repetitions per model, 15 s of rest between two measures, load checked before each measure (`scripts/campaign.sh`). Campaign C1 (8 October 2026) raises this to five repetitions with the engine order rotated, one process per measure, 10 s of rest plus an idleness guard, and the bandwidth probe in the same run; see `campaign-c1/protocol.md`.

- **Herbert**: `herbert-bf16-chat` on the real prompt (a text about memory bandwidth, 148 tokens with the chat template); it prints prefill and decode in tokens/s.
- **llama.cpp**: `llama-bench -p 148 -n 0` (148-token prefill) and `llama-bench -p 0 -n 64 -d 148` (64 tokens decoded after an untimed 148-token context); `avg_ts` in tokens/s.
- **vLLM**: `vllm bench latency --input-len 148 --batch-size 1`, `--output-len 1` then `65`, 3 warm-up iterations + 10 measured; prefill ≈ 148 / L1 (L1 includes sampling the first token), decode = 64 / (L65 − L1).

The llama.cpp and vLLM prompts are synthetic tokens of the same length: the cost of prefill and decode does not depend on the content. The decode lengths differ slightly (44 versus 64 tokens, context 148 → 192 versus 148 → 212): a negligible effect, expected and reported.

## Reproduce

First campaign:

```
scp scripts/setup.sh HOST:bench-setup.sh && ssh HOST ~/bench-setup.sh        # engines, models, GGUF, vLLM in ~/bench-engines
scp scripts/campaign.sh HOST:bench-engines/campaign.sh && ssh HOST ~/bench-engines/campaign.sh
python3 results/extract.py logs/*/campaign-*.log > results/results.csv
```

Campaign C1: `campaign-c1/protocol.md` gives the exact commands per machine; `campaign-c1/_scripts/_run.sh` chains the steps (output agreement, bisection, campaign, OpenVINO diagnostic); `_analyze.py`, `_summary.py` and `_figures.py` rebuild `results/` and `figures/` from the logs.

## License

MIT, see `LICENSE`.
