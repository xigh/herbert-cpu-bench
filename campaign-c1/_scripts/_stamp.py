#!/usr/bin/env python3
"""stamp.py : copy stdin to stdout, one line per '\n' or '\r', each prefixed 'S <epoch seconds>' (tqdm bars use '\r')."""
import os, sys, time
buf = b""
while True:
    d = os.read(0, 65536)
    if not d: break
    now = time.time(); buf += d
    parts = buf.replace(b"\r", b"\n").split(b"\n"); buf = parts.pop()
    for p in parts:
        if p.strip(): sys.stdout.write("S %.3f %s\n" % (now, p.decode("utf-8", "replace"))); 
    sys.stdout.flush()
if buf.strip(): sys.stdout.write("S %.3f %s\n" % (time.time(), buf.decode("utf-8", "replace")))
