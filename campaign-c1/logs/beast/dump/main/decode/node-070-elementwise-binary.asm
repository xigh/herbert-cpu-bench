; node 70: elementwise-binary (layer 3), kernel 67 at image offset 0xf1535, 3777 bytes, 1 tasks, up to 1 participants

000000  62 61 ff 48 6f 3f        vmovdqu16 zmm31,[rdi]
000006  62 61 ff 48 6f 36        vmovdqu16 zmm30,[rsi]
00000c  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000012  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000019  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00001f  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000026  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
00002c  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000032  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000039  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
00003f  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000046  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00004d  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000053  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00005a  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000060  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000066  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00006d  62 f1 ff 48 7f 07        vmovdqu16 [rdi],zmm0
000073  62 61 ff 48 6f 7f 01     vmovdqu16 zmm31,[rdi+0x40]
00007a  62 61 ff 48 6f 76 01     vmovdqu16 zmm30,[rsi+0x40]
000081  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000087  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00008e  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000094  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00009b  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0000a1  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
0000a7  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
0000ae  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
0000b4  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0000bb  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0000c2  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0000c8  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0000cf  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0000d5  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
0000db  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0000e2  62 f1 ff 48 7f 47 01     vmovdqu16 [rdi+0x40],zmm0
0000e9  62 61 ff 48 6f 7f 02     vmovdqu16 zmm31,[rdi+0x80]
0000f0  62 61 ff 48 6f 76 02     vmovdqu16 zmm30,[rsi+0x80]
0000f7  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0000fd  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000104  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00010a  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000111  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000117  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
00011d  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000124  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
00012a  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000131  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000138  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00013e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000145  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
00014b  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000151  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000158  62 f1 ff 48 7f 47 02     vmovdqu16 [rdi+0x80],zmm0
00015f  62 61 ff 48 6f 7f 03     vmovdqu16 zmm31,[rdi+0xc0]
000166  62 61 ff 48 6f 76 03     vmovdqu16 zmm30,[rsi+0xc0]
00016d  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000173  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00017a  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000180  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000187  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
00018d  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000193  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
00019a  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
0001a0  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0001a7  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0001ae  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0001b4  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0001bb  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0001c1  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
0001c7  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0001ce  62 f1 ff 48 7f 47 03     vmovdqu16 [rdi+0xc0],zmm0
0001d5  62 61 ff 48 6f 7f 04     vmovdqu16 zmm31,[rdi+0x100]
0001dc  62 61 ff 48 6f 76 04     vmovdqu16 zmm30,[rsi+0x100]
0001e3  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0001e9  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0001f0  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0001f6  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0001fd  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000203  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000209  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000210  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000216  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00021d  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000224  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00022a  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000231  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000237  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
00023d  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000244  62 f1 ff 48 7f 47 04     vmovdqu16 [rdi+0x100],zmm0
00024b  62 61 ff 48 6f 7f 05     vmovdqu16 zmm31,[rdi+0x140]
000252  62 61 ff 48 6f 76 05     vmovdqu16 zmm30,[rsi+0x140]
000259  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
00025f  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000266  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00026c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000273  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000279  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
00027f  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000286  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
00028c  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000293  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00029a  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0002a0  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0002a7  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0002ad  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
0002b3  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0002ba  62 f1 ff 48 7f 47 05     vmovdqu16 [rdi+0x140],zmm0
0002c1  62 61 ff 48 6f 7f 06     vmovdqu16 zmm31,[rdi+0x180]
0002c8  62 61 ff 48 6f 76 06     vmovdqu16 zmm30,[rsi+0x180]
0002cf  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0002d5  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0002dc  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0002e2  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0002e9  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0002ef  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
0002f5  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
0002fc  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000302  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000309  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000310  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000316  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00031d  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000323  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000329  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000330  62 f1 ff 48 7f 47 06     vmovdqu16 [rdi+0x180],zmm0
000337  62 61 ff 48 6f 7f 07     vmovdqu16 zmm31,[rdi+0x1c0]
00033e  62 61 ff 48 6f 76 07     vmovdqu16 zmm30,[rsi+0x1c0]
000345  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
00034b  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000352  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000358  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00035f  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000365  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
00036b  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000372  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000378  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00037f  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000386  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00038c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000393  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000399  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
00039f  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0003a6  62 f1 ff 48 7f 47 07     vmovdqu16 [rdi+0x1c0],zmm0
0003ad  62 61 ff 48 6f 7f 08     vmovdqu16 zmm31,[rdi+0x200]
0003b4  62 61 ff 48 6f 76 08     vmovdqu16 zmm30,[rsi+0x200]
0003bb  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0003c1  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0003c8  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0003ce  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0003d5  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0003db  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
0003e1  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
0003e8  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
0003ee  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0003f5  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0003fc  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000402  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000409  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
00040f  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000415  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00041c  62 f1 ff 48 7f 47 08     vmovdqu16 [rdi+0x200],zmm0
000423  62 61 ff 48 6f 7f 09     vmovdqu16 zmm31,[rdi+0x240]
00042a  62 61 ff 48 6f 76 09     vmovdqu16 zmm30,[rsi+0x240]
000431  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000437  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00043e  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000444  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00044b  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000451  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000457  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
00045e  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000464  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00046b  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000472  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000478  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00047f  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000485  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
00048b  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000492  62 f1 ff 48 7f 47 09     vmovdqu16 [rdi+0x240],zmm0
000499  62 61 ff 48 6f 7f 0a     vmovdqu16 zmm31,[rdi+0x280]
0004a0  62 61 ff 48 6f 76 0a     vmovdqu16 zmm30,[rsi+0x280]
0004a7  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0004ad  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0004b4  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0004ba  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0004c1  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0004c7  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
0004cd  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
0004d4  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
0004da  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0004e1  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0004e8  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0004ee  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0004f5  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0004fb  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000501  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000508  62 f1 ff 48 7f 47 0a     vmovdqu16 [rdi+0x280],zmm0
00050f  62 61 ff 48 6f 7f 0b     vmovdqu16 zmm31,[rdi+0x2c0]
000516  62 61 ff 48 6f 76 0b     vmovdqu16 zmm30,[rsi+0x2c0]
00051d  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000523  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00052a  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000530  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000537  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
00053d  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000543  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
00054a  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000550  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000557  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00055e  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000564  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00056b  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000571  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000577  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00057e  62 f1 ff 48 7f 47 0b     vmovdqu16 [rdi+0x2c0],zmm0
000585  62 61 ff 48 6f 7f 0c     vmovdqu16 zmm31,[rdi+0x300]
00058c  62 61 ff 48 6f 76 0c     vmovdqu16 zmm30,[rsi+0x300]
000593  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000599  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0005a0  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0005a6  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0005ad  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0005b3  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
0005b9  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
0005c0  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
0005c6  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0005cd  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0005d4  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0005da  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0005e1  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0005e7  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
0005ed  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0005f4  62 f1 ff 48 7f 47 0c     vmovdqu16 [rdi+0x300],zmm0
0005fb  62 61 ff 48 6f 7f 0d     vmovdqu16 zmm31,[rdi+0x340]
000602  62 61 ff 48 6f 76 0d     vmovdqu16 zmm30,[rsi+0x340]
000609  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
00060f  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000616  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00061c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000623  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000629  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
00062f  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000636  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
00063c  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000643  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00064a  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000650  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000657  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
00065d  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000663  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00066a  62 f1 ff 48 7f 47 0d     vmovdqu16 [rdi+0x340],zmm0
000671  62 61 ff 48 6f 7f 0e     vmovdqu16 zmm31,[rdi+0x380]
000678  62 61 ff 48 6f 76 0e     vmovdqu16 zmm30,[rsi+0x380]
00067f  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000685  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00068c  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000692  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000699  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
00069f  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
0006a5  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
0006ac  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
0006b2  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0006b9  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0006c0  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0006c6  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0006cd  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0006d3  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
0006d9  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0006e0  62 f1 ff 48 7f 47 0e     vmovdqu16 [rdi+0x380],zmm0
0006e7  62 61 ff 48 6f 7f 0f     vmovdqu16 zmm31,[rdi+0x3c0]
0006ee  62 61 ff 48 6f 76 0f     vmovdqu16 zmm30,[rsi+0x3c0]
0006f5  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0006fb  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000702  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000708  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00070f  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000715  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
00071b  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000722  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000728  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00072f  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000736  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00073c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000743  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000749  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
00074f  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000756  62 f1 ff 48 7f 47 0f     vmovdqu16 [rdi+0x3c0],zmm0
00075d  62 61 ff 48 6f 7f 10     vmovdqu16 zmm31,[rdi+0x400]
000764  62 61 ff 48 6f 76 10     vmovdqu16 zmm30,[rsi+0x400]
00076b  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000771  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000778  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00077e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000785  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
00078b  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000791  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000798  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
00079e  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0007a5  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0007ac  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
0007b2  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0007b9  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0007bf  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
0007c5  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0007cc  62 f1 ff 48 7f 47 10     vmovdqu16 [rdi+0x400],zmm0
0007d3  62 61 ff 48 6f 7f 11     vmovdqu16 zmm31,[rdi+0x440]
0007da  62 61 ff 48 6f 76 11     vmovdqu16 zmm30,[rsi+0x440]
0007e1  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0007e7  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0007ee  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0007f4  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0007fb  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000801  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000807  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
00080e  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000814  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00081b  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000822  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000828  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00082f  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000835  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
00083b  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000842  62 f1 ff 48 7f 47 11     vmovdqu16 [rdi+0x440],zmm0
000849  62 61 ff 48 6f 7f 12     vmovdqu16 zmm31,[rdi+0x480]
000850  62 61 ff 48 6f 76 12     vmovdqu16 zmm30,[rsi+0x480]
000857  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
00085d  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000864  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
00086a  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000871  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000877  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
00087d  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000884  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
00088a  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000891  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000898  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00089e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0008a5  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0008ab  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
0008b1  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0008b8  62 f1 ff 48 7f 47 12     vmovdqu16 [rdi+0x480],zmm0
0008bf  62 61 ff 48 6f 7f 13     vmovdqu16 zmm31,[rdi+0x4c0]
0008c6  62 61 ff 48 6f 76 13     vmovdqu16 zmm30,[rsi+0x4c0]
0008cd  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0008d3  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0008da  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0008e0  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0008e7  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0008ed  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
0008f3  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
0008fa  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000900  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000907  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
00090e  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000914  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00091b  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000921  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000927  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
00092e  62 f1 ff 48 7f 47 13     vmovdqu16 [rdi+0x4c0],zmm0
000935  62 61 ff 48 6f 7f 14     vmovdqu16 zmm31,[rdi+0x500]
00093c  62 61 ff 48 6f 76 14     vmovdqu16 zmm30,[rsi+0x500]
000943  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000949  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000950  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000956  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
00095d  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000963  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000969  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000970  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000976  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
00097d  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000984  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
00098a  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000991  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000997  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
00099d  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
0009a4  62 f1 ff 48 7f 47 14     vmovdqu16 [rdi+0x500],zmm0
0009ab  62 61 ff 48 6f 7f 15     vmovdqu16 zmm31,[rdi+0x540]
0009b2  62 61 ff 48 6f 76 15     vmovdqu16 zmm30,[rsi+0x540]
0009b9  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
0009bf  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0009c6  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
0009cc  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
0009d3  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
0009d9  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
0009df  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
0009e6  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
0009ec  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
0009f3  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
0009fa  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000a00  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000a07  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000a0d  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000a13  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000a1a  62 f1 ff 48 7f 47 15     vmovdqu16 [rdi+0x540],zmm0
000a21  62 61 ff 48 6f 7f 16     vmovdqu16 zmm31,[rdi+0x580]
000a28  62 61 ff 48 6f 76 16     vmovdqu16 zmm30,[rsi+0x580]
000a2f  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000a35  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000a3c  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000a42  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000a49  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000a4f  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000a55  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000a5c  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000a62  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000a69  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000a70  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000a76  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000a7d  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000a83  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000a89  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000a90  62 f1 ff 48 7f 47 16     vmovdqu16 [rdi+0x580],zmm0
000a97  62 61 ff 48 6f 7f 17     vmovdqu16 zmm31,[rdi+0x5c0]
000a9e  62 61 ff 48 6f 76 17     vmovdqu16 zmm30,[rsi+0x5c0]
000aa5  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000aab  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000ab2  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000ab8  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000abf  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000ac5  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000acb  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000ad2  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000ad8  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000adf  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000ae6  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000aec  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000af3  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000af9  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000aff  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000b06  62 f1 ff 48 7f 47 17     vmovdqu16 [rdi+0x5c0],zmm0
000b0d  62 61 ff 48 6f 7f 18     vmovdqu16 zmm31,[rdi+0x600]
000b14  62 61 ff 48 6f 76 18     vmovdqu16 zmm30,[rsi+0x600]
000b1b  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000b21  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000b28  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000b2e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000b35  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000b3b  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000b41  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000b48  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000b4e  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000b55  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000b5c  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000b62  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000b69  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000b6f  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000b75  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000b7c  62 f1 ff 48 7f 47 18     vmovdqu16 [rdi+0x600],zmm0
000b83  62 61 ff 48 6f 7f 19     vmovdqu16 zmm31,[rdi+0x640]
000b8a  62 61 ff 48 6f 76 19     vmovdqu16 zmm30,[rsi+0x640]
000b91  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000b97  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000b9e  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000ba4  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000bab  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000bb1  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000bb7  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000bbe  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000bc4  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000bcb  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000bd2  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000bd8  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000bdf  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000be5  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000beb  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000bf2  62 f1 ff 48 7f 47 19     vmovdqu16 [rdi+0x640],zmm0
000bf9  62 61 ff 48 6f 7f 1a     vmovdqu16 zmm31,[rdi+0x680]
000c00  62 61 ff 48 6f 76 1a     vmovdqu16 zmm30,[rsi+0x680]
000c07  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000c0d  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000c14  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000c1a  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000c21  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000c27  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000c2d  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000c34  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000c3a  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000c41  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000c48  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000c4e  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000c55  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000c5b  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000c61  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000c68  62 f1 ff 48 7f 47 1a     vmovdqu16 [rdi+0x680],zmm0
000c6f  62 61 ff 48 6f 7f 1b     vmovdqu16 zmm31,[rdi+0x6c0]
000c76  62 61 ff 48 6f 76 1b     vmovdqu16 zmm30,[rsi+0x6c0]
000c7d  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000c83  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000c8a  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000c90  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000c97  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000c9d  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000ca3  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000caa  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000cb0  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000cb7  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000cbe  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000cc4  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000ccb  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000cd1  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000cd7  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000cde  62 f1 ff 48 7f 47 1b     vmovdqu16 [rdi+0x6c0],zmm0
000ce5  62 61 ff 48 6f 7f 1c     vmovdqu16 zmm31,[rdi+0x700]
000cec  62 61 ff 48 6f 76 1c     vmovdqu16 zmm30,[rsi+0x700]
000cf3  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000cf9  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000d00  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000d06  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000d0d  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000d13  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000d19  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000d20  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000d26  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000d2d  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000d34  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000d3a  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000d41  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000d47  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000d4d  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000d54  62 f1 ff 48 7f 47 1c     vmovdqu16 [rdi+0x700],zmm0
000d5b  62 61 ff 48 6f 7f 1d     vmovdqu16 zmm31,[rdi+0x740]
000d62  62 61 ff 48 6f 76 1d     vmovdqu16 zmm30,[rsi+0x740]
000d69  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000d6f  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000d76  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000d7c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000d83  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000d89  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000d8f  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000d96  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000d9c  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000da3  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000daa  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000db0  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000db7  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000dbd  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000dc3  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000dca  62 f1 ff 48 7f 47 1d     vmovdqu16 [rdi+0x740],zmm0
000dd1  62 61 ff 48 6f 7f 1e     vmovdqu16 zmm31,[rdi+0x780]
000dd8  62 61 ff 48 6f 76 1e     vmovdqu16 zmm30,[rsi+0x780]
000ddf  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000de5  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000dec  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000df2  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000df9  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000dff  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000e05  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000e0c  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000e12  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000e19  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000e20  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000e26  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000e2d  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000e33  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000e39  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000e40  62 f1 ff 48 7f 47 1e     vmovdqu16 [rdi+0x780],zmm0
000e47  62 61 ff 48 6f 7f 1f     vmovdqu16 zmm31,[rdi+0x7c0]
000e4e  62 61 ff 48 6f 76 1f     vmovdqu16 zmm30,[rsi+0x7c0]
000e55  62 02 7d 48 33 ef        vpmovzxwd zmm29,ymm31
000e5b  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000e62  62 02 7d 48 33 e6        vpmovzxwd zmm28,ymm30
000e68  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000e6f  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000e75  62 92 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm29
000e7b  62 03 fd 48 3b fd 01     vextracti64x4 ymm29,zmm31,1
000e82  62 02 7d 48 33 ed        vpmovzxwd zmm29,ymm29
000e88  62 91 15 40 72 f5 10     vpslld    zmm29,zmm29,0x10
000e8f  62 03 fd 48 3b f4 01     vextracti64x4 ymm28,zmm30,1
000e96  62 02 7d 48 33 e4        vpmovzxwd zmm28,ymm28
000e9c  62 91 1d 40 72 f4 10     vpslld    zmm28,zmm28,0x10
000ea3  62 01 14 40 58 ec        vaddps    zmm29,zmm29,zmm28
000ea9  62 92 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm29
000eaf  62 f3 fd 48 3a c1 01     vinserti64x4 zmm0,zmm0,ymm1,1
000eb6  62 f1 ff 48 7f 47 1f     vmovdqu16 [rdi+0x7c0],zmm0
000ebd  c5 f8 77                 vzeroupper
000ec0  c3                       ret
