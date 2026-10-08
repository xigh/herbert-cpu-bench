; node 6: bf16-projection-f32 (layer 0), kernel 6 at image offset 0x987f9, 3506 bytes, 128 tasks, up to 12 participants

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
00001b  0f 84 fb 00 00 00        je        near 0x000000000000011c
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
00005b  48 3d 80 00 00 00        cmp       rax,0x80
000061  73 11                    jae       short 0x0000000000000074
000063  49 89 c1                 mov       r9,rax
000066  49 83 e9 00              sub       r9,0
00006a  4d 6b c9 30              imul      r9,0x30
00006e  49 83 c1 00              add       r9,0
000072  eb 06                    jmp       short 0x000000000000007a
000074  90                       nop
000075  e9 a2 00 00 00           jmp       0x000000000000011c
00007a  48 8b 3b                 mov       rdi,[rbx]
00007d  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
000084  4c 01 d7                 add       rdi,r10
000087  48 8b 73 08              mov       rsi,[rbx+8]
00008b  4d 69 d1 00 08 00 00     imul      r10,r9,0x800
000092  4c 01 d6                 add       rsi,r10
000095  48 8b 53 10              mov       rdx,[rbx+0x10]
000099  4d 69 d5 00 18 00 00     imul      r10,r13,0x1800
0000a0  4d 01 ca                 add       r10,r9
0000a3  4d 6b d2 04              imul      r10,4
0000a7  4c 01 d2                 add       rdx,r10
0000aa  49 83 fc 01              cmp       r12,1
0000ae  75 07                    jne       short 0x00000000000000b7
0000b0  e8 6d 00 00 00           call      0x0000000000000122
0000b5  eb 65                    jmp       short 0x000000000000011c
0000b7  90                       nop
0000b8  49 83 fc 02              cmp       r12,2
0000bc  75 07                    jne       short 0x00000000000000c5
0000be  e8 e4 00 00 00           call      0x00000000000001a7
0000c3  eb 57                    jmp       short 0x000000000000011c
0000c5  90                       nop
0000c6  49 83 fc 03              cmp       r12,3
0000ca  75 07                    jne       short 0x00000000000000d3
0000cc  e8 a7 01 00 00           call      0x0000000000000278
0000d1  eb 49                    jmp       short 0x000000000000011c
0000d3  90                       nop
0000d4  49 83 fc 04              cmp       r12,4
0000d8  75 07                    jne       short 0x00000000000000e1
0000da  e8 ba 02 00 00           call      0x0000000000000399
0000df  eb 3b                    jmp       short 0x000000000000011c
0000e1  90                       nop
0000e2  49 83 fc 05              cmp       r12,5
0000e6  75 07                    jne       short 0x00000000000000ef
0000e8  e8 19 04 00 00           call      0x0000000000000506
0000ed  eb 2d                    jmp       short 0x000000000000011c
0000ef  90                       nop
0000f0  49 83 fc 06              cmp       r12,6
0000f4  75 07                    jne       short 0x00000000000000fd
0000f6  e8 c4 05 00 00           call      0x00000000000006bf
0000fb  eb 1f                    jmp       short 0x000000000000011c
0000fd  90                       nop
0000fe  49 83 fc 07              cmp       r12,7
000102  75 07                    jne       short 0x000000000000010b
000104  e8 bb 07 00 00           call      0x00000000000008c4
000109  eb 11                    jmp       short 0x000000000000011c
00010b  90                       nop
00010c  49 83 fc 08              cmp       r12,8
000110  75 07                    jne       short 0x0000000000000119
000112  e8 fe 09 00 00           call      0x0000000000000b15
000117  eb 03                    jmp       short 0x000000000000011c
000119  90                       nop
00011a  eb 00                    jmp       short 0x000000000000011c
00011c  41 5d                    pop       r13
00011e  41 5c                    pop       r12
000120  5b                       pop       rbx
000121  c3                       ret
000122  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000128  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00012e  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000134  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00013e  0f 18 4e 40              prefetcht0 [rsi+0x40]
000142  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000149  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000150  62 f1 ff 48 6f 1e        vmovdqu16 zmm3,[rsi]
000156  62 f1 ff 48 6f a6 00 80 00 00 vmovdqu16 zmm4,[rsi+0x8000]
000160  62 f1 ff 48 6f ae 00 00 01 00 vmovdqu16 zmm5,[rsi+0x10000]
00016a  62 f2 7d 48 58 37        vpbroadcastd zmm6,[rdi]
000170  62 f2 4e 48 52 c3        vdpbf16ps zmm0,zmm6,zmm3
000176  62 f2 4e 48 52 cc        vdpbf16ps zmm1,zmm6,zmm4
00017c  62 f2 4e 48 52 d5        vdpbf16ps zmm2,zmm6,zmm5
000182  48 83 c7 04              add       rdi,4
000186  48 83 c6 40              add       rsi,0x40
00018a  48 ff c9                 dec       rcx
00018d  75 af                    jne       short 0x000000000000013e
00018f  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000195  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
00019c  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
0001a3  c5 f8 77                 vzeroupper
0001a6  c3                       ret
0001a7  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0001ad  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0001b3  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0001b9  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0001bf  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0001c5  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0001cb  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0001d5  0f 18 4e 40              prefetcht0 [rsi+0x40]
0001d9  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0001e0  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0001e7  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
0001ed  62 f1 ff 48 6f be 00 80 00 00 vmovdqu16 zmm7,[rsi+0x8000]
0001f7  62 71 ff 48 6f 86 00 00 01 00 vmovdqu16 zmm8,[rsi+0x10000]
000201  62 72 7d 48 58 0f        vpbroadcastd zmm9,[rdi]
000207  62 f2 36 48 52 c6        vdpbf16ps zmm0,zmm9,zmm6
00020d  62 f2 36 48 52 cf        vdpbf16ps zmm1,zmm9,zmm7
000213  62 d2 36 48 52 d0        vdpbf16ps zmm2,zmm9,zmm8
000219  62 72 7d 48 58 8f 00 08 00 00 vpbroadcastd zmm9,[rdi+0x800]
000223  62 f2 36 48 52 de        vdpbf16ps zmm3,zmm9,zmm6
000229  62 f2 36 48 52 e7        vdpbf16ps zmm4,zmm9,zmm7
00022f  62 d2 36 48 52 e8        vdpbf16ps zmm5,zmm9,zmm8
000235  48 83 c7 04              add       rdi,4
000239  48 83 c6 40              add       rsi,0x40
00023d  48 ff c9                 dec       rcx
000240  75 93                    jne       short 0x00000000000001d5
000242  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000248  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
00024f  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000256  62 f1 7c 48 11 9a 00 60 00 00 vmovups   [rdx+0x6000],zmm3
000260  62 f1 7c 48 11 a2 40 60 00 00 vmovups   [rdx+0x6040],zmm4
00026a  62 f1 7c 48 11 aa 80 60 00 00 vmovups   [rdx+0x6080],zmm5
000274  c5 f8 77                 vzeroupper
000277  c3                       ret
000278  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00027e  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000284  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
00028a  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000290  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000296  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00029c  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0002a2  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0002a8  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0002ae  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0002b8  0f 18 4e 40              prefetcht0 [rsi+0x40]
0002bc  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0002c3  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0002ca  62 71 ff 48 6f 0e        vmovdqu16 zmm9,[rsi]
0002d0  62 71 ff 48 6f 96 00 80 00 00 vmovdqu16 zmm10,[rsi+0x8000]
0002da  62 71 ff 48 6f 9e 00 00 01 00 vmovdqu16 zmm11,[rsi+0x10000]
0002e4  62 72 7d 48 58 27        vpbroadcastd zmm12,[rdi]
0002ea  62 d2 1e 48 52 c1        vdpbf16ps zmm0,zmm12,zmm9
0002f0  62 d2 1e 48 52 ca        vdpbf16ps zmm1,zmm12,zmm10
0002f6  62 d2 1e 48 52 d3        vdpbf16ps zmm2,zmm12,zmm11
0002fc  62 72 7d 48 58 a7 00 08 00 00 vpbroadcastd zmm12,[rdi+0x800]
000306  62 d2 1e 48 52 d9        vdpbf16ps zmm3,zmm12,zmm9
00030c  62 d2 1e 48 52 e2        vdpbf16ps zmm4,zmm12,zmm10
000312  62 d2 1e 48 52 eb        vdpbf16ps zmm5,zmm12,zmm11
000318  62 72 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm12,[rdi+0x1000]
000322  62 d2 1e 48 52 f1        vdpbf16ps zmm6,zmm12,zmm9
000328  62 d2 1e 48 52 fa        vdpbf16ps zmm7,zmm12,zmm10
00032e  62 52 1e 48 52 c3        vdpbf16ps zmm8,zmm12,zmm11
000334  48 83 c7 04              add       rdi,4
000338  48 83 c6 40              add       rsi,0x40
00033c  48 ff c9                 dec       rcx
00033f  0f 85 73 ff ff ff        jne       near 0x00000000000002b8
000345  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
00034b  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000352  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000359  62 f1 7c 48 11 9a 00 60 00 00 vmovups   [rdx+0x6000],zmm3
000363  62 f1 7c 48 11 a2 40 60 00 00 vmovups   [rdx+0x6040],zmm4
00036d  62 f1 7c 48 11 aa 80 60 00 00 vmovups   [rdx+0x6080],zmm5
000377  62 f1 7c 48 11 b2 00 c0 00 00 vmovups   [rdx+0xc000],zmm6
000381  62 f1 7c 48 11 ba 40 c0 00 00 vmovups   [rdx+0xc040],zmm7
00038b  62 71 7c 48 11 82 80 c0 00 00 vmovups   [rdx+0xc080],zmm8
000395  c5 f8 77                 vzeroupper
000398  c3                       ret
000399  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00039f  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0003a5  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0003ab  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0003b1  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0003b7  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0003bd  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0003c3  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0003c9  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0003cf  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0003d5  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0003db  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0003e1  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0003eb  0f 18 4e 40              prefetcht0 [rsi+0x40]
0003ef  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0003f6  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0003fd  62 71 ff 48 6f 26        vmovdqu16 zmm12,[rsi]
000403  62 71 ff 48 6f ae 00 80 00 00 vmovdqu16 zmm13,[rsi+0x8000]
00040d  62 71 ff 48 6f b6 00 00 01 00 vmovdqu16 zmm14,[rsi+0x10000]
000417  62 72 7d 48 58 3f        vpbroadcastd zmm15,[rdi]
00041d  62 d2 06 48 52 c4        vdpbf16ps zmm0,zmm15,zmm12
000423  62 d2 06 48 52 cd        vdpbf16ps zmm1,zmm15,zmm13
000429  62 d2 06 48 52 d6        vdpbf16ps zmm2,zmm15,zmm14
00042f  62 72 7d 48 58 bf 00 08 00 00 vpbroadcastd zmm15,[rdi+0x800]
000439  62 d2 06 48 52 dc        vdpbf16ps zmm3,zmm15,zmm12
00043f  62 d2 06 48 52 e5        vdpbf16ps zmm4,zmm15,zmm13
000445  62 d2 06 48 52 ee        vdpbf16ps zmm5,zmm15,zmm14
00044b  62 72 7d 48 58 bf 00 10 00 00 vpbroadcastd zmm15,[rdi+0x1000]
000455  62 d2 06 48 52 f4        vdpbf16ps zmm6,zmm15,zmm12
00045b  62 d2 06 48 52 fd        vdpbf16ps zmm7,zmm15,zmm13
000461  62 52 06 48 52 c6        vdpbf16ps zmm8,zmm15,zmm14
000467  62 72 7d 48 58 bf 00 18 00 00 vpbroadcastd zmm15,[rdi+0x1800]
000471  62 52 06 48 52 cc        vdpbf16ps zmm9,zmm15,zmm12
000477  62 52 06 48 52 d5        vdpbf16ps zmm10,zmm15,zmm13
00047d  62 52 06 48 52 de        vdpbf16ps zmm11,zmm15,zmm14
000483  48 83 c7 04              add       rdi,4
000487  48 83 c6 40              add       rsi,0x40
00048b  48 ff c9                 dec       rcx
00048e  0f 85 57 ff ff ff        jne       near 0x00000000000003eb
000494  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
00049a  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
0004a1  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
0004a8  62 f1 7c 48 11 9a 00 60 00 00 vmovups   [rdx+0x6000],zmm3
0004b2  62 f1 7c 48 11 a2 40 60 00 00 vmovups   [rdx+0x6040],zmm4
0004bc  62 f1 7c 48 11 aa 80 60 00 00 vmovups   [rdx+0x6080],zmm5
0004c6  62 f1 7c 48 11 b2 00 c0 00 00 vmovups   [rdx+0xc000],zmm6
0004d0  62 f1 7c 48 11 ba 40 c0 00 00 vmovups   [rdx+0xc040],zmm7
0004da  62 71 7c 48 11 82 80 c0 00 00 vmovups   [rdx+0xc080],zmm8
0004e4  62 71 7c 48 11 8a 00 20 01 00 vmovups   [rdx+0x12000],zmm9
0004ee  62 71 7c 48 11 92 40 20 01 00 vmovups   [rdx+0x12040],zmm10
0004f8  62 71 7c 48 11 9a 80 20 01 00 vmovups   [rdx+0x12080],zmm11
000502  c5 f8 77                 vzeroupper
000505  c3                       ret
000506  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00050c  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000512  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000518  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00051e  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000524  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00052a  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000530  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000536  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00053c  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000542  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000548  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
00054e  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000554  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
00055a  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
000560  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00056a  0f 18 4e 40              prefetcht0 [rsi+0x40]
00056e  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000575  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
00057c  62 71 ff 48 6f 3e        vmovdqu16 zmm15,[rsi]
000582  62 e1 ff 48 6f 86 00 80 00 00 vmovdqu16 zmm16,[rsi+0x8000]
00058c  62 e1 ff 48 6f 8e 00 00 01 00 vmovdqu16 zmm17,[rsi+0x10000]
000596  62 e2 7d 48 58 17        vpbroadcastd zmm18,[rdi]
00059c  62 d2 6e 40 52 c7        vdpbf16ps zmm0,zmm18,zmm15
0005a2  62 b2 6e 40 52 c8        vdpbf16ps zmm1,zmm18,zmm16
0005a8  62 b2 6e 40 52 d1        vdpbf16ps zmm2,zmm18,zmm17
0005ae  62 e2 7d 48 58 97 00 08 00 00 vpbroadcastd zmm18,[rdi+0x800]
0005b8  62 d2 6e 40 52 df        vdpbf16ps zmm3,zmm18,zmm15
0005be  62 b2 6e 40 52 e0        vdpbf16ps zmm4,zmm18,zmm16
0005c4  62 b2 6e 40 52 e9        vdpbf16ps zmm5,zmm18,zmm17
0005ca  62 e2 7d 48 58 97 00 10 00 00 vpbroadcastd zmm18,[rdi+0x1000]
0005d4  62 d2 6e 40 52 f7        vdpbf16ps zmm6,zmm18,zmm15
0005da  62 b2 6e 40 52 f8        vdpbf16ps zmm7,zmm18,zmm16
0005e0  62 32 6e 40 52 c1        vdpbf16ps zmm8,zmm18,zmm17
0005e6  62 e2 7d 48 58 97 00 18 00 00 vpbroadcastd zmm18,[rdi+0x1800]
0005f0  62 52 6e 40 52 cf        vdpbf16ps zmm9,zmm18,zmm15
0005f6  62 32 6e 40 52 d0        vdpbf16ps zmm10,zmm18,zmm16
0005fc  62 32 6e 40 52 d9        vdpbf16ps zmm11,zmm18,zmm17
000602  62 e2 7d 48 58 97 00 20 00 00 vpbroadcastd zmm18,[rdi+0x2000]
00060c  62 52 6e 40 52 e7        vdpbf16ps zmm12,zmm18,zmm15
000612  62 32 6e 40 52 e8        vdpbf16ps zmm13,zmm18,zmm16
000618  62 32 6e 40 52 f1        vdpbf16ps zmm14,zmm18,zmm17
00061e  48 83 c7 04              add       rdi,4
000622  48 83 c6 40              add       rsi,0x40
000626  48 ff c9                 dec       rcx
000629  0f 85 3b ff ff ff        jne       near 0x000000000000056a
00062f  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000635  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
00063c  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000643  62 f1 7c 48 11 9a 00 60 00 00 vmovups   [rdx+0x6000],zmm3
00064d  62 f1 7c 48 11 a2 40 60 00 00 vmovups   [rdx+0x6040],zmm4
000657  62 f1 7c 48 11 aa 80 60 00 00 vmovups   [rdx+0x6080],zmm5
000661  62 f1 7c 48 11 b2 00 c0 00 00 vmovups   [rdx+0xc000],zmm6
00066b  62 f1 7c 48 11 ba 40 c0 00 00 vmovups   [rdx+0xc040],zmm7
000675  62 71 7c 48 11 82 80 c0 00 00 vmovups   [rdx+0xc080],zmm8
00067f  62 71 7c 48 11 8a 00 20 01 00 vmovups   [rdx+0x12000],zmm9
000689  62 71 7c 48 11 92 40 20 01 00 vmovups   [rdx+0x12040],zmm10
000693  62 71 7c 48 11 9a 80 20 01 00 vmovups   [rdx+0x12080],zmm11
00069d  62 71 7c 48 11 a2 00 80 01 00 vmovups   [rdx+0x18000],zmm12
0006a7  62 71 7c 48 11 aa 40 80 01 00 vmovups   [rdx+0x18040],zmm13
0006b1  62 71 7c 48 11 b2 80 80 01 00 vmovups   [rdx+0x18080],zmm14
0006bb  c5 f8 77                 vzeroupper
0006be  c3                       ret
0006bf  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0006c5  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0006cb  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0006d1  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0006d7  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0006dd  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0006e3  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0006e9  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0006ef  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0006f5  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0006fb  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000701  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000707  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
00070d  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000713  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
000719  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
00071f  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000725  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00072b  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000735  0f 18 4e 40              prefetcht0 [rsi+0x40]
000739  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000740  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000747  62 e1 ff 48 6f 16        vmovdqu16 zmm18,[rsi]
00074d  62 e1 ff 48 6f 9e 00 80 00 00 vmovdqu16 zmm19,[rsi+0x8000]
000757  62 e1 ff 48 6f a6 00 00 01 00 vmovdqu16 zmm20,[rsi+0x10000]
000761  62 e2 7d 48 58 2f        vpbroadcastd zmm21,[rdi]
000767  62 b2 56 40 52 c2        vdpbf16ps zmm0,zmm21,zmm18
00076d  62 b2 56 40 52 cb        vdpbf16ps zmm1,zmm21,zmm19
000773  62 b2 56 40 52 d4        vdpbf16ps zmm2,zmm21,zmm20
000779  62 e2 7d 48 58 af 00 08 00 00 vpbroadcastd zmm21,[rdi+0x800]
000783  62 b2 56 40 52 da        vdpbf16ps zmm3,zmm21,zmm18
000789  62 b2 56 40 52 e3        vdpbf16ps zmm4,zmm21,zmm19
00078f  62 b2 56 40 52 ec        vdpbf16ps zmm5,zmm21,zmm20
000795  62 e2 7d 48 58 af 00 10 00 00 vpbroadcastd zmm21,[rdi+0x1000]
00079f  62 b2 56 40 52 f2        vdpbf16ps zmm6,zmm21,zmm18
0007a5  62 b2 56 40 52 fb        vdpbf16ps zmm7,zmm21,zmm19
0007ab  62 32 56 40 52 c4        vdpbf16ps zmm8,zmm21,zmm20
0007b1  62 e2 7d 48 58 af 00 18 00 00 vpbroadcastd zmm21,[rdi+0x1800]
0007bb  62 32 56 40 52 ca        vdpbf16ps zmm9,zmm21,zmm18
0007c1  62 32 56 40 52 d3        vdpbf16ps zmm10,zmm21,zmm19
0007c7  62 32 56 40 52 dc        vdpbf16ps zmm11,zmm21,zmm20
0007cd  62 e2 7d 48 58 af 00 20 00 00 vpbroadcastd zmm21,[rdi+0x2000]
0007d7  62 32 56 40 52 e2        vdpbf16ps zmm12,zmm21,zmm18
0007dd  62 32 56 40 52 eb        vdpbf16ps zmm13,zmm21,zmm19
0007e3  62 32 56 40 52 f4        vdpbf16ps zmm14,zmm21,zmm20
0007e9  62 e2 7d 48 58 af 00 28 00 00 vpbroadcastd zmm21,[rdi+0x2800]
0007f3  62 32 56 40 52 fa        vdpbf16ps zmm15,zmm21,zmm18
0007f9  62 a2 56 40 52 c3        vdpbf16ps zmm16,zmm21,zmm19
0007ff  62 a2 56 40 52 cc        vdpbf16ps zmm17,zmm21,zmm20
000805  48 83 c7 04              add       rdi,4
000809  48 83 c6 40              add       rsi,0x40
00080d  48 ff c9                 dec       rcx
000810  0f 85 1f ff ff ff        jne       near 0x0000000000000735
000816  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
00081c  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000823  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
00082a  62 f1 7c 48 11 9a 00 60 00 00 vmovups   [rdx+0x6000],zmm3
000834  62 f1 7c 48 11 a2 40 60 00 00 vmovups   [rdx+0x6040],zmm4
00083e  62 f1 7c 48 11 aa 80 60 00 00 vmovups   [rdx+0x6080],zmm5
000848  62 f1 7c 48 11 b2 00 c0 00 00 vmovups   [rdx+0xc000],zmm6
000852  62 f1 7c 48 11 ba 40 c0 00 00 vmovups   [rdx+0xc040],zmm7
00085c  62 71 7c 48 11 82 80 c0 00 00 vmovups   [rdx+0xc080],zmm8
000866  62 71 7c 48 11 8a 00 20 01 00 vmovups   [rdx+0x12000],zmm9
000870  62 71 7c 48 11 92 40 20 01 00 vmovups   [rdx+0x12040],zmm10
00087a  62 71 7c 48 11 9a 80 20 01 00 vmovups   [rdx+0x12080],zmm11
000884  62 71 7c 48 11 a2 00 80 01 00 vmovups   [rdx+0x18000],zmm12
00088e  62 71 7c 48 11 aa 40 80 01 00 vmovups   [rdx+0x18040],zmm13
000898  62 71 7c 48 11 b2 80 80 01 00 vmovups   [rdx+0x18080],zmm14
0008a2  62 71 7c 48 11 ba 00 e0 01 00 vmovups   [rdx+0x1e000],zmm15
0008ac  62 e1 7c 48 11 82 40 e0 01 00 vmovups   [rdx+0x1e040],zmm16
0008b6  62 e1 7c 48 11 8a 80 e0 01 00 vmovups   [rdx+0x1e080],zmm17
0008c0  c5 f8 77                 vzeroupper
0008c3  c3                       ret
0008c4  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0008ca  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0008d0  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0008d6  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0008dc  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0008e2  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0008e8  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0008ee  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0008f4  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0008fa  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000900  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000906  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
00090c  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000912  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000918  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
00091e  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
000924  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
00092a  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000930  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
000936  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
00093c  62 a1 5c 40 57 e4        vxorps    zmm20,zmm20,zmm20
000942  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00094c  0f 18 4e 40              prefetcht0 [rsi+0x40]
000950  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000957  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
00095e  62 e1 ff 48 6f 2e        vmovdqu16 zmm21,[rsi]
000964  62 e1 ff 48 6f b6 00 80 00 00 vmovdqu16 zmm22,[rsi+0x8000]
00096e  62 e1 ff 48 6f be 00 00 01 00 vmovdqu16 zmm23,[rsi+0x10000]
000978  62 62 7d 48 58 07        vpbroadcastd zmm24,[rdi]
00097e  62 b2 3e 40 52 c5        vdpbf16ps zmm0,zmm24,zmm21
000984  62 b2 3e 40 52 ce        vdpbf16ps zmm1,zmm24,zmm22
00098a  62 b2 3e 40 52 d7        vdpbf16ps zmm2,zmm24,zmm23
000990  62 62 7d 48 58 87 00 08 00 00 vpbroadcastd zmm24,[rdi+0x800]
00099a  62 b2 3e 40 52 dd        vdpbf16ps zmm3,zmm24,zmm21
0009a0  62 b2 3e 40 52 e6        vdpbf16ps zmm4,zmm24,zmm22
0009a6  62 b2 3e 40 52 ef        vdpbf16ps zmm5,zmm24,zmm23
0009ac  62 62 7d 48 58 87 00 10 00 00 vpbroadcastd zmm24,[rdi+0x1000]
0009b6  62 b2 3e 40 52 f5        vdpbf16ps zmm6,zmm24,zmm21
0009bc  62 b2 3e 40 52 fe        vdpbf16ps zmm7,zmm24,zmm22
0009c2  62 32 3e 40 52 c7        vdpbf16ps zmm8,zmm24,zmm23
0009c8  62 62 7d 48 58 87 00 18 00 00 vpbroadcastd zmm24,[rdi+0x1800]
0009d2  62 32 3e 40 52 cd        vdpbf16ps zmm9,zmm24,zmm21
0009d8  62 32 3e 40 52 d6        vdpbf16ps zmm10,zmm24,zmm22
0009de  62 32 3e 40 52 df        vdpbf16ps zmm11,zmm24,zmm23
0009e4  62 62 7d 48 58 87 00 20 00 00 vpbroadcastd zmm24,[rdi+0x2000]
0009ee  62 32 3e 40 52 e5        vdpbf16ps zmm12,zmm24,zmm21
0009f4  62 32 3e 40 52 ee        vdpbf16ps zmm13,zmm24,zmm22
0009fa  62 32 3e 40 52 f7        vdpbf16ps zmm14,zmm24,zmm23
000a00  62 62 7d 48 58 87 00 28 00 00 vpbroadcastd zmm24,[rdi+0x2800]
000a0a  62 32 3e 40 52 fd        vdpbf16ps zmm15,zmm24,zmm21
000a10  62 a2 3e 40 52 c6        vdpbf16ps zmm16,zmm24,zmm22
000a16  62 a2 3e 40 52 cf        vdpbf16ps zmm17,zmm24,zmm23
000a1c  62 62 7d 48 58 87 00 30 00 00 vpbroadcastd zmm24,[rdi+0x3000]
000a26  62 a2 3e 40 52 d5        vdpbf16ps zmm18,zmm24,zmm21
000a2c  62 a2 3e 40 52 de        vdpbf16ps zmm19,zmm24,zmm22
000a32  62 a2 3e 40 52 e7        vdpbf16ps zmm20,zmm24,zmm23
000a38  48 83 c7 04              add       rdi,4
000a3c  48 83 c6 40              add       rsi,0x40
000a40  48 ff c9                 dec       rcx
000a43  0f 85 03 ff ff ff        jne       near 0x000000000000094c
000a49  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000a4f  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000a56  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000a5d  62 f1 7c 48 11 9a 00 60 00 00 vmovups   [rdx+0x6000],zmm3
000a67  62 f1 7c 48 11 a2 40 60 00 00 vmovups   [rdx+0x6040],zmm4
000a71  62 f1 7c 48 11 aa 80 60 00 00 vmovups   [rdx+0x6080],zmm5
000a7b  62 f1 7c 48 11 b2 00 c0 00 00 vmovups   [rdx+0xc000],zmm6
000a85  62 f1 7c 48 11 ba 40 c0 00 00 vmovups   [rdx+0xc040],zmm7
000a8f  62 71 7c 48 11 82 80 c0 00 00 vmovups   [rdx+0xc080],zmm8
000a99  62 71 7c 48 11 8a 00 20 01 00 vmovups   [rdx+0x12000],zmm9
000aa3  62 71 7c 48 11 92 40 20 01 00 vmovups   [rdx+0x12040],zmm10
000aad  62 71 7c 48 11 9a 80 20 01 00 vmovups   [rdx+0x12080],zmm11
000ab7  62 71 7c 48 11 a2 00 80 01 00 vmovups   [rdx+0x18000],zmm12
000ac1  62 71 7c 48 11 aa 40 80 01 00 vmovups   [rdx+0x18040],zmm13
000acb  62 71 7c 48 11 b2 80 80 01 00 vmovups   [rdx+0x18080],zmm14
000ad5  62 71 7c 48 11 ba 00 e0 01 00 vmovups   [rdx+0x1e000],zmm15
000adf  62 e1 7c 48 11 82 40 e0 01 00 vmovups   [rdx+0x1e040],zmm16
000ae9  62 e1 7c 48 11 8a 80 e0 01 00 vmovups   [rdx+0x1e080],zmm17
000af3  62 e1 7c 48 11 92 00 40 02 00 vmovups   [rdx+0x24000],zmm18
000afd  62 e1 7c 48 11 9a 40 40 02 00 vmovups   [rdx+0x24040],zmm19
000b07  62 e1 7c 48 11 a2 80 40 02 00 vmovups   [rdx+0x24080],zmm20
000b11  c5 f8 77                 vzeroupper
000b14  c3                       ret
000b15  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000b1b  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000b21  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000b27  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000b2d  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000b33  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000b39  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000b3f  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000b45  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000b4b  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000b51  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000b57  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000b5d  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000b63  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000b69  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
000b6f  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
000b75  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000b7b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000b81  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
000b87  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000b8d  62 a1 5c 40 57 e4        vxorps    zmm20,zmm20,zmm20
000b93  62 a1 54 40 57 ed        vxorps    zmm21,zmm21,zmm21
000b99  62 a1 4c 40 57 f6        vxorps    zmm22,zmm22,zmm22
000b9f  62 a1 44 40 57 ff        vxorps    zmm23,zmm23,zmm23
000ba5  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000baf  0f 18 4e 40              prefetcht0 [rsi+0x40]
000bb3  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000bba  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000bc1  62 61 ff 48 6f 06        vmovdqu16 zmm24,[rsi]
000bc7  62 61 ff 48 6f 8e 00 80 00 00 vmovdqu16 zmm25,[rsi+0x8000]
000bd1  62 61 ff 48 6f 96 00 00 01 00 vmovdqu16 zmm26,[rsi+0x10000]
000bdb  62 62 7d 48 58 1f        vpbroadcastd zmm27,[rdi]
000be1  62 92 26 40 52 c0        vdpbf16ps zmm0,zmm27,zmm24
000be7  62 92 26 40 52 c9        vdpbf16ps zmm1,zmm27,zmm25
000bed  62 92 26 40 52 d2        vdpbf16ps zmm2,zmm27,zmm26
000bf3  62 62 7d 48 58 9f 00 08 00 00 vpbroadcastd zmm27,[rdi+0x800]
000bfd  62 92 26 40 52 d8        vdpbf16ps zmm3,zmm27,zmm24
000c03  62 92 26 40 52 e1        vdpbf16ps zmm4,zmm27,zmm25
000c09  62 92 26 40 52 ea        vdpbf16ps zmm5,zmm27,zmm26
000c0f  62 62 7d 48 58 9f 00 10 00 00 vpbroadcastd zmm27,[rdi+0x1000]
000c19  62 92 26 40 52 f0        vdpbf16ps zmm6,zmm27,zmm24
000c1f  62 92 26 40 52 f9        vdpbf16ps zmm7,zmm27,zmm25
000c25  62 12 26 40 52 c2        vdpbf16ps zmm8,zmm27,zmm26
000c2b  62 62 7d 48 58 9f 00 18 00 00 vpbroadcastd zmm27,[rdi+0x1800]
000c35  62 12 26 40 52 c8        vdpbf16ps zmm9,zmm27,zmm24
000c3b  62 12 26 40 52 d1        vdpbf16ps zmm10,zmm27,zmm25
000c41  62 12 26 40 52 da        vdpbf16ps zmm11,zmm27,zmm26
000c47  62 62 7d 48 58 9f 00 20 00 00 vpbroadcastd zmm27,[rdi+0x2000]
000c51  62 12 26 40 52 e0        vdpbf16ps zmm12,zmm27,zmm24
000c57  62 12 26 40 52 e9        vdpbf16ps zmm13,zmm27,zmm25
000c5d  62 12 26 40 52 f2        vdpbf16ps zmm14,zmm27,zmm26
000c63  62 62 7d 48 58 9f 00 28 00 00 vpbroadcastd zmm27,[rdi+0x2800]
000c6d  62 12 26 40 52 f8        vdpbf16ps zmm15,zmm27,zmm24
000c73  62 82 26 40 52 c1        vdpbf16ps zmm16,zmm27,zmm25
000c79  62 82 26 40 52 ca        vdpbf16ps zmm17,zmm27,zmm26
000c7f  62 62 7d 48 58 9f 00 30 00 00 vpbroadcastd zmm27,[rdi+0x3000]
000c89  62 82 26 40 52 d0        vdpbf16ps zmm18,zmm27,zmm24
000c8f  62 82 26 40 52 d9        vdpbf16ps zmm19,zmm27,zmm25
000c95  62 82 26 40 52 e2        vdpbf16ps zmm20,zmm27,zmm26
000c9b  62 62 7d 48 58 9f 00 38 00 00 vpbroadcastd zmm27,[rdi+0x3800]
000ca5  62 82 26 40 52 e8        vdpbf16ps zmm21,zmm27,zmm24
000cab  62 82 26 40 52 f1        vdpbf16ps zmm22,zmm27,zmm25
000cb1  62 82 26 40 52 fa        vdpbf16ps zmm23,zmm27,zmm26
000cb7  48 83 c7 04              add       rdi,4
000cbb  48 83 c6 40              add       rsi,0x40
000cbf  48 ff c9                 dec       rcx
000cc2  0f 85 e7 fe ff ff        jne       near 0x0000000000000baf
000cc8  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000cce  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000cd5  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000cdc  62 f1 7c 48 11 9a 00 60 00 00 vmovups   [rdx+0x6000],zmm3
000ce6  62 f1 7c 48 11 a2 40 60 00 00 vmovups   [rdx+0x6040],zmm4
000cf0  62 f1 7c 48 11 aa 80 60 00 00 vmovups   [rdx+0x6080],zmm5
000cfa  62 f1 7c 48 11 b2 00 c0 00 00 vmovups   [rdx+0xc000],zmm6
000d04  62 f1 7c 48 11 ba 40 c0 00 00 vmovups   [rdx+0xc040],zmm7
000d0e  62 71 7c 48 11 82 80 c0 00 00 vmovups   [rdx+0xc080],zmm8
000d18  62 71 7c 48 11 8a 00 20 01 00 vmovups   [rdx+0x12000],zmm9
000d22  62 71 7c 48 11 92 40 20 01 00 vmovups   [rdx+0x12040],zmm10
000d2c  62 71 7c 48 11 9a 80 20 01 00 vmovups   [rdx+0x12080],zmm11
000d36  62 71 7c 48 11 a2 00 80 01 00 vmovups   [rdx+0x18000],zmm12
000d40  62 71 7c 48 11 aa 40 80 01 00 vmovups   [rdx+0x18040],zmm13
000d4a  62 71 7c 48 11 b2 80 80 01 00 vmovups   [rdx+0x18080],zmm14
000d54  62 71 7c 48 11 ba 00 e0 01 00 vmovups   [rdx+0x1e000],zmm15
000d5e  62 e1 7c 48 11 82 40 e0 01 00 vmovups   [rdx+0x1e040],zmm16
000d68  62 e1 7c 48 11 8a 80 e0 01 00 vmovups   [rdx+0x1e080],zmm17
000d72  62 e1 7c 48 11 92 00 40 02 00 vmovups   [rdx+0x24000],zmm18
000d7c  62 e1 7c 48 11 9a 40 40 02 00 vmovups   [rdx+0x24040],zmm19
000d86  62 e1 7c 48 11 a2 80 40 02 00 vmovups   [rdx+0x24080],zmm20
000d90  62 e1 7c 48 11 aa 00 a0 02 00 vmovups   [rdx+0x2a000],zmm21
000d9a  62 e1 7c 48 11 b2 40 a0 02 00 vmovups   [rdx+0x2a040],zmm22
000da4  62 e1 7c 48 11 ba 80 a0 02 00 vmovups   [rdx+0x2a080],zmm23
000dae  c5 f8 77                 vzeroupper
000db1  c3                       ret
