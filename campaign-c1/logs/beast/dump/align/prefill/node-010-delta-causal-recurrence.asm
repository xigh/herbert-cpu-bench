; node 10: delta-causal-recurrence (layer 0), kernel 10 at image offset 0x9bdeb, 1181 bytes, 16 tasks, up to 12 participants

000000  53                       push      rbx
000001  55                       push      rbp
000002  41 54                    push      r12
000004  41 55                    push      r13
000006  41 56                    push      r14
000008  41 57                    push      r15
00000a  48 83 ec 08              sub       rsp,8
00000e  48 89 fb                 mov       rbx,rdi
000011  48 89 f5                 mov       rbp,rsi
000014  48 89 f0                 mov       rax,rsi
000017  31 d2                    xor       edx,edx
000019  48 b9 01 00 00 00 00 00 00 00 mov       rcx,1
000023  48 f7 f1                 div       rcx
000026  4c 69 e0 00 02 00 00     imul      r12,rax,0x200
00002d  48 8b 03                 mov       rax,[rbx]
000030  4c 69 ed 00 00 01 00     imul      r13,rbp,0x10000
000037  49 01 c5                 add       r13,rax
00003a  48 8b 43 28              mov       rax,[rbx+0x28]
00003e  4c 8b 38                 mov       r15,[rax]
000041  45 31 f6                 xor       r14d,r14d
000044  4d 85 ff                 test      r15,r15
000047  74 7b                    je        short 0x00000000000000c4
000049  4c 89 ef                 mov       rdi,r13
00004c  49 69 c6 00 20 00 00     imul      rax,r14,0x2000
000053  48 69 cd 00 02 00 00     imul      rcx,rbp,0x200
00005a  48 01 c8                 add       rax,rcx
00005d  48 8b 73 08              mov       rsi,[rbx+8]
000061  48 01 c6                 add       rsi,rax
000064  49 69 c6 00 60 00 00     imul      rax,r14,0x6000
00006b  48 03 43 10              add       rax,[rbx+0x10]
00006f  4a 8d 14 20              lea       rdx,[rax+r12]
000073  48 8d 8a 00 20 00 00     lea       rcx,[rdx+0x2000]
00007a  4c 69 c5 00 02 00 00     imul      r8,rbp,0x200
000081  4e 8d 84 00 00 40 00 00  lea       r8,[rax+r8+0x4000]
000089  49 b9 80 00 00 00 00 00 00 00 mov       r9,0x80
000093  49 6b c6 10              imul      rax,r14,0x10
000097  48 01 e8                 add       rax,rbp
00009a  4c 8b 53 18              mov       r10,[rbx+0x18]
00009e  66 41 0f 6e 04 82        movd      xmm0,[r10+rax*4]
0000a4  4c 8b 53 20              mov       r10,[rbx+0x20]
0000a8  66 41 0f 6e 0c 82        movd      xmm1,[r10+rax*4]
0000ae  b8 f3 04 b5 3d           mov       eax,0x3db504f3
0000b3  66 0f 6e d0              movd      xmm2,eax
0000b7  e8 17 00 00 00           call      0x00000000000000d3
0000bc  49 ff c6                 inc       r14
0000bf  4d 39 fe                 cmp       r14,r15
0000c2  72 85                    jb        short 0x0000000000000049
0000c4  48 83 c4 08              add       rsp,8
0000c8  41 5f                    pop       r15
0000ca  41 5e                    pop       r14
0000cc  41 5d                    pop       r13
0000ce  41 5c                    pop       r12
0000d0  5d                       pop       rbp
0000d1  5b                       pop       rbx
0000d2  c3                       ret
0000d3  62 62 7d 48 18 f8        vbroadcastss zmm31,xmm0
0000d9  62 62 7d 48 18 f1        vbroadcastss zmm30,xmm1
0000df  62 62 7d 48 18 ea        vbroadcastss zmm29,xmm2
0000e5  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0000eb  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0000f1  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0000f7  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0000fd  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000103  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000109  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00010f  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000115  4d 89 ca                 mov       r10,r9
000118  49 89 fb                 mov       r11,rdi
00011b  48 89 c8                 mov       rax,rcx
00011e  62 62 7d 48 18 20        vbroadcastss zmm28,[rax]
000124  62 41 7c 48 10 13        vmovups   zmm26,[r11]
00012a  62 01 2c 40 59 d6        vmulps    zmm26,zmm26,zmm30
000130  62 41 7c 48 11 13        vmovups   [r11],zmm26
000136  62 01 2c 40 59 cc        vmulps    zmm25,zmm26,zmm28
00013c  62 91 7c 48 58 c1        vaddps    zmm0,zmm0,zmm25
000142  62 41 7c 48 10 53 01     vmovups   zmm26,[r11+0x40]
000149  62 01 2c 40 59 d6        vmulps    zmm26,zmm26,zmm30
00014f  62 41 7c 48 11 53 01     vmovups   [r11+0x40],zmm26
000156  62 01 2c 40 59 cc        vmulps    zmm25,zmm26,zmm28
00015c  62 91 74 48 58 c9        vaddps    zmm1,zmm1,zmm25
000162  62 41 7c 48 10 53 02     vmovups   zmm26,[r11+0x80]
000169  62 01 2c 40 59 d6        vmulps    zmm26,zmm26,zmm30
00016f  62 41 7c 48 11 53 02     vmovups   [r11+0x80],zmm26
000176  62 01 2c 40 59 cc        vmulps    zmm25,zmm26,zmm28
00017c  62 91 6c 48 58 d1        vaddps    zmm2,zmm2,zmm25
000182  62 41 7c 48 10 53 03     vmovups   zmm26,[r11+0xc0]
000189  62 01 2c 40 59 d6        vmulps    zmm26,zmm26,zmm30
00018f  62 41 7c 48 11 53 03     vmovups   [r11+0xc0],zmm26
000196  62 01 2c 40 59 cc        vmulps    zmm25,zmm26,zmm28
00019c  62 91 64 48 58 d9        vaddps    zmm3,zmm3,zmm25
0001a2  62 41 7c 48 10 53 04     vmovups   zmm26,[r11+0x100]
0001a9  62 01 2c 40 59 d6        vmulps    zmm26,zmm26,zmm30
0001af  62 41 7c 48 11 53 04     vmovups   [r11+0x100],zmm26
0001b6  62 01 2c 40 59 cc        vmulps    zmm25,zmm26,zmm28
0001bc  62 91 5c 48 58 e1        vaddps    zmm4,zmm4,zmm25
0001c2  62 41 7c 48 10 53 05     vmovups   zmm26,[r11+0x140]
0001c9  62 01 2c 40 59 d6        vmulps    zmm26,zmm26,zmm30
0001cf  62 41 7c 48 11 53 05     vmovups   [r11+0x140],zmm26
0001d6  62 01 2c 40 59 cc        vmulps    zmm25,zmm26,zmm28
0001dc  62 91 54 48 58 e9        vaddps    zmm5,zmm5,zmm25
0001e2  62 41 7c 48 10 53 06     vmovups   zmm26,[r11+0x180]
0001e9  62 01 2c 40 59 d6        vmulps    zmm26,zmm26,zmm30
0001ef  62 41 7c 48 11 53 06     vmovups   [r11+0x180],zmm26
0001f6  62 01 2c 40 59 cc        vmulps    zmm25,zmm26,zmm28
0001fc  62 91 4c 48 58 f1        vaddps    zmm6,zmm6,zmm25
000202  62 41 7c 48 10 53 07     vmovups   zmm26,[r11+0x1c0]
000209  62 01 2c 40 59 d6        vmulps    zmm26,zmm26,zmm30
00020f  62 41 7c 48 11 53 07     vmovups   [r11+0x1c0],zmm26
000216  62 01 2c 40 59 cc        vmulps    zmm25,zmm26,zmm28
00021c  62 91 44 48 58 f9        vaddps    zmm7,zmm7,zmm25
000222  49 81 c3 00 02 00 00     add       r11,0x200
000229  48 05 04 00 00 00        add       rax,4
00022f  49 ff ca                 dec       r10
000232  0f 85 e6 fe ff ff        jne       near 0x000000000000011e
000238  62 41 7c 48 10 08        vmovups   zmm25,[r8]
00023e  62 61 34 40 5c c8        vsubps    zmm25,zmm25,zmm0
000244  62 91 34 40 59 c7        vmulps    zmm0,zmm25,zmm31
00024a  62 41 7c 48 10 48 01     vmovups   zmm25,[r8+0x40]
000251  62 61 34 40 5c c9        vsubps    zmm25,zmm25,zmm1
000257  62 91 34 40 59 cf        vmulps    zmm1,zmm25,zmm31
00025d  62 41 7c 48 10 48 02     vmovups   zmm25,[r8+0x80]
000264  62 61 34 40 5c ca        vsubps    zmm25,zmm25,zmm2
00026a  62 91 34 40 59 d7        vmulps    zmm2,zmm25,zmm31
000270  62 41 7c 48 10 48 03     vmovups   zmm25,[r8+0xc0]
000277  62 61 34 40 5c cb        vsubps    zmm25,zmm25,zmm3
00027d  62 91 34 40 59 df        vmulps    zmm3,zmm25,zmm31
000283  62 41 7c 48 10 48 04     vmovups   zmm25,[r8+0x100]
00028a  62 61 34 40 5c cc        vsubps    zmm25,zmm25,zmm4
000290  62 91 34 40 59 e7        vmulps    zmm4,zmm25,zmm31
000296  62 41 7c 48 10 48 05     vmovups   zmm25,[r8+0x140]
00029d  62 61 34 40 5c cd        vsubps    zmm25,zmm25,zmm5
0002a3  62 91 34 40 59 ef        vmulps    zmm5,zmm25,zmm31
0002a9  62 41 7c 48 10 48 06     vmovups   zmm25,[r8+0x180]
0002b0  62 61 34 40 5c ce        vsubps    zmm25,zmm25,zmm6
0002b6  62 91 34 40 59 f7        vmulps    zmm6,zmm25,zmm31
0002bc  62 41 7c 48 10 48 07     vmovups   zmm25,[r8+0x1c0]
0002c3  62 61 34 40 5c cf        vsubps    zmm25,zmm25,zmm7
0002c9  62 91 34 40 59 ff        vmulps    zmm7,zmm25,zmm31
0002cf  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0002d5  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0002db  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0002e1  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0002e7  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0002ed  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0002f3  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0002f9  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
0002ff  4d 89 ca                 mov       r10,r9
000302  49 89 fb                 mov       r11,rdi
000305  48 89 c8                 mov       rax,rcx
000308  62 62 7d 48 18 20        vbroadcastss zmm28,[rax]
00030e  62 62 7d 48 18 1a        vbroadcastss zmm27,[rdx]
000314  62 01 24 40 59 dd        vmulps    zmm27,zmm27,zmm29
00031a  62 41 7c 48 10 13        vmovups   zmm26,[r11]
000320  62 61 1c 40 59 c8        vmulps    zmm25,zmm28,zmm0
000326  62 01 2c 40 58 d1        vaddps    zmm26,zmm26,zmm25
00032c  62 41 7c 48 11 13        vmovups   [r11],zmm26
000332  62 01 2c 40 59 cb        vmulps    zmm25,zmm26,zmm27
000338  62 11 3c 48 58 c1        vaddps    zmm8,zmm8,zmm25
00033e  62 41 7c 48 10 53 01     vmovups   zmm26,[r11+0x40]
000345  62 61 1c 40 59 c9        vmulps    zmm25,zmm28,zmm1
00034b  62 01 2c 40 58 d1        vaddps    zmm26,zmm26,zmm25
000351  62 41 7c 48 11 53 01     vmovups   [r11+0x40],zmm26
000358  62 01 2c 40 59 cb        vmulps    zmm25,zmm26,zmm27
00035e  62 11 34 48 58 c9        vaddps    zmm9,zmm9,zmm25
000364  62 41 7c 48 10 53 02     vmovups   zmm26,[r11+0x80]
00036b  62 61 1c 40 59 ca        vmulps    zmm25,zmm28,zmm2
000371  62 01 2c 40 58 d1        vaddps    zmm26,zmm26,zmm25
000377  62 41 7c 48 11 53 02     vmovups   [r11+0x80],zmm26
00037e  62 01 2c 40 59 cb        vmulps    zmm25,zmm26,zmm27
000384  62 11 2c 48 58 d1        vaddps    zmm10,zmm10,zmm25
00038a  62 41 7c 48 10 53 03     vmovups   zmm26,[r11+0xc0]
000391  62 61 1c 40 59 cb        vmulps    zmm25,zmm28,zmm3
000397  62 01 2c 40 58 d1        vaddps    zmm26,zmm26,zmm25
00039d  62 41 7c 48 11 53 03     vmovups   [r11+0xc0],zmm26
0003a4  62 01 2c 40 59 cb        vmulps    zmm25,zmm26,zmm27
0003aa  62 11 24 48 58 d9        vaddps    zmm11,zmm11,zmm25
0003b0  62 41 7c 48 10 53 04     vmovups   zmm26,[r11+0x100]
0003b7  62 61 1c 40 59 cc        vmulps    zmm25,zmm28,zmm4
0003bd  62 01 2c 40 58 d1        vaddps    zmm26,zmm26,zmm25
0003c3  62 41 7c 48 11 53 04     vmovups   [r11+0x100],zmm26
0003ca  62 01 2c 40 59 cb        vmulps    zmm25,zmm26,zmm27
0003d0  62 11 1c 48 58 e1        vaddps    zmm12,zmm12,zmm25
0003d6  62 41 7c 48 10 53 05     vmovups   zmm26,[r11+0x140]
0003dd  62 61 1c 40 59 cd        vmulps    zmm25,zmm28,zmm5
0003e3  62 01 2c 40 58 d1        vaddps    zmm26,zmm26,zmm25
0003e9  62 41 7c 48 11 53 05     vmovups   [r11+0x140],zmm26
0003f0  62 01 2c 40 59 cb        vmulps    zmm25,zmm26,zmm27
0003f6  62 11 14 48 58 e9        vaddps    zmm13,zmm13,zmm25
0003fc  62 41 7c 48 10 53 06     vmovups   zmm26,[r11+0x180]
000403  62 61 1c 40 59 ce        vmulps    zmm25,zmm28,zmm6
000409  62 01 2c 40 58 d1        vaddps    zmm26,zmm26,zmm25
00040f  62 41 7c 48 11 53 06     vmovups   [r11+0x180],zmm26
000416  62 01 2c 40 59 cb        vmulps    zmm25,zmm26,zmm27
00041c  62 11 0c 48 58 f1        vaddps    zmm14,zmm14,zmm25
000422  62 41 7c 48 10 53 07     vmovups   zmm26,[r11+0x1c0]
000429  62 61 1c 40 59 cf        vmulps    zmm25,zmm28,zmm7
00042f  62 01 2c 40 58 d1        vaddps    zmm26,zmm26,zmm25
000435  62 41 7c 48 11 53 07     vmovups   [r11+0x1c0],zmm26
00043c  62 01 2c 40 59 cb        vmulps    zmm25,zmm26,zmm27
000442  62 11 04 48 58 f9        vaddps    zmm15,zmm15,zmm25
000448  49 81 c3 00 02 00 00     add       r11,0x200
00044f  48 05 04 00 00 00        add       rax,4
000455  48 83 c2 04              add       rdx,4
000459  49 ff ca                 dec       r10
00045c  0f 85 a6 fe ff ff        jne       near 0x0000000000000308
000462  62 71 7c 48 11 06        vmovups   [rsi],zmm8
000468  62 71 7c 48 11 4e 01     vmovups   [rsi+0x40],zmm9
00046f  62 71 7c 48 11 56 02     vmovups   [rsi+0x80],zmm10
000476  62 71 7c 48 11 5e 03     vmovups   [rsi+0xc0],zmm11
00047d  62 71 7c 48 11 66 04     vmovups   [rsi+0x100],zmm12
000484  62 71 7c 48 11 6e 05     vmovups   [rsi+0x140],zmm13
00048b  62 71 7c 48 11 76 06     vmovups   [rsi+0x180],zmm14
000492  62 71 7c 48 11 7e 07     vmovups   [rsi+0x1c0],zmm15
000499  c5 f8 77                 vzeroupper
00049c  c3                       ret
