#!/usr/bin/env python3
"""_win_normalize.py FILE... : make the Windows logs of g5500 readable by the Linux tools, in place, keeping a copy
FILE.orig of the raw file. Windows PowerShell's Out-File wrote them with a UTF-8 BOM, CRLF line ends, and folded every
line longer than the console width (~120 columns) of the scheduled-task session. This strips the BOM, turns CRLF into
LF and joins the folded continuations: a `[turn 1]` line until it contains `position`, an `[ids]` line while the next
line starts with a digit, a `[decoded]` line while its quotes are unbalanced, a JSON line (`{`) until its braces balance,
a `[probe-bw]` or `[isa]`/`[pool]`/`[engine]` line while the next line does not start with a known prefix."""
import sys, shutil
PREFIXES = ("[", "==", "##", "###", "#", "{", "versions", "config", "gguf", "power", "processes", "run ", "step ", "finished", "Qwen", "llama", "load_", "build", "ggml", "main", "print", "|", "warning", "common", "sampler", "system", "generate", "srv", "slot", "que ", "set ", "clip")
def unfinished(line):
    if line.startswith("[turn 1]"): return "position" not in line
    if line.startswith("[decoded]"): return line.count('"') % 2 == 1 and not line.rstrip().endswith('"')
    if line.startswith("{"): return line.count("{") > line.count("}")
    return False
for f in sys.argv[1:]:
    raw = open(f, "rb").read()
    if not __import__("os").path.exists(f + ".orig"): shutil.copyfile(f, f + ".orig")
    raw = open(f + ".orig", "rb").read()
    # PowerShell's `*>` redirection writes UTF-16LE (BOM FF FE); Out-File -Encoding UTF8 writes UTF-8 with BOM
    if raw.startswith(b"\xff\xfe"): text = raw.decode("utf-16")
    else: text = raw.lstrip(b"\xef\xbb\xbf").decode("utf-8", "replace")
    text = text.replace("\r\n", "\n").replace("┬╖", "·").replace("┬╡", "µ").replace("ΓåÆ", "→")  # UTF-8 bytes shown through code page 850
    out = []
    for line in text.split("\n"):
        if out and (unfinished(out[-1]) or (out[-1].startswith("[ids]") and line[:1].isdigit())):
            out[-1] = out[-1] + ("" if out[-1].endswith(" ") or out[-1].startswith("{") else " ") + line
        else:
            out.append(line)
    open(f, "w", encoding="utf-8").write("\n".join(out))
    print(f, "lines", text.count("\n"), "->", len(out))
