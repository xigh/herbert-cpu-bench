; node 461: argmax (layer -), kernel 437 at image offset 0x320a24, 53 bytes, 1 tasks, up to 1 participants

000000  b8 00 00 80 ff           mov       eax,0xff800000
000005  66 0f 6e c0              movd      xmm0,eax
000009  45 31 c0                 xor       r8d,r8d
00000c  31 c9                    xor       ecx,ecx
00000e  48 85 d2                 test      rdx,rdx
000011  74 1e                    je        short 0x0000000000000031
000013  0f b7 04 4f              movzx     eax,word [rdi+rcx*2]
000017  c1 e0 10                 shl       eax,0x10
00001a  66 0f 6e c8              movd      xmm1,eax
00001e  0f 2e c8                 ucomiss   xmm1,xmm0
000021  76 06                    jbe       short 0x0000000000000029
000023  0f 28 c1                 movaps    xmm0,xmm1
000026  41 89 c8                 mov       r8d,ecx
000029  48 ff c1                 inc       rcx
00002c  48 39 d1                 cmp       rcx,rdx
00002f  72 e2                    jb        short 0x0000000000000013
000031  44 89 06                 mov       [rsi],r8d
000034  c3                       ret
