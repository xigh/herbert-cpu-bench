; node 63: dynamic-offset (layer 3), kernel 60 at image offset 0xe63c0, 34 bytes, 1 tasks, up to 1 participants

000000  48 8b 07                 mov       rax,[rdi]
000003  48 b9 00 00 00 00 00 00 00 00 mov       rcx,0
00000d  48 29 c8                 sub       rax,rcx
000010  48 b9 40 00 00 00 00 00 00 00 mov       rcx,0x40
00001a  48 0f af c1              imul      rax,rcx
00001e  48 89 06                 mov       [rsi],rax
000021  c3                       ret
