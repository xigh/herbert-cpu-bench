; node 17: elementwise-binary (layer 0), kernel 17 at image offset 0xa37ea, 37967 bytes, 1 tasks, up to 12 participants

000000  b8 4f ac ae c2           mov       eax,0xc2aeac4f
000005  62 62 7d 48 7c f8        vpbroadcastd zmm31,eax
00000b  b8 3b aa b8 3f           mov       eax,0x3fb8aa3b
000010  62 62 7d 48 7c f0        vpbroadcastd zmm30,eax
000016  b8 52 79 1e 3c           mov       eax,0x3c1e7952
00001b  62 62 7d 48 7c e8        vpbroadcastd zmm29,eax
000021  b8 47 58 63 3d           mov       eax,0x3d635847
000026  62 62 7d 48 7c e0        vpbroadcastd zmm28,eax
00002c  b8 f0 fd 75 3e           mov       eax,0x3e75fdf0
000031  62 62 7d 48 7c d8        vpbroadcastd zmm27,eax
000037  b8 18 72 31 3f           mov       eax,0x3f317218
00003c  62 62 7d 48 7c d0        vpbroadcastd zmm26,eax
000042  b8 00 00 80 3f           mov       eax,0x3f800000
000047  62 62 7d 48 7c c8        vpbroadcastd zmm25,eax
00004d  b8 00 00 80 3f           mov       eax,0x3f800000
000052  62 62 7d 48 7c c0        vpbroadcastd zmm24,eax
000058  b8 00 00 80 3f           mov       eax,0x3f800000
00005d  62 e2 7d 48 7c f8        vpbroadcastd zmm23,eax
000063  b8 00 00 b0 42           mov       eax,0x42b00000
000068  62 e2 7d 48 7c f0        vpbroadcastd zmm22,eax
00006e  62 e1 ff 48 6f 2f        vmovdqu16 zmm21,[rdi]
000074  62 e1 ff 48 6f 26        vmovdqu16 zmm20,[rsi]
00007a  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000080  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000087  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00008d  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000094  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00009a  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0000a0  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0000a6  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0000ac  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0000b2  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0000b9  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0000bf  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0000c5  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0000cb  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0000d1  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0000d7  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0000dd  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0000e3  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0000ea  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0000f0  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0000f6  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0000fc  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000102  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000108  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00010e  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000115  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00011b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000122  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000129  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00012f  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000136  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00013c  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000142  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000148  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00014e  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000154  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00015b  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000161  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000167  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00016d  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000173  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000179  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00017f  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000185  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00018c  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000192  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000198  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00019e  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0001a4  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0001aa  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0001b0  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0001b7  62 f1 ff 48 7f 1a        vmovdqu16 [rdx],zmm3
0001bd  62 e1 ff 48 6f 6f 01     vmovdqu16 zmm21,[rdi+0x40]
0001c4  62 e1 ff 48 6f 66 01     vmovdqu16 zmm20,[rsi+0x40]
0001cb  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0001d1  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0001d8  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0001de  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0001e5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0001eb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0001f1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0001f7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0001fd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000203  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00020a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000210  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000216  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00021c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000222  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000228  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00022e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000234  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00023b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000241  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000247  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00024d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000253  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000259  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00025f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000266  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00026c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000273  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00027a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000280  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000287  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00028d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000293  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000299  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00029f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0002a5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0002ac  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0002b2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0002b8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0002be  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0002c4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0002ca  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0002d0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0002d6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0002dd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0002e3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0002e9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0002ef  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0002f5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0002fb  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000301  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000308  62 f1 ff 48 7f 5a 01     vmovdqu16 [rdx+0x40],zmm3
00030f  62 e1 ff 48 6f 6f 02     vmovdqu16 zmm21,[rdi+0x80]
000316  62 e1 ff 48 6f 66 02     vmovdqu16 zmm20,[rsi+0x80]
00031d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000323  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00032a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000330  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000337  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00033d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000343  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000349  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00034f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000355  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00035c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000362  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000368  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00036e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000374  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00037a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000380  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000386  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00038d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000393  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000399  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00039f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0003a5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0003ab  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0003b1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0003b8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0003be  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0003c5  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0003cc  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0003d2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0003d9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0003df  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0003e5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0003eb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0003f1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0003f7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0003fe  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000404  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00040a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000410  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000416  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00041c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000422  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000428  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00042f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000435  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00043b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000441  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000447  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00044d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000453  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00045a  62 f1 ff 48 7f 5a 02     vmovdqu16 [rdx+0x80],zmm3
000461  62 e1 ff 48 6f 6f 03     vmovdqu16 zmm21,[rdi+0xc0]
000468  62 e1 ff 48 6f 66 03     vmovdqu16 zmm20,[rsi+0xc0]
00046f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000475  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00047c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000482  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000489  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00048f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000495  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00049b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0004a1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0004a7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0004ae  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0004b4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0004ba  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0004c0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0004c6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0004cc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0004d2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0004d8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0004df  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0004e5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0004eb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0004f1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0004f7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0004fd  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000503  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00050a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000510  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000517  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00051e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000524  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00052b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000531  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000537  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00053d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000543  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000549  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000550  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000556  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00055c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000562  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000568  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00056e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000574  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00057a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000581  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000587  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00058d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000593  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000599  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00059f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0005a5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0005ac  62 f1 ff 48 7f 5a 03     vmovdqu16 [rdx+0xc0],zmm3
0005b3  62 e1 ff 48 6f 6f 04     vmovdqu16 zmm21,[rdi+0x100]
0005ba  62 e1 ff 48 6f 66 04     vmovdqu16 zmm20,[rsi+0x100]
0005c1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0005c7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0005ce  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0005d4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0005db  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0005e1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0005e7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0005ed  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0005f3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0005f9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000600  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000606  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00060c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000612  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000618  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00061e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000624  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00062a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000631  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000637  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00063d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000643  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000649  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00064f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000655  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00065c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000662  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000669  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000670  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000676  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00067d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000683  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000689  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00068f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000695  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00069b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0006a2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0006a8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0006ae  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0006b4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0006ba  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0006c0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0006c6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0006cc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0006d3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0006d9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0006df  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0006e5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0006eb  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0006f1  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0006f7  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0006fe  62 f1 ff 48 7f 5a 04     vmovdqu16 [rdx+0x100],zmm3
000705  62 e1 ff 48 6f 6f 05     vmovdqu16 zmm21,[rdi+0x140]
00070c  62 e1 ff 48 6f 66 05     vmovdqu16 zmm20,[rsi+0x140]
000713  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000719  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000720  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000726  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00072d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000733  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000739  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00073f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000745  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00074b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000752  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000758  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00075e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000764  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00076a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000770  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000776  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00077c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000783  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000789  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00078f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000795  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00079b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0007a1  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0007a7  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0007ae  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0007b4  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0007bb  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0007c2  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0007c8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0007cf  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0007d5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0007db  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0007e1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0007e7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0007ed  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0007f4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0007fa  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000800  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000806  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00080c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000812  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000818  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00081e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000825  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00082b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000831  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000837  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00083d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000843  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000849  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000850  62 f1 ff 48 7f 5a 05     vmovdqu16 [rdx+0x140],zmm3
000857  62 e1 ff 48 6f 6f 06     vmovdqu16 zmm21,[rdi+0x180]
00085e  62 e1 ff 48 6f 66 06     vmovdqu16 zmm20,[rsi+0x180]
000865  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00086b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000872  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000878  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00087f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000885  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00088b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000891  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000897  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00089d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0008a4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0008aa  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0008b0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0008b6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0008bc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0008c2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0008c8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0008ce  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0008d5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0008db  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0008e1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0008e7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0008ed  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0008f3  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0008f9  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000900  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000906  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00090d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000914  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00091a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000921  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000927  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00092d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000933  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000939  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00093f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000946  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00094c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000952  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000958  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00095e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000964  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00096a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000970  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000977  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00097d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000983  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000989  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00098f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000995  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00099b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0009a2  62 f1 ff 48 7f 5a 06     vmovdqu16 [rdx+0x180],zmm3
0009a9  62 e1 ff 48 6f 6f 07     vmovdqu16 zmm21,[rdi+0x1c0]
0009b0  62 e1 ff 48 6f 66 07     vmovdqu16 zmm20,[rsi+0x1c0]
0009b7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0009bd  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0009c4  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0009ca  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0009d1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0009d7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0009dd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0009e3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0009e9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0009ef  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0009f6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0009fc  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000a02  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000a08  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000a0e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000a14  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000a1a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000a20  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000a27  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000a2d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000a33  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000a39  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000a3f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000a45  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000a4b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000a52  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000a58  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000a5f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000a66  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000a6c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000a73  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000a79  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000a7f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000a85  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000a8b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000a91  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000a98  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000a9e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000aa4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000aaa  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000ab0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000ab6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000abc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000ac2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000ac9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000acf  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000ad5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000adb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000ae1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000ae7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000aed  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000af4  62 f1 ff 48 7f 5a 07     vmovdqu16 [rdx+0x1c0],zmm3
000afb  62 e1 ff 48 6f 6f 08     vmovdqu16 zmm21,[rdi+0x200]
000b02  62 e1 ff 48 6f 66 08     vmovdqu16 zmm20,[rsi+0x200]
000b09  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000b0f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000b16  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000b1c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000b23  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000b29  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000b2f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000b35  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000b3b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000b41  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000b48  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000b4e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000b54  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000b5a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000b60  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000b66  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000b6c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000b72  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000b79  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000b7f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000b85  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000b8b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000b91  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000b97  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000b9d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000ba4  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000baa  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000bb1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000bb8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000bbe  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000bc5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000bcb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000bd1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000bd7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000bdd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000be3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000bea  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000bf0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000bf6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000bfc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000c02  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000c08  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000c0e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000c14  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000c1b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000c21  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000c27  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000c2d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000c33  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000c39  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000c3f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000c46  62 f1 ff 48 7f 5a 08     vmovdqu16 [rdx+0x200],zmm3
000c4d  62 e1 ff 48 6f 6f 09     vmovdqu16 zmm21,[rdi+0x240]
000c54  62 e1 ff 48 6f 66 09     vmovdqu16 zmm20,[rsi+0x240]
000c5b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000c61  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000c68  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000c6e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000c75  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000c7b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000c81  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000c87  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000c8d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000c93  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000c9a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000ca0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000ca6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000cac  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000cb2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000cb8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000cbe  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000cc4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000ccb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000cd1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000cd7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000cdd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000ce3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000ce9  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000cef  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000cf6  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000cfc  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000d03  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000d0a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000d10  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000d17  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000d1d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000d23  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000d29  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000d2f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000d35  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000d3c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000d42  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000d48  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000d4e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000d54  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000d5a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000d60  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000d66  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000d6d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000d73  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000d79  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000d7f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000d85  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000d8b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000d91  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000d98  62 f1 ff 48 7f 5a 09     vmovdqu16 [rdx+0x240],zmm3
000d9f  62 e1 ff 48 6f 6f 0a     vmovdqu16 zmm21,[rdi+0x280]
000da6  62 e1 ff 48 6f 66 0a     vmovdqu16 zmm20,[rsi+0x280]
000dad  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000db3  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000dba  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000dc0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000dc7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000dcd  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000dd3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000dd9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000ddf  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000de5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000dec  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000df2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000df8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000dfe  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000e04  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000e0a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000e10  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000e16  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000e1d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000e23  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000e29  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000e2f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000e35  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000e3b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000e41  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000e48  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000e4e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000e55  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000e5c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000e62  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000e69  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000e6f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000e75  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000e7b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000e81  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000e87  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000e8e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000e94  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000e9a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000ea0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000ea6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000eac  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000eb2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000eb8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000ebf  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000ec5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000ecb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000ed1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000ed7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000edd  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000ee3  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000eea  62 f1 ff 48 7f 5a 0a     vmovdqu16 [rdx+0x280],zmm3
000ef1  62 e1 ff 48 6f 6f 0b     vmovdqu16 zmm21,[rdi+0x2c0]
000ef8  62 e1 ff 48 6f 66 0b     vmovdqu16 zmm20,[rsi+0x2c0]
000eff  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000f05  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000f0c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000f12  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000f19  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000f1f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000f25  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000f2b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000f31  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000f37  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000f3e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000f44  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000f4a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000f50  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000f56  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000f5c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000f62  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000f68  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000f6f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000f75  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000f7b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000f81  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000f87  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
000f8d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000f93  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000f9a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000fa0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000fa7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000fae  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000fb4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000fbb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000fc1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
000fc7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000fcd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000fd3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000fd9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000fe0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000fe6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000fec  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000ff2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000ff8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000ffe  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001004  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00100a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001011  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001017  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00101d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001023  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001029  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00102f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001035  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00103c  62 f1 ff 48 7f 5a 0b     vmovdqu16 [rdx+0x2c0],zmm3
001043  62 e1 ff 48 6f 6f 0c     vmovdqu16 zmm21,[rdi+0x300]
00104a  62 e1 ff 48 6f 66 0c     vmovdqu16 zmm20,[rsi+0x300]
001051  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001057  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00105e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001064  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00106b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001071  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001077  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00107d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001083  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001089  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001090  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001096  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00109c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0010a2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0010a8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0010ae  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0010b4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0010ba  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0010c1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0010c7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0010cd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0010d3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0010d9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0010df  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0010e5  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0010ec  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0010f2  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0010f9  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001100  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001106  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00110d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001113  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001119  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00111f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001125  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00112b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001132  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001138  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00113e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001144  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00114a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001150  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001156  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00115c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001163  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001169  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00116f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001175  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00117b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001181  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001187  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00118e  62 f1 ff 48 7f 5a 0c     vmovdqu16 [rdx+0x300],zmm3
001195  62 e1 ff 48 6f 6f 0d     vmovdqu16 zmm21,[rdi+0x340]
00119c  62 e1 ff 48 6f 66 0d     vmovdqu16 zmm20,[rsi+0x340]
0011a3  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0011a9  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0011b0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0011b6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0011bd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0011c3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0011c9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0011cf  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0011d5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0011db  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0011e2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0011e8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0011ee  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0011f4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0011fa  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001200  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001206  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00120c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001213  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001219  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00121f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001225  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00122b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001231  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001237  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00123e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001244  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00124b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001252  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001258  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00125f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001265  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00126b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001271  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001277  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00127d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001284  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00128a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001290  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001296  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00129c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0012a2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0012a8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0012ae  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0012b5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0012bb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0012c1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0012c7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0012cd  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0012d3  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0012d9  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0012e0  62 f1 ff 48 7f 5a 0d     vmovdqu16 [rdx+0x340],zmm3
0012e7  62 e1 ff 48 6f 6f 0e     vmovdqu16 zmm21,[rdi+0x380]
0012ee  62 e1 ff 48 6f 66 0e     vmovdqu16 zmm20,[rsi+0x380]
0012f5  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0012fb  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001302  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001308  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00130f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001315  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00131b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001321  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001327  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00132d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001334  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00133a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001340  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001346  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00134c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001352  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001358  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00135e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001365  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00136b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001371  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001377  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00137d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001383  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001389  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001390  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001396  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00139d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0013a4  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0013aa  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0013b1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0013b7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0013bd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0013c3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0013c9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0013cf  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0013d6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0013dc  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0013e2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0013e8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0013ee  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0013f4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0013fa  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001400  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001407  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00140d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001413  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001419  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00141f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001425  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00142b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001432  62 f1 ff 48 7f 5a 0e     vmovdqu16 [rdx+0x380],zmm3
001439  62 e1 ff 48 6f 6f 0f     vmovdqu16 zmm21,[rdi+0x3c0]
001440  62 e1 ff 48 6f 66 0f     vmovdqu16 zmm20,[rsi+0x3c0]
001447  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00144d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001454  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00145a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001461  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001467  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00146d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001473  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001479  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00147f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001486  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00148c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001492  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001498  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00149e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0014a4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0014aa  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0014b0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0014b7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0014bd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0014c3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0014c9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0014cf  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0014d5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0014db  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0014e2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0014e8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0014ef  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0014f6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0014fc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001503  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001509  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00150f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001515  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00151b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001521  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001528  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00152e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001534  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00153a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001540  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001546  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00154c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001552  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001559  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00155f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001565  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00156b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001571  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001577  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00157d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001584  62 f1 ff 48 7f 5a 0f     vmovdqu16 [rdx+0x3c0],zmm3
00158b  62 e1 ff 48 6f 6f 10     vmovdqu16 zmm21,[rdi+0x400]
001592  62 e1 ff 48 6f 66 10     vmovdqu16 zmm20,[rsi+0x400]
001599  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00159f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0015a6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0015ac  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0015b3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0015b9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0015bf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0015c5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0015cb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0015d1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0015d8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0015de  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0015e4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0015ea  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0015f0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0015f6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0015fc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001602  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001609  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00160f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001615  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00161b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001621  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001627  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00162d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001634  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00163a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001641  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001648  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00164e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001655  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00165b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001661  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001667  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00166d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001673  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00167a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001680  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001686  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00168c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001692  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001698  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00169e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0016a4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0016ab  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0016b1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0016b7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0016bd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0016c3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0016c9  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0016cf  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0016d6  62 f1 ff 48 7f 5a 10     vmovdqu16 [rdx+0x400],zmm3
0016dd  62 e1 ff 48 6f 6f 11     vmovdqu16 zmm21,[rdi+0x440]
0016e4  62 e1 ff 48 6f 66 11     vmovdqu16 zmm20,[rsi+0x440]
0016eb  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0016f1  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0016f8  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0016fe  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001705  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00170b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001711  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001717  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00171d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001723  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00172a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001730  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001736  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00173c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001742  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001748  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00174e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001754  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00175b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001761  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001767  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00176d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001773  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001779  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00177f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001786  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00178c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001793  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00179a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0017a0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0017a7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0017ad  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0017b3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0017b9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0017bf  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0017c5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0017cc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0017d2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0017d8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0017de  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0017e4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0017ea  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0017f0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0017f6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0017fd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001803  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001809  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00180f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001815  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00181b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001821  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001828  62 f1 ff 48 7f 5a 11     vmovdqu16 [rdx+0x440],zmm3
00182f  62 e1 ff 48 6f 6f 12     vmovdqu16 zmm21,[rdi+0x480]
001836  62 e1 ff 48 6f 66 12     vmovdqu16 zmm20,[rsi+0x480]
00183d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001843  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00184a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001850  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001857  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00185d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001863  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001869  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00186f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001875  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00187c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001882  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001888  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00188e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001894  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00189a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0018a0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0018a6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0018ad  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0018b3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0018b9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0018bf  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0018c5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0018cb  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0018d1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0018d8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0018de  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0018e5  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0018ec  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0018f2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0018f9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0018ff  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001905  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00190b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001911  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001917  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00191e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001924  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00192a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001930  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001936  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00193c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001942  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001948  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00194f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001955  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00195b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001961  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001967  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00196d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001973  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00197a  62 f1 ff 48 7f 5a 12     vmovdqu16 [rdx+0x480],zmm3
001981  62 e1 ff 48 6f 6f 13     vmovdqu16 zmm21,[rdi+0x4c0]
001988  62 e1 ff 48 6f 66 13     vmovdqu16 zmm20,[rsi+0x4c0]
00198f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001995  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00199c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0019a2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0019a9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0019af  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0019b5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0019bb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0019c1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0019c7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0019ce  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0019d4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0019da  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0019e0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0019e6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0019ec  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0019f2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0019f8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0019ff  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001a05  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001a0b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001a11  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001a17  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001a1d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001a23  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001a2a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001a30  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001a37  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001a3e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001a44  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001a4b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001a51  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001a57  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001a5d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001a63  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001a69  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001a70  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001a76  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001a7c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001a82  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001a88  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001a8e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001a94  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001a9a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001aa1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001aa7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001aad  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001ab3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001ab9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001abf  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001ac5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001acc  62 f1 ff 48 7f 5a 13     vmovdqu16 [rdx+0x4c0],zmm3
001ad3  62 e1 ff 48 6f 6f 14     vmovdqu16 zmm21,[rdi+0x500]
001ada  62 e1 ff 48 6f 66 14     vmovdqu16 zmm20,[rsi+0x500]
001ae1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001ae7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001aee  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001af4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001afb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001b01  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001b07  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001b0d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001b13  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001b19  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001b20  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001b26  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001b2c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001b32  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001b38  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001b3e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001b44  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001b4a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001b51  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001b57  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001b5d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001b63  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001b69  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001b6f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001b75  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001b7c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001b82  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001b89  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001b90  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001b96  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001b9d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001ba3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001ba9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001baf  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001bb5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001bbb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001bc2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001bc8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001bce  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001bd4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001bda  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001be0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001be6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001bec  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001bf3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001bf9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001bff  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001c05  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001c0b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001c11  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001c17  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001c1e  62 f1 ff 48 7f 5a 14     vmovdqu16 [rdx+0x500],zmm3
001c25  62 e1 ff 48 6f 6f 15     vmovdqu16 zmm21,[rdi+0x540]
001c2c  62 e1 ff 48 6f 66 15     vmovdqu16 zmm20,[rsi+0x540]
001c33  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001c39  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001c40  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001c46  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001c4d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001c53  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001c59  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001c5f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001c65  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001c6b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001c72  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001c78  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001c7e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001c84  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001c8a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001c90  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001c96  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001c9c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001ca3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001ca9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001caf  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001cb5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001cbb  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001cc1  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001cc7  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001cce  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001cd4  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001cdb  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001ce2  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001ce8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001cef  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001cf5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001cfb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001d01  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001d07  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001d0d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001d14  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001d1a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001d20  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001d26  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001d2c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001d32  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001d38  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001d3e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001d45  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001d4b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001d51  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001d57  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001d5d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001d63  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001d69  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001d70  62 f1 ff 48 7f 5a 15     vmovdqu16 [rdx+0x540],zmm3
001d77  62 e1 ff 48 6f 6f 16     vmovdqu16 zmm21,[rdi+0x580]
001d7e  62 e1 ff 48 6f 66 16     vmovdqu16 zmm20,[rsi+0x580]
001d85  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001d8b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001d92  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001d98  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001d9f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001da5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001dab  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001db1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001db7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001dbd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001dc4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001dca  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001dd0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001dd6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001ddc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001de2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001de8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001dee  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001df5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001dfb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001e01  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001e07  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001e0d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001e13  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001e19  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001e20  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001e26  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001e2d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001e34  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001e3a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001e41  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001e47  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001e4d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001e53  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001e59  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001e5f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001e66  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001e6c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001e72  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001e78  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001e7e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001e84  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001e8a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001e90  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001e97  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001e9d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001ea3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001ea9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001eaf  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001eb5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001ebb  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001ec2  62 f1 ff 48 7f 5a 16     vmovdqu16 [rdx+0x580],zmm3
001ec9  62 e1 ff 48 6f 6f 17     vmovdqu16 zmm21,[rdi+0x5c0]
001ed0  62 e1 ff 48 6f 66 17     vmovdqu16 zmm20,[rsi+0x5c0]
001ed7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001edd  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001ee4  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001eea  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001ef1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001ef7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001efd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001f03  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001f09  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001f0f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001f16  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001f1c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001f22  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001f28  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001f2e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001f34  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001f3a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001f40  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001f47  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001f4d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001f53  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001f59  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001f5f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
001f65  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001f6b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001f72  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001f78  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001f7f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001f86  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001f8c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001f93  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001f99  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
001f9f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001fa5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001fab  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001fb1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001fb8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001fbe  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001fc4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001fca  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001fd0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001fd6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001fdc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001fe2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001fe9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001fef  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001ff5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001ffb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002001  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002007  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00200d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002014  62 f1 ff 48 7f 5a 17     vmovdqu16 [rdx+0x5c0],zmm3
00201b  62 e1 ff 48 6f 6f 18     vmovdqu16 zmm21,[rdi+0x600]
002022  62 e1 ff 48 6f 66 18     vmovdqu16 zmm20,[rsi+0x600]
002029  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00202f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002036  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00203c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002043  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002049  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00204f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002055  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00205b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002061  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002068  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00206e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002074  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00207a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002080  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002086  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00208c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002092  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002099  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00209f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0020a5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0020ab  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0020b1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0020b7  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0020bd  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0020c4  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0020ca  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0020d1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0020d8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0020de  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0020e5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0020eb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0020f1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0020f7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0020fd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002103  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00210a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002110  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002116  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00211c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002122  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002128  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00212e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002134  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00213b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002141  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002147  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00214d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002153  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002159  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00215f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002166  62 f1 ff 48 7f 5a 18     vmovdqu16 [rdx+0x600],zmm3
00216d  62 e1 ff 48 6f 6f 19     vmovdqu16 zmm21,[rdi+0x640]
002174  62 e1 ff 48 6f 66 19     vmovdqu16 zmm20,[rsi+0x640]
00217b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002181  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002188  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00218e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002195  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00219b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0021a1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0021a7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0021ad  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0021b3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0021ba  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0021c0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0021c6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0021cc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0021d2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0021d8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0021de  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0021e4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0021eb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0021f1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0021f7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0021fd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002203  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002209  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00220f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002216  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00221c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002223  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00222a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002230  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002237  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00223d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002243  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002249  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00224f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002255  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00225c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002262  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002268  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00226e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002274  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00227a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002280  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002286  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00228d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002293  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002299  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00229f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0022a5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0022ab  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0022b1  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0022b8  62 f1 ff 48 7f 5a 19     vmovdqu16 [rdx+0x640],zmm3
0022bf  62 e1 ff 48 6f 6f 1a     vmovdqu16 zmm21,[rdi+0x680]
0022c6  62 e1 ff 48 6f 66 1a     vmovdqu16 zmm20,[rsi+0x680]
0022cd  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0022d3  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0022da  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0022e0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0022e7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0022ed  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0022f3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0022f9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0022ff  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002305  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00230c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002312  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002318  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00231e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002324  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00232a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002330  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002336  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00233d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002343  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002349  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00234f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002355  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00235b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002361  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002368  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00236e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002375  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00237c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002382  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002389  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00238f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002395  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00239b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0023a1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0023a7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0023ae  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0023b4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0023ba  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0023c0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0023c6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0023cc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0023d2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0023d8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0023df  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0023e5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0023eb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0023f1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0023f7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0023fd  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002403  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00240a  62 f1 ff 48 7f 5a 1a     vmovdqu16 [rdx+0x680],zmm3
002411  62 e1 ff 48 6f 6f 1b     vmovdqu16 zmm21,[rdi+0x6c0]
002418  62 e1 ff 48 6f 66 1b     vmovdqu16 zmm20,[rsi+0x6c0]
00241f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002425  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00242c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002432  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002439  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00243f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002445  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00244b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002451  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002457  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00245e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002464  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00246a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002470  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002476  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00247c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002482  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002488  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00248f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002495  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00249b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0024a1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0024a7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0024ad  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0024b3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0024ba  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0024c0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0024c7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0024ce  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0024d4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0024db  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0024e1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0024e7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0024ed  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0024f3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0024f9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002500  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002506  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00250c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002512  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002518  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00251e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002524  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00252a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002531  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002537  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00253d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002543  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002549  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00254f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002555  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00255c  62 f1 ff 48 7f 5a 1b     vmovdqu16 [rdx+0x6c0],zmm3
002563  62 e1 ff 48 6f 6f 1c     vmovdqu16 zmm21,[rdi+0x700]
00256a  62 e1 ff 48 6f 66 1c     vmovdqu16 zmm20,[rsi+0x700]
002571  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002577  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00257e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002584  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00258b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002591  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002597  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00259d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0025a3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0025a9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0025b0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0025b6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0025bc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0025c2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0025c8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0025ce  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0025d4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0025da  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0025e1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0025e7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0025ed  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0025f3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0025f9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0025ff  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002605  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00260c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002612  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002619  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002620  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002626  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00262d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002633  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002639  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00263f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002645  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00264b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002652  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002658  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00265e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002664  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00266a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002670  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002676  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00267c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002683  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002689  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00268f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002695  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00269b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0026a1  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0026a7  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0026ae  62 f1 ff 48 7f 5a 1c     vmovdqu16 [rdx+0x700],zmm3
0026b5  62 e1 ff 48 6f 6f 1d     vmovdqu16 zmm21,[rdi+0x740]
0026bc  62 e1 ff 48 6f 66 1d     vmovdqu16 zmm20,[rsi+0x740]
0026c3  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0026c9  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0026d0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0026d6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0026dd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0026e3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0026e9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0026ef  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0026f5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0026fb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002702  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002708  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00270e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002714  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00271a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002720  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002726  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00272c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002733  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002739  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00273f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002745  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00274b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002751  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002757  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00275e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002764  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00276b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002772  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002778  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00277f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002785  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00278b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002791  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002797  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00279d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0027a4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0027aa  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0027b0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0027b6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0027bc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0027c2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0027c8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0027ce  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0027d5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0027db  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0027e1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0027e7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0027ed  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0027f3  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0027f9  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002800  62 f1 ff 48 7f 5a 1d     vmovdqu16 [rdx+0x740],zmm3
002807  62 e1 ff 48 6f 6f 1e     vmovdqu16 zmm21,[rdi+0x780]
00280e  62 e1 ff 48 6f 66 1e     vmovdqu16 zmm20,[rsi+0x780]
002815  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00281b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002822  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002828  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00282f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002835  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00283b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002841  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002847  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00284d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002854  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00285a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002860  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002866  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00286c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002872  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002878  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00287e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002885  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00288b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002891  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002897  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00289d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0028a3  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0028a9  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0028b0  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0028b6  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0028bd  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0028c4  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0028ca  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0028d1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0028d7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0028dd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0028e3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0028e9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0028ef  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0028f6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0028fc  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002902  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002908  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00290e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002914  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00291a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002920  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002927  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00292d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002933  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002939  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00293f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002945  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00294b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002952  62 f1 ff 48 7f 5a 1e     vmovdqu16 [rdx+0x780],zmm3
002959  62 e1 ff 48 6f 6f 1f     vmovdqu16 zmm21,[rdi+0x7c0]
002960  62 e1 ff 48 6f 66 1f     vmovdqu16 zmm20,[rsi+0x7c0]
002967  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00296d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002974  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00297a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002981  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002987  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00298d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002993  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002999  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00299f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0029a6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0029ac  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0029b2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0029b8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0029be  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0029c4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0029ca  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0029d0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0029d7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0029dd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0029e3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0029e9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0029ef  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0029f5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0029fb  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002a02  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002a08  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002a0f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002a16  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002a1c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002a23  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002a29  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002a2f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002a35  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002a3b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002a41  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002a48  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002a4e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002a54  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002a5a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002a60  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002a66  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002a6c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002a72  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002a79  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002a7f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002a85  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002a8b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002a91  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002a97  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002a9d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002aa4  62 f1 ff 48 7f 5a 1f     vmovdqu16 [rdx+0x7c0],zmm3
002aab  62 e1 ff 48 6f 6f 20     vmovdqu16 zmm21,[rdi+0x800]
002ab2  62 e1 ff 48 6f 66 20     vmovdqu16 zmm20,[rsi+0x800]
002ab9  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002abf  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002ac6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002acc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002ad3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002ad9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002adf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002ae5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002aeb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002af1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002af8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002afe  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002b04  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002b0a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002b10  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002b16  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002b1c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002b22  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002b29  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002b2f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002b35  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002b3b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002b41  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002b47  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002b4d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002b54  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002b5a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002b61  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002b68  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002b6e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002b75  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002b7b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002b81  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002b87  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002b8d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002b93  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002b9a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002ba0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002ba6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002bac  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002bb2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002bb8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002bbe  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002bc4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002bcb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002bd1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002bd7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002bdd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002be3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002be9  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002bef  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002bf6  62 f1 ff 48 7f 5a 20     vmovdqu16 [rdx+0x800],zmm3
002bfd  62 e1 ff 48 6f 6f 21     vmovdqu16 zmm21,[rdi+0x840]
002c04  62 e1 ff 48 6f 66 21     vmovdqu16 zmm20,[rsi+0x840]
002c0b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002c11  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002c18  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002c1e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002c25  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002c2b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002c31  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002c37  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002c3d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002c43  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002c4a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002c50  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002c56  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002c5c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002c62  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002c68  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002c6e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002c74  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002c7b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002c81  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002c87  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002c8d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002c93  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002c99  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002c9f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002ca6  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002cac  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002cb3  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002cba  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002cc0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002cc7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002ccd  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002cd3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002cd9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002cdf  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002ce5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002cec  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002cf2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002cf8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002cfe  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002d04  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002d0a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002d10  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002d16  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002d1d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002d23  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002d29  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002d2f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002d35  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002d3b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002d41  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002d48  62 f1 ff 48 7f 5a 21     vmovdqu16 [rdx+0x840],zmm3
002d4f  62 e1 ff 48 6f 6f 22     vmovdqu16 zmm21,[rdi+0x880]
002d56  62 e1 ff 48 6f 66 22     vmovdqu16 zmm20,[rsi+0x880]
002d5d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002d63  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002d6a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002d70  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002d77  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002d7d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002d83  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002d89  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002d8f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002d95  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002d9c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002da2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002da8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002dae  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002db4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002dba  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002dc0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002dc6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002dcd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002dd3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002dd9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002ddf  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002de5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002deb  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002df1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002df8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002dfe  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002e05  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002e0c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002e12  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002e19  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002e1f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002e25  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002e2b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002e31  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002e37  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002e3e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002e44  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002e4a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002e50  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002e56  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002e5c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002e62  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002e68  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002e6f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002e75  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002e7b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002e81  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002e87  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002e8d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002e93  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002e9a  62 f1 ff 48 7f 5a 22     vmovdqu16 [rdx+0x880],zmm3
002ea1  62 e1 ff 48 6f 6f 23     vmovdqu16 zmm21,[rdi+0x8c0]
002ea8  62 e1 ff 48 6f 66 23     vmovdqu16 zmm20,[rsi+0x8c0]
002eaf  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002eb5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002ebc  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002ec2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002ec9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002ecf  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002ed5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002edb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002ee1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002ee7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002eee  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002ef4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002efa  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002f00  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002f06  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002f0c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002f12  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002f18  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002f1f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002f25  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002f2b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002f31  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002f37  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002f3d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002f43  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002f4a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002f50  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002f57  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002f5e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002f64  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002f6b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002f71  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
002f77  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002f7d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002f83  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002f89  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002f90  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002f96  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002f9c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002fa2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002fa8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002fae  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002fb4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002fba  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002fc1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002fc7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002fcd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002fd3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002fd9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
002fdf  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002fe5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002fec  62 f1 ff 48 7f 5a 23     vmovdqu16 [rdx+0x8c0],zmm3
002ff3  62 e1 ff 48 6f 6f 24     vmovdqu16 zmm21,[rdi+0x900]
002ffa  62 e1 ff 48 6f 66 24     vmovdqu16 zmm20,[rsi+0x900]
003001  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003007  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00300e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003014  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00301b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003021  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003027  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00302d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003033  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003039  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003040  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003046  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00304c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003052  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003058  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00305e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003064  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00306a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003071  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003077  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00307d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003083  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003089  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00308f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003095  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00309c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0030a2  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0030a9  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0030b0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0030b6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0030bd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0030c3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0030c9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0030cf  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0030d5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0030db  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0030e2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0030e8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0030ee  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0030f4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0030fa  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003100  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003106  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00310c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003113  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003119  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00311f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003125  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00312b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003131  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003137  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00313e  62 f1 ff 48 7f 5a 24     vmovdqu16 [rdx+0x900],zmm3
003145  62 e1 ff 48 6f 6f 25     vmovdqu16 zmm21,[rdi+0x940]
00314c  62 e1 ff 48 6f 66 25     vmovdqu16 zmm20,[rsi+0x940]
003153  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003159  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003160  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003166  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00316d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003173  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003179  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00317f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003185  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00318b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003192  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003198  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00319e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0031a4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0031aa  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0031b0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0031b6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0031bc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0031c3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0031c9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0031cf  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0031d5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0031db  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0031e1  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0031e7  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0031ee  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0031f4  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0031fb  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003202  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003208  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00320f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003215  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00321b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003221  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003227  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00322d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003234  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00323a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003240  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003246  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00324c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003252  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003258  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00325e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003265  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00326b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003271  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003277  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00327d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003283  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003289  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003290  62 f1 ff 48 7f 5a 25     vmovdqu16 [rdx+0x940],zmm3
003297  62 e1 ff 48 6f 6f 26     vmovdqu16 zmm21,[rdi+0x980]
00329e  62 e1 ff 48 6f 66 26     vmovdqu16 zmm20,[rsi+0x980]
0032a5  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0032ab  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0032b2  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0032b8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0032bf  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0032c5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0032cb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0032d1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0032d7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0032dd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0032e4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0032ea  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0032f0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0032f6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0032fc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003302  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003308  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00330e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003315  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00331b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003321  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003327  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00332d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003333  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003339  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003340  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003346  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00334d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003354  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00335a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003361  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003367  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00336d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003373  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003379  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00337f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003386  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00338c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003392  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003398  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00339e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0033a4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0033aa  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0033b0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0033b7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0033bd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0033c3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0033c9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0033cf  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0033d5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0033db  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0033e2  62 f1 ff 48 7f 5a 26     vmovdqu16 [rdx+0x980],zmm3
0033e9  62 e1 ff 48 6f 6f 27     vmovdqu16 zmm21,[rdi+0x9c0]
0033f0  62 e1 ff 48 6f 66 27     vmovdqu16 zmm20,[rsi+0x9c0]
0033f7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0033fd  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003404  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00340a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003411  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003417  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00341d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003423  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003429  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00342f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003436  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00343c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003442  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003448  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00344e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003454  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00345a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003460  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003467  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00346d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003473  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003479  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00347f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003485  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00348b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003492  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003498  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00349f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0034a6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0034ac  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0034b3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0034b9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0034bf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0034c5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0034cb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0034d1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0034d8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0034de  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0034e4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0034ea  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0034f0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0034f6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0034fc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003502  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003509  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00350f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003515  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00351b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003521  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003527  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00352d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003534  62 f1 ff 48 7f 5a 27     vmovdqu16 [rdx+0x9c0],zmm3
00353b  62 e1 ff 48 6f 6f 28     vmovdqu16 zmm21,[rdi+0xa00]
003542  62 e1 ff 48 6f 66 28     vmovdqu16 zmm20,[rsi+0xa00]
003549  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00354f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003556  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00355c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003563  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003569  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00356f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003575  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00357b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003581  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003588  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00358e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003594  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00359a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0035a0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0035a6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0035ac  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0035b2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0035b9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0035bf  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0035c5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0035cb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0035d1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0035d7  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0035dd  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0035e4  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0035ea  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0035f1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0035f8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0035fe  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003605  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00360b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003611  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003617  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00361d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003623  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00362a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003630  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003636  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00363c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003642  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003648  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00364e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003654  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00365b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003661  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003667  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00366d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003673  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003679  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00367f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003686  62 f1 ff 48 7f 5a 28     vmovdqu16 [rdx+0xa00],zmm3
00368d  62 e1 ff 48 6f 6f 29     vmovdqu16 zmm21,[rdi+0xa40]
003694  62 e1 ff 48 6f 66 29     vmovdqu16 zmm20,[rsi+0xa40]
00369b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0036a1  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0036a8  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0036ae  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0036b5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0036bb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0036c1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0036c7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0036cd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0036d3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0036da  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0036e0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0036e6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0036ec  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0036f2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0036f8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0036fe  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003704  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00370b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003711  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003717  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00371d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003723  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003729  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00372f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003736  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00373c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003743  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00374a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003750  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003757  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00375d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003763  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003769  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00376f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003775  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00377c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003782  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003788  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00378e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003794  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00379a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0037a0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0037a6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0037ad  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0037b3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0037b9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0037bf  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0037c5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0037cb  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0037d1  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0037d8  62 f1 ff 48 7f 5a 29     vmovdqu16 [rdx+0xa40],zmm3
0037df  62 e1 ff 48 6f 6f 2a     vmovdqu16 zmm21,[rdi+0xa80]
0037e6  62 e1 ff 48 6f 66 2a     vmovdqu16 zmm20,[rsi+0xa80]
0037ed  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0037f3  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0037fa  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003800  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003807  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00380d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003813  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003819  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00381f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003825  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00382c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003832  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003838  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00383e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003844  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00384a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003850  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003856  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00385d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003863  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003869  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00386f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003875  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00387b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003881  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003888  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00388e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003895  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00389c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0038a2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0038a9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0038af  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0038b5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0038bb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0038c1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0038c7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0038ce  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0038d4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0038da  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0038e0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0038e6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0038ec  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0038f2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0038f8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0038ff  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003905  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00390b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003911  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003917  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00391d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003923  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00392a  62 f1 ff 48 7f 5a 2a     vmovdqu16 [rdx+0xa80],zmm3
003931  62 e1 ff 48 6f 6f 2b     vmovdqu16 zmm21,[rdi+0xac0]
003938  62 e1 ff 48 6f 66 2b     vmovdqu16 zmm20,[rsi+0xac0]
00393f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003945  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00394c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003952  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003959  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00395f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003965  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00396b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003971  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003977  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00397e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003984  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00398a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003990  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003996  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00399c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0039a2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0039a8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0039af  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0039b5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0039bb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0039c1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0039c7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0039cd  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0039d3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0039da  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0039e0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0039e7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0039ee  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0039f4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0039fb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003a01  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003a07  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003a0d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003a13  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003a19  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003a20  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003a26  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003a2c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003a32  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003a38  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003a3e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003a44  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003a4a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003a51  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003a57  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003a5d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003a63  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003a69  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003a6f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003a75  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003a7c  62 f1 ff 48 7f 5a 2b     vmovdqu16 [rdx+0xac0],zmm3
003a83  62 e1 ff 48 6f 6f 2c     vmovdqu16 zmm21,[rdi+0xb00]
003a8a  62 e1 ff 48 6f 66 2c     vmovdqu16 zmm20,[rsi+0xb00]
003a91  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003a97  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003a9e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003aa4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003aab  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003ab1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003ab7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003abd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003ac3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003ac9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003ad0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003ad6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003adc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003ae2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003ae8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003aee  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003af4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003afa  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003b01  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003b07  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003b0d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003b13  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003b19  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003b1f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003b25  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003b2c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003b32  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003b39  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003b40  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003b46  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003b4d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003b53  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003b59  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003b5f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003b65  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003b6b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003b72  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003b78  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003b7e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003b84  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003b8a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003b90  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003b96  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003b9c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003ba3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003ba9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003baf  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003bb5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003bbb  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003bc1  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003bc7  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003bce  62 f1 ff 48 7f 5a 2c     vmovdqu16 [rdx+0xb00],zmm3
003bd5  62 e1 ff 48 6f 6f 2d     vmovdqu16 zmm21,[rdi+0xb40]
003bdc  62 e1 ff 48 6f 66 2d     vmovdqu16 zmm20,[rsi+0xb40]
003be3  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003be9  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003bf0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003bf6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003bfd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003c03  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003c09  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003c0f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003c15  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003c1b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003c22  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003c28  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003c2e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003c34  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003c3a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003c40  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003c46  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003c4c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003c53  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003c59  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003c5f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003c65  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003c6b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003c71  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003c77  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003c7e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003c84  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003c8b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003c92  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003c98  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003c9f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003ca5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003cab  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003cb1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003cb7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003cbd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003cc4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003cca  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003cd0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003cd6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003cdc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003ce2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003ce8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003cee  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003cf5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003cfb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003d01  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003d07  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003d0d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003d13  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003d19  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003d20  62 f1 ff 48 7f 5a 2d     vmovdqu16 [rdx+0xb40],zmm3
003d27  62 e1 ff 48 6f 6f 2e     vmovdqu16 zmm21,[rdi+0xb80]
003d2e  62 e1 ff 48 6f 66 2e     vmovdqu16 zmm20,[rsi+0xb80]
003d35  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003d3b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003d42  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003d48  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003d4f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003d55  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003d5b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003d61  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003d67  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003d6d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003d74  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003d7a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003d80  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003d86  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003d8c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003d92  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003d98  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003d9e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003da5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003dab  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003db1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003db7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003dbd  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003dc3  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003dc9  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003dd0  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003dd6  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003ddd  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003de4  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003dea  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003df1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003df7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003dfd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003e03  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003e09  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003e0f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003e16  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003e1c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003e22  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003e28  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003e2e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003e34  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003e3a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003e40  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003e47  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003e4d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003e53  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003e59  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003e5f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003e65  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003e6b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003e72  62 f1 ff 48 7f 5a 2e     vmovdqu16 [rdx+0xb80],zmm3
003e79  62 e1 ff 48 6f 6f 2f     vmovdqu16 zmm21,[rdi+0xbc0]
003e80  62 e1 ff 48 6f 66 2f     vmovdqu16 zmm20,[rsi+0xbc0]
003e87  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003e8d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003e94  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003e9a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003ea1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003ea7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003ead  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003eb3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003eb9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003ebf  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003ec6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003ecc  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003ed2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003ed8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003ede  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003ee4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003eea  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003ef0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003ef7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003efd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003f03  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003f09  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003f0f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003f15  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003f1b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003f22  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003f28  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003f2f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003f36  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003f3c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003f43  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003f49  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003f4f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003f55  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003f5b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003f61  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003f68  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003f6e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003f74  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003f7a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003f80  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003f86  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003f8c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003f92  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003f99  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003f9f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003fa5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003fab  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003fb1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
003fb7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003fbd  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003fc4  62 f1 ff 48 7f 5a 2f     vmovdqu16 [rdx+0xbc0],zmm3
003fcb  62 e1 ff 48 6f 6f 30     vmovdqu16 zmm21,[rdi+0xc00]
003fd2  62 e1 ff 48 6f 66 30     vmovdqu16 zmm20,[rsi+0xc00]
003fd9  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003fdf  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003fe6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003fec  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003ff3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003ff9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
003fff  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004005  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00400b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004011  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004018  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00401e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004024  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00402a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004030  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004036  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00403c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004042  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004049  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00404f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004055  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00405b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004061  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004067  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00406d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004074  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00407a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004081  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004088  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00408e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004095  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00409b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0040a1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0040a7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0040ad  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0040b3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0040ba  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0040c0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0040c6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0040cc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0040d2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0040d8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0040de  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0040e4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0040eb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0040f1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0040f7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0040fd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004103  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004109  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00410f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004116  62 f1 ff 48 7f 5a 30     vmovdqu16 [rdx+0xc00],zmm3
00411d  62 e1 ff 48 6f 6f 31     vmovdqu16 zmm21,[rdi+0xc40]
004124  62 e1 ff 48 6f 66 31     vmovdqu16 zmm20,[rsi+0xc40]
00412b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004131  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004138  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00413e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004145  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00414b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004151  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004157  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00415d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004163  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00416a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004170  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004176  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00417c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004182  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004188  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00418e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004194  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00419b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0041a1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0041a7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0041ad  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0041b3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0041b9  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0041bf  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0041c6  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0041cc  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0041d3  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0041da  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0041e0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0041e7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0041ed  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0041f3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0041f9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0041ff  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004205  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00420c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004212  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004218  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00421e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004224  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00422a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004230  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004236  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00423d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004243  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004249  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00424f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004255  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00425b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004261  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004268  62 f1 ff 48 7f 5a 31     vmovdqu16 [rdx+0xc40],zmm3
00426f  62 e1 ff 48 6f 6f 32     vmovdqu16 zmm21,[rdi+0xc80]
004276  62 e1 ff 48 6f 66 32     vmovdqu16 zmm20,[rsi+0xc80]
00427d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004283  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00428a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004290  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004297  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00429d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0042a3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0042a9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0042af  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0042b5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0042bc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0042c2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0042c8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0042ce  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0042d4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0042da  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0042e0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0042e6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0042ed  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0042f3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0042f9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0042ff  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004305  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00430b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004311  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004318  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00431e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004325  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00432c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004332  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004339  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00433f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004345  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00434b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004351  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004357  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00435e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004364  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00436a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004370  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004376  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00437c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004382  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004388  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00438f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004395  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00439b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0043a1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0043a7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0043ad  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0043b3  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0043ba  62 f1 ff 48 7f 5a 32     vmovdqu16 [rdx+0xc80],zmm3
0043c1  62 e1 ff 48 6f 6f 33     vmovdqu16 zmm21,[rdi+0xcc0]
0043c8  62 e1 ff 48 6f 66 33     vmovdqu16 zmm20,[rsi+0xcc0]
0043cf  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0043d5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0043dc  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0043e2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0043e9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0043ef  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0043f5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0043fb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004401  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004407  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00440e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004414  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00441a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004420  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004426  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00442c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004432  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004438  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00443f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004445  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00444b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004451  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004457  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00445d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004463  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00446a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004470  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004477  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00447e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004484  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00448b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004491  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004497  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00449d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0044a3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0044a9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0044b0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0044b6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0044bc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0044c2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0044c8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0044ce  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0044d4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0044da  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0044e1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0044e7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0044ed  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0044f3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0044f9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0044ff  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004505  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00450c  62 f1 ff 48 7f 5a 33     vmovdqu16 [rdx+0xcc0],zmm3
004513  62 e1 ff 48 6f 6f 34     vmovdqu16 zmm21,[rdi+0xd00]
00451a  62 e1 ff 48 6f 66 34     vmovdqu16 zmm20,[rsi+0xd00]
004521  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004527  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00452e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004534  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00453b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004541  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004547  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00454d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004553  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004559  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004560  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004566  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00456c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004572  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004578  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00457e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004584  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00458a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004591  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004597  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00459d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0045a3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0045a9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0045af  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0045b5  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0045bc  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0045c2  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0045c9  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0045d0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0045d6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0045dd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0045e3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0045e9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0045ef  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0045f5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0045fb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004602  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004608  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00460e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004614  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00461a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004620  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004626  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00462c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004633  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004639  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00463f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004645  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00464b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004651  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004657  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00465e  62 f1 ff 48 7f 5a 34     vmovdqu16 [rdx+0xd00],zmm3
004665  62 e1 ff 48 6f 6f 35     vmovdqu16 zmm21,[rdi+0xd40]
00466c  62 e1 ff 48 6f 66 35     vmovdqu16 zmm20,[rsi+0xd40]
004673  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004679  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004680  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004686  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00468d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004693  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004699  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00469f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0046a5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0046ab  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0046b2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0046b8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0046be  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0046c4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0046ca  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0046d0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0046d6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0046dc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0046e3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0046e9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0046ef  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0046f5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0046fb  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004701  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004707  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00470e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004714  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00471b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004722  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004728  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00472f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004735  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00473b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004741  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004747  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00474d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004754  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00475a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004760  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004766  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00476c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004772  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004778  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00477e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004785  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00478b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004791  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004797  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00479d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0047a3  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0047a9  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0047b0  62 f1 ff 48 7f 5a 35     vmovdqu16 [rdx+0xd40],zmm3
0047b7  62 e1 ff 48 6f 6f 36     vmovdqu16 zmm21,[rdi+0xd80]
0047be  62 e1 ff 48 6f 66 36     vmovdqu16 zmm20,[rsi+0xd80]
0047c5  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0047cb  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0047d2  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0047d8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0047df  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0047e5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0047eb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0047f1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0047f7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0047fd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004804  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00480a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004810  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004816  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00481c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004822  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004828  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00482e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004835  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00483b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004841  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004847  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00484d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004853  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004859  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004860  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004866  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00486d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004874  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00487a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004881  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004887  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00488d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004893  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004899  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00489f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0048a6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0048ac  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0048b2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0048b8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0048be  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0048c4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0048ca  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0048d0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0048d7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0048dd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0048e3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0048e9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0048ef  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0048f5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0048fb  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004902  62 f1 ff 48 7f 5a 36     vmovdqu16 [rdx+0xd80],zmm3
004909  62 e1 ff 48 6f 6f 37     vmovdqu16 zmm21,[rdi+0xdc0]
004910  62 e1 ff 48 6f 66 37     vmovdqu16 zmm20,[rsi+0xdc0]
004917  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00491d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004924  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00492a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004931  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004937  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00493d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004943  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004949  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00494f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004956  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00495c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004962  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004968  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00496e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004974  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00497a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004980  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004987  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00498d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004993  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004999  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00499f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0049a5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0049ab  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0049b2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0049b8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0049bf  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0049c6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0049cc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0049d3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0049d9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0049df  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0049e5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0049eb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0049f1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0049f8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0049fe  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004a04  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004a0a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004a10  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004a16  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004a1c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004a22  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004a29  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004a2f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004a35  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004a3b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004a41  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004a47  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004a4d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004a54  62 f1 ff 48 7f 5a 37     vmovdqu16 [rdx+0xdc0],zmm3
004a5b  62 e1 ff 48 6f 6f 38     vmovdqu16 zmm21,[rdi+0xe00]
004a62  62 e1 ff 48 6f 66 38     vmovdqu16 zmm20,[rsi+0xe00]
004a69  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004a6f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004a76  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004a7c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004a83  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004a89  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004a8f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004a95  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004a9b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004aa1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004aa8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004aae  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004ab4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004aba  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004ac0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004ac6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004acc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004ad2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004ad9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004adf  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004ae5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004aeb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004af1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004af7  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004afd  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004b04  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004b0a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004b11  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004b18  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004b1e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004b25  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004b2b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004b31  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004b37  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004b3d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004b43  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004b4a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004b50  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004b56  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004b5c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004b62  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004b68  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004b6e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004b74  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004b7b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004b81  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004b87  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004b8d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004b93  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004b99  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004b9f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004ba6  62 f1 ff 48 7f 5a 38     vmovdqu16 [rdx+0xe00],zmm3
004bad  62 e1 ff 48 6f 6f 39     vmovdqu16 zmm21,[rdi+0xe40]
004bb4  62 e1 ff 48 6f 66 39     vmovdqu16 zmm20,[rsi+0xe40]
004bbb  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004bc1  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004bc8  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004bce  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004bd5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004bdb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004be1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004be7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004bed  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004bf3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004bfa  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004c00  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004c06  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004c0c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004c12  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004c18  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004c1e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004c24  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004c2b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004c31  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004c37  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004c3d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004c43  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004c49  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004c4f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004c56  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004c5c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004c63  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004c6a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004c70  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004c77  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004c7d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004c83  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004c89  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004c8f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004c95  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004c9c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004ca2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004ca8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004cae  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004cb4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004cba  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004cc0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004cc6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004ccd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004cd3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004cd9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004cdf  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004ce5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004ceb  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004cf1  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004cf8  62 f1 ff 48 7f 5a 39     vmovdqu16 [rdx+0xe40],zmm3
004cff  62 e1 ff 48 6f 6f 3a     vmovdqu16 zmm21,[rdi+0xe80]
004d06  62 e1 ff 48 6f 66 3a     vmovdqu16 zmm20,[rsi+0xe80]
004d0d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004d13  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004d1a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004d20  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004d27  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004d2d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004d33  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004d39  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004d3f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004d45  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004d4c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004d52  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004d58  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004d5e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004d64  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004d6a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004d70  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004d76  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004d7d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004d83  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004d89  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004d8f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004d95  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004d9b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004da1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004da8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004dae  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004db5  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004dbc  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004dc2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004dc9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004dcf  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004dd5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004ddb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004de1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004de7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004dee  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004df4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004dfa  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004e00  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004e06  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004e0c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004e12  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004e18  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004e1f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004e25  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004e2b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004e31  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004e37  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004e3d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004e43  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004e4a  62 f1 ff 48 7f 5a 3a     vmovdqu16 [rdx+0xe80],zmm3
004e51  62 e1 ff 48 6f 6f 3b     vmovdqu16 zmm21,[rdi+0xec0]
004e58  62 e1 ff 48 6f 66 3b     vmovdqu16 zmm20,[rsi+0xec0]
004e5f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004e65  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004e6c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004e72  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004e79  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004e7f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004e85  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004e8b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004e91  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004e97  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004e9e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004ea4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004eaa  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004eb0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004eb6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004ebc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004ec2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004ec8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004ecf  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004ed5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004edb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004ee1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004ee7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004eed  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004ef3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004efa  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004f00  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004f07  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004f0e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004f14  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004f1b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004f21  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004f27  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004f2d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004f33  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004f39  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004f40  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004f46  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004f4c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004f52  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004f58  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004f5e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004f64  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004f6a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004f71  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004f77  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004f7d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004f83  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004f89  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
004f8f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004f95  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004f9c  62 f1 ff 48 7f 5a 3b     vmovdqu16 [rdx+0xec0],zmm3
004fa3  62 e1 ff 48 6f 6f 3c     vmovdqu16 zmm21,[rdi+0xf00]
004faa  62 e1 ff 48 6f 66 3c     vmovdqu16 zmm20,[rsi+0xf00]
004fb1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004fb7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004fbe  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004fc4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004fcb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004fd1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
004fd7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004fdd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004fe3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004fe9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004ff0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004ff6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004ffc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005002  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005008  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00500e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005014  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00501a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005021  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005027  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00502d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005033  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005039  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00503f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005045  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00504c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
005052  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005059  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
005060  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
005066  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00506d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005073  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005079  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00507f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005085  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00508b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005092  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005098  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00509e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0050a4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0050aa  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0050b0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0050b6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0050bc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0050c3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0050c9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0050cf  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0050d5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0050db  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0050e1  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0050e7  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0050ee  62 f1 ff 48 7f 5a 3c     vmovdqu16 [rdx+0xf00],zmm3
0050f5  62 e1 ff 48 6f 6f 3d     vmovdqu16 zmm21,[rdi+0xf40]
0050fc  62 e1 ff 48 6f 66 3d     vmovdqu16 zmm20,[rsi+0xf40]
005103  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
005109  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005110  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
005116  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00511d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005123  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005129  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00512f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005135  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00513b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005142  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005148  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00514e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005154  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00515a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005160  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005166  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00516c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005173  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005179  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00517f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005185  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00518b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005191  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005197  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00519e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0051a4  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0051ab  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0051b2  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0051b8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0051bf  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0051c5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0051cb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0051d1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0051d7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0051dd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0051e4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0051ea  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0051f0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0051f6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0051fc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005202  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005208  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00520e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005215  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00521b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005221  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005227  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00522d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005233  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
005239  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005240  62 f1 ff 48 7f 5a 3d     vmovdqu16 [rdx+0xf40],zmm3
005247  62 e1 ff 48 6f 6f 3e     vmovdqu16 zmm21,[rdi+0xf80]
00524e  62 e1 ff 48 6f 66 3e     vmovdqu16 zmm20,[rsi+0xf80]
005255  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00525b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005262  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
005268  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00526f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005275  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00527b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005281  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005287  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00528d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005294  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00529a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0052a0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0052a6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0052ac  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0052b2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0052b8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0052be  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0052c5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0052cb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0052d1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0052d7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0052dd  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0052e3  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0052e9  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0052f0  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0052f6  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0052fd  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
005304  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00530a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005311  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005317  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00531d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005323  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005329  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00532f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005336  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00533c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005342  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005348  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00534e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005354  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00535a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005360  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005367  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00536d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005373  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005379  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00537f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005385  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00538b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005392  62 f1 ff 48 7f 5a 3e     vmovdqu16 [rdx+0xf80],zmm3
005399  62 e1 ff 48 6f 6f 3f     vmovdqu16 zmm21,[rdi+0xfc0]
0053a0  62 e1 ff 48 6f 66 3f     vmovdqu16 zmm20,[rsi+0xfc0]
0053a7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0053ad  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0053b4  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0053ba  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0053c1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0053c7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0053cd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0053d3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0053d9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0053df  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0053e6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0053ec  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0053f2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0053f8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0053fe  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005404  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00540a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005410  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005417  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00541d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005423  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005429  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00542f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005435  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00543b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005442  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
005448  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00544f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
005456  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00545c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005463  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005469  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00546f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005475  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00547b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005481  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005488  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00548e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005494  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00549a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0054a0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0054a6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0054ac  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0054b2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0054b9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0054bf  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0054c5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0054cb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0054d1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0054d7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0054dd  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0054e4  62 f1 ff 48 7f 5a 3f     vmovdqu16 [rdx+0xfc0],zmm3
0054eb  62 e1 ff 48 6f 6f 40     vmovdqu16 zmm21,[rdi+0x1000]
0054f2  62 e1 ff 48 6f 66 40     vmovdqu16 zmm20,[rsi+0x1000]
0054f9  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0054ff  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005506  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00550c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005513  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005519  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00551f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005525  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00552b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005531  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005538  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00553e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005544  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00554a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005550  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005556  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00555c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005562  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005569  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00556f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005575  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00557b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005581  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005587  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00558d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005594  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00559a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0055a1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0055a8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0055ae  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0055b5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0055bb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0055c1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0055c7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0055cd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0055d3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0055da  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0055e0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0055e6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0055ec  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0055f2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0055f8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0055fe  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005604  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00560b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005611  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005617  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00561d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005623  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005629  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00562f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005636  62 f1 ff 48 7f 5a 40     vmovdqu16 [rdx+0x1000],zmm3
00563d  62 e1 ff 48 6f 6f 41     vmovdqu16 zmm21,[rdi+0x1040]
005644  62 e1 ff 48 6f 66 41     vmovdqu16 zmm20,[rsi+0x1040]
00564b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
005651  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005658  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00565e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005665  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00566b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005671  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005677  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00567d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005683  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00568a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005690  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005696  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00569c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0056a2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0056a8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0056ae  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0056b4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0056bb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0056c1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0056c7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0056cd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0056d3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0056d9  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0056df  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0056e6  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0056ec  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0056f3  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0056fa  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
005700  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005707  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00570d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005713  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005719  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00571f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005725  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00572c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005732  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005738  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00573e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005744  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00574a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005750  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005756  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00575d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005763  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005769  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00576f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005775  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00577b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
005781  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005788  62 f1 ff 48 7f 5a 41     vmovdqu16 [rdx+0x1040],zmm3
00578f  62 e1 ff 48 6f 6f 42     vmovdqu16 zmm21,[rdi+0x1080]
005796  62 e1 ff 48 6f 66 42     vmovdqu16 zmm20,[rsi+0x1080]
00579d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0057a3  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0057aa  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0057b0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0057b7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0057bd  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0057c3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0057c9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0057cf  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0057d5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0057dc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0057e2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0057e8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0057ee  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0057f4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0057fa  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005800  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005806  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00580d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005813  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005819  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00581f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005825  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00582b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005831  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005838  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00583e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005845  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00584c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
005852  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005859  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00585f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005865  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00586b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005871  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005877  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00587e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005884  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00588a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005890  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005896  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00589c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0058a2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0058a8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0058af  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0058b5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0058bb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0058c1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0058c7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0058cd  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0058d3  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0058da  62 f1 ff 48 7f 5a 42     vmovdqu16 [rdx+0x1080],zmm3
0058e1  62 e1 ff 48 6f 6f 43     vmovdqu16 zmm21,[rdi+0x10c0]
0058e8  62 e1 ff 48 6f 66 43     vmovdqu16 zmm20,[rsi+0x10c0]
0058ef  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0058f5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0058fc  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
005902  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005909  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00590f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005915  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00591b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005921  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005927  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00592e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005934  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00593a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005940  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005946  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00594c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005952  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005958  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00595f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005965  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00596b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005971  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005977  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00597d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005983  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00598a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
005990  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005997  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00599e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0059a4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0059ab  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0059b1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0059b7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0059bd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0059c3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0059c9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0059d0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0059d6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0059dc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0059e2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0059e8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0059ee  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0059f4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0059fa  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005a01  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005a07  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005a0d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005a13  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005a19  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005a1f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
005a25  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005a2c  62 f1 ff 48 7f 5a 43     vmovdqu16 [rdx+0x10c0],zmm3
005a33  62 e1 ff 48 6f 6f 44     vmovdqu16 zmm21,[rdi+0x1100]
005a3a  62 e1 ff 48 6f 66 44     vmovdqu16 zmm20,[rsi+0x1100]
005a41  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
005a47  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005a4e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
005a54  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005a5b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005a61  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005a67  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005a6d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005a73  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005a79  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005a80  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005a86  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005a8c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005a92  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005a98  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005a9e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005aa4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005aaa  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005ab1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005ab7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005abd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005ac3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005ac9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005acf  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005ad5  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005adc  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
005ae2  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005ae9  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
005af0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
005af6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005afd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005b03  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005b09  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005b0f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005b15  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005b1b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005b22  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005b28  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005b2e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005b34  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005b3a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005b40  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005b46  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005b4c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005b53  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005b59  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005b5f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005b65  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005b6b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005b71  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
005b77  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005b7e  62 f1 ff 48 7f 5a 44     vmovdqu16 [rdx+0x1100],zmm3
005b85  62 e1 ff 48 6f 6f 45     vmovdqu16 zmm21,[rdi+0x1140]
005b8c  62 e1 ff 48 6f 66 45     vmovdqu16 zmm20,[rsi+0x1140]
005b93  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
005b99  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005ba0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
005ba6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005bad  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005bb3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005bb9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005bbf  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005bc5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005bcb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005bd2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005bd8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005bde  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005be4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005bea  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005bf0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005bf6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005bfc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005c03  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005c09  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005c0f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005c15  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005c1b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005c21  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005c27  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005c2e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
005c34  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005c3b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
005c42  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
005c48  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005c4f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005c55  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005c5b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005c61  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005c67  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005c6d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005c74  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005c7a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005c80  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005c86  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005c8c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005c92  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005c98  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005c9e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005ca5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005cab  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005cb1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005cb7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005cbd  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005cc3  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
005cc9  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005cd0  62 f1 ff 48 7f 5a 45     vmovdqu16 [rdx+0x1140],zmm3
005cd7  62 e1 ff 48 6f 6f 46     vmovdqu16 zmm21,[rdi+0x1180]
005cde  62 e1 ff 48 6f 66 46     vmovdqu16 zmm20,[rsi+0x1180]
005ce5  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
005ceb  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005cf2  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
005cf8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005cff  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005d05  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005d0b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005d11  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005d17  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005d1d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005d24  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005d2a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005d30  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005d36  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005d3c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005d42  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005d48  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005d4e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005d55  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005d5b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005d61  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005d67  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005d6d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005d73  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005d79  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005d80  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
005d86  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005d8d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
005d94  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
005d9a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005da1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005da7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005dad  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005db3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005db9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005dbf  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005dc6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005dcc  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005dd2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005dd8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005dde  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005de4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005dea  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005df0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005df7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005dfd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005e03  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005e09  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005e0f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005e15  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
005e1b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005e22  62 f1 ff 48 7f 5a 46     vmovdqu16 [rdx+0x1180],zmm3
005e29  62 e1 ff 48 6f 6f 47     vmovdqu16 zmm21,[rdi+0x11c0]
005e30  62 e1 ff 48 6f 66 47     vmovdqu16 zmm20,[rsi+0x11c0]
005e37  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
005e3d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005e44  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
005e4a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005e51  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005e57  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005e5d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005e63  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005e69  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005e6f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005e76  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005e7c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005e82  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005e88  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005e8e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005e94  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005e9a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005ea0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005ea7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005ead  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005eb3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005eb9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005ebf  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005ec5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005ecb  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005ed2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
005ed8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005edf  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
005ee6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
005eec  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005ef3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005ef9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005eff  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005f05  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005f0b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005f11  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005f18  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005f1e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005f24  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005f2a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005f30  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005f36  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005f3c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005f42  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005f49  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005f4f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005f55  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005f5b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005f61  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
005f67  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
005f6d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
005f74  62 f1 ff 48 7f 5a 47     vmovdqu16 [rdx+0x11c0],zmm3
005f7b  62 e1 ff 48 6f 6f 48     vmovdqu16 zmm21,[rdi+0x1200]
005f82  62 e1 ff 48 6f 66 48     vmovdqu16 zmm20,[rsi+0x1200]
005f89  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
005f8f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005f96  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
005f9c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005fa3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005fa9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
005faf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005fb5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005fbb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005fc1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005fc8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005fce  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005fd4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005fda  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005fe0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005fe6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005fec  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005ff2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005ff9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005fff  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006005  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00600b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006011  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006017  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00601d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006024  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00602a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006031  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
006038  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00603e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006045  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00604b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006051  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006057  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00605d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006063  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00606a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006070  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006076  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00607c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006082  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006088  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00608e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006094  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00609b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0060a1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0060a7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0060ad  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0060b3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0060b9  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0060bf  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0060c6  62 f1 ff 48 7f 5a 48     vmovdqu16 [rdx+0x1200],zmm3
0060cd  62 e1 ff 48 6f 6f 49     vmovdqu16 zmm21,[rdi+0x1240]
0060d4  62 e1 ff 48 6f 66 49     vmovdqu16 zmm20,[rsi+0x1240]
0060db  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0060e1  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0060e8  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0060ee  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0060f5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0060fb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006101  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006107  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00610d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006113  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00611a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006120  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006126  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00612c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006132  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006138  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00613e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006144  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00614b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006151  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006157  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00615d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006163  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006169  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00616f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006176  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00617c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006183  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00618a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
006190  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006197  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00619d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0061a3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0061a9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0061af  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0061b5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0061bc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0061c2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0061c8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0061ce  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0061d4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0061da  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0061e0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0061e6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0061ed  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0061f3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0061f9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0061ff  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006205  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00620b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
006211  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
006218  62 f1 ff 48 7f 5a 49     vmovdqu16 [rdx+0x1240],zmm3
00621f  62 e1 ff 48 6f 6f 4a     vmovdqu16 zmm21,[rdi+0x1280]
006226  62 e1 ff 48 6f 66 4a     vmovdqu16 zmm20,[rsi+0x1280]
00622d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
006233  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00623a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006240  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006247  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00624d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006253  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006259  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00625f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006265  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00626c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006272  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006278  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00627e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006284  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00628a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006290  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006296  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00629d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0062a3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0062a9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0062af  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0062b5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0062bb  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0062c1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0062c8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0062ce  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0062d5  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0062dc  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0062e2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0062e9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0062ef  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0062f5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0062fb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006301  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006307  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00630e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006314  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00631a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006320  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006326  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00632c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006332  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006338  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00633f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006345  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00634b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006351  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006357  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00635d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
006363  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00636a  62 f1 ff 48 7f 5a 4a     vmovdqu16 [rdx+0x1280],zmm3
006371  62 e1 ff 48 6f 6f 4b     vmovdqu16 zmm21,[rdi+0x12c0]
006378  62 e1 ff 48 6f 66 4b     vmovdqu16 zmm20,[rsi+0x12c0]
00637f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
006385  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00638c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006392  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006399  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00639f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0063a5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0063ab  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0063b1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0063b7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0063be  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0063c4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0063ca  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0063d0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0063d6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0063dc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0063e2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0063e8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0063ef  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0063f5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0063fb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006401  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006407  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00640d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
006413  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00641a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
006420  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006427  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00642e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
006434  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00643b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006441  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006447  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00644d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006453  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006459  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006460  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006466  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00646c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006472  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006478  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00647e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006484  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00648a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006491  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006497  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00649d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0064a3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0064a9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0064af  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0064b5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0064bc  62 f1 ff 48 7f 5a 4b     vmovdqu16 [rdx+0x12c0],zmm3
0064c3  62 e1 ff 48 6f 6f 4c     vmovdqu16 zmm21,[rdi+0x1300]
0064ca  62 e1 ff 48 6f 66 4c     vmovdqu16 zmm20,[rsi+0x1300]
0064d1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0064d7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0064de  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0064e4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0064eb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0064f1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0064f7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0064fd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006503  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006509  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006510  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006516  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00651c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006522  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006528  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00652e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006534  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00653a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006541  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006547  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00654d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006553  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006559  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00655f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
006565  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00656c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
006572  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006579  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
006580  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
006586  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00658d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006593  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006599  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00659f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0065a5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0065ab  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0065b2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0065b8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0065be  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0065c4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0065ca  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0065d0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0065d6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0065dc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0065e3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0065e9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0065ef  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0065f5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0065fb  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006601  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
006607  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00660e  62 f1 ff 48 7f 5a 4c     vmovdqu16 [rdx+0x1300],zmm3
006615  62 e1 ff 48 6f 6f 4d     vmovdqu16 zmm21,[rdi+0x1340]
00661c  62 e1 ff 48 6f 66 4d     vmovdqu16 zmm20,[rsi+0x1340]
006623  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
006629  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006630  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006636  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00663d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006643  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006649  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00664f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006655  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00665b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006662  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006668  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00666e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006674  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00667a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006680  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006686  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00668c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006693  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006699  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00669f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0066a5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0066ab  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0066b1  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0066b7  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0066be  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0066c4  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0066cb  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0066d2  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0066d8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0066df  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0066e5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0066eb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0066f1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0066f7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0066fd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006704  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00670a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006710  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006716  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00671c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006722  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006728  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00672e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006735  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00673b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006741  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006747  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00674d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006753  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
006759  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
006760  62 f1 ff 48 7f 5a 4d     vmovdqu16 [rdx+0x1340],zmm3
006767  62 e1 ff 48 6f 6f 4e     vmovdqu16 zmm21,[rdi+0x1380]
00676e  62 e1 ff 48 6f 66 4e     vmovdqu16 zmm20,[rsi+0x1380]
006775  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00677b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006782  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006788  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00678f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006795  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00679b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0067a1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0067a7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0067ad  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0067b4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0067ba  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0067c0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0067c6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0067cc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0067d2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0067d8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0067de  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0067e5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0067eb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0067f1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0067f7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0067fd  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006803  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
006809  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006810  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
006816  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00681d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
006824  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00682a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006831  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006837  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00683d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006843  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006849  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00684f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006856  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00685c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006862  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006868  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00686e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006874  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00687a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006880  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006887  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00688d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006893  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006899  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00689f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0068a5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0068ab  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0068b2  62 f1 ff 48 7f 5a 4e     vmovdqu16 [rdx+0x1380],zmm3
0068b9  62 e1 ff 48 6f 6f 4f     vmovdqu16 zmm21,[rdi+0x13c0]
0068c0  62 e1 ff 48 6f 66 4f     vmovdqu16 zmm20,[rsi+0x13c0]
0068c7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0068cd  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0068d4  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0068da  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0068e1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0068e7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0068ed  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0068f3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0068f9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0068ff  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006906  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00690c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006912  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006918  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00691e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006924  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00692a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006930  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006937  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00693d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006943  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006949  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00694f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006955  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00695b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006962  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
006968  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00696f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
006976  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00697c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006983  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006989  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00698f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006995  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00699b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0069a1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0069a8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0069ae  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0069b4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0069ba  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0069c0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0069c6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0069cc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0069d2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0069d9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0069df  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0069e5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0069eb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0069f1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0069f7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0069fd  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
006a04  62 f1 ff 48 7f 5a 4f     vmovdqu16 [rdx+0x13c0],zmm3
006a0b  62 e1 ff 48 6f 6f 50     vmovdqu16 zmm21,[rdi+0x1400]
006a12  62 e1 ff 48 6f 66 50     vmovdqu16 zmm20,[rsi+0x1400]
006a19  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
006a1f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006a26  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006a2c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006a33  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006a39  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006a3f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006a45  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006a4b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006a51  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006a58  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006a5e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006a64  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006a6a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006a70  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006a76  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006a7c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006a82  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006a89  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006a8f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006a95  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006a9b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006aa1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006aa7  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
006aad  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006ab4  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
006aba  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006ac1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
006ac8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
006ace  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006ad5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006adb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006ae1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006ae7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006aed  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006af3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006afa  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006b00  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006b06  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006b0c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006b12  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006b18  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006b1e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006b24  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006b2b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006b31  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006b37  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006b3d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006b43  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006b49  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
006b4f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
006b56  62 f1 ff 48 7f 5a 50     vmovdqu16 [rdx+0x1400],zmm3
006b5d  62 e1 ff 48 6f 6f 51     vmovdqu16 zmm21,[rdi+0x1440]
006b64  62 e1 ff 48 6f 66 51     vmovdqu16 zmm20,[rsi+0x1440]
006b6b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
006b71  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006b78  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006b7e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006b85  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006b8b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006b91  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006b97  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006b9d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006ba3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006baa  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006bb0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006bb6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006bbc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006bc2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006bc8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006bce  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006bd4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006bdb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006be1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006be7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006bed  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006bf3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006bf9  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
006bff  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006c06  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
006c0c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006c13  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
006c1a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
006c20  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006c27  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006c2d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006c33  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006c39  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006c3f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006c45  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006c4c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006c52  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006c58  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006c5e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006c64  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006c6a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006c70  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006c76  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006c7d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006c83  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006c89  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006c8f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006c95  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006c9b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
006ca1  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
006ca8  62 f1 ff 48 7f 5a 51     vmovdqu16 [rdx+0x1440],zmm3
006caf  62 e1 ff 48 6f 6f 52     vmovdqu16 zmm21,[rdi+0x1480]
006cb6  62 e1 ff 48 6f 66 52     vmovdqu16 zmm20,[rsi+0x1480]
006cbd  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
006cc3  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006cca  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006cd0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006cd7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006cdd  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006ce3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006ce9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006cef  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006cf5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006cfc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006d02  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006d08  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006d0e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006d14  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006d1a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006d20  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006d26  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006d2d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006d33  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006d39  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006d3f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006d45  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006d4b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
006d51  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006d58  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
006d5e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006d65  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
006d6c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
006d72  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006d79  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006d7f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006d85  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006d8b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006d91  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006d97  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006d9e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006da4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006daa  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006db0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006db6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006dbc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006dc2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006dc8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006dcf  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006dd5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006ddb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006de1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006de7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006ded  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
006df3  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
006dfa  62 f1 ff 48 7f 5a 52     vmovdqu16 [rdx+0x1480],zmm3
006e01  62 e1 ff 48 6f 6f 53     vmovdqu16 zmm21,[rdi+0x14c0]
006e08  62 e1 ff 48 6f 66 53     vmovdqu16 zmm20,[rsi+0x14c0]
006e0f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
006e15  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006e1c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006e22  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006e29  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006e2f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006e35  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006e3b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006e41  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006e47  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006e4e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006e54  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006e5a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006e60  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006e66  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006e6c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006e72  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006e78  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006e7f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006e85  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006e8b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006e91  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006e97  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006e9d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
006ea3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006eaa  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
006eb0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006eb7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
006ebe  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
006ec4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006ecb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006ed1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006ed7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006edd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006ee3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006ee9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006ef0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006ef6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006efc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006f02  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006f08  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006f0e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006f14  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006f1a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006f21  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006f27  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006f2d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006f33  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006f39  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006f3f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
006f45  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
006f4c  62 f1 ff 48 7f 5a 53     vmovdqu16 [rdx+0x14c0],zmm3
006f53  62 e1 ff 48 6f 6f 54     vmovdqu16 zmm21,[rdi+0x1500]
006f5a  62 e1 ff 48 6f 66 54     vmovdqu16 zmm20,[rsi+0x1500]
006f61  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
006f67  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
006f6e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
006f74  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
006f7b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
006f81  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
006f87  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
006f8d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
006f93  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
006f99  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
006fa0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
006fa6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
006fac  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
006fb2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
006fb8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
006fbe  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
006fc4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
006fca  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
006fd1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
006fd7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
006fdd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
006fe3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
006fe9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
006fef  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
006ff5  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
006ffc  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
007002  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007009  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007010  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007016  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00701d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007023  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007029  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00702f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007035  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00703b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007042  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007048  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00704e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007054  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00705a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007060  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007066  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00706c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007073  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007079  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00707f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007085  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00708b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007091  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
007097  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00709e  62 f1 ff 48 7f 5a 54     vmovdqu16 [rdx+0x1500],zmm3
0070a5  62 e1 ff 48 6f 6f 55     vmovdqu16 zmm21,[rdi+0x1540]
0070ac  62 e1 ff 48 6f 66 55     vmovdqu16 zmm20,[rsi+0x1540]
0070b3  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0070b9  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0070c0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0070c6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0070cd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0070d3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0070d9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0070df  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0070e5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0070eb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0070f2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0070f8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0070fe  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007104  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00710a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007110  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007116  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00711c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007123  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007129  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00712f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007135  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00713b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007141  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
007147  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00714e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
007154  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00715b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007162  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007168  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00716f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007175  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00717b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007181  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007187  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00718d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007194  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00719a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0071a0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0071a6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0071ac  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0071b2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0071b8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0071be  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0071c5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0071cb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0071d1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0071d7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0071dd  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0071e3  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0071e9  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0071f0  62 f1 ff 48 7f 5a 55     vmovdqu16 [rdx+0x1540],zmm3
0071f7  62 e1 ff 48 6f 6f 56     vmovdqu16 zmm21,[rdi+0x1580]
0071fe  62 e1 ff 48 6f 66 56     vmovdqu16 zmm20,[rsi+0x1580]
007205  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00720b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007212  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
007218  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00721f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007225  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00722b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007231  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007237  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00723d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007244  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00724a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007250  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007256  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00725c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007262  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007268  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00726e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007275  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00727b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007281  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007287  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00728d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007293  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
007299  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0072a0  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0072a6  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0072ad  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0072b4  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0072ba  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0072c1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0072c7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0072cd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0072d3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0072d9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0072df  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0072e6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0072ec  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0072f2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0072f8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0072fe  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007304  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00730a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007310  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007317  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00731d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007323  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007329  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00732f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007335  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00733b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
007342  62 f1 ff 48 7f 5a 56     vmovdqu16 [rdx+0x1580],zmm3
007349  62 e1 ff 48 6f 6f 57     vmovdqu16 zmm21,[rdi+0x15c0]
007350  62 e1 ff 48 6f 66 57     vmovdqu16 zmm20,[rsi+0x15c0]
007357  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00735d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007364  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00736a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007371  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007377  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00737d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007383  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007389  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00738f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007396  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00739c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0073a2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0073a8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0073ae  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0073b4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0073ba  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0073c0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0073c7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0073cd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0073d3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0073d9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0073df  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0073e5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0073eb  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0073f2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0073f8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0073ff  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007406  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00740c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007413  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007419  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00741f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007425  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00742b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007431  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007438  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00743e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007444  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00744a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007450  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007456  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00745c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007462  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007469  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00746f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007475  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00747b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007481  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007487  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00748d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
007494  62 f1 ff 48 7f 5a 57     vmovdqu16 [rdx+0x15c0],zmm3
00749b  62 e1 ff 48 6f 6f 58     vmovdqu16 zmm21,[rdi+0x1600]
0074a2  62 e1 ff 48 6f 66 58     vmovdqu16 zmm20,[rsi+0x1600]
0074a9  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0074af  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0074b6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0074bc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0074c3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0074c9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0074cf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0074d5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0074db  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0074e1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0074e8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0074ee  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0074f4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0074fa  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007500  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007506  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00750c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007512  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007519  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00751f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007525  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00752b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007531  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007537  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00753d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
007544  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00754a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007551  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007558  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00755e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007565  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00756b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007571  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007577  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00757d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007583  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00758a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007590  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007596  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00759c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0075a2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0075a8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0075ae  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0075b4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0075bb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0075c1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0075c7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0075cd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0075d3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0075d9  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0075df  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0075e6  62 f1 ff 48 7f 5a 58     vmovdqu16 [rdx+0x1600],zmm3
0075ed  62 e1 ff 48 6f 6f 59     vmovdqu16 zmm21,[rdi+0x1640]
0075f4  62 e1 ff 48 6f 66 59     vmovdqu16 zmm20,[rsi+0x1640]
0075fb  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
007601  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007608  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00760e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007615  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00761b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007621  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007627  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00762d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007633  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00763a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007640  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007646  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00764c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007652  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007658  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00765e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007664  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00766b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007671  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007677  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00767d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007683  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007689  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00768f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
007696  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00769c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0076a3  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0076aa  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0076b0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0076b7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0076bd  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0076c3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0076c9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0076cf  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0076d5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0076dc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0076e2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0076e8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0076ee  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0076f4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0076fa  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007700  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007706  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00770d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007713  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007719  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00771f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007725  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00772b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
007731  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
007738  62 f1 ff 48 7f 5a 59     vmovdqu16 [rdx+0x1640],zmm3
00773f  62 e1 ff 48 6f 6f 5a     vmovdqu16 zmm21,[rdi+0x1680]
007746  62 e1 ff 48 6f 66 5a     vmovdqu16 zmm20,[rsi+0x1680]
00774d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
007753  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00775a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
007760  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007767  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00776d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007773  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007779  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00777f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007785  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00778c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007792  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007798  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00779e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0077a4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0077aa  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0077b0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0077b6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0077bd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0077c3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0077c9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0077cf  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0077d5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0077db  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0077e1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0077e8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0077ee  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0077f5  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0077fc  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007802  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007809  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00780f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007815  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00781b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007821  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007827  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00782e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007834  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00783a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007840  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007846  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00784c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007852  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007858  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00785f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007865  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00786b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007871  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007877  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00787d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
007883  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00788a  62 f1 ff 48 7f 5a 5a     vmovdqu16 [rdx+0x1680],zmm3
007891  62 e1 ff 48 6f 6f 5b     vmovdqu16 zmm21,[rdi+0x16c0]
007898  62 e1 ff 48 6f 66 5b     vmovdqu16 zmm20,[rsi+0x16c0]
00789f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0078a5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0078ac  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0078b2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0078b9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0078bf  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0078c5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0078cb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0078d1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0078d7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0078de  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0078e4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0078ea  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0078f0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0078f6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0078fc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007902  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007908  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00790f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007915  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00791b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007921  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007927  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00792d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
007933  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00793a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
007940  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007947  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00794e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007954  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00795b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007961  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007967  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00796d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007973  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007979  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007980  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007986  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00798c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007992  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007998  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00799e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0079a4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0079aa  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0079b1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0079b7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0079bd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0079c3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0079c9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0079cf  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0079d5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0079dc  62 f1 ff 48 7f 5a 5b     vmovdqu16 [rdx+0x16c0],zmm3
0079e3  62 e1 ff 48 6f 6f 5c     vmovdqu16 zmm21,[rdi+0x1700]
0079ea  62 e1 ff 48 6f 66 5c     vmovdqu16 zmm20,[rsi+0x1700]
0079f1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0079f7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0079fe  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
007a04  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007a0b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007a11  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007a17  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007a1d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007a23  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007a29  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007a30  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007a36  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007a3c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007a42  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007a48  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007a4e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007a54  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007a5a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007a61  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007a67  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007a6d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007a73  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007a79  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007a7f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
007a85  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
007a8c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
007a92  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007a99  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007aa0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007aa6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007aad  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007ab3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007ab9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007abf  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007ac5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007acb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007ad2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007ad8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007ade  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007ae4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007aea  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007af0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007af6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007afc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007b03  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007b09  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007b0f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007b15  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007b1b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007b21  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
007b27  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
007b2e  62 f1 ff 48 7f 5a 5c     vmovdqu16 [rdx+0x1700],zmm3
007b35  62 e1 ff 48 6f 6f 5d     vmovdqu16 zmm21,[rdi+0x1740]
007b3c  62 e1 ff 48 6f 66 5d     vmovdqu16 zmm20,[rsi+0x1740]
007b43  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
007b49  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007b50  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
007b56  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007b5d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007b63  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007b69  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007b6f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007b75  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007b7b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007b82  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007b88  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007b8e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007b94  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007b9a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007ba0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007ba6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007bac  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007bb3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007bb9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007bbf  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007bc5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007bcb  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007bd1  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
007bd7  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
007bde  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
007be4  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007beb  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007bf2  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007bf8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007bff  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007c05  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007c0b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007c11  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007c17  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007c1d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007c24  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007c2a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007c30  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007c36  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007c3c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007c42  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007c48  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007c4e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007c55  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007c5b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007c61  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007c67  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007c6d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007c73  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
007c79  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
007c80  62 f1 ff 48 7f 5a 5d     vmovdqu16 [rdx+0x1740],zmm3
007c87  62 e1 ff 48 6f 6f 5e     vmovdqu16 zmm21,[rdi+0x1780]
007c8e  62 e1 ff 48 6f 66 5e     vmovdqu16 zmm20,[rsi+0x1780]
007c95  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
007c9b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007ca2  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
007ca8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007caf  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007cb5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007cbb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007cc1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007cc7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007ccd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007cd4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007cda  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007ce0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007ce6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007cec  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007cf2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007cf8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007cfe  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007d05  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007d0b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007d11  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007d17  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007d1d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007d23  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
007d29  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
007d30  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
007d36  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007d3d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007d44  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007d4a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007d51  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007d57  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007d5d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007d63  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007d69  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007d6f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007d76  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007d7c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007d82  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007d88  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007d8e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007d94  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007d9a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007da0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007da7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007dad  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007db3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007db9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007dbf  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007dc5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
007dcb  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
007dd2  62 f1 ff 48 7f 5a 5e     vmovdqu16 [rdx+0x1780],zmm3
007dd9  62 e1 ff 48 6f 6f 5f     vmovdqu16 zmm21,[rdi+0x17c0]
007de0  62 e1 ff 48 6f 66 5f     vmovdqu16 zmm20,[rsi+0x17c0]
007de7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
007ded  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007df4  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
007dfa  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007e01  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007e07  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007e0d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007e13  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007e19  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007e1f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007e26  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007e2c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007e32  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007e38  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007e3e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007e44  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007e4a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007e50  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007e57  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007e5d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007e63  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007e69  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007e6f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007e75  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
007e7b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
007e82  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
007e88  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007e8f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007e96  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007e9c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007ea3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007ea9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007eaf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007eb5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007ebb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007ec1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007ec8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007ece  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007ed4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007eda  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007ee0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007ee6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007eec  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007ef2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007ef9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007eff  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007f05  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007f0b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007f11  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007f17  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
007f1d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
007f24  62 f1 ff 48 7f 5a 5f     vmovdqu16 [rdx+0x17c0],zmm3
007f2b  62 e1 ff 48 6f 6f 60     vmovdqu16 zmm21,[rdi+0x1800]
007f32  62 e1 ff 48 6f 66 60     vmovdqu16 zmm20,[rsi+0x1800]
007f39  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
007f3f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007f46  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
007f4c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007f53  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007f59  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
007f5f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
007f65  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
007f6b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
007f71  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
007f78  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
007f7e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
007f84  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
007f8a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
007f90  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
007f96  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
007f9c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
007fa2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
007fa9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
007faf  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
007fb5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
007fbb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
007fc1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
007fc7  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
007fcd  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
007fd4  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
007fda  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
007fe1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
007fe8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
007fee  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
007ff5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
007ffb  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008001  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008007  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00800d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008013  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00801a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008020  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008026  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00802c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008032  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008038  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00803e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008044  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00804b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008051  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008057  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00805d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008063  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008069  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00806f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
008076  62 f1 ff 48 7f 5a 60     vmovdqu16 [rdx+0x1800],zmm3
00807d  62 e1 ff 48 6f 6f 61     vmovdqu16 zmm21,[rdi+0x1840]
008084  62 e1 ff 48 6f 66 61     vmovdqu16 zmm20,[rsi+0x1840]
00808b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
008091  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008098  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00809e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0080a5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0080ab  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0080b1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0080b7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0080bd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0080c3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0080ca  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0080d0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0080d6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0080dc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0080e2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0080e8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0080ee  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0080f4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0080fb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008101  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008107  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00810d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008113  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008119  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00811f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
008126  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00812c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008133  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00813a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008140  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008147  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00814d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008153  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008159  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00815f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008165  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00816c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008172  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008178  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00817e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008184  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00818a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008190  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008196  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00819d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0081a3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0081a9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0081af  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0081b5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0081bb  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0081c1  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0081c8  62 f1 ff 48 7f 5a 61     vmovdqu16 [rdx+0x1840],zmm3
0081cf  62 e1 ff 48 6f 6f 62     vmovdqu16 zmm21,[rdi+0x1880]
0081d6  62 e1 ff 48 6f 66 62     vmovdqu16 zmm20,[rsi+0x1880]
0081dd  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0081e3  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0081ea  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0081f0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0081f7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0081fd  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008203  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008209  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00820f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008215  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00821c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008222  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008228  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00822e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008234  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00823a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008240  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008246  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00824d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008253  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008259  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00825f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008265  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00826b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
008271  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
008278  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00827e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008285  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00828c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008292  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008299  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00829f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0082a5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0082ab  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0082b1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0082b7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0082be  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0082c4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0082ca  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0082d0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0082d6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0082dc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0082e2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0082e8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0082ef  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0082f5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0082fb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008301  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008307  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00830d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
008313  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00831a  62 f1 ff 48 7f 5a 62     vmovdqu16 [rdx+0x1880],zmm3
008321  62 e1 ff 48 6f 6f 63     vmovdqu16 zmm21,[rdi+0x18c0]
008328  62 e1 ff 48 6f 66 63     vmovdqu16 zmm20,[rsi+0x18c0]
00832f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
008335  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00833c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
008342  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008349  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00834f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008355  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00835b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008361  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008367  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00836e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008374  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00837a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008380  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008386  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00838c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008392  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008398  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00839f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0083a5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0083ab  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0083b1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0083b7  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0083bd  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0083c3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0083ca  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0083d0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0083d7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0083de  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0083e4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0083eb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0083f1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0083f7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0083fd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008403  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008409  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008410  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008416  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00841c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008422  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008428  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00842e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008434  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00843a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008441  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008447  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00844d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008453  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008459  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00845f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
008465  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00846c  62 f1 ff 48 7f 5a 63     vmovdqu16 [rdx+0x18c0],zmm3
008473  62 e1 ff 48 6f 6f 64     vmovdqu16 zmm21,[rdi+0x1900]
00847a  62 e1 ff 48 6f 66 64     vmovdqu16 zmm20,[rsi+0x1900]
008481  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
008487  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00848e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
008494  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00849b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0084a1  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0084a7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0084ad  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0084b3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0084b9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0084c0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0084c6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0084cc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0084d2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0084d8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0084de  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0084e4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0084ea  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0084f1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0084f7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0084fd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008503  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008509  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
00850f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
008515  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00851c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
008522  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008529  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
008530  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008536  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00853d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008543  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008549  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00854f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008555  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00855b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008562  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008568  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00856e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008574  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00857a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008580  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008586  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00858c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008593  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008599  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00859f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0085a5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0085ab  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0085b1  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0085b7  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0085be  62 f1 ff 48 7f 5a 64     vmovdqu16 [rdx+0x1900],zmm3
0085c5  62 e1 ff 48 6f 6f 65     vmovdqu16 zmm21,[rdi+0x1940]
0085cc  62 e1 ff 48 6f 66 65     vmovdqu16 zmm20,[rsi+0x1940]
0085d3  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0085d9  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0085e0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0085e6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0085ed  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0085f3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0085f9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0085ff  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008605  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00860b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008612  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008618  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00861e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008624  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00862a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008630  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008636  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00863c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008643  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008649  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00864f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008655  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00865b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008661  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
008667  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00866e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
008674  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00867b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
008682  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008688  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00868f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008695  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00869b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0086a1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0086a7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0086ad  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0086b4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0086ba  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0086c0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0086c6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0086cc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0086d2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0086d8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0086de  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0086e5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0086eb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0086f1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0086f7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0086fd  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008703  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
008709  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
008710  62 f1 ff 48 7f 5a 65     vmovdqu16 [rdx+0x1940],zmm3
008717  62 e1 ff 48 6f 6f 66     vmovdqu16 zmm21,[rdi+0x1980]
00871e  62 e1 ff 48 6f 66 66     vmovdqu16 zmm20,[rsi+0x1980]
008725  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00872b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008732  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
008738  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00873f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008745  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00874b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008751  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008757  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00875d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008764  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00876a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008770  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008776  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00877c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008782  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008788  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00878e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008795  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00879b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0087a1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0087a7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0087ad  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0087b3  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0087b9  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0087c0  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0087c6  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0087cd  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0087d4  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0087da  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0087e1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0087e7  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0087ed  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0087f3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0087f9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0087ff  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008806  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00880c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008812  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008818  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00881e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008824  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00882a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008830  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008837  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00883d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008843  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008849  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00884f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008855  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00885b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
008862  62 f1 ff 48 7f 5a 66     vmovdqu16 [rdx+0x1980],zmm3
008869  62 e1 ff 48 6f 6f 67     vmovdqu16 zmm21,[rdi+0x19c0]
008870  62 e1 ff 48 6f 66 67     vmovdqu16 zmm20,[rsi+0x19c0]
008877  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00887d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008884  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00888a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008891  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008897  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00889d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0088a3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0088a9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0088af  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0088b6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0088bc  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0088c2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0088c8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0088ce  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0088d4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0088da  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0088e0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0088e7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0088ed  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0088f3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0088f9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0088ff  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008905  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00890b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
008912  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
008918  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00891f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
008926  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00892c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008933  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008939  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00893f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008945  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00894b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008951  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008958  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00895e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008964  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00896a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008970  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008976  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00897c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008982  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008989  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00898f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008995  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00899b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0089a1  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0089a7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0089ad  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0089b4  62 f1 ff 48 7f 5a 67     vmovdqu16 [rdx+0x19c0],zmm3
0089bb  62 e1 ff 48 6f 6f 68     vmovdqu16 zmm21,[rdi+0x1a00]
0089c2  62 e1 ff 48 6f 66 68     vmovdqu16 zmm20,[rsi+0x1a00]
0089c9  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0089cf  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0089d6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0089dc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0089e3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0089e9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0089ef  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0089f5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0089fb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008a01  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008a08  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008a0e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008a14  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008a1a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008a20  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008a26  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008a2c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008a32  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008a39  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008a3f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008a45  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008a4b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008a51  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008a57  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
008a5d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
008a64  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
008a6a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008a71  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
008a78  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008a7e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008a85  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008a8b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008a91  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008a97  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008a9d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008aa3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008aaa  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008ab0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008ab6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008abc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008ac2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008ac8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008ace  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008ad4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008adb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008ae1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008ae7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008aed  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008af3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008af9  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
008aff  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
008b06  62 f1 ff 48 7f 5a 68     vmovdqu16 [rdx+0x1a00],zmm3
008b0d  62 e1 ff 48 6f 6f 69     vmovdqu16 zmm21,[rdi+0x1a40]
008b14  62 e1 ff 48 6f 66 69     vmovdqu16 zmm20,[rsi+0x1a40]
008b1b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
008b21  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008b28  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
008b2e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008b35  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008b3b  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008b41  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008b47  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008b4d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008b53  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008b5a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008b60  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008b66  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008b6c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008b72  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008b78  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008b7e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008b84  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008b8b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008b91  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008b97  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008b9d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008ba3  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008ba9  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
008baf  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
008bb6  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
008bbc  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008bc3  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
008bca  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008bd0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008bd7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008bdd  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008be3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008be9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008bef  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008bf5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008bfc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008c02  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008c08  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008c0e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008c14  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008c1a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008c20  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008c26  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008c2d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008c33  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008c39  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008c3f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008c45  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008c4b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
008c51  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
008c58  62 f1 ff 48 7f 5a 69     vmovdqu16 [rdx+0x1a40],zmm3
008c5f  62 e1 ff 48 6f 6f 6a     vmovdqu16 zmm21,[rdi+0x1a80]
008c66  62 e1 ff 48 6f 66 6a     vmovdqu16 zmm20,[rsi+0x1a80]
008c6d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
008c73  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008c7a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
008c80  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008c87  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008c8d  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008c93  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008c99  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008c9f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008ca5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008cac  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008cb2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008cb8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008cbe  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008cc4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008cca  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008cd0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008cd6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008cdd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008ce3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008ce9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008cef  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008cf5  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008cfb  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
008d01  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
008d08  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
008d0e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008d15  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
008d1c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008d22  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008d29  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008d2f  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008d35  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008d3b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008d41  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008d47  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008d4e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008d54  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008d5a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008d60  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008d66  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008d6c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008d72  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008d78  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008d7f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008d85  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008d8b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008d91  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008d97  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008d9d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
008da3  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
008daa  62 f1 ff 48 7f 5a 6a     vmovdqu16 [rdx+0x1a80],zmm3
008db1  62 e1 ff 48 6f 6f 6b     vmovdqu16 zmm21,[rdi+0x1ac0]
008db8  62 e1 ff 48 6f 66 6b     vmovdqu16 zmm20,[rsi+0x1ac0]
008dbf  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
008dc5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008dcc  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
008dd2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008dd9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008ddf  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008de5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008deb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008df1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008df7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008dfe  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008e04  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008e0a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008e10  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008e16  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008e1c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008e22  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008e28  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008e2f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008e35  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008e3b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008e41  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008e47  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008e4d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
008e53  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
008e5a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
008e60  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008e67  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
008e6e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008e74  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008e7b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008e81  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008e87  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008e8d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008e93  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008e99  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008ea0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008ea6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008eac  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008eb2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008eb8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008ebe  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008ec4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008eca  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008ed1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008ed7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008edd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008ee3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008ee9  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008eef  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
008ef5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
008efc  62 f1 ff 48 7f 5a 6b     vmovdqu16 [rdx+0x1ac0],zmm3
008f03  62 e1 ff 48 6f 6f 6c     vmovdqu16 zmm21,[rdi+0x1b00]
008f0a  62 e1 ff 48 6f 66 6c     vmovdqu16 zmm20,[rsi+0x1b00]
008f11  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
008f17  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008f1e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
008f24  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008f2b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008f31  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008f37  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008f3d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008f43  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008f49  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008f50  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008f56  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008f5c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
008f62  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
008f68  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
008f6e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
008f74  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
008f7a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
008f81  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
008f87  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
008f8d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
008f93  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
008f99  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
008f9f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
008fa5  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
008fac  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
008fb2  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
008fb9  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
008fc0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
008fc6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
008fcd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
008fd3  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
008fd9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
008fdf  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
008fe5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
008feb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
008ff2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
008ff8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
008ffe  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
009004  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00900a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
009010  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
009016  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00901c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
009023  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
009029  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00902f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
009035  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00903b  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
009041  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
009047  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00904e  62 f1 ff 48 7f 5a 6c     vmovdqu16 [rdx+0x1b00],zmm3
009055  62 e1 ff 48 6f 6f 6d     vmovdqu16 zmm21,[rdi+0x1b40]
00905c  62 e1 ff 48 6f 66 6d     vmovdqu16 zmm20,[rsi+0x1b40]
009063  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
009069  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
009070  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
009076  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00907d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
009083  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
009089  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00908f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
009095  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00909b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0090a2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0090a8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0090ae  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0090b4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0090ba  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0090c0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0090c6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0090cc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0090d3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0090d9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0090df  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0090e5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0090eb  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0090f1  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0090f7  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0090fe  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
009104  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00910b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
009112  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
009118  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00911f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
009125  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00912b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
009131  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
009137  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00913d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
009144  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00914a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
009150  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
009156  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00915c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
009162  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
009168  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00916e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
009175  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00917b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
009181  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
009187  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00918d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
009193  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
009199  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0091a0  62 f1 ff 48 7f 5a 6d     vmovdqu16 [rdx+0x1b40],zmm3
0091a7  62 e1 ff 48 6f 6f 6e     vmovdqu16 zmm21,[rdi+0x1b80]
0091ae  62 e1 ff 48 6f 66 6e     vmovdqu16 zmm20,[rsi+0x1b80]
0091b5  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0091bb  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0091c2  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0091c8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0091cf  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0091d5  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0091db  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0091e1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0091e7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0091ed  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0091f4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0091fa  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
009200  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
009206  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00920c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
009212  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
009218  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00921e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
009225  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00922b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
009231  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
009237  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00923d  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
009243  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
009249  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
009250  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
009256  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00925d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
009264  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00926a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
009271  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
009277  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00927d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
009283  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
009289  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00928f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
009296  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00929c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0092a2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0092a8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0092ae  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0092b4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0092ba  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0092c0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0092c7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0092cd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0092d3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0092d9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0092df  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
0092e5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0092eb  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0092f2  62 f1 ff 48 7f 5a 6e     vmovdqu16 [rdx+0x1b80],zmm3
0092f9  62 e1 ff 48 6f 6f 6f     vmovdqu16 zmm21,[rdi+0x1bc0]
009300  62 e1 ff 48 6f 66 6f     vmovdqu16 zmm20,[rsi+0x1bc0]
009307  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00930d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
009314  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00931a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
009321  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
009327  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
00932d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
009333  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
009339  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00933f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
009346  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00934c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
009352  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
009358  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00935e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
009364  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00936a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
009370  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
009377  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00937d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
009383  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
009389  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00938f  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
009395  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00939b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0093a2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0093a8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0093af  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0093b6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0093bc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0093c3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0093c9  62 a1 74 40 5c cb        vsubps    zmm17,zmm17,zmm19
0093cf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0093d5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0093db  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0093e1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0093e8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0093ee  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0093f4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0093fa  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
009400  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
009406  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00940c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
009412  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
009419  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00941f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
009425  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00942b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
009431  62 a1 74 40 59 ca        vmulps    zmm17,zmm17,zmm18
009437  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00943d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
009444  62 f1 ff 48 7f 5a 6f     vmovdqu16 [rdx+0x1bc0],zmm3
00944b  c5 f8 77                 vzeroupper
00944e  c3                       ret
