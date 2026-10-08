; node 59: rms-norm (layer 3), kernel 56 at image offset 0xe04df, 5092 bytes, 1 tasks, up to 1 participants

000000  c4 c1 79 7e c2           vmovd     r10d,xmm0
000005  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00000b  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000011  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000017  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00001d  62 f1 ff 48 6f 27        vmovdqu16 zmm4,[rdi]
000023  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
000029  62 f1 ff 48 6f 67 01     vmovdqu16 zmm4,[rdi+0x40]
000030  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
000036  62 f1 ff 48 6f 67 02     vmovdqu16 zmm4,[rdi+0x80]
00003d  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
000043  62 f1 ff 48 6f 67 03     vmovdqu16 zmm4,[rdi+0xc0]
00004a  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
000050  62 f1 ff 48 6f 67 04     vmovdqu16 zmm4,[rdi+0x100]
000057  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
00005d  62 f1 ff 48 6f 67 05     vmovdqu16 zmm4,[rdi+0x140]
000064  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
00006a  62 f1 ff 48 6f 67 06     vmovdqu16 zmm4,[rdi+0x180]
000071  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
000077  62 f1 ff 48 6f 67 07     vmovdqu16 zmm4,[rdi+0x1c0]
00007e  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
000084  62 f1 ff 48 6f 67 08     vmovdqu16 zmm4,[rdi+0x200]
00008b  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
000091  62 f1 ff 48 6f 67 09     vmovdqu16 zmm4,[rdi+0x240]
000098  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
00009e  62 f1 ff 48 6f 67 0a     vmovdqu16 zmm4,[rdi+0x280]
0000a5  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
0000ab  62 f1 ff 48 6f 67 0b     vmovdqu16 zmm4,[rdi+0x2c0]
0000b2  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
0000b8  62 f1 ff 48 6f 67 0c     vmovdqu16 zmm4,[rdi+0x300]
0000bf  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
0000c5  62 f1 ff 48 6f 67 0d     vmovdqu16 zmm4,[rdi+0x340]
0000cc  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
0000d2  62 f1 ff 48 6f 67 0e     vmovdqu16 zmm4,[rdi+0x380]
0000d9  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
0000df  62 f1 ff 48 6f 67 0f     vmovdqu16 zmm4,[rdi+0x3c0]
0000e6  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
0000ec  62 f1 ff 48 6f 67 10     vmovdqu16 zmm4,[rdi+0x400]
0000f3  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
0000f9  62 f1 ff 48 6f 67 11     vmovdqu16 zmm4,[rdi+0x440]
000100  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
000106  62 f1 ff 48 6f 67 12     vmovdqu16 zmm4,[rdi+0x480]
00010d  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
000113  62 f1 ff 48 6f 67 13     vmovdqu16 zmm4,[rdi+0x4c0]
00011a  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
000120  62 f1 ff 48 6f 67 14     vmovdqu16 zmm4,[rdi+0x500]
000127  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
00012d  62 f1 ff 48 6f 67 15     vmovdqu16 zmm4,[rdi+0x540]
000134  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
00013a  62 f1 ff 48 6f 67 16     vmovdqu16 zmm4,[rdi+0x580]
000141  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
000147  62 f1 ff 48 6f 67 17     vmovdqu16 zmm4,[rdi+0x5c0]
00014e  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
000154  62 f1 ff 48 6f 67 18     vmovdqu16 zmm4,[rdi+0x600]
00015b  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
000161  62 f1 ff 48 6f 67 19     vmovdqu16 zmm4,[rdi+0x640]
000168  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
00016e  62 f1 ff 48 6f 67 1a     vmovdqu16 zmm4,[rdi+0x680]
000175  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
00017b  62 f1 ff 48 6f 67 1b     vmovdqu16 zmm4,[rdi+0x6c0]
000182  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
000188  62 f1 ff 48 6f 67 1c     vmovdqu16 zmm4,[rdi+0x700]
00018f  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
000195  62 f1 ff 48 6f 67 1d     vmovdqu16 zmm4,[rdi+0x740]
00019c  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
0001a2  62 f1 ff 48 6f 67 1e     vmovdqu16 zmm4,[rdi+0x780]
0001a9  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
0001af  62 f1 ff 48 6f 67 1f     vmovdqu16 zmm4,[rdi+0x7c0]
0001b6  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
0001bc  62 f1 7c 48 58 c1        vaddps    zmm0,zmm0,zmm1
0001c2  62 f1 7c 48 58 c2        vaddps    zmm0,zmm0,zmm2
0001c8  62 f1 7c 48 58 c3        vaddps    zmm0,zmm0,zmm3
0001ce  62 f3 fd 48 1b c4 01     vextractf64x4 ymm4,zmm0,1
0001d5  c5 fc 58 c4              vaddps    ymm0,ymm0,ymm4
0001d9  c4 e3 7d 19 c4 01        vextractf128 xmm4,ymm0,1
0001df  c5 f8 58 c4              vaddps    xmm0,xmm0,xmm4
0001e3  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0001e7  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0001eb  b8 00 00 80 3a           mov       eax,0x3a800000
0001f0  c5 f9 6e e0              vmovd     xmm4,eax
0001f4  c5 fa 59 c4              vmulss    xmm0,xmm0,xmm4
0001f8  c4 c1 79 6e e2           vmovd     xmm4,r10d
0001fd  c5 fa 58 c4              vaddss    xmm0,xmm0,xmm4
000201  c5 fa 51 c0              vsqrtss   xmm0,xmm0,xmm0
000205  b8 00 00 80 3f           mov       eax,0x3f800000
00020a  c5 f9 6e e0              vmovd     xmm4,eax
00020e  c5 da 5e c0              vdivss    xmm0,xmm4,xmm0
000212  62 62 7d 48 18 f8        vbroadcastss zmm31,xmm0
000218  b8 00 00 80 3f           mov       eax,0x3f800000
00021d  62 62 7d 48 7c d0        vpbroadcastd zmm26,eax
000223  62 61 ff 48 6f 37        vmovdqu16 zmm30,[rdi]
000229  62 61 ff 48 6f 2e        vmovdqu16 zmm29,[rsi]
00022f  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000235  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00023c  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000242  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000249  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00024f  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000255  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00025b  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000261  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000268  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00026e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000275  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
00027c  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000282  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000289  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00028f  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000295  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00029b  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0002a1  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0002a8  62 f1 ff 48 7f 02        vmovdqu16 [rdx],zmm0
0002ae  62 61 ff 48 6f 77 01     vmovdqu16 zmm30,[rdi+0x40]
0002b5  62 61 ff 48 6f 6e 01     vmovdqu16 zmm29,[rsi+0x40]
0002bc  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0002c2  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0002c9  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0002cf  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0002d6  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0002dc  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0002e2  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0002e8  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0002ee  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0002f5  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0002fb  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000302  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000309  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00030f  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000316  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00031c  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000322  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000328  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00032e  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000335  62 f1 ff 48 7f 42 01     vmovdqu16 [rdx+0x40],zmm0
00033c  62 61 ff 48 6f 77 02     vmovdqu16 zmm30,[rdi+0x80]
000343  62 61 ff 48 6f 6e 02     vmovdqu16 zmm29,[rsi+0x80]
00034a  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000350  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000357  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
00035d  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000364  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00036a  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000370  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000376  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00037c  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000383  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000389  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000390  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000397  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00039d  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0003a4  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0003aa  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0003b0  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0003b6  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0003bc  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0003c3  62 f1 ff 48 7f 42 02     vmovdqu16 [rdx+0x80],zmm0
0003ca  62 61 ff 48 6f 77 03     vmovdqu16 zmm30,[rdi+0xc0]
0003d1  62 61 ff 48 6f 6e 03     vmovdqu16 zmm29,[rsi+0xc0]
0003d8  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0003de  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0003e5  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0003eb  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0003f2  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0003f8  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0003fe  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000404  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00040a  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000411  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000417  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00041e  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000425  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00042b  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000432  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000438  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00043e  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000444  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00044a  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000451  62 f1 ff 48 7f 42 03     vmovdqu16 [rdx+0xc0],zmm0
000458  62 61 ff 48 6f 77 04     vmovdqu16 zmm30,[rdi+0x100]
00045f  62 61 ff 48 6f 6e 04     vmovdqu16 zmm29,[rsi+0x100]
000466  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00046c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000473  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000479  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000480  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000486  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00048c  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000492  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000498  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00049f  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0004a5  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0004ac  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0004b3  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0004b9  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0004c0  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0004c6  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0004cc  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0004d2  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0004d8  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0004df  62 f1 ff 48 7f 42 04     vmovdqu16 [rdx+0x100],zmm0
0004e6  62 61 ff 48 6f 77 05     vmovdqu16 zmm30,[rdi+0x140]
0004ed  62 61 ff 48 6f 6e 05     vmovdqu16 zmm29,[rsi+0x140]
0004f4  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0004fa  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000501  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000507  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00050e  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000514  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00051a  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000520  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000526  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00052d  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000533  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00053a  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000541  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000547  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00054e  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000554  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00055a  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000560  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000566  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00056d  62 f1 ff 48 7f 42 05     vmovdqu16 [rdx+0x140],zmm0
000574  62 61 ff 48 6f 77 06     vmovdqu16 zmm30,[rdi+0x180]
00057b  62 61 ff 48 6f 6e 06     vmovdqu16 zmm29,[rsi+0x180]
000582  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000588  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00058f  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000595  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00059c  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0005a2  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0005a8  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0005ae  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0005b4  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0005bb  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0005c1  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0005c8  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0005cf  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0005d5  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0005dc  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0005e2  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0005e8  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0005ee  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0005f4  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0005fb  62 f1 ff 48 7f 42 06     vmovdqu16 [rdx+0x180],zmm0
000602  62 61 ff 48 6f 77 07     vmovdqu16 zmm30,[rdi+0x1c0]
000609  62 61 ff 48 6f 6e 07     vmovdqu16 zmm29,[rsi+0x1c0]
000610  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000616  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00061d  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000623  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00062a  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000630  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000636  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00063c  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000642  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000649  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00064f  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000656  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
00065d  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000663  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00066a  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000670  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000676  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00067c  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000682  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000689  62 f1 ff 48 7f 42 07     vmovdqu16 [rdx+0x1c0],zmm0
000690  62 61 ff 48 6f 77 08     vmovdqu16 zmm30,[rdi+0x200]
000697  62 61 ff 48 6f 6e 08     vmovdqu16 zmm29,[rsi+0x200]
00069e  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0006a4  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0006ab  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0006b1  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0006b8  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0006be  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0006c4  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0006ca  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0006d0  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0006d7  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0006dd  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0006e4  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0006eb  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0006f1  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0006f8  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0006fe  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000704  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00070a  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000710  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000717  62 f1 ff 48 7f 42 08     vmovdqu16 [rdx+0x200],zmm0
00071e  62 61 ff 48 6f 77 09     vmovdqu16 zmm30,[rdi+0x240]
000725  62 61 ff 48 6f 6e 09     vmovdqu16 zmm29,[rsi+0x240]
00072c  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000732  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000739  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
00073f  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000746  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00074c  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000752  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000758  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00075e  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000765  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00076b  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000772  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000779  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00077f  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000786  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00078c  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000792  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000798  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00079e  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0007a5  62 f1 ff 48 7f 42 09     vmovdqu16 [rdx+0x240],zmm0
0007ac  62 61 ff 48 6f 77 0a     vmovdqu16 zmm30,[rdi+0x280]
0007b3  62 61 ff 48 6f 6e 0a     vmovdqu16 zmm29,[rsi+0x280]
0007ba  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0007c0  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0007c7  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0007cd  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0007d4  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0007da  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0007e0  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0007e6  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0007ec  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0007f3  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0007f9  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000800  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000807  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00080d  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000814  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00081a  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000820  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000826  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00082c  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000833  62 f1 ff 48 7f 42 0a     vmovdqu16 [rdx+0x280],zmm0
00083a  62 61 ff 48 6f 77 0b     vmovdqu16 zmm30,[rdi+0x2c0]
000841  62 61 ff 48 6f 6e 0b     vmovdqu16 zmm29,[rsi+0x2c0]
000848  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00084e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000855  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
00085b  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000862  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000868  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00086e  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000874  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00087a  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000881  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000887  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00088e  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000895  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00089b  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0008a2  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0008a8  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0008ae  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0008b4  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0008ba  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0008c1  62 f1 ff 48 7f 42 0b     vmovdqu16 [rdx+0x2c0],zmm0
0008c8  62 61 ff 48 6f 77 0c     vmovdqu16 zmm30,[rdi+0x300]
0008cf  62 61 ff 48 6f 6e 0c     vmovdqu16 zmm29,[rsi+0x300]
0008d6  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0008dc  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0008e3  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0008e9  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0008f0  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0008f6  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0008fc  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000902  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000908  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00090f  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000915  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00091c  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000923  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000929  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000930  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000936  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00093c  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000942  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000948  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00094f  62 f1 ff 48 7f 42 0c     vmovdqu16 [rdx+0x300],zmm0
000956  62 61 ff 48 6f 77 0d     vmovdqu16 zmm30,[rdi+0x340]
00095d  62 61 ff 48 6f 6e 0d     vmovdqu16 zmm29,[rsi+0x340]
000964  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00096a  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000971  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000977  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00097e  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000984  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00098a  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000990  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000996  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00099d  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0009a3  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0009aa  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0009b1  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0009b7  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0009be  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0009c4  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0009ca  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0009d0  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0009d6  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0009dd  62 f1 ff 48 7f 42 0d     vmovdqu16 [rdx+0x340],zmm0
0009e4  62 61 ff 48 6f 77 0e     vmovdqu16 zmm30,[rdi+0x380]
0009eb  62 61 ff 48 6f 6e 0e     vmovdqu16 zmm29,[rsi+0x380]
0009f2  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0009f8  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0009ff  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000a05  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000a0c  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000a12  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000a18  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000a1e  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000a24  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000a2b  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000a31  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000a38  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000a3f  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000a45  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000a4c  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000a52  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000a58  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000a5e  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000a64  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000a6b  62 f1 ff 48 7f 42 0e     vmovdqu16 [rdx+0x380],zmm0
000a72  62 61 ff 48 6f 77 0f     vmovdqu16 zmm30,[rdi+0x3c0]
000a79  62 61 ff 48 6f 6e 0f     vmovdqu16 zmm29,[rsi+0x3c0]
000a80  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000a86  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000a8d  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000a93  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000a9a  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000aa0  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000aa6  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000aac  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000ab2  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000ab9  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000abf  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000ac6  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000acd  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000ad3  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000ada  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000ae0  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000ae6  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000aec  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000af2  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000af9  62 f1 ff 48 7f 42 0f     vmovdqu16 [rdx+0x3c0],zmm0
000b00  62 61 ff 48 6f 77 10     vmovdqu16 zmm30,[rdi+0x400]
000b07  62 61 ff 48 6f 6e 10     vmovdqu16 zmm29,[rsi+0x400]
000b0e  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000b14  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000b1b  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000b21  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000b28  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000b2e  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000b34  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000b3a  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000b40  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000b47  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000b4d  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000b54  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000b5b  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000b61  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000b68  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000b6e  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000b74  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000b7a  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000b80  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000b87  62 f1 ff 48 7f 42 10     vmovdqu16 [rdx+0x400],zmm0
000b8e  62 61 ff 48 6f 77 11     vmovdqu16 zmm30,[rdi+0x440]
000b95  62 61 ff 48 6f 6e 11     vmovdqu16 zmm29,[rsi+0x440]
000b9c  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000ba2  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000ba9  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000baf  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000bb6  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000bbc  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000bc2  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000bc8  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000bce  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000bd5  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000bdb  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000be2  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000be9  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000bef  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000bf6  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000bfc  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000c02  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000c08  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000c0e  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000c15  62 f1 ff 48 7f 42 11     vmovdqu16 [rdx+0x440],zmm0
000c1c  62 61 ff 48 6f 77 12     vmovdqu16 zmm30,[rdi+0x480]
000c23  62 61 ff 48 6f 6e 12     vmovdqu16 zmm29,[rsi+0x480]
000c2a  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000c30  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000c37  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000c3d  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000c44  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000c4a  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000c50  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000c56  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000c5c  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000c63  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000c69  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000c70  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000c77  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000c7d  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000c84  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000c8a  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000c90  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000c96  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000c9c  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000ca3  62 f1 ff 48 7f 42 12     vmovdqu16 [rdx+0x480],zmm0
000caa  62 61 ff 48 6f 77 13     vmovdqu16 zmm30,[rdi+0x4c0]
000cb1  62 61 ff 48 6f 6e 13     vmovdqu16 zmm29,[rsi+0x4c0]
000cb8  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000cbe  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000cc5  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000ccb  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000cd2  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000cd8  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000cde  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000ce4  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000cea  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000cf1  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000cf7  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000cfe  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000d05  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000d0b  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000d12  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000d18  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000d1e  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000d24  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000d2a  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000d31  62 f1 ff 48 7f 42 13     vmovdqu16 [rdx+0x4c0],zmm0
000d38  62 61 ff 48 6f 77 14     vmovdqu16 zmm30,[rdi+0x500]
000d3f  62 61 ff 48 6f 6e 14     vmovdqu16 zmm29,[rsi+0x500]
000d46  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000d4c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000d53  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000d59  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000d60  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000d66  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000d6c  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000d72  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000d78  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000d7f  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000d85  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000d8c  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000d93  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000d99  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000da0  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000da6  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000dac  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000db2  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000db8  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000dbf  62 f1 ff 48 7f 42 14     vmovdqu16 [rdx+0x500],zmm0
000dc6  62 61 ff 48 6f 77 15     vmovdqu16 zmm30,[rdi+0x540]
000dcd  62 61 ff 48 6f 6e 15     vmovdqu16 zmm29,[rsi+0x540]
000dd4  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000dda  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000de1  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000de7  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000dee  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000df4  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000dfa  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000e00  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000e06  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000e0d  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000e13  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000e1a  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000e21  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000e27  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000e2e  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000e34  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000e3a  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000e40  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000e46  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000e4d  62 f1 ff 48 7f 42 15     vmovdqu16 [rdx+0x540],zmm0
000e54  62 61 ff 48 6f 77 16     vmovdqu16 zmm30,[rdi+0x580]
000e5b  62 61 ff 48 6f 6e 16     vmovdqu16 zmm29,[rsi+0x580]
000e62  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000e68  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000e6f  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000e75  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000e7c  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000e82  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000e88  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000e8e  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000e94  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000e9b  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000ea1  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000ea8  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000eaf  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000eb5  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000ebc  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000ec2  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000ec8  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000ece  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000ed4  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000edb  62 f1 ff 48 7f 42 16     vmovdqu16 [rdx+0x580],zmm0
000ee2  62 61 ff 48 6f 77 17     vmovdqu16 zmm30,[rdi+0x5c0]
000ee9  62 61 ff 48 6f 6e 17     vmovdqu16 zmm29,[rsi+0x5c0]
000ef0  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000ef6  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000efd  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000f03  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000f0a  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000f10  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000f16  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000f1c  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000f22  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000f29  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000f2f  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000f36  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000f3d  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000f43  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000f4a  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000f50  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000f56  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000f5c  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000f62  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000f69  62 f1 ff 48 7f 42 17     vmovdqu16 [rdx+0x5c0],zmm0
000f70  62 61 ff 48 6f 77 18     vmovdqu16 zmm30,[rdi+0x600]
000f77  62 61 ff 48 6f 6e 18     vmovdqu16 zmm29,[rsi+0x600]
000f7e  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000f84  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000f8b  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000f91  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000f98  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000f9e  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000fa4  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000faa  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000fb0  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000fb7  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000fbd  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000fc4  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000fcb  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000fd1  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000fd8  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000fde  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000fe4  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000fea  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000ff0  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000ff7  62 f1 ff 48 7f 42 18     vmovdqu16 [rdx+0x600],zmm0
000ffe  62 61 ff 48 6f 77 19     vmovdqu16 zmm30,[rdi+0x640]
001005  62 61 ff 48 6f 6e 19     vmovdqu16 zmm29,[rsi+0x640]
00100c  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
001012  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
001019  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
00101f  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
001026  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00102c  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
001032  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
001038  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00103e  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
001045  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00104b  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
001052  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
001059  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00105f  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
001066  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00106c  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
001072  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
001078  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00107e  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
001085  62 f1 ff 48 7f 42 19     vmovdqu16 [rdx+0x640],zmm0
00108c  62 61 ff 48 6f 77 1a     vmovdqu16 zmm30,[rdi+0x680]
001093  62 61 ff 48 6f 6e 1a     vmovdqu16 zmm29,[rsi+0x680]
00109a  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0010a0  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0010a7  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0010ad  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0010b4  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0010ba  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0010c0  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0010c6  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0010cc  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0010d3  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0010d9  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0010e0  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0010e7  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0010ed  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0010f4  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0010fa  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
001100  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
001106  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00110c  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
001113  62 f1 ff 48 7f 42 1a     vmovdqu16 [rdx+0x680],zmm0
00111a  62 61 ff 48 6f 77 1b     vmovdqu16 zmm30,[rdi+0x6c0]
001121  62 61 ff 48 6f 6e 1b     vmovdqu16 zmm29,[rsi+0x6c0]
001128  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00112e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
001135  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
00113b  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
001142  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
001148  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00114e  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
001154  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00115a  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
001161  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
001167  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00116e  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
001175  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00117b  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
001182  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
001188  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00118e  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
001194  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00119a  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0011a1  62 f1 ff 48 7f 42 1b     vmovdqu16 [rdx+0x6c0],zmm0
0011a8  62 61 ff 48 6f 77 1c     vmovdqu16 zmm30,[rdi+0x700]
0011af  62 61 ff 48 6f 6e 1c     vmovdqu16 zmm29,[rsi+0x700]
0011b6  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0011bc  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0011c3  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0011c9  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0011d0  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0011d6  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0011dc  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0011e2  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0011e8  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0011ef  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0011f5  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0011fc  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
001203  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
001209  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
001210  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
001216  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00121c  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
001222  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
001228  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00122f  62 f1 ff 48 7f 42 1c     vmovdqu16 [rdx+0x700],zmm0
001236  62 61 ff 48 6f 77 1d     vmovdqu16 zmm30,[rdi+0x740]
00123d  62 61 ff 48 6f 6e 1d     vmovdqu16 zmm29,[rsi+0x740]
001244  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00124a  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
001251  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
001257  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00125e  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
001264  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00126a  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
001270  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
001276  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00127d  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
001283  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00128a  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
001291  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
001297  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00129e  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0012a4  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0012aa  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0012b0  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0012b6  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0012bd  62 f1 ff 48 7f 42 1d     vmovdqu16 [rdx+0x740],zmm0
0012c4  62 61 ff 48 6f 77 1e     vmovdqu16 zmm30,[rdi+0x780]
0012cb  62 61 ff 48 6f 6e 1e     vmovdqu16 zmm29,[rsi+0x780]
0012d2  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0012d8  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0012df  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0012e5  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0012ec  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0012f2  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0012f8  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0012fe  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
001304  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00130b  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
001311  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
001318  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
00131f  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
001325  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00132c  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
001332  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
001338  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00133e  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
001344  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00134b  62 f1 ff 48 7f 42 1e     vmovdqu16 [rdx+0x780],zmm0
001352  62 61 ff 48 6f 77 1f     vmovdqu16 zmm30,[rdi+0x7c0]
001359  62 61 ff 48 6f 6e 1f     vmovdqu16 zmm29,[rsi+0x7c0]
001360  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
001366  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00136d  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
001373  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00137a  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
001380  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
001386  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00138c  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
001392  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
001399  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00139f  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0013a6  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0013ad  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0013b3  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0013ba  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0013c0  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0013c6  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0013cc  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0013d2  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0013d9  62 f1 ff 48 7f 42 1f     vmovdqu16 [rdx+0x7c0],zmm0
0013e0  c5 f8 77                 vzeroupper
0013e3  c3                       ret
