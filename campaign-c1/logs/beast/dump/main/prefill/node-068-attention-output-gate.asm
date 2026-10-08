; node 68: attention-output-gate (layer 3), kernel 65 at image offset 0xeae77, 20975 bytes, 256 tasks, up to 1 participants

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
00009a  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
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
000102  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000108  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00010f  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000115  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00011c  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000123  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000129  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000130  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000136  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00013c  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000142  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000148  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00014e  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000155  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00015b  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000161  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000167  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00016d  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000173  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000179  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00017f  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000186  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00018c  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000192  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000198  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00019e  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0001a4  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0001ab  62 f1 ff 48 7f 1a        vmovdqu16 [rdx],zmm3
0001b1  62 e1 ff 48 6f 6f 01     vmovdqu16 zmm21,[rdi+0x40]
0001b8  62 e1 ff 48 6f 66 01     vmovdqu16 zmm20,[rsi+0x40]
0001bf  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0001c5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0001cc  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0001d2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0001d9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0001df  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0001e5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0001eb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0001f1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0001f7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0001fe  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000204  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00020a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000210  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000216  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00021c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000222  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000228  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00022f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000235  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00023b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000241  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000247  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00024d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000254  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00025a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000261  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000268  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00026e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000275  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00027b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000281  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000287  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00028d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000293  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00029a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0002a0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0002a6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0002ac  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0002b2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0002b8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0002be  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0002c4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0002cb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0002d1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0002d7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0002dd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0002e3  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0002e9  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0002f0  62 f1 ff 48 7f 5a 01     vmovdqu16 [rdx+0x40],zmm3
0002f7  62 e1 ff 48 6f 6f 02     vmovdqu16 zmm21,[rdi+0x80]
0002fe  62 e1 ff 48 6f 66 02     vmovdqu16 zmm20,[rsi+0x80]
000305  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00030b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000312  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000318  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00031f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000325  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00032b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000331  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000337  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00033d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000344  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00034a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000350  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000356  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00035c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000362  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000368  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00036e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000375  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00037b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000381  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000387  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00038d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000393  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00039a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0003a0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0003a7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0003ae  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0003b4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0003bb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0003c1  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0003c7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0003cd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0003d3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0003d9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0003e0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0003e6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0003ec  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0003f2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0003f8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0003fe  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000404  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00040a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000411  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000417  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00041d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000423  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000429  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00042f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000436  62 f1 ff 48 7f 5a 02     vmovdqu16 [rdx+0x80],zmm3
00043d  62 e1 ff 48 6f 6f 03     vmovdqu16 zmm21,[rdi+0xc0]
000444  62 e1 ff 48 6f 66 03     vmovdqu16 zmm20,[rsi+0xc0]
00044b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000451  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000458  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00045e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000465  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00046b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000471  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000477  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00047d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000483  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00048a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000490  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000496  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00049c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0004a2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0004a8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0004ae  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0004b4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0004bb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0004c1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0004c7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0004cd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0004d3  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0004d9  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0004e0  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0004e6  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0004ed  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0004f4  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0004fa  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000501  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000507  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00050d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000513  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000519  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00051f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000526  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00052c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000532  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000538  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00053e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000544  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00054a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000550  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000557  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00055d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000563  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000569  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00056f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000575  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00057c  62 f1 ff 48 7f 5a 03     vmovdqu16 [rdx+0xc0],zmm3
000583  62 e1 ff 48 6f 6f 04     vmovdqu16 zmm21,[rdi+0x100]
00058a  62 e1 ff 48 6f 66 04     vmovdqu16 zmm20,[rsi+0x100]
000591  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000597  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00059e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0005a4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0005ab  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0005b1  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0005b7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0005bd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0005c3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0005c9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0005d0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0005d6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0005dc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0005e2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0005e8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0005ee  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0005f4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0005fa  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000601  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000607  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00060d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000613  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000619  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00061f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000626  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00062c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000633  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00063a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000640  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000647  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00064d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000653  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000659  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00065f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000665  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00066c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000672  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000678  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00067e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000684  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00068a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000690  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000696  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00069d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0006a3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0006a9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0006af  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0006b5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0006bb  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0006c2  62 f1 ff 48 7f 5a 04     vmovdqu16 [rdx+0x100],zmm3
0006c9  62 e1 ff 48 6f 6f 05     vmovdqu16 zmm21,[rdi+0x140]
0006d0  62 e1 ff 48 6f 66 05     vmovdqu16 zmm20,[rsi+0x140]
0006d7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0006dd  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0006e4  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0006ea  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0006f1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0006f7  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0006fd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000703  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000709  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00070f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000716  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00071c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000722  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000728  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00072e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000734  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00073a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000740  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000747  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00074d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000753  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000759  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00075f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000765  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00076c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000772  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000779  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000780  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000786  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00078d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000793  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000799  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00079f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0007a5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0007ab  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0007b2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0007b8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0007be  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0007c4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0007ca  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0007d0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0007d6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0007dc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0007e3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0007e9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0007ef  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0007f5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0007fb  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000801  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000808  62 f1 ff 48 7f 5a 05     vmovdqu16 [rdx+0x140],zmm3
00080f  62 e1 ff 48 6f 6f 06     vmovdqu16 zmm21,[rdi+0x180]
000816  62 e1 ff 48 6f 66 06     vmovdqu16 zmm20,[rsi+0x180]
00081d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000823  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00082a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000830  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000837  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00083d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000843  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000849  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00084f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000855  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00085c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000862  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000868  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00086e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000874  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00087a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000880  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000886  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00088d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000893  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000899  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00089f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0008a5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0008ab  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0008b2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0008b8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0008bf  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0008c6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0008cc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0008d3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0008d9  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0008df  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0008e5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0008eb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0008f1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0008f8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0008fe  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000904  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00090a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000910  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000916  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00091c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000922  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000929  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00092f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000935  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00093b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000941  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000947  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00094e  62 f1 ff 48 7f 5a 06     vmovdqu16 [rdx+0x180],zmm3
000955  62 e1 ff 48 6f 6f 07     vmovdqu16 zmm21,[rdi+0x1c0]
00095c  62 e1 ff 48 6f 66 07     vmovdqu16 zmm20,[rsi+0x1c0]
000963  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000969  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000970  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000976  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00097d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000983  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000989  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00098f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000995  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00099b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0009a2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0009a8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0009ae  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0009b4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0009ba  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0009c0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0009c6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0009cc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0009d3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0009d9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0009df  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0009e5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0009eb  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0009f1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0009f8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0009fe  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000a05  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000a0c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000a12  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000a19  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000a1f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000a25  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000a2b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000a31  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000a37  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000a3e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000a44  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000a4a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000a50  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000a56  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000a5c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000a62  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000a68  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000a6f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000a75  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000a7b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000a81  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000a87  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000a8d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000a94  62 f1 ff 48 7f 5a 07     vmovdqu16 [rdx+0x1c0],zmm3
000a9b  62 e1 ff 48 6f 6f 08     vmovdqu16 zmm21,[rdi+0x200]
000aa2  62 e1 ff 48 6f 66 08     vmovdqu16 zmm20,[rsi+0x200]
000aa9  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000aaf  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000ab6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000abc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000ac3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000ac9  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000acf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000ad5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000adb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000ae1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000ae8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000aee  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000af4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000afa  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000b00  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000b06  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000b0c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000b12  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000b19  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000b1f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000b25  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000b2b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000b31  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000b37  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000b3e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000b44  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000b4b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000b52  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000b58  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000b5f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000b65  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000b6b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000b71  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000b77  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000b7d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000b84  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000b8a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000b90  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000b96  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000b9c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000ba2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000ba8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000bae  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000bb5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000bbb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000bc1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000bc7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000bcd  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000bd3  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000bda  62 f1 ff 48 7f 5a 08     vmovdqu16 [rdx+0x200],zmm3
000be1  62 e1 ff 48 6f 6f 09     vmovdqu16 zmm21,[rdi+0x240]
000be8  62 e1 ff 48 6f 66 09     vmovdqu16 zmm20,[rsi+0x240]
000bef  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000bf5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000bfc  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000c02  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000c09  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000c0f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000c15  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000c1b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000c21  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000c27  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000c2e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000c34  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000c3a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000c40  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000c46  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000c4c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000c52  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000c58  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000c5f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000c65  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000c6b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000c71  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000c77  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000c7d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000c84  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000c8a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000c91  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000c98  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000c9e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000ca5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000cab  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000cb1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000cb7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000cbd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000cc3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000cca  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000cd0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000cd6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000cdc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000ce2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000ce8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000cee  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000cf4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000cfb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000d01  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000d07  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000d0d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000d13  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000d19  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000d20  62 f1 ff 48 7f 5a 09     vmovdqu16 [rdx+0x240],zmm3
000d27  62 e1 ff 48 6f 6f 0a     vmovdqu16 zmm21,[rdi+0x280]
000d2e  62 e1 ff 48 6f 66 0a     vmovdqu16 zmm20,[rsi+0x280]
000d35  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000d3b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000d42  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000d48  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000d4f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000d55  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000d5b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000d61  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000d67  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000d6d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000d74  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000d7a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000d80  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000d86  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000d8c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000d92  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000d98  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000d9e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000da5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000dab  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000db1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000db7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000dbd  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000dc3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000dca  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000dd0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000dd7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000dde  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000de4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000deb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000df1  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000df7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000dfd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000e03  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000e09  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000e10  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000e16  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000e1c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000e22  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000e28  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000e2e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000e34  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000e3a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000e41  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000e47  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000e4d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000e53  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000e59  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000e5f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000e66  62 f1 ff 48 7f 5a 0a     vmovdqu16 [rdx+0x280],zmm3
000e6d  62 e1 ff 48 6f 6f 0b     vmovdqu16 zmm21,[rdi+0x2c0]
000e74  62 e1 ff 48 6f 66 0b     vmovdqu16 zmm20,[rsi+0x2c0]
000e7b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000e81  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000e88  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000e8e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000e95  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000e9b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000ea1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000ea7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000ead  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000eb3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000eba  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000ec0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000ec6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000ecc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000ed2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000ed8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000ede  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000ee4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000eeb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000ef1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000ef7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000efd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000f03  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
000f09  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
000f10  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
000f16  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000f1d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
000f24  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
000f2a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000f31  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000f37  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000f3d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000f43  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000f49  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000f4f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
000f56  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
000f5c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
000f62  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
000f68  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
000f6e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
000f74  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
000f7a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
000f80  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
000f87  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
000f8d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
000f93  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
000f99  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
000f9f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
000fa5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
000fac  62 f1 ff 48 7f 5a 0b     vmovdqu16 [rdx+0x2c0],zmm3
000fb3  62 e1 ff 48 6f 6f 0c     vmovdqu16 zmm21,[rdi+0x300]
000fba  62 e1 ff 48 6f 66 0c     vmovdqu16 zmm20,[rsi+0x300]
000fc1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
000fc7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
000fce  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
000fd4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
000fdb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000fe1  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
000fe7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
000fed  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
000ff3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
000ff9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001000  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001006  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00100c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001012  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001018  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00101e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001024  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00102a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001031  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001037  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00103d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001043  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001049  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00104f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001056  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00105c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001063  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00106a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001070  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001077  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00107d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001083  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001089  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00108f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001095  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00109c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0010a2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0010a8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0010ae  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0010b4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0010ba  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0010c0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0010c6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0010cd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0010d3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0010d9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0010df  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0010e5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0010eb  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0010f2  62 f1 ff 48 7f 5a 0c     vmovdqu16 [rdx+0x300],zmm3
0010f9  62 e1 ff 48 6f 6f 0d     vmovdqu16 zmm21,[rdi+0x340]
001100  62 e1 ff 48 6f 66 0d     vmovdqu16 zmm20,[rsi+0x340]
001107  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00110d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001114  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00111a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001121  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001127  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00112d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001133  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001139  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00113f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001146  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00114c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001152  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001158  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00115e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001164  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00116a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001170  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001177  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00117d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001183  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001189  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00118f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001195  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00119c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0011a2  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0011a9  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0011b0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0011b6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0011bd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0011c3  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
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
00122b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001231  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001238  62 f1 ff 48 7f 5a 0d     vmovdqu16 [rdx+0x340],zmm3
00123f  62 e1 ff 48 6f 6f 0e     vmovdqu16 zmm21,[rdi+0x380]
001246  62 e1 ff 48 6f 66 0e     vmovdqu16 zmm20,[rsi+0x380]
00124d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001253  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00125a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001260  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001267  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00126d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001273  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001279  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00127f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001285  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00128c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001292  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001298  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00129e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0012a4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0012aa  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0012b0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0012b6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0012bd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0012c3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0012c9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0012cf  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0012d5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0012db  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0012e2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0012e8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0012ef  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0012f6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0012fc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001303  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001309  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00130f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001315  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00131b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001321  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001328  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00132e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001334  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00133a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001340  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001346  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00134c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001352  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001359  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00135f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001365  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00136b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001371  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001377  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00137e  62 f1 ff 48 7f 5a 0e     vmovdqu16 [rdx+0x380],zmm3
001385  62 e1 ff 48 6f 6f 0f     vmovdqu16 zmm21,[rdi+0x3c0]
00138c  62 e1 ff 48 6f 66 0f     vmovdqu16 zmm20,[rsi+0x3c0]
001393  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001399  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0013a0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0013a6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0013ad  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0013b3  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0013b9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0013bf  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0013c5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0013cb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0013d2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0013d8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0013de  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0013e4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0013ea  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0013f0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0013f6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0013fc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001403  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001409  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00140f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001415  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00141b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001421  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001428  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00142e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001435  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00143c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001442  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001449  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00144f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001455  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00145b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001461  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001467  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00146e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001474  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00147a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001480  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001486  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00148c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001492  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001498  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00149f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0014a5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0014ab  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0014b1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0014b7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0014bd  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0014c4  62 f1 ff 48 7f 5a 0f     vmovdqu16 [rdx+0x3c0],zmm3
0014cb  62 e1 ff 48 6f 6f 10     vmovdqu16 zmm21,[rdi+0x400]
0014d2  62 e1 ff 48 6f 66 10     vmovdqu16 zmm20,[rsi+0x400]
0014d9  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0014df  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0014e6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0014ec  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0014f3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0014f9  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0014ff  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001505  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00150b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001511  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001518  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00151e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001524  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00152a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001530  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001536  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00153c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001542  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001549  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00154f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001555  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00155b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001561  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001567  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00156e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001574  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00157b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001582  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001588  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00158f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001595  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00159b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0015a1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0015a7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0015ad  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0015b4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0015ba  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0015c0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0015c6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0015cc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0015d2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0015d8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0015de  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0015e5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0015eb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0015f1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0015f7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0015fd  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001603  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00160a  62 f1 ff 48 7f 5a 10     vmovdqu16 [rdx+0x400],zmm3
001611  62 e1 ff 48 6f 6f 11     vmovdqu16 zmm21,[rdi+0x440]
001618  62 e1 ff 48 6f 66 11     vmovdqu16 zmm20,[rsi+0x440]
00161f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001625  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00162c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001632  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001639  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00163f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001645  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00164b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001651  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001657  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00165e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001664  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00166a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001670  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001676  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00167c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001682  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001688  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00168f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001695  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00169b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0016a1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0016a7  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0016ad  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0016b4  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0016ba  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0016c1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0016c8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0016ce  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0016d5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0016db  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0016e1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0016e7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0016ed  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0016f3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0016fa  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001700  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001706  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00170c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001712  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001718  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00171e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001724  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00172b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001731  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001737  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00173d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001743  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001749  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001750  62 f1 ff 48 7f 5a 11     vmovdqu16 [rdx+0x440],zmm3
001757  62 e1 ff 48 6f 6f 12     vmovdqu16 zmm21,[rdi+0x480]
00175e  62 e1 ff 48 6f 66 12     vmovdqu16 zmm20,[rsi+0x480]
001765  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00176b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001772  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001778  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00177f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001785  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00178b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001791  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001797  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00179d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0017a4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0017aa  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0017b0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0017b6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0017bc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0017c2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0017c8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0017ce  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0017d5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0017db  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0017e1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0017e7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0017ed  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0017f3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0017fa  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001800  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001807  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00180e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001814  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00181b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001821  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001827  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00182d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001833  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001839  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001840  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001846  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00184c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001852  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001858  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00185e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001864  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00186a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001871  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001877  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00187d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001883  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001889  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00188f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001896  62 f1 ff 48 7f 5a 12     vmovdqu16 [rdx+0x480],zmm3
00189d  62 e1 ff 48 6f 6f 13     vmovdqu16 zmm21,[rdi+0x4c0]
0018a4  62 e1 ff 48 6f 66 13     vmovdqu16 zmm20,[rsi+0x4c0]
0018ab  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0018b1  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0018b8  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0018be  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0018c5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0018cb  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0018d1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0018d7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0018dd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0018e3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0018ea  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0018f0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0018f6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0018fc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001902  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001908  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00190e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001914  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00191b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001921  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001927  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00192d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001933  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001939  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001940  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001946  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00194d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001954  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00195a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001961  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001967  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00196d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001973  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001979  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00197f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001986  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00198c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001992  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001998  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00199e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0019a4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0019aa  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0019b0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0019b7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0019bd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0019c3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0019c9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0019cf  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0019d5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0019dc  62 f1 ff 48 7f 5a 13     vmovdqu16 [rdx+0x4c0],zmm3
0019e3  62 e1 ff 48 6f 6f 14     vmovdqu16 zmm21,[rdi+0x500]
0019ea  62 e1 ff 48 6f 66 14     vmovdqu16 zmm20,[rsi+0x500]
0019f1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0019f7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0019fe  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001a04  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001a0b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001a11  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001a17  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001a1d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001a23  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001a29  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001a30  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001a36  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001a3c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001a42  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001a48  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001a4e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001a54  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001a5a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001a61  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001a67  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001a6d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001a73  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001a79  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001a7f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001a86  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001a8c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001a93  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001a9a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001aa0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001aa7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001aad  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001ab3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001ab9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001abf  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001ac5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001acc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001ad2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001ad8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001ade  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001ae4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001aea  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001af0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001af6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001afd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001b03  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001b09  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001b0f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001b15  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001b1b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001b22  62 f1 ff 48 7f 5a 14     vmovdqu16 [rdx+0x500],zmm3
001b29  62 e1 ff 48 6f 6f 15     vmovdqu16 zmm21,[rdi+0x540]
001b30  62 e1 ff 48 6f 66 15     vmovdqu16 zmm20,[rsi+0x540]
001b37  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001b3d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001b44  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001b4a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001b51  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001b57  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001b5d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001b63  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001b69  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001b6f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001b76  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001b7c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001b82  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001b88  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001b8e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001b94  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001b9a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001ba0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001ba7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001bad  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001bb3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001bb9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001bbf  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001bc5  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001bcc  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001bd2  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001bd9  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001be0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001be6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001bed  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001bf3  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001bf9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001bff  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001c05  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001c0b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001c12  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001c18  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001c1e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001c24  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001c2a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001c30  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001c36  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001c3c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001c43  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001c49  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001c4f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001c55  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001c5b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001c61  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001c68  62 f1 ff 48 7f 5a 15     vmovdqu16 [rdx+0x540],zmm3
001c6f  62 e1 ff 48 6f 6f 16     vmovdqu16 zmm21,[rdi+0x580]
001c76  62 e1 ff 48 6f 66 16     vmovdqu16 zmm20,[rsi+0x580]
001c7d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001c83  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001c8a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001c90  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001c97  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001c9d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001ca3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001ca9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001caf  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001cb5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001cbc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001cc2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001cc8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001cce  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001cd4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001cda  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001ce0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001ce6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001ced  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001cf3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001cf9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001cff  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001d05  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001d0b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001d12  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001d18  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001d1f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001d26  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001d2c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001d33  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001d39  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001d3f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001d45  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001d4b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001d51  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001d58  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001d5e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001d64  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001d6a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001d70  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001d76  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001d7c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001d82  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001d89  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001d8f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001d95  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001d9b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001da1  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001da7  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001dae  62 f1 ff 48 7f 5a 16     vmovdqu16 [rdx+0x580],zmm3
001db5  62 e1 ff 48 6f 6f 17     vmovdqu16 zmm21,[rdi+0x5c0]
001dbc  62 e1 ff 48 6f 66 17     vmovdqu16 zmm20,[rsi+0x5c0]
001dc3  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001dc9  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001dd0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001dd6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001ddd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001de3  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001de9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001def  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001df5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001dfb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001e02  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001e08  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001e0e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001e14  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001e1a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001e20  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001e26  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001e2c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001e33  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001e39  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001e3f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001e45  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001e4b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001e51  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001e58  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001e5e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001e65  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001e6c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001e72  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001e79  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001e7f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001e85  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001e8b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001e91  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001e97  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001e9e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001ea4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001eaa  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001eb0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001eb6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001ebc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001ec2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001ec8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001ecf  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001ed5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001edb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001ee1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001ee7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
001eed  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
001ef4  62 f1 ff 48 7f 5a 17     vmovdqu16 [rdx+0x5c0],zmm3
001efb  62 e1 ff 48 6f 6f 18     vmovdqu16 zmm21,[rdi+0x600]
001f02  62 e1 ff 48 6f 66 18     vmovdqu16 zmm20,[rsi+0x600]
001f09  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
001f0f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001f16  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
001f1c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001f23  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001f29  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001f2f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001f35  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001f3b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001f41  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001f48  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001f4e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001f54  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001f5a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001f60  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
001f66  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
001f6c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
001f72  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
001f79  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
001f7f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
001f85  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
001f8b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
001f91  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
001f97  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
001f9e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
001fa4  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
001fab  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
001fb2  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
001fb8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
001fbf  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
001fc5  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
001fcb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
001fd1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
001fd7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
001fdd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
001fe4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
001fea  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
001ff0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
001ff6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
001ffc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002002  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002008  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00200e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002015  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00201b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002021  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002027  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00202d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002033  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00203a  62 f1 ff 48 7f 5a 18     vmovdqu16 [rdx+0x600],zmm3
002041  62 e1 ff 48 6f 6f 19     vmovdqu16 zmm21,[rdi+0x640]
002048  62 e1 ff 48 6f 66 19     vmovdqu16 zmm20,[rsi+0x640]
00204f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002055  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00205c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002062  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002069  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00206f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002075  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00207b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002081  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002087  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00208e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002094  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00209a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0020a0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0020a6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0020ac  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0020b2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0020b8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0020bf  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0020c5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0020cb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0020d1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0020d7  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0020dd  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0020e4  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0020ea  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0020f1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0020f8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0020fe  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002105  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00210b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002111  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002117  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00211d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002123  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00212a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002130  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002136  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00213c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002142  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002148  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00214e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002154  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00215b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002161  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002167  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00216d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002173  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002179  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002180  62 f1 ff 48 7f 5a 19     vmovdqu16 [rdx+0x640],zmm3
002187  62 e1 ff 48 6f 6f 1a     vmovdqu16 zmm21,[rdi+0x680]
00218e  62 e1 ff 48 6f 66 1a     vmovdqu16 zmm20,[rsi+0x680]
002195  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00219b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0021a2  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0021a8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0021af  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0021b5  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0021bb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0021c1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0021c7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0021cd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0021d4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0021da  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0021e0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0021e6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0021ec  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0021f2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0021f8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0021fe  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002205  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00220b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002211  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002217  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00221d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002223  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00222a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002230  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002237  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00223e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002244  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00224b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002251  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002257  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00225d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002263  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002269  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002270  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002276  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00227c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002282  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002288  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00228e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002294  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00229a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0022a1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0022a7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0022ad  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0022b3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0022b9  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0022bf  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0022c6  62 f1 ff 48 7f 5a 1a     vmovdqu16 [rdx+0x680],zmm3
0022cd  62 e1 ff 48 6f 6f 1b     vmovdqu16 zmm21,[rdi+0x6c0]
0022d4  62 e1 ff 48 6f 66 1b     vmovdqu16 zmm20,[rsi+0x6c0]
0022db  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0022e1  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0022e8  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0022ee  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0022f5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0022fb  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002301  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002307  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00230d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002313  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00231a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002320  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002326  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00232c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002332  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002338  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00233e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002344  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00234b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002351  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002357  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00235d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002363  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002369  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002370  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002376  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00237d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002384  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00238a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002391  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002397  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00239d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0023a3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0023a9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0023af  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0023b6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0023bc  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0023c2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0023c8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0023ce  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0023d4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0023da  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0023e0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0023e7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0023ed  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0023f3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0023f9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0023ff  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002405  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00240c  62 f1 ff 48 7f 5a 1b     vmovdqu16 [rdx+0x6c0],zmm3
002413  62 e1 ff 48 6f 6f 1c     vmovdqu16 zmm21,[rdi+0x700]
00241a  62 e1 ff 48 6f 66 1c     vmovdqu16 zmm20,[rsi+0x700]
002421  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002427  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00242e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002434  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00243b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002441  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002447  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00244d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002453  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002459  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002460  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002466  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00246c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002472  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002478  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00247e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002484  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00248a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002491  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002497  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00249d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0024a3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0024a9  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0024af  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0024b6  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0024bc  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0024c3  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0024ca  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0024d0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0024d7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0024dd  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0024e3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0024e9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0024ef  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0024f5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0024fc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002502  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002508  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00250e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002514  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00251a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002520  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002526  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00252d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002533  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002539  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00253f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002545  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00254b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002552  62 f1 ff 48 7f 5a 1c     vmovdqu16 [rdx+0x700],zmm3
002559  62 e1 ff 48 6f 6f 1d     vmovdqu16 zmm21,[rdi+0x740]
002560  62 e1 ff 48 6f 66 1d     vmovdqu16 zmm20,[rsi+0x740]
002567  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00256d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002574  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00257a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002581  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002587  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00258d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002593  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002599  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00259f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0025a6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0025ac  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0025b2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0025b8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0025be  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0025c4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0025ca  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0025d0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0025d7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0025dd  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0025e3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0025e9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0025ef  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0025f5  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0025fc  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002602  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002609  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002610  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002616  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00261d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002623  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002629  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00262f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002635  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00263b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002642  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002648  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00264e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002654  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00265a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002660  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002666  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00266c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002673  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002679  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00267f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002685  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00268b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002691  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002698  62 f1 ff 48 7f 5a 1d     vmovdqu16 [rdx+0x740],zmm3
00269f  62 e1 ff 48 6f 6f 1e     vmovdqu16 zmm21,[rdi+0x780]
0026a6  62 e1 ff 48 6f 66 1e     vmovdqu16 zmm20,[rsi+0x780]
0026ad  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0026b3  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0026ba  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0026c0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0026c7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0026cd  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0026d3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0026d9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0026df  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0026e5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0026ec  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0026f2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0026f8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0026fe  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002704  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00270a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002710  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002716  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00271d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002723  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002729  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00272f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002735  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00273b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002742  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002748  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00274f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002756  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00275c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002763  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002769  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00276f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002775  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00277b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002781  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002788  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00278e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002794  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00279a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0027a0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0027a6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0027ac  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0027b2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0027b9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0027bf  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0027c5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0027cb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0027d1  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0027d7  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0027de  62 f1 ff 48 7f 5a 1e     vmovdqu16 [rdx+0x780],zmm3
0027e5  62 e1 ff 48 6f 6f 1f     vmovdqu16 zmm21,[rdi+0x7c0]
0027ec  62 e1 ff 48 6f 66 1f     vmovdqu16 zmm20,[rsi+0x7c0]
0027f3  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0027f9  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002800  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002806  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00280d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002813  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002819  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00281f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002825  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00282b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002832  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002838  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00283e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002844  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00284a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002850  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002856  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00285c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002863  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002869  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00286f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002875  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00287b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002881  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002888  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00288e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002895  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00289c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0028a2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0028a9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0028af  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0028b5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0028bb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0028c1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0028c7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0028ce  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0028d4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0028da  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0028e0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0028e6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0028ec  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0028f2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0028f8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0028ff  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002905  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00290b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002911  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002917  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00291d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002924  62 f1 ff 48 7f 5a 1f     vmovdqu16 [rdx+0x7c0],zmm3
00292b  62 e1 ff 48 6f 6f 20     vmovdqu16 zmm21,[rdi+0x800]
002932  62 e1 ff 48 6f 66 20     vmovdqu16 zmm20,[rsi+0x800]
002939  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00293f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002946  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00294c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002953  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002959  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00295f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002965  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00296b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002971  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002978  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00297e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002984  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00298a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002990  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002996  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00299c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0029a2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0029a9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0029af  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0029b5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0029bb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0029c1  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0029c7  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0029ce  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0029d4  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0029db  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0029e2  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0029e8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0029ef  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0029f5  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0029fb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002a01  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002a07  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002a0d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002a14  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002a1a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002a20  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002a26  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002a2c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002a32  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002a38  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002a3e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002a45  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002a4b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002a51  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002a57  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002a5d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002a63  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002a6a  62 f1 ff 48 7f 5a 20     vmovdqu16 [rdx+0x800],zmm3
002a71  62 e1 ff 48 6f 6f 21     vmovdqu16 zmm21,[rdi+0x840]
002a78  62 e1 ff 48 6f 66 21     vmovdqu16 zmm20,[rsi+0x840]
002a7f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002a85  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002a8c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002a92  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002a99  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002a9f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002aa5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002aab  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002ab1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002ab7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002abe  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002ac4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002aca  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002ad0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002ad6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002adc  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002ae2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002ae8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002aef  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002af5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002afb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002b01  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002b07  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002b0d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002b14  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002b1a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002b21  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002b28  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002b2e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002b35  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002b3b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002b41  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002b47  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002b4d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002b53  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002b5a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002b60  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002b66  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002b6c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002b72  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002b78  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002b7e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002b84  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002b8b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002b91  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002b97  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002b9d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002ba3  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002ba9  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002bb0  62 f1 ff 48 7f 5a 21     vmovdqu16 [rdx+0x840],zmm3
002bb7  62 e1 ff 48 6f 6f 22     vmovdqu16 zmm21,[rdi+0x880]
002bbe  62 e1 ff 48 6f 66 22     vmovdqu16 zmm20,[rsi+0x880]
002bc5  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002bcb  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002bd2  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002bd8  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002bdf  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002be5  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002beb  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002bf1  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002bf7  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002bfd  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002c04  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002c0a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002c10  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002c16  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002c1c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002c22  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002c28  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002c2e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002c35  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002c3b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002c41  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002c47  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002c4d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002c53  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002c5a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002c60  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002c67  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002c6e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002c74  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002c7b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002c81  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002c87  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002c8d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002c93  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002c99  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002ca0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002ca6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002cac  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002cb2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002cb8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002cbe  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002cc4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002cca  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002cd1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002cd7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002cdd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002ce3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002ce9  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002cef  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002cf6  62 f1 ff 48 7f 5a 22     vmovdqu16 [rdx+0x880],zmm3
002cfd  62 e1 ff 48 6f 6f 23     vmovdqu16 zmm21,[rdi+0x8c0]
002d04  62 e1 ff 48 6f 66 23     vmovdqu16 zmm20,[rsi+0x8c0]
002d0b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002d11  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002d18  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002d1e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002d25  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002d2b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002d31  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002d37  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002d3d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002d43  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002d4a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002d50  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002d56  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002d5c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002d62  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002d68  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002d6e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002d74  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002d7b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002d81  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002d87  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002d8d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002d93  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002d99  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002da0  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002da6  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002dad  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002db4  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002dba  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002dc1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002dc7  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002dcd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002dd3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002dd9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002ddf  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002de6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002dec  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002df2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002df8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002dfe  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002e04  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002e0a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002e10  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002e17  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002e1d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002e23  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002e29  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002e2f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002e35  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002e3c  62 f1 ff 48 7f 5a 23     vmovdqu16 [rdx+0x8c0],zmm3
002e43  62 e1 ff 48 6f 6f 24     vmovdqu16 zmm21,[rdi+0x900]
002e4a  62 e1 ff 48 6f 66 24     vmovdqu16 zmm20,[rsi+0x900]
002e51  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002e57  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002e5e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002e64  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002e6b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002e71  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002e77  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002e7d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002e83  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002e89  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002e90  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002e96  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002e9c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002ea2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002ea8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002eae  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002eb4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002eba  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002ec1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002ec7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002ecd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002ed3  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002ed9  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
002edf  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
002ee6  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
002eec  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002ef3  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
002efa  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
002f00  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002f07  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002f0d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002f13  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002f19  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002f1f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002f25  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002f2c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002f32  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002f38  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002f3e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002f44  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002f4a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002f50  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
002f56  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
002f5d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
002f63  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
002f69  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
002f6f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
002f75  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
002f7b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
002f82  62 f1 ff 48 7f 5a 24     vmovdqu16 [rdx+0x900],zmm3
002f89  62 e1 ff 48 6f 6f 25     vmovdqu16 zmm21,[rdi+0x940]
002f90  62 e1 ff 48 6f 66 25     vmovdqu16 zmm20,[rsi+0x940]
002f97  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
002f9d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
002fa4  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
002faa  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
002fb1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002fb7  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
002fbd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
002fc3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
002fc9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
002fcf  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
002fd6  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
002fdc  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
002fe2  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
002fe8  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
002fee  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
002ff4  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
002ffa  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003000  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003007  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00300d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003013  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003019  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00301f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003025  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00302c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003032  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003039  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003040  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003046  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00304d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003053  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003059  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00305f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003065  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00306b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003072  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003078  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00307e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003084  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00308a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003090  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003096  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00309c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0030a3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0030a9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0030af  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0030b5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0030bb  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0030c1  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0030c8  62 f1 ff 48 7f 5a 25     vmovdqu16 [rdx+0x940],zmm3
0030cf  62 e1 ff 48 6f 6f 26     vmovdqu16 zmm21,[rdi+0x980]
0030d6  62 e1 ff 48 6f 66 26     vmovdqu16 zmm20,[rsi+0x980]
0030dd  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0030e3  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0030ea  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0030f0  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0030f7  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0030fd  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003103  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003109  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00310f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003115  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00311c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003122  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003128  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00312e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003134  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00313a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003140  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003146  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00314d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003153  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003159  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00315f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003165  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00316b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003172  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003178  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00317f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003186  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00318c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003193  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003199  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00319f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0031a5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0031ab  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0031b1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0031b8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0031be  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0031c4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0031ca  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0031d0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0031d6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0031dc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0031e2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0031e9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0031ef  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0031f5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0031fb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003201  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003207  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00320e  62 f1 ff 48 7f 5a 26     vmovdqu16 [rdx+0x980],zmm3
003215  62 e1 ff 48 6f 6f 27     vmovdqu16 zmm21,[rdi+0x9c0]
00321c  62 e1 ff 48 6f 66 27     vmovdqu16 zmm20,[rsi+0x9c0]
003223  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003229  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003230  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003236  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00323d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003243  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003249  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00324f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003255  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00325b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003262  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003268  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00326e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003274  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00327a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003280  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003286  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00328c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003293  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003299  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00329f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0032a5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0032ab  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0032b1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0032b8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0032be  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0032c5  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0032cc  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0032d2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0032d9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0032df  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0032e5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0032eb  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0032f1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0032f7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0032fe  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003304  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00330a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003310  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003316  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00331c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003322  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003328  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00332f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003335  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00333b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003341  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003347  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00334d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003354  62 f1 ff 48 7f 5a 27     vmovdqu16 [rdx+0x9c0],zmm3
00335b  62 e1 ff 48 6f 6f 28     vmovdqu16 zmm21,[rdi+0xa00]
003362  62 e1 ff 48 6f 66 28     vmovdqu16 zmm20,[rsi+0xa00]
003369  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00336f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003376  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00337c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003383  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003389  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00338f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003395  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00339b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0033a1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0033a8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0033ae  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0033b4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0033ba  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0033c0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0033c6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0033cc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0033d2  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0033d9  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0033df  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0033e5  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0033eb  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0033f1  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0033f7  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0033fe  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003404  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00340b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003412  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003418  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00341f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003425  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00342b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003431  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003437  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00343d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003444  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00344a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003450  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003456  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00345c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003462  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003468  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00346e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003475  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00347b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003481  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003487  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00348d  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003493  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00349a  62 f1 ff 48 7f 5a 28     vmovdqu16 [rdx+0xa00],zmm3
0034a1  62 e1 ff 48 6f 6f 29     vmovdqu16 zmm21,[rdi+0xa40]
0034a8  62 e1 ff 48 6f 66 29     vmovdqu16 zmm20,[rsi+0xa40]
0034af  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0034b5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0034bc  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0034c2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0034c9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0034cf  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0034d5  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0034db  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0034e1  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0034e7  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0034ee  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0034f4  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0034fa  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003500  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003506  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00350c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003512  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003518  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00351f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003525  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00352b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003531  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003537  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00353d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003544  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00354a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003551  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003558  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00355e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003565  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00356b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003571  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003577  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00357d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003583  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00358a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003590  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003596  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00359c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0035a2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0035a8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0035ae  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0035b4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0035bb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0035c1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0035c7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0035cd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0035d3  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0035d9  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0035e0  62 f1 ff 48 7f 5a 29     vmovdqu16 [rdx+0xa40],zmm3
0035e7  62 e1 ff 48 6f 6f 2a     vmovdqu16 zmm21,[rdi+0xa80]
0035ee  62 e1 ff 48 6f 66 2a     vmovdqu16 zmm20,[rsi+0xa80]
0035f5  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0035fb  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003602  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003608  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00360f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003615  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00361b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003621  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003627  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00362d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003634  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00363a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003640  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003646  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00364c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003652  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003658  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00365e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003665  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00366b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003671  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003677  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00367d  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003683  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00368a  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003690  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003697  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00369e  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0036a4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0036ab  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0036b1  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0036b7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0036bd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0036c3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0036c9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0036d0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0036d6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0036dc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0036e2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0036e8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0036ee  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0036f4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0036fa  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003701  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003707  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00370d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003713  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003719  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00371f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003726  62 f1 ff 48 7f 5a 2a     vmovdqu16 [rdx+0xa80],zmm3
00372d  62 e1 ff 48 6f 6f 2b     vmovdqu16 zmm21,[rdi+0xac0]
003734  62 e1 ff 48 6f 66 2b     vmovdqu16 zmm20,[rsi+0xac0]
00373b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003741  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003748  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00374e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003755  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00375b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003761  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003767  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00376d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003773  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00377a  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003780  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003786  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00378c  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003792  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003798  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00379e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0037a4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0037ab  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0037b1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0037b7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0037bd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0037c3  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0037c9  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0037d0  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0037d6  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0037dd  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0037e4  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0037ea  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0037f1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0037f7  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0037fd  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003803  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003809  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00380f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003816  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00381c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003822  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003828  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00382e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003834  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00383a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003840  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003847  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00384d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003853  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003859  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00385f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003865  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00386c  62 f1 ff 48 7f 5a 2b     vmovdqu16 [rdx+0xac0],zmm3
003873  62 e1 ff 48 6f 6f 2c     vmovdqu16 zmm21,[rdi+0xb00]
00387a  62 e1 ff 48 6f 66 2c     vmovdqu16 zmm20,[rsi+0xb00]
003881  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003887  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00388e  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003894  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00389b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0038a1  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0038a7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0038ad  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0038b3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0038b9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0038c0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0038c6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0038cc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0038d2  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0038d8  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0038de  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0038e4  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0038ea  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0038f1  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0038f7  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0038fd  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003903  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003909  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00390f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003916  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00391c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003923  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00392a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003930  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003937  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00393d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003943  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003949  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00394f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003955  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00395c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003962  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003968  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00396e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003974  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00397a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003980  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003986  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00398d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003993  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003999  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00399f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0039a5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0039ab  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0039b2  62 f1 ff 48 7f 5a 2c     vmovdqu16 [rdx+0xb00],zmm3
0039b9  62 e1 ff 48 6f 6f 2d     vmovdqu16 zmm21,[rdi+0xb40]
0039c0  62 e1 ff 48 6f 66 2d     vmovdqu16 zmm20,[rsi+0xb40]
0039c7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0039cd  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0039d4  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0039da  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0039e1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0039e7  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0039ed  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0039f3  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0039f9  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0039ff  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003a06  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003a0c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003a12  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003a18  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003a1e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003a24  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003a2a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003a30  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003a37  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003a3d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003a43  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003a49  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003a4f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003a55  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003a5c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003a62  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003a69  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003a70  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003a76  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003a7d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003a83  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003a89  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003a8f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003a95  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003a9b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003aa2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003aa8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003aae  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003ab4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003aba  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003ac0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003ac6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003acc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003ad3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003ad9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003adf  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003ae5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003aeb  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003af1  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003af8  62 f1 ff 48 7f 5a 2d     vmovdqu16 [rdx+0xb40],zmm3
003aff  62 e1 ff 48 6f 6f 2e     vmovdqu16 zmm21,[rdi+0xb80]
003b06  62 e1 ff 48 6f 66 2e     vmovdqu16 zmm20,[rsi+0xb80]
003b0d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003b13  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003b1a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003b20  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003b27  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003b2d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003b33  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003b39  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003b3f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003b45  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003b4c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003b52  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003b58  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003b5e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003b64  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003b6a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003b70  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003b76  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003b7d  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003b83  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003b89  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003b8f  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003b95  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003b9b  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003ba2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003ba8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003baf  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003bb6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003bbc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003bc3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003bc9  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003bcf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003bd5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003bdb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003be1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003be8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003bee  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003bf4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003bfa  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003c00  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003c06  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003c0c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003c12  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003c19  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003c1f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003c25  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003c2b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003c31  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003c37  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003c3e  62 f1 ff 48 7f 5a 2e     vmovdqu16 [rdx+0xb80],zmm3
003c45  62 e1 ff 48 6f 6f 2f     vmovdqu16 zmm21,[rdi+0xbc0]
003c4c  62 e1 ff 48 6f 66 2f     vmovdqu16 zmm20,[rsi+0xbc0]
003c53  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003c59  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003c60  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003c66  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003c6d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003c73  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003c79  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003c7f  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003c85  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003c8b  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003c92  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003c98  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003c9e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003ca4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003caa  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003cb0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003cb6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003cbc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003cc3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003cc9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003ccf  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003cd5  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003cdb  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003ce1  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003ce8  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003cee  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003cf5  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003cfc  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003d02  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003d09  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003d0f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003d15  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003d1b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003d21  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003d27  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003d2e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003d34  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003d3a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003d40  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003d46  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003d4c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003d52  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003d58  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003d5f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003d65  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003d6b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003d71  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003d77  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003d7d  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003d84  62 f1 ff 48 7f 5a 2f     vmovdqu16 [rdx+0xbc0],zmm3
003d8b  62 e1 ff 48 6f 6f 30     vmovdqu16 zmm21,[rdi+0xc00]
003d92  62 e1 ff 48 6f 66 30     vmovdqu16 zmm20,[rsi+0xc00]
003d99  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003d9f  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003da6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003dac  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003db3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003db9  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003dbf  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003dc5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003dcb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003dd1  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003dd8  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003dde  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003de4  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003dea  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003df0  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003df6  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003dfc  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003e02  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003e09  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003e0f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003e15  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003e1b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003e21  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003e27  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003e2e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003e34  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003e3b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003e42  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003e48  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003e4f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003e55  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003e5b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003e61  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003e67  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003e6d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003e74  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003e7a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003e80  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003e86  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003e8c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003e92  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003e98  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003e9e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003ea5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003eab  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003eb1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003eb7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003ebd  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
003ec3  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
003eca  62 f1 ff 48 7f 5a 30     vmovdqu16 [rdx+0xc00],zmm3
003ed1  62 e1 ff 48 6f 6f 31     vmovdqu16 zmm21,[rdi+0xc40]
003ed8  62 e1 ff 48 6f 66 31     vmovdqu16 zmm20,[rsi+0xc40]
003edf  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
003ee5  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003eec  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
003ef2  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003ef9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003eff  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003f05  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003f0b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003f11  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003f17  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003f1e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003f24  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003f2a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003f30  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003f36  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003f3c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003f42  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003f48  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003f4f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003f55  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003f5b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003f61  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
003f67  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
003f6d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
003f74  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
003f7a  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
003f81  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
003f88  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
003f8e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
003f95  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003f9b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
003fa1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
003fa7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
003fad  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
003fb3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
003fba  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
003fc0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
003fc6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
003fcc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
003fd2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
003fd8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
003fde  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
003fe4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
003feb  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
003ff1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
003ff7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
003ffd  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004003  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004009  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004010  62 f1 ff 48 7f 5a 31     vmovdqu16 [rdx+0xc40],zmm3
004017  62 e1 ff 48 6f 6f 32     vmovdqu16 zmm21,[rdi+0xc80]
00401e  62 e1 ff 48 6f 66 32     vmovdqu16 zmm20,[rsi+0xc80]
004025  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
00402b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004032  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004038  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00403f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004045  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00404b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004051  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004057  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00405d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004064  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00406a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004070  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004076  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00407c  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004082  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004088  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00408e  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004095  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00409b  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0040a1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0040a7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0040ad  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0040b3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0040ba  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0040c0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0040c7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0040ce  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0040d4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0040db  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0040e1  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0040e7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0040ed  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0040f3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0040f9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004100  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004106  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00410c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004112  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004118  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00411e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004124  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00412a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004131  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004137  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00413d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004143  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004149  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
00414f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004156  62 f1 ff 48 7f 5a 32     vmovdqu16 [rdx+0xc80],zmm3
00415d  62 e1 ff 48 6f 6f 33     vmovdqu16 zmm21,[rdi+0xcc0]
004164  62 e1 ff 48 6f 66 33     vmovdqu16 zmm20,[rsi+0xcc0]
00416b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004171  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004178  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00417e  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004185  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00418b  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004191  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004197  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00419d  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0041a3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0041aa  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0041b0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0041b6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0041bc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0041c2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0041c8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0041ce  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0041d4  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0041db  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0041e1  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0041e7  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0041ed  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0041f3  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0041f9  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004200  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004206  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00420d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004214  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00421a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004221  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004227  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00422d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004233  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004239  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00423f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004246  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00424c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004252  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004258  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00425e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004264  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00426a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004270  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004277  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00427d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004283  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004289  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00428f  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004295  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00429c  62 f1 ff 48 7f 5a 33     vmovdqu16 [rdx+0xcc0],zmm3
0042a3  62 e1 ff 48 6f 6f 34     vmovdqu16 zmm21,[rdi+0xd00]
0042aa  62 e1 ff 48 6f 66 34     vmovdqu16 zmm20,[rsi+0xd00]
0042b1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0042b7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0042be  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0042c4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0042cb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0042d1  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0042d7  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0042dd  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0042e3  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0042e9  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0042f0  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0042f6  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0042fc  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004302  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004308  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00430e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004314  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00431a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004321  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004327  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00432d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004333  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004339  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00433f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004346  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00434c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004353  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00435a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004360  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004367  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00436d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004373  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004379  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00437f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004385  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00438c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004392  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004398  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00439e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0043a4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0043aa  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0043b0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0043b6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0043bd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0043c3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0043c9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0043cf  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0043d5  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0043db  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0043e2  62 f1 ff 48 7f 5a 34     vmovdqu16 [rdx+0xd00],zmm3
0043e9  62 e1 ff 48 6f 6f 35     vmovdqu16 zmm21,[rdi+0xd40]
0043f0  62 e1 ff 48 6f 66 35     vmovdqu16 zmm20,[rsi+0xd40]
0043f7  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0043fd  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004404  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
00440a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004411  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004417  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00441d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004423  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004429  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00442f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004436  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00443c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004442  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004448  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00444e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004454  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00445a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004460  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004467  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00446d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004473  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004479  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00447f  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004485  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00448c  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004492  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004499  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0044a0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0044a6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0044ad  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0044b3  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0044b9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0044bf  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0044c5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0044cb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0044d2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0044d8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0044de  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0044e4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0044ea  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0044f0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0044f6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0044fc  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004503  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004509  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00450f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004515  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00451b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004521  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004528  62 f1 ff 48 7f 5a 35     vmovdqu16 [rdx+0xd40],zmm3
00452f  62 e1 ff 48 6f 6f 36     vmovdqu16 zmm21,[rdi+0xd80]
004536  62 e1 ff 48 6f 66 36     vmovdqu16 zmm20,[rsi+0xd80]
00453d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004543  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00454a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004550  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004557  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00455d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004563  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004569  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00456f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004575  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00457c  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004582  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004588  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00458e  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004594  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00459a  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0045a0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0045a6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0045ad  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0045b3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0045b9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0045bf  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0045c5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
0045cb  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0045d2  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0045d8  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0045df  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0045e6  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0045ec  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0045f3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0045f9  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0045ff  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004605  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00460b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004611  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004618  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00461e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004624  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00462a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004630  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004636  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00463c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004642  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004649  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00464f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004655  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00465b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004661  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004667  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00466e  62 f1 ff 48 7f 5a 36     vmovdqu16 [rdx+0xd80],zmm3
004675  62 e1 ff 48 6f 6f 37     vmovdqu16 zmm21,[rdi+0xdc0]
00467c  62 e1 ff 48 6f 66 37     vmovdqu16 zmm20,[rsi+0xdc0]
004683  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004689  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004690  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004696  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00469d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0046a3  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0046a9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0046af  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0046b5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0046bb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0046c2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0046c8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0046ce  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0046d4  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0046da  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0046e0  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0046e6  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0046ec  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0046f3  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0046f9  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0046ff  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004705  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00470b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004711  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004718  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00471e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004725  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00472c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004732  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004739  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00473f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004745  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00474b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004751  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004757  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00475e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004764  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00476a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004770  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004776  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00477c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004782  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004788  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00478f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004795  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00479b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0047a1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0047a7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0047ad  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0047b4  62 f1 ff 48 7f 5a 37     vmovdqu16 [rdx+0xdc0],zmm3
0047bb  62 e1 ff 48 6f 6f 38     vmovdqu16 zmm21,[rdi+0xe00]
0047c2  62 e1 ff 48 6f 66 38     vmovdqu16 zmm20,[rsi+0xe00]
0047c9  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0047cf  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0047d6  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0047dc  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0047e3  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0047e9  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0047ef  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0047f5  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0047fb  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004801  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004808  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00480e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004814  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00481a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004820  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004826  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00482c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004832  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004839  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00483f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004845  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00484b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004851  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004857  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
00485e  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004864  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00486b  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004872  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004878  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
00487f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004885  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00488b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004891  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004897  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
00489d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0048a4  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0048aa  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0048b0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0048b6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0048bc  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0048c2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0048c8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0048ce  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0048d5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0048db  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0048e1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0048e7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0048ed  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0048f3  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0048fa  62 f1 ff 48 7f 5a 38     vmovdqu16 [rdx+0xe00],zmm3
004901  62 e1 ff 48 6f 6f 39     vmovdqu16 zmm21,[rdi+0xe40]
004908  62 e1 ff 48 6f 66 39     vmovdqu16 zmm20,[rsi+0xe40]
00490f  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004915  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00491c  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004922  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004929  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00492f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004935  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00493b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004941  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004947  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00494e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004954  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00495a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004960  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004966  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
00496c  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004972  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004978  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
00497f  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004985  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00498b  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004991  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004997  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
00499d  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
0049a4  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
0049aa  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0049b1  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
0049b8  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
0049be  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0049c5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0049cb  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0049d1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0049d7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0049dd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0049e3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0049ea  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0049f0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0049f6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0049fc  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004a02  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004a08  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004a0e  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004a14  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004a1b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004a21  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004a27  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004a2d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004a33  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004a39  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004a40  62 f1 ff 48 7f 5a 39     vmovdqu16 [rdx+0xe40],zmm3
004a47  62 e1 ff 48 6f 6f 3a     vmovdqu16 zmm21,[rdi+0xe80]
004a4e  62 e1 ff 48 6f 66 3a     vmovdqu16 zmm20,[rsi+0xe80]
004a55  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004a5b  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004a62  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004a68  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004a6f  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004a75  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004a7b  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004a81  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004a87  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004a8d  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004a94  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004a9a  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004aa0  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004aa6  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004aac  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004ab2  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004ab8  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004abe  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004ac5  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004acb  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004ad1  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004ad7  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004add  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004ae3  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004aea  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004af0  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004af7  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004afe  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004b04  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004b0b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004b11  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004b17  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004b1d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004b23  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004b29  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004b30  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004b36  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004b3c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004b42  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004b48  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004b4e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004b54  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004b5a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004b61  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004b67  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004b6d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004b73  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004b79  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004b7f  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004b86  62 f1 ff 48 7f 5a 3a     vmovdqu16 [rdx+0xe80],zmm3
004b8d  62 e1 ff 48 6f 6f 3b     vmovdqu16 zmm21,[rdi+0xec0]
004b94  62 e1 ff 48 6f 66 3b     vmovdqu16 zmm20,[rsi+0xec0]
004b9b  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004ba1  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004ba8  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004bae  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004bb5  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004bbb  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004bc1  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004bc7  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004bcd  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004bd3  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004bda  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004be0  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004be6  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004bec  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004bf2  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004bf8  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004bfe  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004c04  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004c0b  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004c11  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004c17  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004c1d  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004c23  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004c29  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004c30  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004c36  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004c3d  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004c44  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004c4a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004c51  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004c57  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004c5d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004c63  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004c69  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004c6f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004c76  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004c7c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004c82  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004c88  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004c8e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004c94  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004c9a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004ca0  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004ca7  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004cad  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004cb3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004cb9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004cbf  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004cc5  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004ccc  62 f1 ff 48 7f 5a 3b     vmovdqu16 [rdx+0xec0],zmm3
004cd3  62 e1 ff 48 6f 6f 3c     vmovdqu16 zmm21,[rdi+0xf00]
004cda  62 e1 ff 48 6f 66 3c     vmovdqu16 zmm20,[rsi+0xf00]
004ce1  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004ce7  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004cee  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004cf4  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004cfb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004d01  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004d07  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004d0d  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004d13  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004d19  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004d20  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004d26  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004d2c  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004d32  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004d38  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004d3e  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004d44  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004d4a  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004d51  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004d57  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004d5d  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004d63  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004d69  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004d6f  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004d76  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004d7c  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004d83  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004d8a  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004d90  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004d97  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004d9d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004da3  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004da9  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004daf  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004db5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004dbc  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004dc2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004dc8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004dce  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004dd4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004dda  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004de0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004de6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004ded  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004df3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004df9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004dff  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004e05  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004e0b  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004e12  62 f1 ff 48 7f 5a 3c     vmovdqu16 [rdx+0xf00],zmm3
004e19  62 e1 ff 48 6f 6f 3d     vmovdqu16 zmm21,[rdi+0xf40]
004e20  62 e1 ff 48 6f 66 3d     vmovdqu16 zmm20,[rsi+0xf40]
004e27  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004e2d  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004e34  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004e3a  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004e41  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004e47  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004e4d  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004e53  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004e59  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004e5f  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004e66  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004e6c  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004e72  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004e78  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004e7e  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004e84  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004e8a  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004e90  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004e97  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004e9d  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004ea3  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004ea9  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004eaf  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004eb5  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
004ebc  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
004ec2  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004ec9  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
004ed0  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
004ed6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004edd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004ee3  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004ee9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004eef  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004ef5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004efb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004f02  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004f08  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004f0e  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004f14  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004f1a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004f20  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004f26  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004f2c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004f33  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004f39  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004f3f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004f45  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004f4b  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
004f51  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
004f58  62 f1 ff 48 7f 5a 3d     vmovdqu16 [rdx+0xf40],zmm3
004f5f  62 e1 ff 48 6f 6f 3e     vmovdqu16 zmm21,[rdi+0xf80]
004f66  62 e1 ff 48 6f 66 3e     vmovdqu16 zmm20,[rsi+0xf80]
004f6d  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
004f73  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
004f7a  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
004f80  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
004f87  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
004f8d  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
004f93  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
004f99  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
004f9f  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
004fa5  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
004fac  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
004fb2  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
004fb8  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
004fbe  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
004fc4  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
004fca  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
004fd0  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
004fd6  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
004fdd  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
004fe3  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
004fe9  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
004fef  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
004ff5  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
004ffb  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005002  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
005008  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
00500f  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
005016  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
00501c  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005023  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
005029  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
00502f  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
005035  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
00503b  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005041  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
005048  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
00504e  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
005054  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
00505a  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
005060  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005066  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
00506c  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
005072  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005079  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
00507f  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
005085  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
00508b  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
005091  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
005097  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
00509e  62 f1 ff 48 7f 5a 3e     vmovdqu16 [rdx+0xf80],zmm3
0050a5  62 e1 ff 48 6f 6f 3f     vmovdqu16 zmm21,[rdi+0xfc0]
0050ac  62 e1 ff 48 6f 66 3f     vmovdqu16 zmm20,[rsi+0xfc0]
0050b3  62 a2 7d 48 33 dd        vpmovzxwd zmm19,ymm21
0050b9  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
0050c0  62 a2 7d 48 33 d4        vpmovzxwd zmm18,ymm20
0050c6  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
0050cd  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0050d3  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
0050d9  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
0050df  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
0050e5  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
0050eb  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
0050f2  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
0050f8  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
0050fe  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
005104  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
00510a  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
005110  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
005116  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
00511c  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
005123  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
005129  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
00512f  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
005135  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
00513b  62 b2 7e 48 72 d9        vcvtneps2bf16 ymm3,zmm17
005141  62 a3 fd 48 3b eb 01     vextracti64x4 ymm19,zmm21,1
005148  62 a2 7d 48 33 db        vpmovzxwd zmm19,ymm19
00514e  62 b1 65 40 72 f3 10     vpslld    zmm19,zmm19,0x10
005155  62 a3 fd 48 3b e2 01     vextracti64x4 ymm18,zmm20,1
00515c  62 a2 7d 48 33 d2        vpmovzxwd zmm18,ymm18
005162  62 b1 6d 40 72 f2 10     vpslld    zmm18,zmm18,0x10
005169  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00516f  62 a1 74 40 5c ca        vsubps    zmm17,zmm17,zmm18
005175  62 a1 74 40 5d ce        vminps    zmm17,zmm17,zmm22
00517b  62 81 74 40 5f cf        vmaxps    zmm17,zmm17,zmm31
005181  62 91 74 40 59 c6        vmulps    zmm0,zmm17,zmm30
005187  62 f3 7d 48 08 c8 00     vrndscaleps zmm1,zmm0,0
00518e  62 f1 7c 48 5c c1        vsubps    zmm0,zmm0,zmm1
005194  62 91 7c 48 28 d5        vmovaps   zmm2,zmm29
00519a  62 92 7d 48 a8 d4        vfmadd213ps zmm2,zmm0,zmm28
0051a0  62 92 7d 48 a8 d3        vfmadd213ps zmm2,zmm0,zmm27
0051a6  62 92 7d 48 a8 d2        vfmadd213ps zmm2,zmm0,zmm26
0051ac  62 92 7d 48 a8 d1        vfmadd213ps zmm2,zmm0,zmm25
0051b2  62 f1 7d 48 5b c9        vcvtps2dq zmm1,zmm1
0051b8  62 f1 75 48 72 f1 17     vpslld    zmm1,zmm1,0x17
0051bf  62 91 75 48 fe c8        vpaddd    zmm1,zmm1,zmm24
0051c5  62 e1 6c 48 59 c9        vmulps    zmm17,zmm2,zmm1
0051cb  62 a1 74 40 58 cf        vaddps    zmm17,zmm17,zmm23
0051d1  62 a1 64 40 5e c9        vdivps    zmm17,zmm19,zmm17
0051d7  62 b2 7e 48 72 e1        vcvtneps2bf16 ymm4,zmm17
0051dd  62 f3 e5 48 3a dc 01     vinserti64x4 zmm3,zmm3,ymm4,1
0051e4  62 f1 ff 48 7f 5a 3f     vmovdqu16 [rdx+0xfc0],zmm3
0051eb  c5 f8 77                 vzeroupper
0051ee  c3                       ret
