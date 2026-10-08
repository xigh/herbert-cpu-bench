; node 5: delta-interleave-a-b (layer 0), kernel 5 at image offset 0x98930, 57 bytes, 256 tasks, up to 1 participants

000000  48 6b c6 40              imul      rax,rsi,0x40
000004  4c 8b 07                 mov       r8,[rdi]
000007  49 01 c0                 add       r8,rax
00000a  4c 8b 4f 08              mov       r9,[rdi+8]
00000e  49 01 c1                 add       r9,rax
000011  48 69 c6 80 00 00 00     imul      rax,rsi,0x80
000018  4c 8b 57 10              mov       r10,[rdi+0x10]
00001c  49 01 c2                 add       r10,rax
00001f  62 c1 fe 48 6f 00        vmovdqu64 zmm16,[r8]
000025  62 c1 fe 48 7f 02        vmovdqu64 [r10],zmm16
00002b  62 c1 fe 48 6f 01        vmovdqu64 zmm16,[r9]
000031  62 c1 fe 48 7f 42 01     vmovdqu64 [r10+0x40],zmm16
000038  c3                       ret
