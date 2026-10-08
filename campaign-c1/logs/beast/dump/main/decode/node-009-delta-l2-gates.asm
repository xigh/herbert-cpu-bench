; node 9: delta-l2-gates (layer 0), kernel 9 at image offset 0x9b291, 2538 bytes, 16 tasks, up to 12 participants

000000  53                       push      rbx
000001  55                       push      rbp
000002  41 54                    push      r12
000004  41 55                    push      r13
000006  48 83 ec 08              sub       rsp,8
00000a  48 89 fb                 mov       rbx,rdi
00000d  48 89 f5                 mov       rbp,rsi
000010  48 89 f0                 mov       rax,rsi
000013  31 d2                    xor       edx,edx
000015  48 b9 10 00 00 00 00 00 00 00 mov       rcx,0x10
00001f  48 f7 f1                 div       rcx
000022  48 85 d2                 test      rdx,rdx
000025  75 17                    jne       short 0x000000000000003e
000027  4c 69 e0 00 60 00 00     imul      r12,rax,0x6000
00002e  4c 03 23                 add       r12,[rbx]
000031  4c 89 e7                 mov       rdi,r12
000034  66 0f 6e 43 08           movd      xmm0,[rbx+8]
000039  e8 17 00 00 00           call      0x0000000000000055
00003e  48 8d 7b 10              lea       rdi,[rbx+0x10]
000042  48 89 ee                 mov       rsi,rbp
000045  e8 85 06 00 00           call      0x00000000000006cf
00004a  48 83 c4 08              add       rsp,8
00004e  41 5d                    pop       r13
000050  41 5c                    pop       r12
000052  5d                       pop       rbp
000053  5b                       pop       rbx
000054  c3                       ret
000055  b9 00 00 80 3f           mov       ecx,0x3f800000
00005a  c5 79 6e f9              vmovd     xmm15,ecx
00005e  ba 08 00 00 00           mov       edx,8
000063  c5 f0 57 c9              vxorps    xmm1,xmm1,xmm1
000067  c5 e8 57 d2              vxorps    xmm2,xmm2,xmm2
00006b  c5 e0 57 db              vxorps    xmm3,xmm3,xmm3
00006f  c5 d8 57 e4              vxorps    xmm4,xmm4,xmm4
000073  31 c0                    xor       eax,eax
000075  c5 fa 10 2c 07           vmovss    xmm5,[rdi+rax]
00007a  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
00007e  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
000082  c5 fa 10 b4 07 00 02 00 00 vmovss    xmm6,[rdi+rax+0x200]
00008b  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
00008f  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
000093  c5 fa 10 bc 07 00 04 00 00 vmovss    xmm7,[rdi+rax+0x400]
00009c  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
0000a0  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
0000a4  c5 7a 10 84 07 00 06 00 00 vmovss    xmm8,[rdi+rax+0x600]
0000ad  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
0000b2  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
0000b7  c5 fa 10 6c 07 04        vmovss    xmm5,[rdi+rax+4]
0000bd  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
0000c1  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
0000c5  c5 fa 10 b4 07 04 02 00 00 vmovss    xmm6,[rdi+rax+0x204]
0000ce  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
0000d2  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
0000d6  c5 fa 10 bc 07 04 04 00 00 vmovss    xmm7,[rdi+rax+0x404]
0000df  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
0000e3  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
0000e7  c5 7a 10 84 07 04 06 00 00 vmovss    xmm8,[rdi+rax+0x604]
0000f0  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
0000f5  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
0000fa  c5 fa 10 6c 07 08        vmovss    xmm5,[rdi+rax+8]
000100  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
000104  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
000108  c5 fa 10 b4 07 08 02 00 00 vmovss    xmm6,[rdi+rax+0x208]
000111  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
000115  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
000119  c5 fa 10 bc 07 08 04 00 00 vmovss    xmm7,[rdi+rax+0x408]
000122  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
000126  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
00012a  c5 7a 10 84 07 08 06 00 00 vmovss    xmm8,[rdi+rax+0x608]
000133  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
000138  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
00013d  c5 fa 10 6c 07 0c        vmovss    xmm5,[rdi+rax+0xc]
000143  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
000147  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
00014b  c5 fa 10 b4 07 0c 02 00 00 vmovss    xmm6,[rdi+rax+0x20c]
000154  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
000158  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
00015c  c5 fa 10 bc 07 0c 04 00 00 vmovss    xmm7,[rdi+rax+0x40c]
000165  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
000169  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
00016d  c5 7a 10 84 07 0c 06 00 00 vmovss    xmm8,[rdi+rax+0x60c]
000176  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
00017b  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
000180  c5 fa 10 6c 07 10        vmovss    xmm5,[rdi+rax+0x10]
000186  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
00018a  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
00018e  c5 fa 10 b4 07 10 02 00 00 vmovss    xmm6,[rdi+rax+0x210]
000197  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
00019b  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
00019f  c5 fa 10 bc 07 10 04 00 00 vmovss    xmm7,[rdi+rax+0x410]
0001a8  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
0001ac  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
0001b0  c5 7a 10 84 07 10 06 00 00 vmovss    xmm8,[rdi+rax+0x610]
0001b9  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
0001be  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
0001c3  c5 fa 10 6c 07 14        vmovss    xmm5,[rdi+rax+0x14]
0001c9  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
0001cd  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
0001d1  c5 fa 10 b4 07 14 02 00 00 vmovss    xmm6,[rdi+rax+0x214]
0001da  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
0001de  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
0001e2  c5 fa 10 bc 07 14 04 00 00 vmovss    xmm7,[rdi+rax+0x414]
0001eb  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
0001ef  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
0001f3  c5 7a 10 84 07 14 06 00 00 vmovss    xmm8,[rdi+rax+0x614]
0001fc  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
000201  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
000206  c5 fa 10 6c 07 18        vmovss    xmm5,[rdi+rax+0x18]
00020c  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
000210  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
000214  c5 fa 10 b4 07 18 02 00 00 vmovss    xmm6,[rdi+rax+0x218]
00021d  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
000221  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
000225  c5 fa 10 bc 07 18 04 00 00 vmovss    xmm7,[rdi+rax+0x418]
00022e  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
000232  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
000236  c5 7a 10 84 07 18 06 00 00 vmovss    xmm8,[rdi+rax+0x618]
00023f  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
000244  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
000249  c5 fa 10 6c 07 1c        vmovss    xmm5,[rdi+rax+0x1c]
00024f  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
000253  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
000257  c5 fa 10 b4 07 1c 02 00 00 vmovss    xmm6,[rdi+rax+0x21c]
000260  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
000264  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
000268  c5 fa 10 bc 07 1c 04 00 00 vmovss    xmm7,[rdi+rax+0x41c]
000271  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
000275  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
000279  c5 7a 10 84 07 1c 06 00 00 vmovss    xmm8,[rdi+rax+0x61c]
000282  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
000287  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
00028c  c5 fa 10 6c 07 20        vmovss    xmm5,[rdi+rax+0x20]
000292  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
000296  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
00029a  c5 fa 10 b4 07 20 02 00 00 vmovss    xmm6,[rdi+rax+0x220]
0002a3  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
0002a7  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
0002ab  c5 fa 10 bc 07 20 04 00 00 vmovss    xmm7,[rdi+rax+0x420]
0002b4  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
0002b8  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
0002bc  c5 7a 10 84 07 20 06 00 00 vmovss    xmm8,[rdi+rax+0x620]
0002c5  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
0002ca  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
0002cf  c5 fa 10 6c 07 24        vmovss    xmm5,[rdi+rax+0x24]
0002d5  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
0002d9  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
0002dd  c5 fa 10 b4 07 24 02 00 00 vmovss    xmm6,[rdi+rax+0x224]
0002e6  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
0002ea  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
0002ee  c5 fa 10 bc 07 24 04 00 00 vmovss    xmm7,[rdi+rax+0x424]
0002f7  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
0002fb  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
0002ff  c5 7a 10 84 07 24 06 00 00 vmovss    xmm8,[rdi+rax+0x624]
000308  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
00030d  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
000312  c5 fa 10 6c 07 28        vmovss    xmm5,[rdi+rax+0x28]
000318  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
00031c  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
000320  c5 fa 10 b4 07 28 02 00 00 vmovss    xmm6,[rdi+rax+0x228]
000329  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
00032d  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
000331  c5 fa 10 bc 07 28 04 00 00 vmovss    xmm7,[rdi+rax+0x428]
00033a  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
00033e  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
000342  c5 7a 10 84 07 28 06 00 00 vmovss    xmm8,[rdi+rax+0x628]
00034b  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
000350  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
000355  c5 fa 10 6c 07 2c        vmovss    xmm5,[rdi+rax+0x2c]
00035b  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
00035f  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
000363  c5 fa 10 b4 07 2c 02 00 00 vmovss    xmm6,[rdi+rax+0x22c]
00036c  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
000370  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
000374  c5 fa 10 bc 07 2c 04 00 00 vmovss    xmm7,[rdi+rax+0x42c]
00037d  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
000381  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
000385  c5 7a 10 84 07 2c 06 00 00 vmovss    xmm8,[rdi+rax+0x62c]
00038e  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
000393  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
000398  c5 fa 10 6c 07 30        vmovss    xmm5,[rdi+rax+0x30]
00039e  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
0003a2  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
0003a6  c5 fa 10 b4 07 30 02 00 00 vmovss    xmm6,[rdi+rax+0x230]
0003af  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
0003b3  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
0003b7  c5 fa 10 bc 07 30 04 00 00 vmovss    xmm7,[rdi+rax+0x430]
0003c0  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
0003c4  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
0003c8  c5 7a 10 84 07 30 06 00 00 vmovss    xmm8,[rdi+rax+0x630]
0003d1  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
0003d6  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
0003db  c5 fa 10 6c 07 34        vmovss    xmm5,[rdi+rax+0x34]
0003e1  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
0003e5  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
0003e9  c5 fa 10 b4 07 34 02 00 00 vmovss    xmm6,[rdi+rax+0x234]
0003f2  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
0003f6  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
0003fa  c5 fa 10 bc 07 34 04 00 00 vmovss    xmm7,[rdi+rax+0x434]
000403  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
000407  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
00040b  c5 7a 10 84 07 34 06 00 00 vmovss    xmm8,[rdi+rax+0x634]
000414  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
000419  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
00041e  c5 fa 10 6c 07 38        vmovss    xmm5,[rdi+rax+0x38]
000424  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
000428  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
00042c  c5 fa 10 b4 07 38 02 00 00 vmovss    xmm6,[rdi+rax+0x238]
000435  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
000439  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
00043d  c5 fa 10 bc 07 38 04 00 00 vmovss    xmm7,[rdi+rax+0x438]
000446  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
00044a  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
00044e  c5 7a 10 84 07 38 06 00 00 vmovss    xmm8,[rdi+rax+0x638]
000457  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
00045c  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
000461  c5 fa 10 6c 07 3c        vmovss    xmm5,[rdi+rax+0x3c]
000467  c5 d2 59 ed              vmulss    xmm5,xmm5,xmm5
00046b  c5 f2 58 cd              vaddss    xmm1,xmm1,xmm5
00046f  c5 fa 10 b4 07 3c 02 00 00 vmovss    xmm6,[rdi+rax+0x23c]
000478  c5 ca 59 f6              vmulss    xmm6,xmm6,xmm6
00047c  c5 ea 58 d6              vaddss    xmm2,xmm2,xmm6
000480  c5 fa 10 bc 07 3c 04 00 00 vmovss    xmm7,[rdi+rax+0x43c]
000489  c5 c2 59 ff              vmulss    xmm7,xmm7,xmm7
00048d  c5 e2 58 df              vaddss    xmm3,xmm3,xmm7
000491  c5 7a 10 84 07 3c 06 00 00 vmovss    xmm8,[rdi+rax+0x63c]
00049a  c4 41 3a 59 c0           vmulss    xmm8,xmm8,xmm8
00049f  c4 c1 5a 58 e0           vaddss    xmm4,xmm4,xmm8
0004a4  48 05 40 00 00 00        add       rax,0x40
0004aa  48 3d 00 02 00 00        cmp       rax,0x200
0004b0  0f 82 bf fb ff ff        jb        near 0x0000000000000075
0004b6  c5 f2 58 c8              vaddss    xmm1,xmm1,xmm0
0004ba  c5 f2 51 c9              vsqrtss   xmm1,xmm1,xmm1
0004be  c5 82 5e c9              vdivss    xmm1,xmm15,xmm1
0004c2  c5 ea 58 d0              vaddss    xmm2,xmm2,xmm0
0004c6  c5 ea 51 d2              vsqrtss   xmm2,xmm2,xmm2
0004ca  c5 82 5e d2              vdivss    xmm2,xmm15,xmm2
0004ce  c5 e2 58 d8              vaddss    xmm3,xmm3,xmm0
0004d2  c5 e2 51 db              vsqrtss   xmm3,xmm3,xmm3
0004d6  c5 82 5e db              vdivss    xmm3,xmm15,xmm3
0004da  c5 da 58 e0              vaddss    xmm4,xmm4,xmm0
0004de  c5 da 51 e4              vsqrtss   xmm4,xmm4,xmm4
0004e2  c5 82 5e e4              vdivss    xmm4,xmm15,xmm4
0004e6  62 f2 7d 48 18 c9        vbroadcastss zmm1,xmm1
0004ec  62 f1 74 48 59 2f        vmulps    zmm5,zmm1,[rdi]
0004f2  62 f1 7c 48 11 2f        vmovups   [rdi],zmm5
0004f8  62 f1 74 48 59 77 01     vmulps    zmm6,zmm1,[rdi+0x40]
0004ff  62 f1 7c 48 11 77 01     vmovups   [rdi+0x40],zmm6
000506  62 f1 74 48 59 6f 02     vmulps    zmm5,zmm1,[rdi+0x80]
00050d  62 f1 7c 48 11 6f 02     vmovups   [rdi+0x80],zmm5
000514  62 f1 74 48 59 77 03     vmulps    zmm6,zmm1,[rdi+0xc0]
00051b  62 f1 7c 48 11 77 03     vmovups   [rdi+0xc0],zmm6
000522  62 f1 74 48 59 6f 04     vmulps    zmm5,zmm1,[rdi+0x100]
000529  62 f1 7c 48 11 6f 04     vmovups   [rdi+0x100],zmm5
000530  62 f1 74 48 59 77 05     vmulps    zmm6,zmm1,[rdi+0x140]
000537  62 f1 7c 48 11 77 05     vmovups   [rdi+0x140],zmm6
00053e  62 f1 74 48 59 6f 06     vmulps    zmm5,zmm1,[rdi+0x180]
000545  62 f1 7c 48 11 6f 06     vmovups   [rdi+0x180],zmm5
00054c  62 f1 74 48 59 77 07     vmulps    zmm6,zmm1,[rdi+0x1c0]
000553  62 f1 7c 48 11 77 07     vmovups   [rdi+0x1c0],zmm6
00055a  62 f2 7d 48 18 d2        vbroadcastss zmm2,xmm2
000560  62 f1 6c 48 59 6f 08     vmulps    zmm5,zmm2,[rdi+0x200]
000567  62 f1 7c 48 11 6f 08     vmovups   [rdi+0x200],zmm5
00056e  62 f1 6c 48 59 77 09     vmulps    zmm6,zmm2,[rdi+0x240]
000575  62 f1 7c 48 11 77 09     vmovups   [rdi+0x240],zmm6
00057c  62 f1 6c 48 59 6f 0a     vmulps    zmm5,zmm2,[rdi+0x280]
000583  62 f1 7c 48 11 6f 0a     vmovups   [rdi+0x280],zmm5
00058a  62 f1 6c 48 59 77 0b     vmulps    zmm6,zmm2,[rdi+0x2c0]
000591  62 f1 7c 48 11 77 0b     vmovups   [rdi+0x2c0],zmm6
000598  62 f1 6c 48 59 6f 0c     vmulps    zmm5,zmm2,[rdi+0x300]
00059f  62 f1 7c 48 11 6f 0c     vmovups   [rdi+0x300],zmm5
0005a6  62 f1 6c 48 59 77 0d     vmulps    zmm6,zmm2,[rdi+0x340]
0005ad  62 f1 7c 48 11 77 0d     vmovups   [rdi+0x340],zmm6
0005b4  62 f1 6c 48 59 6f 0e     vmulps    zmm5,zmm2,[rdi+0x380]
0005bb  62 f1 7c 48 11 6f 0e     vmovups   [rdi+0x380],zmm5
0005c2  62 f1 6c 48 59 77 0f     vmulps    zmm6,zmm2,[rdi+0x3c0]
0005c9  62 f1 7c 48 11 77 0f     vmovups   [rdi+0x3c0],zmm6
0005d0  62 f2 7d 48 18 db        vbroadcastss zmm3,xmm3
0005d6  62 f1 64 48 59 6f 10     vmulps    zmm5,zmm3,[rdi+0x400]
0005dd  62 f1 7c 48 11 6f 10     vmovups   [rdi+0x400],zmm5
0005e4  62 f1 64 48 59 77 11     vmulps    zmm6,zmm3,[rdi+0x440]
0005eb  62 f1 7c 48 11 77 11     vmovups   [rdi+0x440],zmm6
0005f2  62 f1 64 48 59 6f 12     vmulps    zmm5,zmm3,[rdi+0x480]
0005f9  62 f1 7c 48 11 6f 12     vmovups   [rdi+0x480],zmm5
000600  62 f1 64 48 59 77 13     vmulps    zmm6,zmm3,[rdi+0x4c0]
000607  62 f1 7c 48 11 77 13     vmovups   [rdi+0x4c0],zmm6
00060e  62 f1 64 48 59 6f 14     vmulps    zmm5,zmm3,[rdi+0x500]
000615  62 f1 7c 48 11 6f 14     vmovups   [rdi+0x500],zmm5
00061c  62 f1 64 48 59 77 15     vmulps    zmm6,zmm3,[rdi+0x540]
000623  62 f1 7c 48 11 77 15     vmovups   [rdi+0x540],zmm6
00062a  62 f1 64 48 59 6f 16     vmulps    zmm5,zmm3,[rdi+0x580]
000631  62 f1 7c 48 11 6f 16     vmovups   [rdi+0x580],zmm5
000638  62 f1 64 48 59 77 17     vmulps    zmm6,zmm3,[rdi+0x5c0]
00063f  62 f1 7c 48 11 77 17     vmovups   [rdi+0x5c0],zmm6
000646  62 f2 7d 48 18 e4        vbroadcastss zmm4,xmm4
00064c  62 f1 5c 48 59 6f 18     vmulps    zmm5,zmm4,[rdi+0x600]
000653  62 f1 7c 48 11 6f 18     vmovups   [rdi+0x600],zmm5
00065a  62 f1 5c 48 59 77 19     vmulps    zmm6,zmm4,[rdi+0x640]
000661  62 f1 7c 48 11 77 19     vmovups   [rdi+0x640],zmm6
000668  62 f1 5c 48 59 6f 1a     vmulps    zmm5,zmm4,[rdi+0x680]
00066f  62 f1 7c 48 11 6f 1a     vmovups   [rdi+0x680],zmm5
000676  62 f1 5c 48 59 77 1b     vmulps    zmm6,zmm4,[rdi+0x6c0]
00067d  62 f1 7c 48 11 77 1b     vmovups   [rdi+0x6c0],zmm6
000684  62 f1 5c 48 59 6f 1c     vmulps    zmm5,zmm4,[rdi+0x700]
00068b  62 f1 7c 48 11 6f 1c     vmovups   [rdi+0x700],zmm5
000692  62 f1 5c 48 59 77 1d     vmulps    zmm6,zmm4,[rdi+0x740]
000699  62 f1 7c 48 11 77 1d     vmovups   [rdi+0x740],zmm6
0006a0  62 f1 5c 48 59 6f 1e     vmulps    zmm5,zmm4,[rdi+0x780]
0006a7  62 f1 7c 48 11 6f 1e     vmovups   [rdi+0x780],zmm5
0006ae  62 f1 5c 48 59 77 1f     vmulps    zmm6,zmm4,[rdi+0x7c0]
0006b5  62 f1 7c 48 11 77 1f     vmovups   [rdi+0x7c0],zmm6
0006bc  48 81 c7 00 08 00 00     add       rdi,0x800
0006c3  ff ca                    dec       edx
0006c5  0f 85 98 f9 ff ff        jne       near 0x0000000000000063
0006cb  c5 f8 77                 vzeroupper
0006ce  c3                       ret
0006cf  53                       push      rbx
0006d0  55                       push      rbp
0006d1  41 54                    push      r12
0006d3  48 83 ec 10              sub       rsp,0x10
0006d7  48 89 fb                 mov       rbx,rdi
0006da  48 89 f5                 mov       rbp,rsi
0006dd  48 89 f0                 mov       rax,rsi
0006e0  31 d2                    xor       edx,edx
0006e2  48 b9 10 00 00 00 00 00 00 00 mov       rcx,0x10
0006ec  48 f7 f1                 div       rcx
0006ef  49 89 d4                 mov       r12,rdx
0006f2  48 8d 04 6d 00 00 00 00  lea       rax,[rbp*2]
0006fa  4c 29 e0                 sub       rax,r12
0006fd  48 8b 0b                 mov       rcx,[rbx]
000700  8b 54 81 40              mov       edx,[rcx+rax*4+0x40]
000704  81 f2 00 00 00 80        xor       edx,0x80000000
00070a  66 0f 6e c2              movd      xmm0,edx
00070e  48 8b 7b 28              mov       rdi,[rbx+0x28]
000712  e8 a3 00 00 00           call      0x00000000000007ba
000717  b8 00 00 80 3f           mov       eax,0x3f800000
00071c  66 0f 6e c8              movd      xmm1,eax
000720  f3 0f 58 c1              addss     xmm0,xmm1
000724  f3 0f 5e c8              divss     xmm1,xmm0
000728  48 8b 43 18              mov       rax,[rbx+0x18]
00072c  66 0f 7e 0c a8           movd      [rax+rbp*4],xmm1
000731  48 8d 04 6d 00 00 00 00  lea       rax,[rbp*2]
000739  4c 29 e0                 sub       rax,r12
00073c  48 8b 0b                 mov       rcx,[rbx]
00073f  66 0f 6e 04 81           movd      xmm0,[rcx+rax*4]
000744  48 8b 43 10              mov       rax,[rbx+0x10]
000748  42 0f b7 04 60           movzx     eax,word [rax+r12*2]
00074d  c1 e0 10                 shl       eax,0x10
000750  66 0f 6e c8              movd      xmm1,eax
000754  f3 0f 58 c1              addss     xmm0,xmm1
000758  b8 00 00 a0 41           mov       eax,0x41a00000
00075d  66 0f 6e c8              movd      xmm1,eax
000761  0f 2e c1                 ucomiss   xmm0,xmm1
000764  77 17                    ja        short 0x000000000000077d
000766  e8 4f 00 00 00           call      0x00000000000007ba
00076b  b8 00 00 80 3f           mov       eax,0x3f800000
000770  66 0f 6e c8              movd      xmm1,eax
000774  f3 0f 58 c1              addss     xmm0,xmm1
000778  e8 4a 01 00 00           call      0x00000000000008c7
00077d  66 0f 7e 04 24           movd      [rsp],xmm0
000782  48 8b 43 08              mov       rax,[rbx+8]
000786  66 42 0f 6e 04 a0        movd      xmm0,[rax+r12*4]
00078c  e8 29 00 00 00           call      0x00000000000007ba
000791  66 0f 7e c0              movd      eax,xmm0
000795  35 00 00 00 80           xor       eax,0x80000000
00079a  66 0f 6e c0              movd      xmm0,eax
00079e  f3 0f 59 04 24           mulss     xmm0,[rsp]
0007a3  e8 12 00 00 00           call      0x00000000000007ba
0007a8  48 8b 43 20              mov       rax,[rbx+0x20]
0007ac  66 0f 7e 04 a8           movd      [rax+rbp*4],xmm0
0007b1  48 83 c4 10              add       rsp,0x10
0007b5  41 5c                    pop       r12
0007b7  5d                       pop       rbp
0007b8  5b                       pop       rbx
0007b9  c3                       ret
0007ba  66 0f 7e c2              movd      edx,xmm0
0007be  89 d0                    mov       eax,edx
0007c0  25 ff ff ff 7f           and       eax,0x7fffffff
0007c5  3d 00 00 b0 42           cmp       eax,0x42b00000
0007ca  0f 83 a8 00 00 00        jae       near 0x0000000000000878
0007d0  f3 0f 5a d0              cvtss2sd  xmm2,xmm0
0007d4  49 bb fe 82 2b 65 47 15 47 40 mov       r11,0x40471547652b82fe
0007de  66 49 0f 6e cb           movq      xmm1,r11
0007e3  49 bb 00 00 00 00 00 00 38 43 mov       r11,0x4338000000000000
0007ed  66 49 0f 6e db           movq      xmm3,r11
0007f2  49 bb 00 00 00 00 00 00 f0 3f mov       r11,0x3ff0000000000000
0007fc  66 49 0f 6e e3           movq      xmm4,r11
000801  66 0f 28 c1              movapd    xmm0,xmm1
000805  c4 e2 e1 99 c2           vfmadd132sd xmm0,xmm3,xmm2
00080a  66 48 0f 7e c0           movq      rax,xmm0
00080f  f2 0f 5c c3              subsd     xmm0,xmm3
000813  48 89 c1                 mov       rcx,rax
000816  48 c1 e0 2f              shl       rax,0x2f
00081a  83 e1 1f                 and       ecx,0x1f
00081d  c4 e2 f9 9b ca           vfmsub132sd xmm1,xmm0,xmm2
000822  48 03 04 cf              add       rax,[rdi+rcx*8]
000826  66 48 0f 6e e8           movq      xmm5,rax
00082b  49 bb 94 23 91 4b f8 6a bc 3e mov       r11,0x3ebc6af84b912394
000835  66 49 0f 6e c3           movq      xmm0,r11
00083a  49 bb f3 c4 fa 50 ce bf 2e 3f mov       r11,0x3f2ebfce50fac4f3
000844  66 49 0f 6e f3           movq      xmm6,r11
000849  c4 e2 f1 a9 c6           vfmadd213sd xmm0,xmm1,xmm6
00084e  66 0f 28 d1              movapd    xmm2,xmm1
000852  f2 0f 59 d1              mulsd     xmm2,xmm1
000856  49 bb d6 52 0c ff 42 2e 96 3f mov       r11,0x3f962e42ff0c52d6
000860  66 49 0f 6e f3           movq      xmm6,r11
000865  c4 e2 d9 99 ce           vfmadd132sd xmm1,xmm4,xmm6
00086a  c4 e2 f1 99 c2           vfmadd132sd xmm0,xmm1,xmm2
00086f  f2 0f 59 c5              mulsd     xmm0,xmm5
000873  f2 0f 5a c0              cvtsd2ss  xmm0,xmm0
000877  c3                       ret
000878  81 fa 00 00 80 ff        cmp       edx,0xff800000
00087e  74 43                    je        short 0x00000000000008c3
000880  3d 00 00 80 7f           cmp       eax,0x7f800000
000885  73 2d                    jae       short 0x00000000000008b4
000887  49 bb 18 72 b1 42 00 00 00 00 mov       r11,0x42b17218
000891  66 49 0f 6e cb           movq      xmm1,r11
000896  0f 2e c1                 ucomiss   xmm0,xmm1
000899  77 1e                    ja        short 0x00000000000008b9
00089b  49 bb b5 f1 cf c2 00 00 00 00 mov       r11,0xc2cff1b5
0008a5  66 49 0f 6e cb           movq      xmm1,r11
0008aa  0f 2e c1                 ucomiss   xmm0,xmm1
0008ad  72 14                    jb        short 0x00000000000008c3
0008af  e9 1c ff ff ff           jmp       0x00000000000007d0
0008b4  f3 0f 58 c0              addss     xmm0,xmm0
0008b8  c3                       ret
0008b9  b8 00 00 80 7f           mov       eax,0x7f800000
0008be  66 0f 6e c0              movd      xmm0,eax
0008c2  c3                       ret
0008c3  0f 57 c0                 xorps     xmm0,xmm0
0008c6  c3                       ret
0008c7  66 0f 7e c0              movd      eax,xmm0
0008cb  3d 00 00 80 3f           cmp       eax,0x3f800000
0008d0  0f 84 10 01 00 00        je        near 0x00000000000009e6
0008d6  8d 90 00 00 80 ff        lea       edx,[rax-0x800000]
0008dc  81 fa ff ff ff 7e        cmp       edx,0x7effffff
0008e2  0f 87 b1 00 00 00        ja        near 0x0000000000000999
0008e8  8d 90 00 00 cd c0        lea       edx,[rax-0x3f330000]
0008ee  89 d1                    mov       ecx,edx
0008f0  c1 e9 13                 shr       ecx,0x13
0008f3  83 e1 0f                 and       ecx,0xf
0008f6  c1 e1 04                 shl       ecx,4
0008f9  89 d6                    mov       esi,edx
0008fb  c1 fa 17                 sar       edx,0x17
0008fe  81 e6 00 00 80 ff        and       esi,0xff800000
000904  29 f0                    sub       eax,esi
000906  66 0f 6e c8              movd      xmm1,eax
00090a  f3 0f 5a c9              cvtss2sd  xmm1,xmm1
00090e  49 bb 00 00 00 00 00 00 f0 bf mov       r11,0xbff0000000000000
000918  66 49 0f 6e eb           movq      xmm5,r11
00091d  f3 0f 7e b4 0f 00 01 00 00 movq      xmm6,[rdi+rcx+0x100]
000926  c4 e2 d1 99 ce           vfmadd132sd xmm1,xmm5,xmm6
00092b  f2 0f 2a d2              cvtsi2sd  xmm2,edx
00092f  49 bb ef 39 fa fe 42 2e e6 3f mov       r11,0x3fe62e42fefa39ef
000939  66 49 0f 6e f3           movq      xmm6,r11
00093e  f3 0f 7e ac 0f 08 01 00 00 movq      xmm5,[rdi+rcx+0x108]
000947  c4 e2 d1 99 d6           vfmadd132sd xmm2,xmm5,xmm6
00094c  49 bb 6a 0b e0 0b 5b 57 d5 3f mov       r11,0x3fd5575b0be00b6a
000956  66 49 0f 6e db           movq      xmm3,r11
00095b  49 bb 23 41 0a f2 fe ff df bf mov       r11,0xbfdffffef20a4123
000965  66 49 0f 6e f3           movq      xmm6,r11
00096a  c4 e2 f1 a9 de           vfmadd213sd xmm3,xmm1,xmm6
00096f  66 0f 28 c1              movapd    xmm0,xmm1
000973  f2 0f 59 c1              mulsd     xmm0,xmm1
000977  f2 0f 58 ca              addsd     xmm1,xmm2
00097b  49 bb 34 83 b8 48 a3 0e d0 bf mov       r11,0xbfd00ea348b88334
000985  66 49 0f 6e f3           movq      xmm6,r11
00098a  c4 e2 f9 b9 de           vfmadd231sd xmm3,xmm0,xmm6
00098f  c4 e2 f1 99 c3           vfmadd132sd xmm0,xmm1,xmm3
000994  f2 0f 5a c0              cvtsd2ss  xmm0,xmm0
000998  c3                       ret
000999  89 c2                    mov       edx,eax
00099b  01 d2                    add       edx,edx
00099d  74 34                    je        short 0x00000000000009d3
00099f  3d 00 00 80 7f           cmp       eax,0x7f800000
0009a4  74 43                    je        short 0x00000000000009e9
0009a6  81 fa 00 00 00 ff        cmp       edx,0xff000000
0009ac  73 2f                    jae       short 0x00000000000009dd
0009ae  85 c0                    test      eax,eax
0009b0  78 2b                    js        short 0x00000000000009dd
0009b2  49 bb 00 00 00 4b 00 00 00 00 mov       r11,0x4b000000
0009bc  66 49 0f 6e cb           movq      xmm1,r11
0009c1  f3 0f 59 c1              mulss     xmm0,xmm1
0009c5  66 0f 7e c0              movd      eax,xmm0
0009c9  2d 00 00 80 0b           sub       eax,0xb800000
0009ce  e9 15 ff ff ff           jmp       0x00000000000008e8
0009d3  b8 00 00 80 ff           mov       eax,0xff800000
0009d8  66 0f 6e c0              movd      xmm0,eax
0009dc  c3                       ret
0009dd  f3 0f 5c c0              subss     xmm0,xmm0
0009e1  f3 0f 5e c0              divss     xmm0,xmm0
0009e5  c3                       ret
0009e6  0f 57 c0                 xorps     xmm0,xmm0
0009e9  c3                       ret
