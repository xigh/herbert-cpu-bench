; node 4: bf16-projection-f32 (layer 0), kernel 4 at image offset 0x98185, 1595 bytes, 1 tasks, up to 12 participants

000000  53                       push      rbx
000001  41 54                    push      r12
000003  41 55                    push      r13
000005  48 89 fb                 mov       rbx,rdi
000008  4c 8b 53 18              mov       r10,[rbx+0x18]
00000c  48 8b 43 20              mov       rax,[rbx+0x20]
000010  48 85 c0                 test      rax,rax
000013  74 03                    je        short 0x0000000000000018
000015  4c 8b 10                 mov       r10,[rax]
000018  4d 85 d2                 test      r10,r10
00001b  0f 84 f8 00 00 00        je        near 0x0000000000000119
000021  4c 89 d0                 mov       rax,r10
000024  31 d2                    xor       edx,edx
000026  49 bb 08 00 00 00 00 00 00 00 mov       r11,8
000030  49 f7 f3                 div       r11
000033  48 85 d2                 test      rdx,rdx
000036  0f 95 c2                 setne     dl
000039  0f b6 d2                 movzx     edx,dl
00003c  48 01 d0                 add       rax,rdx
00003f  48 89 c1                 mov       rcx,rax
000042  48 89 f0                 mov       rax,rsi
000045  31 d2                    xor       edx,edx
000047  48 f7 f1                 div       rcx
00004a  4c 6b ea 08              imul      r13,rdx,8
00004e  4d 89 d4                 mov       r12,r10
000051  4d 29 ec                 sub       r12,r13
000054  4d 39 dc                 cmp       r12,r11
000057  4d 0f 47 e3              cmova     r12,r11
00005b  48 3d 01 00 00 00        cmp       rax,1
000061  73 11                    jae       short 0x0000000000000074
000063  49 89 c1                 mov       r9,rax
000066  49 83 e9 00              sub       r9,0
00006a  4d 6b c9 00              imul      r9,0
00006e  49 83 c1 00              add       r9,0
000072  eb 06                    jmp       short 0x000000000000007a
000074  90                       nop
000075  e9 9f 00 00 00           jmp       0x0000000000000119
00007a  48 8b 3b                 mov       rdi,[rbx]
00007d  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
000084  4c 01 d7                 add       rdi,r10
000087  48 8b 73 08              mov       rsi,[rbx+8]
00008b  4d 69 d1 00 08 00 00     imul      r10,r9,0x800
000092  4c 01 d6                 add       rsi,r10
000095  48 8b 53 10              mov       rdx,[rbx+0x10]
000099  4d 6b d5 10              imul      r10,r13,0x10
00009d  4d 01 ca                 add       r10,r9
0000a0  4d 6b d2 04              imul      r10,4
0000a4  4c 01 d2                 add       rdx,r10
0000a7  49 83 fc 01              cmp       r12,1
0000ab  75 07                    jne       short 0x00000000000000b4
0000ad  e8 6d 00 00 00           call      0x000000000000011f
0000b2  eb 65                    jmp       short 0x0000000000000119
0000b4  90                       nop
0000b5  49 83 fc 02              cmp       r12,2
0000b9  75 07                    jne       short 0x00000000000000c2
0000bb  e8 9c 00 00 00           call      0x000000000000015c
0000c0  eb 57                    jmp       short 0x0000000000000119
0000c2  90                       nop
0000c3  49 83 fc 03              cmp       r12,3
0000c7  75 07                    jne       short 0x00000000000000d0
0000c9  e8 e8 00 00 00           call      0x00000000000001b6
0000ce  eb 49                    jmp       short 0x0000000000000119
0000d0  90                       nop
0000d1  49 83 fc 04              cmp       r12,4
0000d5  75 07                    jne       short 0x00000000000000de
0000d7  e8 51 01 00 00           call      0x000000000000022d
0000dc  eb 3b                    jmp       short 0x0000000000000119
0000de  90                       nop
0000df  49 83 fc 05              cmp       r12,5
0000e3  75 07                    jne       short 0x00000000000000ec
0000e5  e8 d7 01 00 00           call      0x00000000000002c1
0000ea  eb 2d                    jmp       short 0x0000000000000119
0000ec  90                       nop
0000ed  49 83 fc 06              cmp       r12,6
0000f1  75 07                    jne       short 0x00000000000000fa
0000f3  e8 7a 02 00 00           call      0x0000000000000372
0000f8  eb 1f                    jmp       short 0x0000000000000119
0000fa  90                       nop
0000fb  49 83 fc 07              cmp       r12,7
0000ff  75 07                    jne       short 0x0000000000000108
000101  e8 3a 03 00 00           call      0x0000000000000440
000106  eb 11                    jmp       short 0x0000000000000119
000108  90                       nop
000109  49 83 fc 08              cmp       r12,8
00010d  75 07                    jne       short 0x0000000000000116
00010f  e8 1b 04 00 00           call      0x000000000000052f
000114  eb 03                    jmp       short 0x0000000000000119
000116  90                       nop
000117  eb 00                    jmp       short 0x0000000000000119
000119  41 5d                    pop       r13
00011b  41 5c                    pop       r12
00011d  5b                       pop       rbx
00011e  c3                       ret
00011f  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000125  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00012f  0f 18 4e 40              prefetcht0 [rsi+0x40]
000133  62 f1 ff 48 6f 0e        vmovdqu16 zmm1,[rsi]
000139  62 f2 7d 48 58 17        vpbroadcastd zmm2,[rdi]
00013f  62 f2 6e 48 52 c1        vdpbf16ps zmm0,zmm2,zmm1
000145  48 83 c7 04              add       rdi,4
000149  48 83 c6 40              add       rsi,0x40
00014d  48 ff c9                 dec       rcx
000150  75 dd                    jne       short 0x000000000000012f
000152  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000158  c5 f8 77                 vzeroupper
00015b  c3                       ret
00015c  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000162  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000168  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000172  0f 18 4e 40              prefetcht0 [rsi+0x40]
000176  62 f1 ff 48 6f 16        vmovdqu16 zmm2,[rsi]
00017c  62 f2 7d 48 58 1f        vpbroadcastd zmm3,[rdi]
000182  62 f2 66 48 52 c2        vdpbf16ps zmm0,zmm3,zmm2
000188  62 f2 7d 48 58 9f 00 08 00 00 vpbroadcastd zmm3,[rdi+0x800]
000192  62 f2 66 48 52 ca        vdpbf16ps zmm1,zmm3,zmm2
000198  48 83 c7 04              add       rdi,4
00019c  48 83 c6 40              add       rsi,0x40
0001a0  48 ff c9                 dec       rcx
0001a3  75 cd                    jne       short 0x0000000000000172
0001a5  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
0001ab  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
0001b2  c5 f8 77                 vzeroupper
0001b5  c3                       ret
0001b6  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0001bc  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0001c2  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0001c8  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0001d2  0f 18 4e 40              prefetcht0 [rsi+0x40]
0001d6  62 f1 ff 48 6f 1e        vmovdqu16 zmm3,[rsi]
0001dc  62 f2 7d 48 58 27        vpbroadcastd zmm4,[rdi]
0001e2  62 f2 5e 48 52 c3        vdpbf16ps zmm0,zmm4,zmm3
0001e8  62 f2 7d 48 58 a7 00 08 00 00 vpbroadcastd zmm4,[rdi+0x800]
0001f2  62 f2 5e 48 52 cb        vdpbf16ps zmm1,zmm4,zmm3
0001f8  62 f2 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm4,[rdi+0x1000]
000202  62 f2 5e 48 52 d3        vdpbf16ps zmm2,zmm4,zmm3
000208  48 83 c7 04              add       rdi,4
00020c  48 83 c6 40              add       rsi,0x40
000210  48 ff c9                 dec       rcx
000213  75 bd                    jne       short 0x00000000000001d2
000215  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
00021b  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000222  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000229  c5 f8 77                 vzeroupper
00022c  c3                       ret
00022d  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000233  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000239  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
00023f  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000245  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00024f  0f 18 4e 40              prefetcht0 [rsi+0x40]
000253  62 f1 ff 48 6f 26        vmovdqu16 zmm4,[rsi]
000259  62 f2 7d 48 58 2f        vpbroadcastd zmm5,[rdi]
00025f  62 f2 56 48 52 c4        vdpbf16ps zmm0,zmm5,zmm4
000265  62 f2 7d 48 58 af 00 08 00 00 vpbroadcastd zmm5,[rdi+0x800]
00026f  62 f2 56 48 52 cc        vdpbf16ps zmm1,zmm5,zmm4
000275  62 f2 7d 48 58 af 00 10 00 00 vpbroadcastd zmm5,[rdi+0x1000]
00027f  62 f2 56 48 52 d4        vdpbf16ps zmm2,zmm5,zmm4
000285  62 f2 7d 48 58 af 00 18 00 00 vpbroadcastd zmm5,[rdi+0x1800]
00028f  62 f2 56 48 52 dc        vdpbf16ps zmm3,zmm5,zmm4
000295  48 83 c7 04              add       rdi,4
000299  48 83 c6 40              add       rsi,0x40
00029d  48 ff c9                 dec       rcx
0002a0  75 ad                    jne       short 0x000000000000024f
0002a2  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
0002a8  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
0002af  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
0002b6  62 f1 7c 48 11 5a 03     vmovups   [rdx+0xc0],zmm3
0002bd  c5 f8 77                 vzeroupper
0002c0  c3                       ret
0002c1  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0002c7  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0002cd  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0002d3  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0002d9  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0002df  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0002e9  0f 18 4e 40              prefetcht0 [rsi+0x40]
0002ed  62 f1 ff 48 6f 2e        vmovdqu16 zmm5,[rsi]
0002f3  62 f2 7d 48 58 37        vpbroadcastd zmm6,[rdi]
0002f9  62 f2 4e 48 52 c5        vdpbf16ps zmm0,zmm6,zmm5
0002ff  62 f2 7d 48 58 b7 00 08 00 00 vpbroadcastd zmm6,[rdi+0x800]
000309  62 f2 4e 48 52 cd        vdpbf16ps zmm1,zmm6,zmm5
00030f  62 f2 7d 48 58 b7 00 10 00 00 vpbroadcastd zmm6,[rdi+0x1000]
000319  62 f2 4e 48 52 d5        vdpbf16ps zmm2,zmm6,zmm5
00031f  62 f2 7d 48 58 b7 00 18 00 00 vpbroadcastd zmm6,[rdi+0x1800]
000329  62 f2 4e 48 52 dd        vdpbf16ps zmm3,zmm6,zmm5
00032f  62 f2 7d 48 58 b7 00 20 00 00 vpbroadcastd zmm6,[rdi+0x2000]
000339  62 f2 4e 48 52 e5        vdpbf16ps zmm4,zmm6,zmm5
00033f  48 83 c7 04              add       rdi,4
000343  48 83 c6 40              add       rsi,0x40
000347  48 ff c9                 dec       rcx
00034a  75 9d                    jne       short 0x00000000000002e9
00034c  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000352  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000359  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000360  62 f1 7c 48 11 5a 03     vmovups   [rdx+0xc0],zmm3
000367  62 f1 7c 48 11 62 04     vmovups   [rdx+0x100],zmm4
00036e  c5 f8 77                 vzeroupper
000371  c3                       ret
000372  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000378  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00037e  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000384  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00038a  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000390  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000396  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0003a0  0f 18 4e 40              prefetcht0 [rsi+0x40]
0003a4  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
0003aa  62 f2 7d 48 58 3f        vpbroadcastd zmm7,[rdi]
0003b0  62 f2 46 48 52 c6        vdpbf16ps zmm0,zmm7,zmm6
0003b6  62 f2 7d 48 58 bf 00 08 00 00 vpbroadcastd zmm7,[rdi+0x800]
0003c0  62 f2 46 48 52 ce        vdpbf16ps zmm1,zmm7,zmm6
0003c6  62 f2 7d 48 58 bf 00 10 00 00 vpbroadcastd zmm7,[rdi+0x1000]
0003d0  62 f2 46 48 52 d6        vdpbf16ps zmm2,zmm7,zmm6
0003d6  62 f2 7d 48 58 bf 00 18 00 00 vpbroadcastd zmm7,[rdi+0x1800]
0003e0  62 f2 46 48 52 de        vdpbf16ps zmm3,zmm7,zmm6
0003e6  62 f2 7d 48 58 bf 00 20 00 00 vpbroadcastd zmm7,[rdi+0x2000]
0003f0  62 f2 46 48 52 e6        vdpbf16ps zmm4,zmm7,zmm6
0003f6  62 f2 7d 48 58 bf 00 28 00 00 vpbroadcastd zmm7,[rdi+0x2800]
000400  62 f2 46 48 52 ee        vdpbf16ps zmm5,zmm7,zmm6
000406  48 83 c7 04              add       rdi,4
00040a  48 83 c6 40              add       rsi,0x40
00040e  48 ff c9                 dec       rcx
000411  75 8d                    jne       short 0x00000000000003a0
000413  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000419  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000420  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000427  62 f1 7c 48 11 5a 03     vmovups   [rdx+0xc0],zmm3
00042e  62 f1 7c 48 11 62 04     vmovups   [rdx+0x100],zmm4
000435  62 f1 7c 48 11 6a 05     vmovups   [rdx+0x140],zmm5
00043c  c5 f8 77                 vzeroupper
00043f  c3                       ret
000440  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000446  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00044c  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000452  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000458  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00045e  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000464  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00046a  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000474  0f 18 4e 40              prefetcht0 [rsi+0x40]
000478  62 f1 ff 48 6f 3e        vmovdqu16 zmm7,[rsi]
00047e  62 72 7d 48 58 07        vpbroadcastd zmm8,[rdi]
000484  62 f2 3e 48 52 c7        vdpbf16ps zmm0,zmm8,zmm7
00048a  62 72 7d 48 58 87 00 08 00 00 vpbroadcastd zmm8,[rdi+0x800]
000494  62 f2 3e 48 52 cf        vdpbf16ps zmm1,zmm8,zmm7
00049a  62 72 7d 48 58 87 00 10 00 00 vpbroadcastd zmm8,[rdi+0x1000]
0004a4  62 f2 3e 48 52 d7        vdpbf16ps zmm2,zmm8,zmm7
0004aa  62 72 7d 48 58 87 00 18 00 00 vpbroadcastd zmm8,[rdi+0x1800]
0004b4  62 f2 3e 48 52 df        vdpbf16ps zmm3,zmm8,zmm7
0004ba  62 72 7d 48 58 87 00 20 00 00 vpbroadcastd zmm8,[rdi+0x2000]
0004c4  62 f2 3e 48 52 e7        vdpbf16ps zmm4,zmm8,zmm7
0004ca  62 72 7d 48 58 87 00 28 00 00 vpbroadcastd zmm8,[rdi+0x2800]
0004d4  62 f2 3e 48 52 ef        vdpbf16ps zmm5,zmm8,zmm7
0004da  62 72 7d 48 58 87 00 30 00 00 vpbroadcastd zmm8,[rdi+0x3000]
0004e4  62 f2 3e 48 52 f7        vdpbf16ps zmm6,zmm8,zmm7
0004ea  48 83 c7 04              add       rdi,4
0004ee  48 83 c6 40              add       rsi,0x40
0004f2  48 ff c9                 dec       rcx
0004f5  0f 85 79 ff ff ff        jne       near 0x0000000000000474
0004fb  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000501  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000508  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
00050f  62 f1 7c 48 11 5a 03     vmovups   [rdx+0xc0],zmm3
000516  62 f1 7c 48 11 62 04     vmovups   [rdx+0x100],zmm4
00051d  62 f1 7c 48 11 6a 05     vmovups   [rdx+0x140],zmm5
000524  62 f1 7c 48 11 72 06     vmovups   [rdx+0x180],zmm6
00052b  c5 f8 77                 vzeroupper
00052e  c3                       ret
00052f  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000535  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00053b  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000541  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000547  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00054d  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000553  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000559  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
00055f  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000569  0f 18 4e 40              prefetcht0 [rsi+0x40]
00056d  62 71 ff 48 6f 06        vmovdqu16 zmm8,[rsi]
000573  62 72 7d 48 58 0f        vpbroadcastd zmm9,[rdi]
000579  62 d2 36 48 52 c0        vdpbf16ps zmm0,zmm9,zmm8
00057f  62 72 7d 48 58 8f 00 08 00 00 vpbroadcastd zmm9,[rdi+0x800]
000589  62 d2 36 48 52 c8        vdpbf16ps zmm1,zmm9,zmm8
00058f  62 72 7d 48 58 8f 00 10 00 00 vpbroadcastd zmm9,[rdi+0x1000]
000599  62 d2 36 48 52 d0        vdpbf16ps zmm2,zmm9,zmm8
00059f  62 72 7d 48 58 8f 00 18 00 00 vpbroadcastd zmm9,[rdi+0x1800]
0005a9  62 d2 36 48 52 d8        vdpbf16ps zmm3,zmm9,zmm8
0005af  62 72 7d 48 58 8f 00 20 00 00 vpbroadcastd zmm9,[rdi+0x2000]
0005b9  62 d2 36 48 52 e0        vdpbf16ps zmm4,zmm9,zmm8
0005bf  62 72 7d 48 58 8f 00 28 00 00 vpbroadcastd zmm9,[rdi+0x2800]
0005c9  62 d2 36 48 52 e8        vdpbf16ps zmm5,zmm9,zmm8
0005cf  62 72 7d 48 58 8f 00 30 00 00 vpbroadcastd zmm9,[rdi+0x3000]
0005d9  62 d2 36 48 52 f0        vdpbf16ps zmm6,zmm9,zmm8
0005df  62 72 7d 48 58 8f 00 38 00 00 vpbroadcastd zmm9,[rdi+0x3800]
0005e9  62 d2 36 48 52 f8        vdpbf16ps zmm7,zmm9,zmm8
0005ef  48 83 c7 04              add       rdi,4
0005f3  48 83 c6 40              add       rsi,0x40
0005f7  48 ff c9                 dec       rcx
0005fa  0f 85 69 ff ff ff        jne       near 0x0000000000000569
000600  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000606  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
00060d  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000614  62 f1 7c 48 11 5a 03     vmovups   [rdx+0xc0],zmm3
00061b  62 f1 7c 48 11 62 04     vmovups   [rdx+0x100],zmm4
000622  62 f1 7c 48 11 6a 05     vmovups   [rdx+0x140],zmm5
000629  62 f1 7c 48 11 72 06     vmovups   [rdx+0x180],zmm6
000630  62 f1 7c 48 11 7a 07     vmovups   [rdx+0x1c0],zmm7
000637  c5 f8 77                 vzeroupper
00063a  c3                       ret
