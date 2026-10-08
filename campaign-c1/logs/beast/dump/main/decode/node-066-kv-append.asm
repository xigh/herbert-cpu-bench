; node 66: kv-append (layer 3), kernel 63 at image offset 0xe70f4, 132 bytes, 2 tasks, up to 1 participants

000000  53                       push      rbx
000001  48 89 fb                 mov       rbx,rdi
000004  49 89 f3                 mov       r11,rsi
000007  49 83 fb 02              cmp       r11,2
00000b  73 75                    jae       short 0x0000000000000082
00000d  48 8b 43 20              mov       rax,[rbx+0x20]
000011  4c 8b 08                 mov       r9,[rax]
000014  4d 85 c9                 test      r9,r9
000017  74 69                    je        short 0x0000000000000082
000019  48 8b 43 28              mov       rax,[rbx+0x28]
00001d  4c 8b 10                 mov       r10,[rax]
000020  45 31 c0                 xor       r8d,r8d
000023  fc                       cld
000024  49 6b c0 02              imul      rax,r8,2
000028  4c 01 d8                 add       rax,r11
00002b  48 69 c0 00 02 00 00     imul      rax,0x200
000032  4b 8d 14 02              lea       rdx,[r10+r8]
000036  48 69 d2 00 02 00 00     imul      rdx,0x200
00003d  49 69 cb 00 00 40 00     imul      rcx,r11,0x400000
000044  48 01 ca                 add       rdx,rcx
000047  48 8b 3b                 mov       rdi,[rbx]
00004a  48 01 d7                 add       rdi,rdx
00004d  48 8b 73 10              mov       rsi,[rbx+0x10]
000051  48 01 c6                 add       rsi,rax
000054  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00005e  f3 a4                    rep movsb
000060  48 8b 7b 08              mov       rdi,[rbx+8]
000064  48 01 d7                 add       rdi,rdx
000067  48 8b 73 18              mov       rsi,[rbx+0x18]
00006b  48 01 c6                 add       rsi,rax
00006e  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000078  f3 a4                    rep movsb
00007a  49 ff c0                 inc       r8
00007d  4d 39 c8                 cmp       r8,r9
000080  72 a2                    jb        short 0x0000000000000024
000082  5b                       pop       rbx
000083  c3                       ret
