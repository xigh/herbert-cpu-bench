; node 1: token-embedding (layer -), kernel 1 at image offset 0x968c3, 19 bytes, 256 tasks, up to 1 participants

000000  8b 07                    mov       eax,[rdi]
000002  48 0f af c1              imul      rax,rcx
000006  48 8d 34 46              lea       rsi,[rsi+rax*2]
00000a  48 89 d7                 mov       rdi,rdx
00000d  48 d1 e1                 shl       rcx,1
000010  f3 a4                    rep movsb
000012  c3                       ret
