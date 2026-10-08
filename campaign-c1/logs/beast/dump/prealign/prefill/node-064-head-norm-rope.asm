; node 64: head-norm-rope (layer 3), kernel 61 at image offset 0xe6552, 1673 bytes, 256 tasks, up to 1 participants

000000  53                       push      rbx
000001  55                       push      rbp
000002  41 54                    push      r12
000004  41 55                    push      r13
000006  41 56                    push      r14
000008  48 83 ec 10              sub       rsp,0x10
00000c  66 0f 7e 04 24           movd      [rsp],xmm0
000011  48 89 fb                 mov       rbx,rdi
000014  48 89 f5                 mov       rbp,rsi
000017  49 89 d4                 mov       r12,rdx
00001a  49 89 cd                 mov       r13,rcx
00001d  49 be 08 00 00 00 00 00 00 00 mov       r14,8
000027  48 89 df                 mov       rdi,rbx
00002a  48 89 ee                 mov       rsi,rbp
00002d  48 89 da                 mov       rdx,rbx
000030  66 0f 6e 04 24           movd      xmm0,[rsp]
000035  e8 27 00 00 00           call      0x0000000000000061
00003a  48 89 df                 mov       rdi,rbx
00003d  4c 89 e6                 mov       rsi,r12
000040  4c 89 ea                 mov       rdx,r13
000043  e8 75 05 00 00           call      0x00000000000005bd
000048  48 81 c3 00 02 00 00     add       rbx,0x200
00004f  49 ff ce                 dec       r14
000052  75 d3                    jne       short 0x0000000000000027
000054  48 83 c4 10              add       rsp,0x10
000058  41 5e                    pop       r14
00005a  41 5d                    pop       r13
00005c  41 5c                    pop       r12
00005e  5d                       pop       rbp
00005f  5b                       pop       rbx
000060  c3                       ret
000061  c4 c1 79 7e c2           vmovd     r10d,xmm0
000066  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00006c  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000072  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000078  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00007e  62 f1 ff 48 6f 27        vmovdqu16 zmm4,[rdi]
000084  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
00008a  62 f1 ff 48 6f 67 01     vmovdqu16 zmm4,[rdi+0x40]
000091  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
000097  62 f1 ff 48 6f 67 02     vmovdqu16 zmm4,[rdi+0x80]
00009e  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
0000a4  62 f1 ff 48 6f 67 03     vmovdqu16 zmm4,[rdi+0xc0]
0000ab  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
0000b1  62 f1 ff 48 6f 67 04     vmovdqu16 zmm4,[rdi+0x100]
0000b8  62 f2 5e 48 52 c4        vdpbf16ps zmm0,zmm4,zmm4
0000be  62 f1 ff 48 6f 67 05     vmovdqu16 zmm4,[rdi+0x140]
0000c5  62 f2 5e 48 52 cc        vdpbf16ps zmm1,zmm4,zmm4
0000cb  62 f1 ff 48 6f 67 06     vmovdqu16 zmm4,[rdi+0x180]
0000d2  62 f2 5e 48 52 d4        vdpbf16ps zmm2,zmm4,zmm4
0000d8  62 f1 ff 48 6f 67 07     vmovdqu16 zmm4,[rdi+0x1c0]
0000df  62 f2 5e 48 52 dc        vdpbf16ps zmm3,zmm4,zmm4
0000e5  62 f1 7c 48 58 c1        vaddps    zmm0,zmm0,zmm1
0000eb  62 f1 7c 48 58 c2        vaddps    zmm0,zmm0,zmm2
0000f1  62 f1 7c 48 58 c3        vaddps    zmm0,zmm0,zmm3
0000f7  62 f3 fd 48 1b c4 01     vextractf64x4 ymm4,zmm0,1
0000fe  c5 fc 58 c4              vaddps    ymm0,ymm0,ymm4
000102  c4 e3 7d 19 c4 01        vextractf128 xmm4,ymm0,1
000108  c5 f8 58 c4              vaddps    xmm0,xmm0,xmm4
00010c  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
000110  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
000114  b8 00 00 80 3b           mov       eax,0x3b800000
000119  c5 f9 6e e0              vmovd     xmm4,eax
00011d  c5 fa 59 c4              vmulss    xmm0,xmm0,xmm4
000121  c4 c1 79 6e e2           vmovd     xmm4,r10d
000126  c5 fa 58 c4              vaddss    xmm0,xmm0,xmm4
00012a  c5 fa 51 c0              vsqrtss   xmm0,xmm0,xmm0
00012e  b8 00 00 80 3f           mov       eax,0x3f800000
000133  c5 f9 6e e0              vmovd     xmm4,eax
000137  c5 da 5e c0              vdivss    xmm0,xmm4,xmm0
00013b  62 62 7d 48 18 f8        vbroadcastss zmm31,xmm0
000141  b8 00 00 80 3f           mov       eax,0x3f800000
000146  62 62 7d 48 7c d0        vpbroadcastd zmm26,eax
00014c  62 61 ff 48 6f 37        vmovdqu16 zmm30,[rdi]
000152  62 61 ff 48 6f 2e        vmovdqu16 zmm29,[rsi]
000158  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00015e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000165  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
00016b  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000172  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000178  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00017e  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000184  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00018a  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000191  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000197  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00019e  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0001a5  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0001ab  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0001b2  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0001b8  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0001be  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0001c4  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0001ca  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0001d1  62 f1 ff 48 7f 02        vmovdqu16 [rdx],zmm0
0001d7  62 61 ff 48 6f 77 01     vmovdqu16 zmm30,[rdi+0x40]
0001de  62 61 ff 48 6f 6e 01     vmovdqu16 zmm29,[rsi+0x40]
0001e5  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0001eb  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0001f2  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0001f8  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0001ff  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000205  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00020b  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000211  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000217  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00021e  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000224  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00022b  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000232  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000238  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00023f  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000245  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00024b  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000251  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000257  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00025e  62 f1 ff 48 7f 42 01     vmovdqu16 [rdx+0x40],zmm0
000265  62 61 ff 48 6f 77 02     vmovdqu16 zmm30,[rdi+0x80]
00026c  62 61 ff 48 6f 6e 02     vmovdqu16 zmm29,[rsi+0x80]
000273  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000279  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000280  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000286  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00028d  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000293  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000299  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00029f  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0002a5  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0002ac  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0002b2  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0002b9  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0002c0  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0002c6  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0002cd  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0002d3  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0002d9  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0002df  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0002e5  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0002ec  62 f1 ff 48 7f 42 02     vmovdqu16 [rdx+0x80],zmm0
0002f3  62 61 ff 48 6f 77 03     vmovdqu16 zmm30,[rdi+0xc0]
0002fa  62 61 ff 48 6f 6e 03     vmovdqu16 zmm29,[rsi+0xc0]
000301  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000307  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00030e  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000314  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00031b  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000321  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000327  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00032d  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
000333  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00033a  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000340  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000347  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
00034e  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000354  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
00035b  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000361  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000367  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
00036d  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000373  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00037a  62 f1 ff 48 7f 42 03     vmovdqu16 [rdx+0xc0],zmm0
000381  62 61 ff 48 6f 77 04     vmovdqu16 zmm30,[rdi+0x100]
000388  62 61 ff 48 6f 6e 04     vmovdqu16 zmm29,[rsi+0x100]
00038f  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000395  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00039c  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0003a2  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0003a9  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0003af  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0003b5  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0003bb  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0003c1  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0003c8  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0003ce  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0003d5  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0003dc  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0003e2  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0003e9  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0003ef  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0003f5  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0003fb  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
000401  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000408  62 f1 ff 48 7f 42 04     vmovdqu16 [rdx+0x100],zmm0
00040f  62 61 ff 48 6f 77 05     vmovdqu16 zmm30,[rdi+0x140]
000416  62 61 ff 48 6f 6e 05     vmovdqu16 zmm29,[rsi+0x140]
00041d  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000423  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00042a  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
000430  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000437  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00043d  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000443  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000449  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00044f  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000456  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00045c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000463  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
00046a  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
000470  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000477  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00047d  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000483  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000489  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00048f  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000496  62 f1 ff 48 7f 42 05     vmovdqu16 [rdx+0x140],zmm0
00049d  62 61 ff 48 6f 77 06     vmovdqu16 zmm30,[rdi+0x180]
0004a4  62 61 ff 48 6f 6e 06     vmovdqu16 zmm29,[rsi+0x180]
0004ab  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0004b1  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0004b8  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
0004be  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
0004c5  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
0004cb  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
0004d1  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0004d7  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
0004dd  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0004e4  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0004ea  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0004f1  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
0004f8  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
0004fe  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000505  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
00050b  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
000511  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000517  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
00051d  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000524  62 f1 ff 48 7f 42 06     vmovdqu16 [rdx+0x180],zmm0
00052b  62 61 ff 48 6f 77 07     vmovdqu16 zmm30,[rdi+0x1c0]
000532  62 61 ff 48 6f 6e 07     vmovdqu16 zmm29,[rsi+0x1c0]
000539  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00053f  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000546  62 02 7d 48 33 dd        vpmovzxwd zmm27,ymm29
00054c  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000553  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000559  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00055f  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
000565  62 92 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm28
00056b  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000572  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000578  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00057f  62 03 fd 48 3b eb 01     vextracti64x4 ymm27,zmm29,1
000586  62 02 7d 48 33 db        vpmovzxwd zmm27,ymm27
00058c  62 91 25 40 72 f3 10     vpslld    zmm27,zmm27,0x10
000593  62 01 24 40 58 da        vaddps    zmm27,zmm27,zmm26
000599  62 01 1c 40 59 e7        vmulps    zmm28,zmm28,zmm31
00059f  62 01 1c 40 59 e3        vmulps    zmm28,zmm28,zmm27
0005a5  62 92 7e 48 72 cc        vcvtneps2bf16 ymm1,zmm28
0005ab  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0005b2  62 f1 ff 48 7f 42 07     vmovdqu16 [rdx+0x1c0],zmm0
0005b9  c5 f8 77                 vzeroupper
0005bc  c3                       ret
0005bd  62 62 7d 48 33 3f        vpmovzxwd zmm31,[rdi]
0005c3  62 91 05 40 72 f7 10     vpslld    zmm31,zmm31,0x10
0005ca  62 62 7d 48 33 77 02     vpmovzxwd zmm30,[rdi+0x40]
0005d1  62 91 0d 40 72 f6 10     vpslld    zmm30,zmm30,0x10
0005d8  62 62 7d 48 33 2e        vpmovzxwd zmm29,[rsi]
0005de  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0005e5  62 62 7d 48 33 22        vpmovzxwd zmm28,[rdx]
0005eb  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0005f2  62 91 04 40 59 c5        vmulps    zmm0,zmm31,zmm29
0005f8  62 92 0d 40 bc c4        vfnmadd231ps zmm0,zmm30,zmm28
0005fe  62 91 04 40 59 cc        vmulps    zmm1,zmm31,zmm28
000604  62 92 0d 40 b8 cd        vfmadd231ps zmm1,zmm30,zmm29
00060a  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000610  62 f2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm1
000616  c5 fc 11 07              vmovups   [rdi],ymm0
00061a  c5 fc 11 4f 40           vmovups   [rdi+0x40],ymm1
00061f  62 62 7d 48 33 7f 01     vpmovzxwd zmm31,[rdi+0x20]
000626  62 91 05 40 72 f7 10     vpslld    zmm31,zmm31,0x10
00062d  62 62 7d 48 33 77 03     vpmovzxwd zmm30,[rdi+0x60]
000634  62 91 0d 40 72 f6 10     vpslld    zmm30,zmm30,0x10
00063b  62 62 7d 48 33 6e 01     vpmovzxwd zmm29,[rsi+0x20]
000642  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000649  62 62 7d 48 33 62 01     vpmovzxwd zmm28,[rdx+0x20]
000650  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000657  62 91 04 40 59 c5        vmulps    zmm0,zmm31,zmm29
00065d  62 92 0d 40 bc c4        vfnmadd231ps zmm0,zmm30,zmm28
000663  62 91 04 40 59 cc        vmulps    zmm1,zmm31,zmm28
000669  62 92 0d 40 b8 cd        vfmadd231ps zmm1,zmm30,zmm29
00066f  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000675  62 f2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm1
00067b  c5 fc 11 47 20           vmovups   [rdi+0x20],ymm0
000680  c5 fc 11 4f 60           vmovups   [rdi+0x60],ymm1
000685  c5 f8 77                 vzeroupper
000688  c3                       ret
