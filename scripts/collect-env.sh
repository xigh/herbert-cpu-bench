#!/bin/bash
# collect-env.sh [MODELS_DIR] — everything needed to reproduce (or refute) a
# measurement on this machine, printed to stdout (redirect to a file).
# Read-only: no setting is changed. sudo is used only if it needs no password.
MD=${1:-$HOME/models/qwen}
B=~/bench-engines
s() { echo; echo "### $*"; }
s "date / host"; date -u +%FT%TZ; hostname; uname -a
s "os"; cat /etc/os-release
s "kernel cmdline"; cat /proc/cmdline
s "cpu"; lscpu; lscpu -e
s "cpu flags (cpu0)"; grep -m1 '^flags' /proc/cpuinfo
s "microcode"; grep -m1 microcode /proc/cpuinfo
s "frequency policy"; for f in scaling_governor energy_performance_preference scaling_driver scaling_min_freq scaling_max_freq; do echo "$f: $(cat /sys/devices/system/cpu/cpu0/cpufreq/$f 2>/dev/null)"; done; echo "boost: $(cat /sys/devices/system/cpu/cpufreq/boost 2>/dev/null)"; echo "amd_pstate: $(cat /sys/devices/system/cpu/amd_pstate/status 2>/dev/null)"
s "smt / numa / thp"; echo "smt: $(cat /sys/devices/system/cpu/smt/control 2>/dev/null)"; numactl -H 2>/dev/null || ls /sys/devices/system/node; echo "thp: $(cat /sys/kernel/mm/transparent_hugepage/enabled) defrag: $(cat /sys/kernel/mm/transparent_hugepage/defrag)"
s "memory"; free -b; if sudo -n true 2>/dev/null; then sudo -n dmidecode -t memory; sudo -n dmidecode -t bios; sudo -n dmidecode -t baseboard; else echo "(dmidecode needs a password here: not collected)"; fi
s "load / top"; uptime; ps -eo pid,pcpu,pmem,etime,comm --sort=-pcpu | head -15
s "toolchains"; gcc --version | head -1; g++ --version | head -1; cmake --version 2>/dev/null | head -1; python3 --version; ldd --version | head -1
s "herbert"; for h in ~/herbert-zen6/herbert-bf16-chat; do [ -e $h ] && sha256sum $h; done
s "probes"; for p in $B/probe-bw ~/herbert-zen6/probe-zen6; do [ -e $p ] && sha256sum $p; done
s "llama.cpp"; if [ -d $B/llama.cpp ]; then git -C $B/llama.cpp log -1 --format='%H %ci %s'; git -C $B/llama.cpp status --short | head; grep -E '^(CMAKE_BUILD_TYPE|GGML_NATIVE|GGML_AVX|GGML_LLAMAFILE|CMAKE_C_COMPILER:|CMAKE_C_FLAGS:)' $B/llama.cpp/build/CMakeCache.txt; $B/llama.cpp/build/bin/llama-bench --list-devices 2>&1 | head -5; sha256sum $B/llama.cpp/build/bin/llama-bench; fi
s "gguf"; for g in $B/gguf/*.gguf; do [ -e $g ] && sha256sum $g; done
s "venv-vllm (pip freeze)"; [ -x $B/venv-vllm/bin/python ] && $B/venv-vllm/bin/python -m pip freeze 2>/dev/null || uv pip freeze --python $B/venv-vllm/bin/python 2>/dev/null
s "venv-convert (pip freeze)"; [ -x $B/venv-convert/bin/python ] && uv pip freeze --python $B/venv-convert/bin/python 2>/dev/null
s "venv-openvino (pip freeze)"; [ -x $B/venv-openvino/bin/python ] && uv pip freeze --python $B/venv-openvino/bin/python 2>/dev/null
s "models ($MD)"; for m in Qwen3.5-0.8B Qwen3.5-2B Qwen3.5-4B; do [ -d $MD/$m ] && (cd $MD/$m && sha256sum *.json *.jinja *.txt *.safetensors 2>/dev/null); done
s "end"; date -u +%FT%TZ
