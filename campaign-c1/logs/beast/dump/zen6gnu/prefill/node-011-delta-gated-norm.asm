; node 11: delta-gated-norm (layer 0), kernel 11 at image offset 0x9c288, 2352 bytes, 4096 tasks, up to 12 participants

000000  53                       push      rbx
000001  55                       push      rbp
000002  41 54                    push      r12
000004  48 89 fb                 mov       rbx,rdi
000007  48 69 ee 00 02 00 00     imul      rbp,rsi,0x200
00000e  4c 69 e6 00 01 00 00     imul      r12,rsi,0x100
000015  48 8b 3b                 mov       rdi,[rbx]
000018  48 01 ef                 add       rdi,rbp
00001b  48 8b 73 08              mov       rsi,[rbx+8]
00001f  48 01 ee                 add       rsi,rbp
000022  48 8b 53 10              mov       rdx,[rbx+0x10]
000026  48 8b 4b 18              mov       rcx,[rbx+0x18]
00002a  4c 01 e1                 add       rcx,r12
00002d  49 b8 01 00 00 00 00 00 00 00 mov       r8,1
000037  4c 8b 4b 20              mov       r9,[rbx+0x20]
00003b  66 0f 6e 43 28           movd      xmm0,[rbx+0x28]
000040  e8 05 00 00 00           call      0x000000000000004a
000045  41 5c                    pop       r12
000047  5d                       pop       rbp
000048  5b                       pop       rbx
000049  c3                       ret
00004a  c4 c1 79 7e c2           vmovd     r10d,xmm0
00004f  b8 4f ac ae c2           mov       eax,0xc2aeac4f
000054  62 62 7d 48 7c f8        vpbroadcastd zmm31,eax
00005a  b8 3b aa b8 3f           mov       eax,0x3fb8aa3b
00005f  62 62 7d 48 7c f0        vpbroadcastd zmm30,eax
000065  b8 52 79 1e 3c           mov       eax,0x3c1e7952
00006a  62 62 7d 48 7c e8        vpbroadcastd zmm29,eax
000070  b8 47 58 63 3d           mov       eax,0x3d635847
000075  62 62 7d 48 7c e0        vpbroadcastd zmm28,eax
00007b  b8 f0 fd 75 3e           mov       eax,0x3e75fdf0
000080  62 62 7d 48 7c d8        vpbroadcastd zmm27,eax
000086  b8 18 72 31 3f           mov       eax,0x3f317218
00008b  62 62 7d 48 7c d0        vpbroadcastd zmm26,eax
000091  b8 00 00 80 3f           mov       eax,0x3f800000
000096  62 62 7d 48 7c c8        vpbroadcastd zmm25,eax
00009c  b8 00 00 80 3f           mov       eax,0x3f800000
0000a1  62 62 7d 48 7c c0        vpbroadcastd zmm24,eax
0000a7  b8 00 00 b0 42           mov       eax,0x42b00000
0000ac  62 e2 7d 48 7c f8        vpbroadcastd zmm23,eax
0000b2  62 f2 7d 48 33 02        vpmovzxwd zmm0,[rdx]
0000b8  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
0000bf  62 f2 7d 48 33 4a 01     vpmovzxwd zmm1,[rdx+0x20]
0000c6  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
0000cd  62 f2 7d 48 33 52 02     vpmovzxwd zmm2,[rdx+0x40]
0000d4  62 f1 6d 48 72 f2 10     vpslld    zmm2,zmm2,0x10
0000db  62 f2 7d 48 33 5a 03     vpmovzxwd zmm3,[rdx+0x60]
0000e2  62 f1 65 48 72 f3 10     vpslld    zmm3,zmm3,0x10
0000e9  62 f2 7d 48 33 62 04     vpmovzxwd zmm4,[rdx+0x80]
0000f0  62 f1 5d 48 72 f4 10     vpslld    zmm4,zmm4,0x10
0000f7  62 f2 7d 48 33 6a 05     vpmovzxwd zmm5,[rdx+0xa0]
0000fe  62 f1 55 48 72 f5 10     vpslld    zmm5,zmm5,0x10
000105  62 f2 7d 48 33 72 06     vpmovzxwd zmm6,[rdx+0xc0]
00010c  62 f1 4d 48 72 f6 10     vpslld    zmm6,zmm6,0x10
000113  62 f2 7d 48 33 7a 07     vpmovzxwd zmm7,[rdx+0xe0]
00011a  62 f1 45 48 72 f7 10     vpslld    zmm7,zmm7,0x10
000121  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000127  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
00012d  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000133  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000139  62 71 7c 48 10 27        vmovups   zmm12,[rdi]
00013f  62 52 1d 48 b8 c4        vfmadd231ps zmm8,zmm12,zmm12
000145  62 71 7c 48 10 67 01     vmovups   zmm12,[rdi+0x40]
00014c  62 52 1d 48 b8 cc        vfmadd231ps zmm9,zmm12,zmm12
000152  62 71 7c 48 10 67 02     vmovups   zmm12,[rdi+0x80]
000159  62 52 1d 48 b8 d4        vfmadd231ps zmm10,zmm12,zmm12
00015f  62 71 7c 48 10 67 03     vmovups   zmm12,[rdi+0xc0]
000166  62 52 1d 48 b8 dc        vfmadd231ps zmm11,zmm12,zmm12
00016c  62 71 7c 48 10 67 04     vmovups   zmm12,[rdi+0x100]
000173  62 52 1d 48 b8 c4        vfmadd231ps zmm8,zmm12,zmm12
000179  62 71 7c 48 10 67 05     vmovups   zmm12,[rdi+0x140]
000180  62 52 1d 48 b8 cc        vfmadd231ps zmm9,zmm12,zmm12
000186  62 71 7c 48 10 67 06     vmovups   zmm12,[rdi+0x180]
00018d  62 52 1d 48 b8 d4        vfmadd231ps zmm10,zmm12,zmm12
000193  62 71 7c 48 10 67 07     vmovups   zmm12,[rdi+0x1c0]
00019a  62 52 1d 48 b8 dc        vfmadd231ps zmm11,zmm12,zmm12
0001a0  62 51 3c 48 58 c1        vaddps    zmm8,zmm8,zmm9
0001a6  62 51 3c 48 58 c2        vaddps    zmm8,zmm8,zmm10
0001ac  62 51 3c 48 58 c3        vaddps    zmm8,zmm8,zmm11
0001b2  62 53 fd 48 1b c4 01     vextractf64x4 ymm12,zmm8,1
0001b9  c4 41 3c 58 c4           vaddps    ymm8,ymm8,ymm12
0001be  c4 43 7d 19 c4 01        vextractf128 xmm12,ymm8,1
0001c4  c4 41 38 58 c4           vaddps    xmm8,xmm8,xmm12
0001c9  c4 41 3b 7c c0           vhaddps   xmm8,xmm8,xmm8
0001ce  c4 41 3b 7c c0           vhaddps   xmm8,xmm8,xmm8
0001d3  b8 00 00 00 43           mov       eax,0x43000000
0001d8  c5 79 6e e0              vmovd     xmm12,eax
0001dc  c4 41 3a 5e c4           vdivss    xmm8,xmm8,xmm12
0001e1  c4 41 79 6e e2           vmovd     xmm12,r10d
0001e6  c4 41 3a 58 c4           vaddss    xmm8,xmm8,xmm12
0001eb  c4 41 3a 51 c0           vsqrtss   xmm8,xmm8,xmm8
0001f0  b8 00 00 80 3f           mov       eax,0x3f800000
0001f5  c5 79 6e e0              vmovd     xmm12,eax
0001f9  c4 41 1a 5e c0           vdivss    xmm8,xmm12,xmm8
0001fe  62 c2 7d 48 18 f0        vbroadcastss zmm22,xmm8
000204  62 e1 7c 48 10 2f        vmovups   zmm21,[rdi]
00020a  62 a1 54 40 59 ee        vmulps    zmm21,zmm21,zmm22
000210  62 e1 54 40 59 e8        vmulps    zmm21,zmm21,zmm0
000216  62 e1 7c 48 10 26        vmovups   zmm20,[rsi]
00021c  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000222  62 a1 64 40 5c dc        vsubps    zmm19,zmm19,zmm20
000228  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
00022e  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
000234  62 11 64 40 59 ee        vmulps    zmm13,zmm19,zmm30
00023a  62 53 7d 48 08 f5 00     vrndscaleps zmm14,zmm13,0
000241  62 51 14 48 5c ee        vsubps    zmm13,zmm13,zmm14
000247  62 11 7c 48 28 fd        vmovaps   zmm15,zmm29
00024d  62 12 15 48 a8 fc        vfmadd213ps zmm15,zmm13,zmm28
000253  62 12 15 48 a8 fb        vfmadd213ps zmm15,zmm13,zmm27
000259  62 12 15 48 a8 fa        vfmadd213ps zmm15,zmm13,zmm26
00025f  62 12 15 48 a8 f9        vfmadd213ps zmm15,zmm13,zmm25
000265  62 51 7d 48 5b f6        vcvtps2dq zmm14,zmm14
00026b  62 d1 0d 48 72 f6 17     vpslld    zmm14,zmm14,0x17
000272  62 11 0d 48 fe f0        vpaddd    zmm14,zmm14,zmm24
000278  62 c1 04 48 59 de        vmulps    zmm19,zmm15,zmm14
00027e  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
000284  62 a1 5c 40 5e db        vdivps    zmm19,zmm20,zmm19
00028a  62 a1 54 40 59 eb        vmulps    zmm21,zmm21,zmm19
000290  62 e1 7c 48 11 2f        vmovups   [rdi],zmm21
000296  62 32 7e 48 72 ed        vcvtneps2bf16 ymm13,zmm21
00029c  62 71 ff 28 7f 29        vmovdqu16 [rcx],ymm13
0002a2  62 e1 7c 48 10 6f 01     vmovups   zmm21,[rdi+0x40]
0002a9  62 a1 54 40 59 ee        vmulps    zmm21,zmm21,zmm22
0002af  62 e1 54 40 59 e9        vmulps    zmm21,zmm21,zmm1
0002b5  62 e1 7c 48 10 66 01     vmovups   zmm20,[rsi+0x40]
0002bc  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
0002c2  62 a1 64 40 5c dc        vsubps    zmm19,zmm19,zmm20
0002c8  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
0002ce  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
0002d4  62 11 64 40 59 ee        vmulps    zmm13,zmm19,zmm30
0002da  62 53 7d 48 08 f5 00     vrndscaleps zmm14,zmm13,0
0002e1  62 51 14 48 5c ee        vsubps    zmm13,zmm13,zmm14
0002e7  62 11 7c 48 28 fd        vmovaps   zmm15,zmm29
0002ed  62 12 15 48 a8 fc        vfmadd213ps zmm15,zmm13,zmm28
0002f3  62 12 15 48 a8 fb        vfmadd213ps zmm15,zmm13,zmm27
0002f9  62 12 15 48 a8 fa        vfmadd213ps zmm15,zmm13,zmm26
0002ff  62 12 15 48 a8 f9        vfmadd213ps zmm15,zmm13,zmm25
000305  62 51 7d 48 5b f6        vcvtps2dq zmm14,zmm14
00030b  62 d1 0d 48 72 f6 17     vpslld    zmm14,zmm14,0x17
000312  62 11 0d 48 fe f0        vpaddd    zmm14,zmm14,zmm24
000318  62 c1 04 48 59 de        vmulps    zmm19,zmm15,zmm14
00031e  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
000324  62 a1 5c 40 5e db        vdivps    zmm19,zmm20,zmm19
00032a  62 a1 54 40 59 eb        vmulps    zmm21,zmm21,zmm19
000330  62 e1 7c 48 11 6f 01     vmovups   [rdi+0x40],zmm21
000337  62 32 7e 48 72 ed        vcvtneps2bf16 ymm13,zmm21
00033d  62 71 ff 28 7f 69 01     vmovdqu16 [rcx+0x20],ymm13
000344  62 e1 7c 48 10 6f 02     vmovups   zmm21,[rdi+0x80]
00034b  62 a1 54 40 59 ee        vmulps    zmm21,zmm21,zmm22
000351  62 e1 54 40 59 ea        vmulps    zmm21,zmm21,zmm2
000357  62 e1 7c 48 10 66 02     vmovups   zmm20,[rsi+0x80]
00035e  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000364  62 a1 64 40 5c dc        vsubps    zmm19,zmm19,zmm20
00036a  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
000370  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
000376  62 11 64 40 59 ee        vmulps    zmm13,zmm19,zmm30
00037c  62 53 7d 48 08 f5 00     vrndscaleps zmm14,zmm13,0
000383  62 51 14 48 5c ee        vsubps    zmm13,zmm13,zmm14
000389  62 11 7c 48 28 fd        vmovaps   zmm15,zmm29
00038f  62 12 15 48 a8 fc        vfmadd213ps zmm15,zmm13,zmm28
000395  62 12 15 48 a8 fb        vfmadd213ps zmm15,zmm13,zmm27
00039b  62 12 15 48 a8 fa        vfmadd213ps zmm15,zmm13,zmm26
0003a1  62 12 15 48 a8 f9        vfmadd213ps zmm15,zmm13,zmm25
0003a7  62 51 7d 48 5b f6        vcvtps2dq zmm14,zmm14
0003ad  62 d1 0d 48 72 f6 17     vpslld    zmm14,zmm14,0x17
0003b4  62 11 0d 48 fe f0        vpaddd    zmm14,zmm14,zmm24
0003ba  62 c1 04 48 59 de        vmulps    zmm19,zmm15,zmm14
0003c0  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
0003c6  62 a1 5c 40 5e db        vdivps    zmm19,zmm20,zmm19
0003cc  62 a1 54 40 59 eb        vmulps    zmm21,zmm21,zmm19
0003d2  62 e1 7c 48 11 6f 02     vmovups   [rdi+0x80],zmm21
0003d9  62 32 7e 48 72 ed        vcvtneps2bf16 ymm13,zmm21
0003df  62 71 ff 28 7f 69 02     vmovdqu16 [rcx+0x40],ymm13
0003e6  62 e1 7c 48 10 6f 03     vmovups   zmm21,[rdi+0xc0]
0003ed  62 a1 54 40 59 ee        vmulps    zmm21,zmm21,zmm22
0003f3  62 e1 54 40 59 eb        vmulps    zmm21,zmm21,zmm3
0003f9  62 e1 7c 48 10 66 03     vmovups   zmm20,[rsi+0xc0]
000400  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000406  62 a1 64 40 5c dc        vsubps    zmm19,zmm19,zmm20
00040c  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
000412  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
000418  62 11 64 40 59 ee        vmulps    zmm13,zmm19,zmm30
00041e  62 53 7d 48 08 f5 00     vrndscaleps zmm14,zmm13,0
000425  62 51 14 48 5c ee        vsubps    zmm13,zmm13,zmm14
00042b  62 11 7c 48 28 fd        vmovaps   zmm15,zmm29
000431  62 12 15 48 a8 fc        vfmadd213ps zmm15,zmm13,zmm28
000437  62 12 15 48 a8 fb        vfmadd213ps zmm15,zmm13,zmm27
00043d  62 12 15 48 a8 fa        vfmadd213ps zmm15,zmm13,zmm26
000443  62 12 15 48 a8 f9        vfmadd213ps zmm15,zmm13,zmm25
000449  62 51 7d 48 5b f6        vcvtps2dq zmm14,zmm14
00044f  62 d1 0d 48 72 f6 17     vpslld    zmm14,zmm14,0x17
000456  62 11 0d 48 fe f0        vpaddd    zmm14,zmm14,zmm24
00045c  62 c1 04 48 59 de        vmulps    zmm19,zmm15,zmm14
000462  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
000468  62 a1 5c 40 5e db        vdivps    zmm19,zmm20,zmm19
00046e  62 a1 54 40 59 eb        vmulps    zmm21,zmm21,zmm19
000474  62 e1 7c 48 11 6f 03     vmovups   [rdi+0xc0],zmm21
00047b  62 32 7e 48 72 ed        vcvtneps2bf16 ymm13,zmm21
000481  62 71 ff 28 7f 69 03     vmovdqu16 [rcx+0x60],ymm13
000488  62 e1 7c 48 10 6f 04     vmovups   zmm21,[rdi+0x100]
00048f  62 a1 54 40 59 ee        vmulps    zmm21,zmm21,zmm22
000495  62 e1 54 40 59 ec        vmulps    zmm21,zmm21,zmm4
00049b  62 e1 7c 48 10 66 04     vmovups   zmm20,[rsi+0x100]
0004a2  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
0004a8  62 a1 64 40 5c dc        vsubps    zmm19,zmm19,zmm20
0004ae  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
0004b4  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
0004ba  62 11 64 40 59 ee        vmulps    zmm13,zmm19,zmm30
0004c0  62 53 7d 48 08 f5 00     vrndscaleps zmm14,zmm13,0
0004c7  62 51 14 48 5c ee        vsubps    zmm13,zmm13,zmm14
0004cd  62 11 7c 48 28 fd        vmovaps   zmm15,zmm29
0004d3  62 12 15 48 a8 fc        vfmadd213ps zmm15,zmm13,zmm28
0004d9  62 12 15 48 a8 fb        vfmadd213ps zmm15,zmm13,zmm27
0004df  62 12 15 48 a8 fa        vfmadd213ps zmm15,zmm13,zmm26
0004e5  62 12 15 48 a8 f9        vfmadd213ps zmm15,zmm13,zmm25
0004eb  62 51 7d 48 5b f6        vcvtps2dq zmm14,zmm14
0004f1  62 d1 0d 48 72 f6 17     vpslld    zmm14,zmm14,0x17
0004f8  62 11 0d 48 fe f0        vpaddd    zmm14,zmm14,zmm24
0004fe  62 c1 04 48 59 de        vmulps    zmm19,zmm15,zmm14
000504  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
00050a  62 a1 5c 40 5e db        vdivps    zmm19,zmm20,zmm19
000510  62 a1 54 40 59 eb        vmulps    zmm21,zmm21,zmm19
000516  62 e1 7c 48 11 6f 04     vmovups   [rdi+0x100],zmm21
00051d  62 32 7e 48 72 ed        vcvtneps2bf16 ymm13,zmm21
000523  62 71 ff 28 7f 69 04     vmovdqu16 [rcx+0x80],ymm13
00052a  62 e1 7c 48 10 6f 05     vmovups   zmm21,[rdi+0x140]
000531  62 a1 54 40 59 ee        vmulps    zmm21,zmm21,zmm22
000537  62 e1 54 40 59 ed        vmulps    zmm21,zmm21,zmm5
00053d  62 e1 7c 48 10 66 05     vmovups   zmm20,[rsi+0x140]
000544  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
00054a  62 a1 64 40 5c dc        vsubps    zmm19,zmm19,zmm20
000550  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
000556  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
00055c  62 11 64 40 59 ee        vmulps    zmm13,zmm19,zmm30
000562  62 53 7d 48 08 f5 00     vrndscaleps zmm14,zmm13,0
000569  62 51 14 48 5c ee        vsubps    zmm13,zmm13,zmm14
00056f  62 11 7c 48 28 fd        vmovaps   zmm15,zmm29
000575  62 12 15 48 a8 fc        vfmadd213ps zmm15,zmm13,zmm28
00057b  62 12 15 48 a8 fb        vfmadd213ps zmm15,zmm13,zmm27
000581  62 12 15 48 a8 fa        vfmadd213ps zmm15,zmm13,zmm26
000587  62 12 15 48 a8 f9        vfmadd213ps zmm15,zmm13,zmm25
00058d  62 51 7d 48 5b f6        vcvtps2dq zmm14,zmm14
000593  62 d1 0d 48 72 f6 17     vpslld    zmm14,zmm14,0x17
00059a  62 11 0d 48 fe f0        vpaddd    zmm14,zmm14,zmm24
0005a0  62 c1 04 48 59 de        vmulps    zmm19,zmm15,zmm14
0005a6  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
0005ac  62 a1 5c 40 5e db        vdivps    zmm19,zmm20,zmm19
0005b2  62 a1 54 40 59 eb        vmulps    zmm21,zmm21,zmm19
0005b8  62 e1 7c 48 11 6f 05     vmovups   [rdi+0x140],zmm21
0005bf  62 32 7e 48 72 ed        vcvtneps2bf16 ymm13,zmm21
0005c5  62 71 ff 28 7f 69 05     vmovdqu16 [rcx+0xa0],ymm13
0005cc  62 e1 7c 48 10 6f 06     vmovups   zmm21,[rdi+0x180]
0005d3  62 a1 54 40 59 ee        vmulps    zmm21,zmm21,zmm22
0005d9  62 e1 54 40 59 ee        vmulps    zmm21,zmm21,zmm6
0005df  62 e1 7c 48 10 66 06     vmovups   zmm20,[rsi+0x180]
0005e6  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
0005ec  62 a1 64 40 5c dc        vsubps    zmm19,zmm19,zmm20
0005f2  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
0005f8  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
0005fe  62 11 64 40 59 ee        vmulps    zmm13,zmm19,zmm30
000604  62 53 7d 48 08 f5 00     vrndscaleps zmm14,zmm13,0
00060b  62 51 14 48 5c ee        vsubps    zmm13,zmm13,zmm14
000611  62 11 7c 48 28 fd        vmovaps   zmm15,zmm29
000617  62 12 15 48 a8 fc        vfmadd213ps zmm15,zmm13,zmm28
00061d  62 12 15 48 a8 fb        vfmadd213ps zmm15,zmm13,zmm27
000623  62 12 15 48 a8 fa        vfmadd213ps zmm15,zmm13,zmm26
000629  62 12 15 48 a8 f9        vfmadd213ps zmm15,zmm13,zmm25
00062f  62 51 7d 48 5b f6        vcvtps2dq zmm14,zmm14
000635  62 d1 0d 48 72 f6 17     vpslld    zmm14,zmm14,0x17
00063c  62 11 0d 48 fe f0        vpaddd    zmm14,zmm14,zmm24
000642  62 c1 04 48 59 de        vmulps    zmm19,zmm15,zmm14
000648  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
00064e  62 a1 5c 40 5e db        vdivps    zmm19,zmm20,zmm19
000654  62 a1 54 40 59 eb        vmulps    zmm21,zmm21,zmm19
00065a  62 e1 7c 48 11 6f 06     vmovups   [rdi+0x180],zmm21
000661  62 32 7e 48 72 ed        vcvtneps2bf16 ymm13,zmm21
000667  62 71 ff 28 7f 69 06     vmovdqu16 [rcx+0xc0],ymm13
00066e  62 e1 7c 48 10 6f 07     vmovups   zmm21,[rdi+0x1c0]
000675  62 a1 54 40 59 ee        vmulps    zmm21,zmm21,zmm22
00067b  62 e1 54 40 59 ef        vmulps    zmm21,zmm21,zmm7
000681  62 e1 7c 48 10 66 07     vmovups   zmm20,[rsi+0x1c0]
000688  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
00068e  62 a1 64 40 5c dc        vsubps    zmm19,zmm19,zmm20
000694  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
00069a  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
0006a0  62 11 64 40 59 ee        vmulps    zmm13,zmm19,zmm30
0006a6  62 53 7d 48 08 f5 00     vrndscaleps zmm14,zmm13,0
0006ad  62 51 14 48 5c ee        vsubps    zmm13,zmm13,zmm14
0006b3  62 11 7c 48 28 fd        vmovaps   zmm15,zmm29
0006b9  62 12 15 48 a8 fc        vfmadd213ps zmm15,zmm13,zmm28
0006bf  62 12 15 48 a8 fb        vfmadd213ps zmm15,zmm13,zmm27
0006c5  62 12 15 48 a8 fa        vfmadd213ps zmm15,zmm13,zmm26
0006cb  62 12 15 48 a8 f9        vfmadd213ps zmm15,zmm13,zmm25
0006d1  62 51 7d 48 5b f6        vcvtps2dq zmm14,zmm14
0006d7  62 d1 0d 48 72 f6 17     vpslld    zmm14,zmm14,0x17
0006de  62 11 0d 48 fe f0        vpaddd    zmm14,zmm14,zmm24
0006e4  62 c1 04 48 59 de        vmulps    zmm19,zmm15,zmm14
0006ea  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
0006f0  62 a1 5c 40 5e db        vdivps    zmm19,zmm20,zmm19
0006f6  62 a1 54 40 59 eb        vmulps    zmm21,zmm21,zmm19
0006fc  62 e1 7c 48 11 6f 07     vmovups   [rdi+0x1c0],zmm21
000703  62 32 7e 48 72 ed        vcvtneps2bf16 ymm13,zmm21
000709  62 71 ff 28 7f 69 07     vmovdqu16 [rcx+0xe0],ymm13
000710  48 81 c7 00 02 00 00     add       rdi,0x200
000717  48 81 c6 00 02 00 00     add       rsi,0x200
00071e  48 81 c1 00 01 00 00     add       rcx,0x100
000725  49 ff c8                 dec       r8
000728  0f 85 f3 f9 ff ff        jne       near 0x0000000000000121
00072e  c5 f8 77                 vzeroupper
000731  c3                       ret
000732  53                       push      rbx
000733  55                       push      rbp
000734  41 54                    push      r12
000736  41 55                    push      r13
000738  41 56                    push      r14
00073a  41 57                    push      r15
00073c  48 83 ec 18              sub       rsp,0x18
000740  48 89 fb                 mov       rbx,rdi
000743  48 89 f5                 mov       rbp,rsi
000746  49 89 d4                 mov       r12,rdx
000749  49 89 cd                 mov       r13,rcx
00074c  4d 89 ce                 mov       r14,r9
00074f  31 c0                    xor       eax,eax
000751  0f 57 c9                 xorps     xmm1,xmm1
000754  66 0f 6e 14 83           movd      xmm2,[rbx+rax*4]
000759  f3 0f 59 d2              mulss     xmm2,xmm2
00075d  f3 0f 58 ca              addss     xmm1,xmm2
000761  48 ff c0                 inc       rax
000764  48 3d 80 00 00 00        cmp       rax,0x80
00076a  72 e8                    jb        short 0x0000000000000754
00076c  b8 00 00 00 43           mov       eax,0x43000000
000771  66 0f 6e d0              movd      xmm2,eax
000775  f3 0f 5e ca              divss     xmm1,xmm2
000779  f3 0f 58 c8              addss     xmm1,xmm0
00077d  f3 0f 51 c9              sqrtss    xmm1,xmm1
000781  b8 00 00 80 3f           mov       eax,0x3f800000
000786  66 0f 6e c0              movd      xmm0,eax
00078a  f3 0f 5e c1              divss     xmm0,xmm1
00078e  66 0f 7e 04 24           movd      [rsp],xmm0
000793  45 31 ff                 xor       r15d,r15d
000796  42 8b 44 bd 00           mov       eax,[rbp+r15*4]
00079b  89 44 24 04              mov       [rsp+4],eax
00079f  35 00 00 00 80           xor       eax,0x80000000
0007a4  66 0f 6e c0              movd      xmm0,eax
0007a8  4c 89 f7                 mov       rdi,r14
0007ab  e8 73 00 00 00           call      0x0000000000000823
0007b0  b8 00 00 80 3f           mov       eax,0x3f800000
0007b5  66 0f 6e c8              movd      xmm1,eax
0007b9  f3 0f 58 c1              addss     xmm0,xmm1
0007bd  66 0f 6e 4c 24 04        movd      xmm1,[rsp+4]
0007c3  f3 0f 5e c8              divss     xmm1,xmm0
0007c7  66 42 0f 6e 04 bb        movd      xmm0,[rbx+r15*4]
0007cd  f3 0f 59 04 24           mulss     xmm0,[rsp]
0007d2  43 0f b7 04 7c           movzx     eax,word [r12+r15*2]
0007d7  c1 e0 10                 shl       eax,0x10
0007da  66 0f 6e d0              movd      xmm2,eax
0007de  f3 0f 59 c2              mulss     xmm0,xmm2
0007e2  f3 0f 59 c1              mulss     xmm0,xmm1
0007e6  66 42 0f 7e 04 bb        movd      [rbx+r15*4],xmm0
0007ec  66 0f 7e c0              movd      eax,xmm0
0007f0  89 c1                    mov       ecx,eax
0007f2  c1 e9 10                 shr       ecx,0x10
0007f5  83 e1 01                 and       ecx,1
0007f8  05 ff 7f 00 00           add       eax,0x7fff
0007fd  01 c8                    add       eax,ecx
0007ff  c1 e8 10                 shr       eax,0x10
000802  66 43 89 44 7d 00        mov       [r13+r15*2],ax
000808  49 ff c7                 inc       r15
00080b  49 81 ff 80 00 00 00     cmp       r15,0x80
000812  72 82                    jb        short 0x0000000000000796
000814  48 83 c4 18              add       rsp,0x18
000818  41 5f                    pop       r15
00081a  41 5e                    pop       r14
00081c  41 5d                    pop       r13
00081e  41 5c                    pop       r12
000820  5d                       pop       rbp
000821  5b                       pop       rbx
000822  c3                       ret
000823  66 0f 7e c2              movd      edx,xmm0
000827  89 d0                    mov       eax,edx
000829  25 ff ff ff 7f           and       eax,0x7fffffff
00082e  3d 00 00 b0 42           cmp       eax,0x42b00000
000833  0f 83 a8 00 00 00        jae       near 0x00000000000008e1
000839  f3 0f 5a d0              cvtss2sd  xmm2,xmm0
00083d  49 bb fe 82 2b 65 47 15 47 40 mov       r11,0x40471547652b82fe
000847  66 49 0f 6e cb           movq      xmm1,r11
00084c  49 bb 00 00 00 00 00 00 38 43 mov       r11,0x4338000000000000
000856  66 49 0f 6e db           movq      xmm3,r11
00085b  49 bb 00 00 00 00 00 00 f0 3f mov       r11,0x3ff0000000000000
000865  66 49 0f 6e e3           movq      xmm4,r11
00086a  66 0f 28 c1              movapd    xmm0,xmm1
00086e  c4 e2 e1 99 c2           vfmadd132sd xmm0,xmm3,xmm2
000873  66 48 0f 7e c0           movq      rax,xmm0
000878  f2 0f 5c c3              subsd     xmm0,xmm3
00087c  48 89 c1                 mov       rcx,rax
00087f  48 c1 e0 2f              shl       rax,0x2f
000883  83 e1 1f                 and       ecx,0x1f
000886  c4 e2 f9 9b ca           vfmsub132sd xmm1,xmm0,xmm2
00088b  48 03 04 cf              add       rax,[rdi+rcx*8]
00088f  66 48 0f 6e e8           movq      xmm5,rax
000894  49 bb 94 23 91 4b f8 6a bc 3e mov       r11,0x3ebc6af84b912394
00089e  66 49 0f 6e c3           movq      xmm0,r11
0008a3  49 bb f3 c4 fa 50 ce bf 2e 3f mov       r11,0x3f2ebfce50fac4f3
0008ad  66 49 0f 6e f3           movq      xmm6,r11
0008b2  c4 e2 f1 a9 c6           vfmadd213sd xmm0,xmm1,xmm6
0008b7  66 0f 28 d1              movapd    xmm2,xmm1
0008bb  f2 0f 59 d1              mulsd     xmm2,xmm1
0008bf  49 bb d6 52 0c ff 42 2e 96 3f mov       r11,0x3f962e42ff0c52d6
0008c9  66 49 0f 6e f3           movq      xmm6,r11
0008ce  c4 e2 d9 99 ce           vfmadd132sd xmm1,xmm4,xmm6
0008d3  c4 e2 f1 99 c2           vfmadd132sd xmm0,xmm1,xmm2
0008d8  f2 0f 59 c5              mulsd     xmm0,xmm5
0008dc  f2 0f 5a c0              cvtsd2ss  xmm0,xmm0
0008e0  c3                       ret
0008e1  81 fa 00 00 80 ff        cmp       edx,0xff800000
0008e7  74 43                    je        short 0x000000000000092c
0008e9  3d 00 00 80 7f           cmp       eax,0x7f800000
0008ee  73 2d                    jae       short 0x000000000000091d
0008f0  49 bb 18 72 b1 42 00 00 00 00 mov       r11,0x42b17218
0008fa  66 49 0f 6e cb           movq      xmm1,r11
0008ff  0f 2e c1                 ucomiss   xmm0,xmm1
000902  77 1e                    ja        short 0x0000000000000922
000904  49 bb b5 f1 cf c2 00 00 00 00 mov       r11,0xc2cff1b5
00090e  66 49 0f 6e cb           movq      xmm1,r11
000913  0f 2e c1                 ucomiss   xmm0,xmm1
000916  72 14                    jb        short 0x000000000000092c
000918  e9 1c ff ff ff           jmp       0x0000000000000839
00091d  f3 0f 58 c0              addss     xmm0,xmm0
000921  c3                       ret
000922  b8 00 00 80 7f           mov       eax,0x7f800000
000927  66 0f 6e c0              movd      xmm0,eax
00092b  c3                       ret
00092c  0f 57 c0                 xorps     xmm0,xmm0
00092f  c3                       ret
