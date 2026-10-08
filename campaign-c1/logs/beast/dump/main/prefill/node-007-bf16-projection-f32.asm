; node 7: bf16-projection-f32 (layer 0), kernel 7 at image offset 0x9971b, 6031 bytes, 1376 tasks, up to 12 participants

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
00001b  0f 84 d8 01 00 00        je        near 0x00000000000001f9
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
00005b  48 3d 2a 00 00 00        cmp       rax,0x2a
000061  73 11                    jae       short 0x0000000000000074
000063  49 89 c1                 mov       r9,rax
000066  49 83 e9 00              sub       r9,0
00006a  4d 6b c9 30              imul      r9,0x30
00006e  49 83 c1 00              add       r9,0
000072  eb 26                    jmp       short 0x000000000000009a
000074  90                       nop
000075  48 3d 2b 00 00 00        cmp       rax,0x2b
00007b  73 17                    jae       short 0x0000000000000094
00007d  49 89 c1                 mov       r9,rax
000080  49 83 e9 2a              sub       r9,0x2a
000084  4d 6b c9 00              imul      r9,0
000088  49 81 c1 e0 07 00 00     add       r9,0x7e0
00008f  e9 c3 00 00 00           jmp       0x0000000000000157
000094  90                       nop
000095  e9 5f 01 00 00           jmp       0x00000000000001f9
00009a  48 8b 3b                 mov       rdi,[rbx]
00009d  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
0000a4  4c 01 d7                 add       rdi,r10
0000a7  48 8b 73 08              mov       rsi,[rbx+8]
0000ab  4d 69 d1 00 08 00 00     imul      r10,r9,0x800
0000b2  4c 01 d6                 add       rsi,r10
0000b5  48 8b 53 10              mov       rdx,[rbx+0x10]
0000b9  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
0000c0  4d 01 ca                 add       r10,r9
0000c3  4d 6b d2 04              imul      r10,4
0000c7  4c 01 d2                 add       rdx,r10
0000ca  49 83 fc 01              cmp       r12,1
0000ce  75 0a                    jne       short 0x00000000000000da
0000d0  e8 2a 01 00 00           call      0x00000000000001ff
0000d5  e9 1f 01 00 00           jmp       0x00000000000001f9
0000da  90                       nop
0000db  49 83 fc 02              cmp       r12,2
0000df  75 0a                    jne       short 0x00000000000000eb
0000e1  e8 9e 01 00 00           call      0x0000000000000284
0000e6  e9 0e 01 00 00           jmp       0x00000000000001f9
0000eb  90                       nop
0000ec  49 83 fc 03              cmp       r12,3
0000f0  75 0a                    jne       short 0x00000000000000fc
0000f2  e8 5e 02 00 00           call      0x0000000000000355
0000f7  e9 fd 00 00 00           jmp       0x00000000000001f9
0000fc  90                       nop
0000fd  49 83 fc 04              cmp       r12,4
000101  75 0a                    jne       short 0x000000000000010d
000103  e8 6e 03 00 00           call      0x0000000000000476
000108  e9 ec 00 00 00           jmp       0x00000000000001f9
00010d  90                       nop
00010e  49 83 fc 05              cmp       r12,5
000112  75 0a                    jne       short 0x000000000000011e
000114  e8 ca 04 00 00           call      0x00000000000005e3
000119  e9 db 00 00 00           jmp       0x00000000000001f9
00011e  90                       nop
00011f  49 83 fc 06              cmp       r12,6
000123  75 0a                    jne       short 0x000000000000012f
000125  e8 72 06 00 00           call      0x000000000000079c
00012a  e9 ca 00 00 00           jmp       0x00000000000001f9
00012f  90                       nop
000130  49 83 fc 07              cmp       r12,7
000134  75 0a                    jne       short 0x0000000000000140
000136  e8 66 08 00 00           call      0x00000000000009a1
00013b  e9 b9 00 00 00           jmp       0x00000000000001f9
000140  90                       nop
000141  49 83 fc 08              cmp       r12,8
000145  75 0a                    jne       short 0x0000000000000151
000147  e8 a6 0a 00 00           call      0x0000000000000bf2
00014c  e9 a8 00 00 00           jmp       0x00000000000001f9
000151  90                       nop
000152  e9 a2 00 00 00           jmp       0x00000000000001f9
000157  48 8b 3b                 mov       rdi,[rbx]
00015a  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
000161  4c 01 d7                 add       rdi,r10
000164  48 8b 73 08              mov       rsi,[rbx+8]
000168  4d 69 d1 00 08 00 00     imul      r10,r9,0x800
00016f  4c 01 d6                 add       rsi,r10
000172  48 8b 53 10              mov       rdx,[rbx+0x10]
000176  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
00017d  4d 01 ca                 add       r10,r9
000180  4d 6b d2 04              imul      r10,4
000184  4c 01 d2                 add       rdx,r10
000187  49 83 fc 01              cmp       r12,1
00018b  75 07                    jne       short 0x0000000000000194
00018d  e8 fd 0c 00 00           call      0x0000000000000e8f
000192  eb 65                    jmp       short 0x00000000000001f9
000194  90                       nop
000195  49 83 fc 02              cmp       r12,2
000199  75 07                    jne       short 0x00000000000001a2
00019b  e8 50 0d 00 00           call      0x0000000000000ef0
0001a0  eb 57                    jmp       short 0x00000000000001f9
0001a2  90                       nop
0001a3  49 83 fc 03              cmp       r12,3
0001a7  75 07                    jne       short 0x00000000000001b0
0001a9  e8 d9 0d 00 00           call      0x0000000000000f87
0001ae  eb 49                    jmp       short 0x00000000000001f9
0001b0  90                       nop
0001b1  49 83 fc 04              cmp       r12,4
0001b5  75 07                    jne       short 0x00000000000001be
0001b7  e8 98 0e 00 00           call      0x0000000000001054
0001bc  eb 3b                    jmp       short 0x00000000000001f9
0001be  90                       nop
0001bf  49 83 fc 05              cmp       r12,5
0001c3  75 07                    jne       short 0x00000000000001cc
0001c5  e8 8d 0f 00 00           call      0x0000000000001157
0001ca  eb 2d                    jmp       short 0x00000000000001f9
0001cc  90                       nop
0001cd  49 83 fc 06              cmp       r12,6
0001d1  75 07                    jne       short 0x00000000000001da
0001d3  e8 bc 10 00 00           call      0x0000000000001294
0001d8  eb 1f                    jmp       short 0x00000000000001f9
0001da  90                       nop
0001db  49 83 fc 07              cmp       r12,7
0001df  75 07                    jne       short 0x00000000000001e8
0001e1  e8 21 12 00 00           call      0x0000000000001407
0001e6  eb 11                    jmp       short 0x00000000000001f9
0001e8  90                       nop
0001e9  49 83 fc 08              cmp       r12,8
0001ed  75 07                    jne       short 0x00000000000001f6
0001ef  e8 bc 13 00 00           call      0x00000000000015b0
0001f4  eb 03                    jmp       short 0x00000000000001f9
0001f6  90                       nop
0001f7  eb 00                    jmp       short 0x00000000000001f9
0001f9  41 5d                    pop       r13
0001fb  41 5c                    pop       r12
0001fd  5b                       pop       rbx
0001fe  c3                       ret
0001ff  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000205  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00020b  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000211  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00021b  0f 18 4e 40              prefetcht0 [rsi+0x40]
00021f  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000226  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
00022d  62 f1 ff 48 6f 1e        vmovdqu16 zmm3,[rsi]
000233  62 f1 ff 48 6f a6 00 80 00 00 vmovdqu16 zmm4,[rsi+0x8000]
00023d  62 f1 ff 48 6f ae 00 00 01 00 vmovdqu16 zmm5,[rsi+0x10000]
000247  62 f2 7d 48 58 37        vpbroadcastd zmm6,[rdi]
00024d  62 f2 4e 48 52 c3        vdpbf16ps zmm0,zmm6,zmm3
000253  62 f2 4e 48 52 cc        vdpbf16ps zmm1,zmm6,zmm4
000259  62 f2 4e 48 52 d5        vdpbf16ps zmm2,zmm6,zmm5
00025f  48 83 c7 04              add       rdi,4
000263  48 83 c6 40              add       rsi,0x40
000267  48 ff c9                 dec       rcx
00026a  75 af                    jne       short 0x000000000000021b
00026c  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000272  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000279  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000280  c5 f8 77                 vzeroupper
000283  c3                       ret
000284  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00028a  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000290  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000296  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00029c  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0002a2  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0002a8  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0002b2  0f 18 4e 40              prefetcht0 [rsi+0x40]
0002b6  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0002bd  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0002c4  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
0002ca  62 f1 ff 48 6f be 00 80 00 00 vmovdqu16 zmm7,[rsi+0x8000]
0002d4  62 71 ff 48 6f 86 00 00 01 00 vmovdqu16 zmm8,[rsi+0x10000]
0002de  62 72 7d 48 58 0f        vpbroadcastd zmm9,[rdi]
0002e4  62 f2 36 48 52 c6        vdpbf16ps zmm0,zmm9,zmm6
0002ea  62 f2 36 48 52 cf        vdpbf16ps zmm1,zmm9,zmm7
0002f0  62 d2 36 48 52 d0        vdpbf16ps zmm2,zmm9,zmm8
0002f6  62 72 7d 48 58 8f 00 08 00 00 vpbroadcastd zmm9,[rdi+0x800]
000300  62 f2 36 48 52 de        vdpbf16ps zmm3,zmm9,zmm6
000306  62 f2 36 48 52 e7        vdpbf16ps zmm4,zmm9,zmm7
00030c  62 d2 36 48 52 e8        vdpbf16ps zmm5,zmm9,zmm8
000312  48 83 c7 04              add       rdi,4
000316  48 83 c6 40              add       rsi,0x40
00031a  48 ff c9                 dec       rcx
00031d  75 93                    jne       short 0x00000000000002b2
00031f  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000325  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
00032c  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000333  62 f1 7c 48 11 9a 00 20 00 00 vmovups   [rdx+0x2000],zmm3
00033d  62 f1 7c 48 11 a2 40 20 00 00 vmovups   [rdx+0x2040],zmm4
000347  62 f1 7c 48 11 aa 80 20 00 00 vmovups   [rdx+0x2080],zmm5
000351  c5 f8 77                 vzeroupper
000354  c3                       ret
000355  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00035b  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000361  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000367  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00036d  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000373  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000379  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00037f  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000385  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00038b  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000395  0f 18 4e 40              prefetcht0 [rsi+0x40]
000399  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0003a0  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0003a7  62 71 ff 48 6f 0e        vmovdqu16 zmm9,[rsi]
0003ad  62 71 ff 48 6f 96 00 80 00 00 vmovdqu16 zmm10,[rsi+0x8000]
0003b7  62 71 ff 48 6f 9e 00 00 01 00 vmovdqu16 zmm11,[rsi+0x10000]
0003c1  62 72 7d 48 58 27        vpbroadcastd zmm12,[rdi]
0003c7  62 d2 1e 48 52 c1        vdpbf16ps zmm0,zmm12,zmm9
0003cd  62 d2 1e 48 52 ca        vdpbf16ps zmm1,zmm12,zmm10
0003d3  62 d2 1e 48 52 d3        vdpbf16ps zmm2,zmm12,zmm11
0003d9  62 72 7d 48 58 a7 00 08 00 00 vpbroadcastd zmm12,[rdi+0x800]
0003e3  62 d2 1e 48 52 d9        vdpbf16ps zmm3,zmm12,zmm9
0003e9  62 d2 1e 48 52 e2        vdpbf16ps zmm4,zmm12,zmm10
0003ef  62 d2 1e 48 52 eb        vdpbf16ps zmm5,zmm12,zmm11
0003f5  62 72 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm12,[rdi+0x1000]
0003ff  62 d2 1e 48 52 f1        vdpbf16ps zmm6,zmm12,zmm9
000405  62 d2 1e 48 52 fa        vdpbf16ps zmm7,zmm12,zmm10
00040b  62 52 1e 48 52 c3        vdpbf16ps zmm8,zmm12,zmm11
000411  48 83 c7 04              add       rdi,4
000415  48 83 c6 40              add       rsi,0x40
000419  48 ff c9                 dec       rcx
00041c  0f 85 73 ff ff ff        jne       near 0x0000000000000395
000422  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000428  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
00042f  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000436  62 f1 7c 48 11 9a 00 20 00 00 vmovups   [rdx+0x2000],zmm3
000440  62 f1 7c 48 11 a2 40 20 00 00 vmovups   [rdx+0x2040],zmm4
00044a  62 f1 7c 48 11 aa 80 20 00 00 vmovups   [rdx+0x2080],zmm5
000454  62 f1 7c 48 11 b2 00 40 00 00 vmovups   [rdx+0x4000],zmm6
00045e  62 f1 7c 48 11 ba 40 40 00 00 vmovups   [rdx+0x4040],zmm7
000468  62 71 7c 48 11 82 80 40 00 00 vmovups   [rdx+0x4080],zmm8
000472  c5 f8 77                 vzeroupper
000475  c3                       ret
000476  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00047c  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000482  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000488  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00048e  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000494  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00049a  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0004a0  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0004a6  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0004ac  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0004b2  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0004b8  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0004be  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0004c8  0f 18 4e 40              prefetcht0 [rsi+0x40]
0004cc  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0004d3  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0004da  62 71 ff 48 6f 26        vmovdqu16 zmm12,[rsi]
0004e0  62 71 ff 48 6f ae 00 80 00 00 vmovdqu16 zmm13,[rsi+0x8000]
0004ea  62 71 ff 48 6f b6 00 00 01 00 vmovdqu16 zmm14,[rsi+0x10000]
0004f4  62 72 7d 48 58 3f        vpbroadcastd zmm15,[rdi]
0004fa  62 d2 06 48 52 c4        vdpbf16ps zmm0,zmm15,zmm12
000500  62 d2 06 48 52 cd        vdpbf16ps zmm1,zmm15,zmm13
000506  62 d2 06 48 52 d6        vdpbf16ps zmm2,zmm15,zmm14
00050c  62 72 7d 48 58 bf 00 08 00 00 vpbroadcastd zmm15,[rdi+0x800]
000516  62 d2 06 48 52 dc        vdpbf16ps zmm3,zmm15,zmm12
00051c  62 d2 06 48 52 e5        vdpbf16ps zmm4,zmm15,zmm13
000522  62 d2 06 48 52 ee        vdpbf16ps zmm5,zmm15,zmm14
000528  62 72 7d 48 58 bf 00 10 00 00 vpbroadcastd zmm15,[rdi+0x1000]
000532  62 d2 06 48 52 f4        vdpbf16ps zmm6,zmm15,zmm12
000538  62 d2 06 48 52 fd        vdpbf16ps zmm7,zmm15,zmm13
00053e  62 52 06 48 52 c6        vdpbf16ps zmm8,zmm15,zmm14
000544  62 72 7d 48 58 bf 00 18 00 00 vpbroadcastd zmm15,[rdi+0x1800]
00054e  62 52 06 48 52 cc        vdpbf16ps zmm9,zmm15,zmm12
000554  62 52 06 48 52 d5        vdpbf16ps zmm10,zmm15,zmm13
00055a  62 52 06 48 52 de        vdpbf16ps zmm11,zmm15,zmm14
000560  48 83 c7 04              add       rdi,4
000564  48 83 c6 40              add       rsi,0x40
000568  48 ff c9                 dec       rcx
00056b  0f 85 57 ff ff ff        jne       near 0x00000000000004c8
000571  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000577  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
00057e  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000585  62 f1 7c 48 11 9a 00 20 00 00 vmovups   [rdx+0x2000],zmm3
00058f  62 f1 7c 48 11 a2 40 20 00 00 vmovups   [rdx+0x2040],zmm4
000599  62 f1 7c 48 11 aa 80 20 00 00 vmovups   [rdx+0x2080],zmm5
0005a3  62 f1 7c 48 11 b2 00 40 00 00 vmovups   [rdx+0x4000],zmm6
0005ad  62 f1 7c 48 11 ba 40 40 00 00 vmovups   [rdx+0x4040],zmm7
0005b7  62 71 7c 48 11 82 80 40 00 00 vmovups   [rdx+0x4080],zmm8
0005c1  62 71 7c 48 11 8a 00 60 00 00 vmovups   [rdx+0x6000],zmm9
0005cb  62 71 7c 48 11 92 40 60 00 00 vmovups   [rdx+0x6040],zmm10
0005d5  62 71 7c 48 11 9a 80 60 00 00 vmovups   [rdx+0x6080],zmm11
0005df  c5 f8 77                 vzeroupper
0005e2  c3                       ret
0005e3  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0005e9  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0005ef  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0005f5  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0005fb  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000601  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000607  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00060d  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000613  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000619  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
00061f  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000625  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
00062b  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000631  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000637  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
00063d  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000647  0f 18 4e 40              prefetcht0 [rsi+0x40]
00064b  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000652  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000659  62 71 ff 48 6f 3e        vmovdqu16 zmm15,[rsi]
00065f  62 e1 ff 48 6f 86 00 80 00 00 vmovdqu16 zmm16,[rsi+0x8000]
000669  62 e1 ff 48 6f 8e 00 00 01 00 vmovdqu16 zmm17,[rsi+0x10000]
000673  62 e2 7d 48 58 17        vpbroadcastd zmm18,[rdi]
000679  62 d2 6e 40 52 c7        vdpbf16ps zmm0,zmm18,zmm15
00067f  62 b2 6e 40 52 c8        vdpbf16ps zmm1,zmm18,zmm16
000685  62 b2 6e 40 52 d1        vdpbf16ps zmm2,zmm18,zmm17
00068b  62 e2 7d 48 58 97 00 08 00 00 vpbroadcastd zmm18,[rdi+0x800]
000695  62 d2 6e 40 52 df        vdpbf16ps zmm3,zmm18,zmm15
00069b  62 b2 6e 40 52 e0        vdpbf16ps zmm4,zmm18,zmm16
0006a1  62 b2 6e 40 52 e9        vdpbf16ps zmm5,zmm18,zmm17
0006a7  62 e2 7d 48 58 97 00 10 00 00 vpbroadcastd zmm18,[rdi+0x1000]
0006b1  62 d2 6e 40 52 f7        vdpbf16ps zmm6,zmm18,zmm15
0006b7  62 b2 6e 40 52 f8        vdpbf16ps zmm7,zmm18,zmm16
0006bd  62 32 6e 40 52 c1        vdpbf16ps zmm8,zmm18,zmm17
0006c3  62 e2 7d 48 58 97 00 18 00 00 vpbroadcastd zmm18,[rdi+0x1800]
0006cd  62 52 6e 40 52 cf        vdpbf16ps zmm9,zmm18,zmm15
0006d3  62 32 6e 40 52 d0        vdpbf16ps zmm10,zmm18,zmm16
0006d9  62 32 6e 40 52 d9        vdpbf16ps zmm11,zmm18,zmm17
0006df  62 e2 7d 48 58 97 00 20 00 00 vpbroadcastd zmm18,[rdi+0x2000]
0006e9  62 52 6e 40 52 e7        vdpbf16ps zmm12,zmm18,zmm15
0006ef  62 32 6e 40 52 e8        vdpbf16ps zmm13,zmm18,zmm16
0006f5  62 32 6e 40 52 f1        vdpbf16ps zmm14,zmm18,zmm17
0006fb  48 83 c7 04              add       rdi,4
0006ff  48 83 c6 40              add       rsi,0x40
000703  48 ff c9                 dec       rcx
000706  0f 85 3b ff ff ff        jne       near 0x0000000000000647
00070c  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000712  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000719  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000720  62 f1 7c 48 11 9a 00 20 00 00 vmovups   [rdx+0x2000],zmm3
00072a  62 f1 7c 48 11 a2 40 20 00 00 vmovups   [rdx+0x2040],zmm4
000734  62 f1 7c 48 11 aa 80 20 00 00 vmovups   [rdx+0x2080],zmm5
00073e  62 f1 7c 48 11 b2 00 40 00 00 vmovups   [rdx+0x4000],zmm6
000748  62 f1 7c 48 11 ba 40 40 00 00 vmovups   [rdx+0x4040],zmm7
000752  62 71 7c 48 11 82 80 40 00 00 vmovups   [rdx+0x4080],zmm8
00075c  62 71 7c 48 11 8a 00 60 00 00 vmovups   [rdx+0x6000],zmm9
000766  62 71 7c 48 11 92 40 60 00 00 vmovups   [rdx+0x6040],zmm10
000770  62 71 7c 48 11 9a 80 60 00 00 vmovups   [rdx+0x6080],zmm11
00077a  62 71 7c 48 11 a2 00 80 00 00 vmovups   [rdx+0x8000],zmm12
000784  62 71 7c 48 11 aa 40 80 00 00 vmovups   [rdx+0x8040],zmm13
00078e  62 71 7c 48 11 b2 80 80 00 00 vmovups   [rdx+0x8080],zmm14
000798  c5 f8 77                 vzeroupper
00079b  c3                       ret
00079c  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0007a2  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0007a8  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0007ae  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0007b4  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0007ba  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0007c0  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0007c6  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0007cc  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0007d2  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0007d8  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0007de  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0007e4  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0007ea  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0007f0  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0007f6  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
0007fc  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000802  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000808  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000812  0f 18 4e 40              prefetcht0 [rsi+0x40]
000816  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
00081d  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000824  62 e1 ff 48 6f 16        vmovdqu16 zmm18,[rsi]
00082a  62 e1 ff 48 6f 9e 00 80 00 00 vmovdqu16 zmm19,[rsi+0x8000]
000834  62 e1 ff 48 6f a6 00 00 01 00 vmovdqu16 zmm20,[rsi+0x10000]
00083e  62 e2 7d 48 58 2f        vpbroadcastd zmm21,[rdi]
000844  62 b2 56 40 52 c2        vdpbf16ps zmm0,zmm21,zmm18
00084a  62 b2 56 40 52 cb        vdpbf16ps zmm1,zmm21,zmm19
000850  62 b2 56 40 52 d4        vdpbf16ps zmm2,zmm21,zmm20
000856  62 e2 7d 48 58 af 00 08 00 00 vpbroadcastd zmm21,[rdi+0x800]
000860  62 b2 56 40 52 da        vdpbf16ps zmm3,zmm21,zmm18
000866  62 b2 56 40 52 e3        vdpbf16ps zmm4,zmm21,zmm19
00086c  62 b2 56 40 52 ec        vdpbf16ps zmm5,zmm21,zmm20
000872  62 e2 7d 48 58 af 00 10 00 00 vpbroadcastd zmm21,[rdi+0x1000]
00087c  62 b2 56 40 52 f2        vdpbf16ps zmm6,zmm21,zmm18
000882  62 b2 56 40 52 fb        vdpbf16ps zmm7,zmm21,zmm19
000888  62 32 56 40 52 c4        vdpbf16ps zmm8,zmm21,zmm20
00088e  62 e2 7d 48 58 af 00 18 00 00 vpbroadcastd zmm21,[rdi+0x1800]
000898  62 32 56 40 52 ca        vdpbf16ps zmm9,zmm21,zmm18
00089e  62 32 56 40 52 d3        vdpbf16ps zmm10,zmm21,zmm19
0008a4  62 32 56 40 52 dc        vdpbf16ps zmm11,zmm21,zmm20
0008aa  62 e2 7d 48 58 af 00 20 00 00 vpbroadcastd zmm21,[rdi+0x2000]
0008b4  62 32 56 40 52 e2        vdpbf16ps zmm12,zmm21,zmm18
0008ba  62 32 56 40 52 eb        vdpbf16ps zmm13,zmm21,zmm19
0008c0  62 32 56 40 52 f4        vdpbf16ps zmm14,zmm21,zmm20
0008c6  62 e2 7d 48 58 af 00 28 00 00 vpbroadcastd zmm21,[rdi+0x2800]
0008d0  62 32 56 40 52 fa        vdpbf16ps zmm15,zmm21,zmm18
0008d6  62 a2 56 40 52 c3        vdpbf16ps zmm16,zmm21,zmm19
0008dc  62 a2 56 40 52 cc        vdpbf16ps zmm17,zmm21,zmm20
0008e2  48 83 c7 04              add       rdi,4
0008e6  48 83 c6 40              add       rsi,0x40
0008ea  48 ff c9                 dec       rcx
0008ed  0f 85 1f ff ff ff        jne       near 0x0000000000000812
0008f3  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
0008f9  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000900  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000907  62 f1 7c 48 11 9a 00 20 00 00 vmovups   [rdx+0x2000],zmm3
000911  62 f1 7c 48 11 a2 40 20 00 00 vmovups   [rdx+0x2040],zmm4
00091b  62 f1 7c 48 11 aa 80 20 00 00 vmovups   [rdx+0x2080],zmm5
000925  62 f1 7c 48 11 b2 00 40 00 00 vmovups   [rdx+0x4000],zmm6
00092f  62 f1 7c 48 11 ba 40 40 00 00 vmovups   [rdx+0x4040],zmm7
000939  62 71 7c 48 11 82 80 40 00 00 vmovups   [rdx+0x4080],zmm8
000943  62 71 7c 48 11 8a 00 60 00 00 vmovups   [rdx+0x6000],zmm9
00094d  62 71 7c 48 11 92 40 60 00 00 vmovups   [rdx+0x6040],zmm10
000957  62 71 7c 48 11 9a 80 60 00 00 vmovups   [rdx+0x6080],zmm11
000961  62 71 7c 48 11 a2 00 80 00 00 vmovups   [rdx+0x8000],zmm12
00096b  62 71 7c 48 11 aa 40 80 00 00 vmovups   [rdx+0x8040],zmm13
000975  62 71 7c 48 11 b2 80 80 00 00 vmovups   [rdx+0x8080],zmm14
00097f  62 71 7c 48 11 ba 00 a0 00 00 vmovups   [rdx+0xa000],zmm15
000989  62 e1 7c 48 11 82 40 a0 00 00 vmovups   [rdx+0xa040],zmm16
000993  62 e1 7c 48 11 8a 80 a0 00 00 vmovups   [rdx+0xa080],zmm17
00099d  c5 f8 77                 vzeroupper
0009a0  c3                       ret
0009a1  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0009a7  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0009ad  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0009b3  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0009b9  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0009bf  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0009c5  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0009cb  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0009d1  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0009d7  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0009dd  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0009e3  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0009e9  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0009ef  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0009f5  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0009fb  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
000a01  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000a07  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000a0d  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
000a13  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000a19  62 a1 5c 40 57 e4        vxorps    zmm20,zmm20,zmm20
000a1f  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000a29  0f 18 4e 40              prefetcht0 [rsi+0x40]
000a2d  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000a34  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000a3b  62 e1 ff 48 6f 2e        vmovdqu16 zmm21,[rsi]
000a41  62 e1 ff 48 6f b6 00 80 00 00 vmovdqu16 zmm22,[rsi+0x8000]
000a4b  62 e1 ff 48 6f be 00 00 01 00 vmovdqu16 zmm23,[rsi+0x10000]
000a55  62 62 7d 48 58 07        vpbroadcastd zmm24,[rdi]
000a5b  62 b2 3e 40 52 c5        vdpbf16ps zmm0,zmm24,zmm21
000a61  62 b2 3e 40 52 ce        vdpbf16ps zmm1,zmm24,zmm22
000a67  62 b2 3e 40 52 d7        vdpbf16ps zmm2,zmm24,zmm23
000a6d  62 62 7d 48 58 87 00 08 00 00 vpbroadcastd zmm24,[rdi+0x800]
000a77  62 b2 3e 40 52 dd        vdpbf16ps zmm3,zmm24,zmm21
000a7d  62 b2 3e 40 52 e6        vdpbf16ps zmm4,zmm24,zmm22
000a83  62 b2 3e 40 52 ef        vdpbf16ps zmm5,zmm24,zmm23
000a89  62 62 7d 48 58 87 00 10 00 00 vpbroadcastd zmm24,[rdi+0x1000]
000a93  62 b2 3e 40 52 f5        vdpbf16ps zmm6,zmm24,zmm21
000a99  62 b2 3e 40 52 fe        vdpbf16ps zmm7,zmm24,zmm22
000a9f  62 32 3e 40 52 c7        vdpbf16ps zmm8,zmm24,zmm23
000aa5  62 62 7d 48 58 87 00 18 00 00 vpbroadcastd zmm24,[rdi+0x1800]
000aaf  62 32 3e 40 52 cd        vdpbf16ps zmm9,zmm24,zmm21
000ab5  62 32 3e 40 52 d6        vdpbf16ps zmm10,zmm24,zmm22
000abb  62 32 3e 40 52 df        vdpbf16ps zmm11,zmm24,zmm23
000ac1  62 62 7d 48 58 87 00 20 00 00 vpbroadcastd zmm24,[rdi+0x2000]
000acb  62 32 3e 40 52 e5        vdpbf16ps zmm12,zmm24,zmm21
000ad1  62 32 3e 40 52 ee        vdpbf16ps zmm13,zmm24,zmm22
000ad7  62 32 3e 40 52 f7        vdpbf16ps zmm14,zmm24,zmm23
000add  62 62 7d 48 58 87 00 28 00 00 vpbroadcastd zmm24,[rdi+0x2800]
000ae7  62 32 3e 40 52 fd        vdpbf16ps zmm15,zmm24,zmm21
000aed  62 a2 3e 40 52 c6        vdpbf16ps zmm16,zmm24,zmm22
000af3  62 a2 3e 40 52 cf        vdpbf16ps zmm17,zmm24,zmm23
000af9  62 62 7d 48 58 87 00 30 00 00 vpbroadcastd zmm24,[rdi+0x3000]
000b03  62 a2 3e 40 52 d5        vdpbf16ps zmm18,zmm24,zmm21
000b09  62 a2 3e 40 52 de        vdpbf16ps zmm19,zmm24,zmm22
000b0f  62 a2 3e 40 52 e7        vdpbf16ps zmm20,zmm24,zmm23
000b15  48 83 c7 04              add       rdi,4
000b19  48 83 c6 40              add       rsi,0x40
000b1d  48 ff c9                 dec       rcx
000b20  0f 85 03 ff ff ff        jne       near 0x0000000000000a29
000b26  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000b2c  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000b33  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000b3a  62 f1 7c 48 11 9a 00 20 00 00 vmovups   [rdx+0x2000],zmm3
000b44  62 f1 7c 48 11 a2 40 20 00 00 vmovups   [rdx+0x2040],zmm4
000b4e  62 f1 7c 48 11 aa 80 20 00 00 vmovups   [rdx+0x2080],zmm5
000b58  62 f1 7c 48 11 b2 00 40 00 00 vmovups   [rdx+0x4000],zmm6
000b62  62 f1 7c 48 11 ba 40 40 00 00 vmovups   [rdx+0x4040],zmm7
000b6c  62 71 7c 48 11 82 80 40 00 00 vmovups   [rdx+0x4080],zmm8
000b76  62 71 7c 48 11 8a 00 60 00 00 vmovups   [rdx+0x6000],zmm9
000b80  62 71 7c 48 11 92 40 60 00 00 vmovups   [rdx+0x6040],zmm10
000b8a  62 71 7c 48 11 9a 80 60 00 00 vmovups   [rdx+0x6080],zmm11
000b94  62 71 7c 48 11 a2 00 80 00 00 vmovups   [rdx+0x8000],zmm12
000b9e  62 71 7c 48 11 aa 40 80 00 00 vmovups   [rdx+0x8040],zmm13
000ba8  62 71 7c 48 11 b2 80 80 00 00 vmovups   [rdx+0x8080],zmm14
000bb2  62 71 7c 48 11 ba 00 a0 00 00 vmovups   [rdx+0xa000],zmm15
000bbc  62 e1 7c 48 11 82 40 a0 00 00 vmovups   [rdx+0xa040],zmm16
000bc6  62 e1 7c 48 11 8a 80 a0 00 00 vmovups   [rdx+0xa080],zmm17
000bd0  62 e1 7c 48 11 92 00 c0 00 00 vmovups   [rdx+0xc000],zmm18
000bda  62 e1 7c 48 11 9a 40 c0 00 00 vmovups   [rdx+0xc040],zmm19
000be4  62 e1 7c 48 11 a2 80 c0 00 00 vmovups   [rdx+0xc080],zmm20
000bee  c5 f8 77                 vzeroupper
000bf1  c3                       ret
000bf2  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000bf8  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000bfe  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000c04  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000c0a  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000c10  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000c16  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000c1c  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000c22  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000c28  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000c2e  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000c34  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000c3a  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000c40  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000c46  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
000c4c  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
000c52  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000c58  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000c5e  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
000c64  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000c6a  62 a1 5c 40 57 e4        vxorps    zmm20,zmm20,zmm20
000c70  62 a1 54 40 57 ed        vxorps    zmm21,zmm21,zmm21
000c76  62 a1 4c 40 57 f6        vxorps    zmm22,zmm22,zmm22
000c7c  62 a1 44 40 57 ff        vxorps    zmm23,zmm23,zmm23
000c82  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000c8c  0f 18 4e 40              prefetcht0 [rsi+0x40]
000c90  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000c97  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000c9e  62 61 ff 48 6f 06        vmovdqu16 zmm24,[rsi]
000ca4  62 61 ff 48 6f 8e 00 80 00 00 vmovdqu16 zmm25,[rsi+0x8000]
000cae  62 61 ff 48 6f 96 00 00 01 00 vmovdqu16 zmm26,[rsi+0x10000]
000cb8  62 62 7d 48 58 1f        vpbroadcastd zmm27,[rdi]
000cbe  62 92 26 40 52 c0        vdpbf16ps zmm0,zmm27,zmm24
000cc4  62 92 26 40 52 c9        vdpbf16ps zmm1,zmm27,zmm25
000cca  62 92 26 40 52 d2        vdpbf16ps zmm2,zmm27,zmm26
000cd0  62 62 7d 48 58 9f 00 08 00 00 vpbroadcastd zmm27,[rdi+0x800]
000cda  62 92 26 40 52 d8        vdpbf16ps zmm3,zmm27,zmm24
000ce0  62 92 26 40 52 e1        vdpbf16ps zmm4,zmm27,zmm25
000ce6  62 92 26 40 52 ea        vdpbf16ps zmm5,zmm27,zmm26
000cec  62 62 7d 48 58 9f 00 10 00 00 vpbroadcastd zmm27,[rdi+0x1000]
000cf6  62 92 26 40 52 f0        vdpbf16ps zmm6,zmm27,zmm24
000cfc  62 92 26 40 52 f9        vdpbf16ps zmm7,zmm27,zmm25
000d02  62 12 26 40 52 c2        vdpbf16ps zmm8,zmm27,zmm26
000d08  62 62 7d 48 58 9f 00 18 00 00 vpbroadcastd zmm27,[rdi+0x1800]
000d12  62 12 26 40 52 c8        vdpbf16ps zmm9,zmm27,zmm24
000d18  62 12 26 40 52 d1        vdpbf16ps zmm10,zmm27,zmm25
000d1e  62 12 26 40 52 da        vdpbf16ps zmm11,zmm27,zmm26
000d24  62 62 7d 48 58 9f 00 20 00 00 vpbroadcastd zmm27,[rdi+0x2000]
000d2e  62 12 26 40 52 e0        vdpbf16ps zmm12,zmm27,zmm24
000d34  62 12 26 40 52 e9        vdpbf16ps zmm13,zmm27,zmm25
000d3a  62 12 26 40 52 f2        vdpbf16ps zmm14,zmm27,zmm26
000d40  62 62 7d 48 58 9f 00 28 00 00 vpbroadcastd zmm27,[rdi+0x2800]
000d4a  62 12 26 40 52 f8        vdpbf16ps zmm15,zmm27,zmm24
000d50  62 82 26 40 52 c1        vdpbf16ps zmm16,zmm27,zmm25
000d56  62 82 26 40 52 ca        vdpbf16ps zmm17,zmm27,zmm26
000d5c  62 62 7d 48 58 9f 00 30 00 00 vpbroadcastd zmm27,[rdi+0x3000]
000d66  62 82 26 40 52 d0        vdpbf16ps zmm18,zmm27,zmm24
000d6c  62 82 26 40 52 d9        vdpbf16ps zmm19,zmm27,zmm25
000d72  62 82 26 40 52 e2        vdpbf16ps zmm20,zmm27,zmm26
000d78  62 62 7d 48 58 9f 00 38 00 00 vpbroadcastd zmm27,[rdi+0x3800]
000d82  62 82 26 40 52 e8        vdpbf16ps zmm21,zmm27,zmm24
000d88  62 82 26 40 52 f1        vdpbf16ps zmm22,zmm27,zmm25
000d8e  62 82 26 40 52 fa        vdpbf16ps zmm23,zmm27,zmm26
000d94  48 83 c7 04              add       rdi,4
000d98  48 83 c6 40              add       rsi,0x40
000d9c  48 ff c9                 dec       rcx
000d9f  0f 85 e7 fe ff ff        jne       near 0x0000000000000c8c
000da5  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000dab  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000db2  62 f1 7c 48 11 52 02     vmovups   [rdx+0x80],zmm2
000db9  62 f1 7c 48 11 9a 00 20 00 00 vmovups   [rdx+0x2000],zmm3
000dc3  62 f1 7c 48 11 a2 40 20 00 00 vmovups   [rdx+0x2040],zmm4
000dcd  62 f1 7c 48 11 aa 80 20 00 00 vmovups   [rdx+0x2080],zmm5
000dd7  62 f1 7c 48 11 b2 00 40 00 00 vmovups   [rdx+0x4000],zmm6
000de1  62 f1 7c 48 11 ba 40 40 00 00 vmovups   [rdx+0x4040],zmm7
000deb  62 71 7c 48 11 82 80 40 00 00 vmovups   [rdx+0x4080],zmm8
000df5  62 71 7c 48 11 8a 00 60 00 00 vmovups   [rdx+0x6000],zmm9
000dff  62 71 7c 48 11 92 40 60 00 00 vmovups   [rdx+0x6040],zmm10
000e09  62 71 7c 48 11 9a 80 60 00 00 vmovups   [rdx+0x6080],zmm11
000e13  62 71 7c 48 11 a2 00 80 00 00 vmovups   [rdx+0x8000],zmm12
000e1d  62 71 7c 48 11 aa 40 80 00 00 vmovups   [rdx+0x8040],zmm13
000e27  62 71 7c 48 11 b2 80 80 00 00 vmovups   [rdx+0x8080],zmm14
000e31  62 71 7c 48 11 ba 00 a0 00 00 vmovups   [rdx+0xa000],zmm15
000e3b  62 e1 7c 48 11 82 40 a0 00 00 vmovups   [rdx+0xa040],zmm16
000e45  62 e1 7c 48 11 8a 80 a0 00 00 vmovups   [rdx+0xa080],zmm17
000e4f  62 e1 7c 48 11 92 00 c0 00 00 vmovups   [rdx+0xc000],zmm18
000e59  62 e1 7c 48 11 9a 40 c0 00 00 vmovups   [rdx+0xc040],zmm19
000e63  62 e1 7c 48 11 a2 80 c0 00 00 vmovups   [rdx+0xc080],zmm20
000e6d  62 e1 7c 48 11 aa 00 e0 00 00 vmovups   [rdx+0xe000],zmm21
000e77  62 e1 7c 48 11 b2 40 e0 00 00 vmovups   [rdx+0xe040],zmm22
000e81  62 e1 7c 48 11 ba 80 e0 00 00 vmovups   [rdx+0xe080],zmm23
000e8b  c5 f8 77                 vzeroupper
000e8e  c3                       ret
000e8f  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000e95  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000e9b  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000ea5  0f 18 4e 40              prefetcht0 [rsi+0x40]
000ea9  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000eb0  62 f1 ff 48 6f 16        vmovdqu16 zmm2,[rsi]
000eb6  62 f1 ff 48 6f 9e 00 80 00 00 vmovdqu16 zmm3,[rsi+0x8000]
000ec0  62 f2 7d 48 58 27        vpbroadcastd zmm4,[rdi]
000ec6  62 f2 5e 48 52 c2        vdpbf16ps zmm0,zmm4,zmm2
000ecc  62 f2 5e 48 52 cb        vdpbf16ps zmm1,zmm4,zmm3
000ed2  48 83 c7 04              add       rdi,4
000ed6  48 83 c6 40              add       rsi,0x40
000eda  48 ff c9                 dec       rcx
000edd  75 c6                    jne       short 0x0000000000000ea5
000edf  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000ee5  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000eec  c5 f8 77                 vzeroupper
000eef  c3                       ret
000ef0  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000ef6  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000efc  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000f02  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000f08  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000f12  0f 18 4e 40              prefetcht0 [rsi+0x40]
000f16  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000f1d  62 f1 ff 48 6f 26        vmovdqu16 zmm4,[rsi]
000f23  62 f1 ff 48 6f ae 00 80 00 00 vmovdqu16 zmm5,[rsi+0x8000]
000f2d  62 f2 7d 48 58 37        vpbroadcastd zmm6,[rdi]
000f33  62 f2 4e 48 52 c4        vdpbf16ps zmm0,zmm6,zmm4
000f39  62 f2 4e 48 52 cd        vdpbf16ps zmm1,zmm6,zmm5
000f3f  62 f2 7d 48 58 b7 00 08 00 00 vpbroadcastd zmm6,[rdi+0x800]
000f49  62 f2 4e 48 52 d4        vdpbf16ps zmm2,zmm6,zmm4
000f4f  62 f2 4e 48 52 dd        vdpbf16ps zmm3,zmm6,zmm5
000f55  48 83 c7 04              add       rdi,4
000f59  48 83 c6 40              add       rsi,0x40
000f5d  48 ff c9                 dec       rcx
000f60  75 b0                    jne       short 0x0000000000000f12
000f62  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
000f68  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
000f6f  62 f1 7c 48 11 92 00 20 00 00 vmovups   [rdx+0x2000],zmm2
000f79  62 f1 7c 48 11 9a 40 20 00 00 vmovups   [rdx+0x2040],zmm3
000f83  c5 f8 77                 vzeroupper
000f86  c3                       ret
000f87  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000f8d  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000f93  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000f99  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000f9f  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000fa5  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000fab  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000fb5  0f 18 4e 40              prefetcht0 [rsi+0x40]
000fb9  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000fc0  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
000fc6  62 f1 ff 48 6f be 00 80 00 00 vmovdqu16 zmm7,[rsi+0x8000]
000fd0  62 72 7d 48 58 07        vpbroadcastd zmm8,[rdi]
000fd6  62 f2 3e 48 52 c6        vdpbf16ps zmm0,zmm8,zmm6
000fdc  62 f2 3e 48 52 cf        vdpbf16ps zmm1,zmm8,zmm7
000fe2  62 72 7d 48 58 87 00 08 00 00 vpbroadcastd zmm8,[rdi+0x800]
000fec  62 f2 3e 48 52 d6        vdpbf16ps zmm2,zmm8,zmm6
000ff2  62 f2 3e 48 52 df        vdpbf16ps zmm3,zmm8,zmm7
000ff8  62 72 7d 48 58 87 00 10 00 00 vpbroadcastd zmm8,[rdi+0x1000]
001002  62 f2 3e 48 52 e6        vdpbf16ps zmm4,zmm8,zmm6
001008  62 f2 3e 48 52 ef        vdpbf16ps zmm5,zmm8,zmm7
00100e  48 83 c7 04              add       rdi,4
001012  48 83 c6 40              add       rsi,0x40
001016  48 ff c9                 dec       rcx
001019  75 9a                    jne       short 0x0000000000000fb5
00101b  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
001021  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
001028  62 f1 7c 48 11 92 00 20 00 00 vmovups   [rdx+0x2000],zmm2
001032  62 f1 7c 48 11 9a 40 20 00 00 vmovups   [rdx+0x2040],zmm3
00103c  62 f1 7c 48 11 a2 00 40 00 00 vmovups   [rdx+0x4000],zmm4
001046  62 f1 7c 48 11 aa 40 40 00 00 vmovups   [rdx+0x4040],zmm5
001050  c5 f8 77                 vzeroupper
001053  c3                       ret
001054  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00105a  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
001060  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001066  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00106c  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001072  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001078  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00107e  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001084  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00108e  0f 18 4e 40              prefetcht0 [rsi+0x40]
001092  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
001099  62 71 ff 48 6f 06        vmovdqu16 zmm8,[rsi]
00109f  62 71 ff 48 6f 8e 00 80 00 00 vmovdqu16 zmm9,[rsi+0x8000]
0010a9  62 72 7d 48 58 17        vpbroadcastd zmm10,[rdi]
0010af  62 d2 2e 48 52 c0        vdpbf16ps zmm0,zmm10,zmm8
0010b5  62 d2 2e 48 52 c9        vdpbf16ps zmm1,zmm10,zmm9
0010bb  62 72 7d 48 58 97 00 08 00 00 vpbroadcastd zmm10,[rdi+0x800]
0010c5  62 d2 2e 48 52 d0        vdpbf16ps zmm2,zmm10,zmm8
0010cb  62 d2 2e 48 52 d9        vdpbf16ps zmm3,zmm10,zmm9
0010d1  62 72 7d 48 58 97 00 10 00 00 vpbroadcastd zmm10,[rdi+0x1000]
0010db  62 d2 2e 48 52 e0        vdpbf16ps zmm4,zmm10,zmm8
0010e1  62 d2 2e 48 52 e9        vdpbf16ps zmm5,zmm10,zmm9
0010e7  62 72 7d 48 58 97 00 18 00 00 vpbroadcastd zmm10,[rdi+0x1800]
0010f1  62 d2 2e 48 52 f0        vdpbf16ps zmm6,zmm10,zmm8
0010f7  62 d2 2e 48 52 f9        vdpbf16ps zmm7,zmm10,zmm9
0010fd  48 83 c7 04              add       rdi,4
001101  48 83 c6 40              add       rsi,0x40
001105  48 ff c9                 dec       rcx
001108  75 84                    jne       short 0x000000000000108e
00110a  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
001110  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
001117  62 f1 7c 48 11 92 00 20 00 00 vmovups   [rdx+0x2000],zmm2
001121  62 f1 7c 48 11 9a 40 20 00 00 vmovups   [rdx+0x2040],zmm3
00112b  62 f1 7c 48 11 a2 00 40 00 00 vmovups   [rdx+0x4000],zmm4
001135  62 f1 7c 48 11 aa 40 40 00 00 vmovups   [rdx+0x4040],zmm5
00113f  62 f1 7c 48 11 b2 00 60 00 00 vmovups   [rdx+0x6000],zmm6
001149  62 f1 7c 48 11 ba 40 60 00 00 vmovups   [rdx+0x6040],zmm7
001153  c5 f8 77                 vzeroupper
001156  c3                       ret
001157  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00115d  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
001163  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001169  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00116f  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001175  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00117b  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
001181  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001187  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00118d  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
001193  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00119d  0f 18 4e 40              prefetcht0 [rsi+0x40]
0011a1  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0011a8  62 71 ff 48 6f 16        vmovdqu16 zmm10,[rsi]
0011ae  62 71 ff 48 6f 9e 00 80 00 00 vmovdqu16 zmm11,[rsi+0x8000]
0011b8  62 72 7d 48 58 27        vpbroadcastd zmm12,[rdi]
0011be  62 d2 1e 48 52 c2        vdpbf16ps zmm0,zmm12,zmm10
0011c4  62 d2 1e 48 52 cb        vdpbf16ps zmm1,zmm12,zmm11
0011ca  62 72 7d 48 58 a7 00 08 00 00 vpbroadcastd zmm12,[rdi+0x800]
0011d4  62 d2 1e 48 52 d2        vdpbf16ps zmm2,zmm12,zmm10
0011da  62 d2 1e 48 52 db        vdpbf16ps zmm3,zmm12,zmm11
0011e0  62 72 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm12,[rdi+0x1000]
0011ea  62 d2 1e 48 52 e2        vdpbf16ps zmm4,zmm12,zmm10
0011f0  62 d2 1e 48 52 eb        vdpbf16ps zmm5,zmm12,zmm11
0011f6  62 72 7d 48 58 a7 00 18 00 00 vpbroadcastd zmm12,[rdi+0x1800]
001200  62 d2 1e 48 52 f2        vdpbf16ps zmm6,zmm12,zmm10
001206  62 d2 1e 48 52 fb        vdpbf16ps zmm7,zmm12,zmm11
00120c  62 72 7d 48 58 a7 00 20 00 00 vpbroadcastd zmm12,[rdi+0x2000]
001216  62 52 1e 48 52 c2        vdpbf16ps zmm8,zmm12,zmm10
00121c  62 52 1e 48 52 cb        vdpbf16ps zmm9,zmm12,zmm11
001222  48 83 c7 04              add       rdi,4
001226  48 83 c6 40              add       rsi,0x40
00122a  48 ff c9                 dec       rcx
00122d  0f 85 6a ff ff ff        jne       near 0x000000000000119d
001233  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
001239  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
001240  62 f1 7c 48 11 92 00 20 00 00 vmovups   [rdx+0x2000],zmm2
00124a  62 f1 7c 48 11 9a 40 20 00 00 vmovups   [rdx+0x2040],zmm3
001254  62 f1 7c 48 11 a2 00 40 00 00 vmovups   [rdx+0x4000],zmm4
00125e  62 f1 7c 48 11 aa 40 40 00 00 vmovups   [rdx+0x4040],zmm5
001268  62 f1 7c 48 11 b2 00 60 00 00 vmovups   [rdx+0x6000],zmm6
001272  62 f1 7c 48 11 ba 40 60 00 00 vmovups   [rdx+0x6040],zmm7
00127c  62 71 7c 48 11 82 00 80 00 00 vmovups   [rdx+0x8000],zmm8
001286  62 71 7c 48 11 8a 40 80 00 00 vmovups   [rdx+0x8040],zmm9
001290  c5 f8 77                 vzeroupper
001293  c3                       ret
001294  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00129a  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0012a0  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0012a6  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0012ac  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0012b2  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0012b8  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0012be  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0012c4  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0012ca  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0012d0  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0012d6  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0012dc  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0012e6  0f 18 4e 40              prefetcht0 [rsi+0x40]
0012ea  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0012f1  62 71 ff 48 6f 26        vmovdqu16 zmm12,[rsi]
0012f7  62 71 ff 48 6f ae 00 80 00 00 vmovdqu16 zmm13,[rsi+0x8000]
001301  62 72 7d 48 58 37        vpbroadcastd zmm14,[rdi]
001307  62 d2 0e 48 52 c4        vdpbf16ps zmm0,zmm14,zmm12
00130d  62 d2 0e 48 52 cd        vdpbf16ps zmm1,zmm14,zmm13
001313  62 72 7d 48 58 b7 00 08 00 00 vpbroadcastd zmm14,[rdi+0x800]
00131d  62 d2 0e 48 52 d4        vdpbf16ps zmm2,zmm14,zmm12
001323  62 d2 0e 48 52 dd        vdpbf16ps zmm3,zmm14,zmm13
001329  62 72 7d 48 58 b7 00 10 00 00 vpbroadcastd zmm14,[rdi+0x1000]
001333  62 d2 0e 48 52 e4        vdpbf16ps zmm4,zmm14,zmm12
001339  62 d2 0e 48 52 ed        vdpbf16ps zmm5,zmm14,zmm13
00133f  62 72 7d 48 58 b7 00 18 00 00 vpbroadcastd zmm14,[rdi+0x1800]
001349  62 d2 0e 48 52 f4        vdpbf16ps zmm6,zmm14,zmm12
00134f  62 d2 0e 48 52 fd        vdpbf16ps zmm7,zmm14,zmm13
001355  62 72 7d 48 58 b7 00 20 00 00 vpbroadcastd zmm14,[rdi+0x2000]
00135f  62 52 0e 48 52 c4        vdpbf16ps zmm8,zmm14,zmm12
001365  62 52 0e 48 52 cd        vdpbf16ps zmm9,zmm14,zmm13
00136b  62 72 7d 48 58 b7 00 28 00 00 vpbroadcastd zmm14,[rdi+0x2800]
001375  62 52 0e 48 52 d4        vdpbf16ps zmm10,zmm14,zmm12
00137b  62 52 0e 48 52 dd        vdpbf16ps zmm11,zmm14,zmm13
001381  48 83 c7 04              add       rdi,4
001385  48 83 c6 40              add       rsi,0x40
001389  48 ff c9                 dec       rcx
00138c  0f 85 54 ff ff ff        jne       near 0x00000000000012e6
001392  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
001398  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
00139f  62 f1 7c 48 11 92 00 20 00 00 vmovups   [rdx+0x2000],zmm2
0013a9  62 f1 7c 48 11 9a 40 20 00 00 vmovups   [rdx+0x2040],zmm3
0013b3  62 f1 7c 48 11 a2 00 40 00 00 vmovups   [rdx+0x4000],zmm4
0013bd  62 f1 7c 48 11 aa 40 40 00 00 vmovups   [rdx+0x4040],zmm5
0013c7  62 f1 7c 48 11 b2 00 60 00 00 vmovups   [rdx+0x6000],zmm6
0013d1  62 f1 7c 48 11 ba 40 60 00 00 vmovups   [rdx+0x6040],zmm7
0013db  62 71 7c 48 11 82 00 80 00 00 vmovups   [rdx+0x8000],zmm8
0013e5  62 71 7c 48 11 8a 40 80 00 00 vmovups   [rdx+0x8040],zmm9
0013ef  62 71 7c 48 11 92 00 a0 00 00 vmovups   [rdx+0xa000],zmm10
0013f9  62 71 7c 48 11 9a 40 a0 00 00 vmovups   [rdx+0xa040],zmm11
001403  c5 f8 77                 vzeroupper
001406  c3                       ret
001407  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00140d  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
001413  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001419  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00141f  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001425  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00142b  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
001431  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001437  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00143d  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
001443  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
001449  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
00144f  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
001455  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
00145b  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
001465  0f 18 4e 40              prefetcht0 [rsi+0x40]
001469  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
001470  62 71 ff 48 6f 36        vmovdqu16 zmm14,[rsi]
001476  62 71 ff 48 6f be 00 80 00 00 vmovdqu16 zmm15,[rsi+0x8000]
001480  62 e2 7d 48 58 07        vpbroadcastd zmm16,[rdi]
001486  62 d2 7e 40 52 c6        vdpbf16ps zmm0,zmm16,zmm14
00148c  62 d2 7e 40 52 cf        vdpbf16ps zmm1,zmm16,zmm15
001492  62 e2 7d 48 58 87 00 08 00 00 vpbroadcastd zmm16,[rdi+0x800]
00149c  62 d2 7e 40 52 d6        vdpbf16ps zmm2,zmm16,zmm14
0014a2  62 d2 7e 40 52 df        vdpbf16ps zmm3,zmm16,zmm15
0014a8  62 e2 7d 48 58 87 00 10 00 00 vpbroadcastd zmm16,[rdi+0x1000]
0014b2  62 d2 7e 40 52 e6        vdpbf16ps zmm4,zmm16,zmm14
0014b8  62 d2 7e 40 52 ef        vdpbf16ps zmm5,zmm16,zmm15
0014be  62 e2 7d 48 58 87 00 18 00 00 vpbroadcastd zmm16,[rdi+0x1800]
0014c8  62 d2 7e 40 52 f6        vdpbf16ps zmm6,zmm16,zmm14
0014ce  62 d2 7e 40 52 ff        vdpbf16ps zmm7,zmm16,zmm15
0014d4  62 e2 7d 48 58 87 00 20 00 00 vpbroadcastd zmm16,[rdi+0x2000]
0014de  62 52 7e 40 52 c6        vdpbf16ps zmm8,zmm16,zmm14
0014e4  62 52 7e 40 52 cf        vdpbf16ps zmm9,zmm16,zmm15
0014ea  62 e2 7d 48 58 87 00 28 00 00 vpbroadcastd zmm16,[rdi+0x2800]
0014f4  62 52 7e 40 52 d6        vdpbf16ps zmm10,zmm16,zmm14
0014fa  62 52 7e 40 52 df        vdpbf16ps zmm11,zmm16,zmm15
001500  62 e2 7d 48 58 87 00 30 00 00 vpbroadcastd zmm16,[rdi+0x3000]
00150a  62 52 7e 40 52 e6        vdpbf16ps zmm12,zmm16,zmm14
001510  62 52 7e 40 52 ef        vdpbf16ps zmm13,zmm16,zmm15
001516  48 83 c7 04              add       rdi,4
00151a  48 83 c6 40              add       rsi,0x40
00151e  48 ff c9                 dec       rcx
001521  0f 85 3e ff ff ff        jne       near 0x0000000000001465
001527  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
00152d  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
001534  62 f1 7c 48 11 92 00 20 00 00 vmovups   [rdx+0x2000],zmm2
00153e  62 f1 7c 48 11 9a 40 20 00 00 vmovups   [rdx+0x2040],zmm3
001548  62 f1 7c 48 11 a2 00 40 00 00 vmovups   [rdx+0x4000],zmm4
001552  62 f1 7c 48 11 aa 40 40 00 00 vmovups   [rdx+0x4040],zmm5
00155c  62 f1 7c 48 11 b2 00 60 00 00 vmovups   [rdx+0x6000],zmm6
001566  62 f1 7c 48 11 ba 40 60 00 00 vmovups   [rdx+0x6040],zmm7
001570  62 71 7c 48 11 82 00 80 00 00 vmovups   [rdx+0x8000],zmm8
00157a  62 71 7c 48 11 8a 40 80 00 00 vmovups   [rdx+0x8040],zmm9
001584  62 71 7c 48 11 92 00 a0 00 00 vmovups   [rdx+0xa000],zmm10
00158e  62 71 7c 48 11 9a 40 a0 00 00 vmovups   [rdx+0xa040],zmm11
001598  62 71 7c 48 11 a2 00 c0 00 00 vmovups   [rdx+0xc000],zmm12
0015a2  62 71 7c 48 11 aa 40 c0 00 00 vmovups   [rdx+0xc040],zmm13
0015ac  c5 f8 77                 vzeroupper
0015af  c3                       ret
0015b0  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0015b6  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0015bc  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0015c2  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0015c8  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0015ce  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0015d4  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0015da  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0015e0  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0015e6  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0015ec  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0015f2  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0015f8  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0015fe  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
001604  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
00160a  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
001610  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00161a  0f 18 4e 40              prefetcht0 [rsi+0x40]
00161e  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
001625  62 e1 ff 48 6f 06        vmovdqu16 zmm16,[rsi]
00162b  62 e1 ff 48 6f 8e 00 80 00 00 vmovdqu16 zmm17,[rsi+0x8000]
001635  62 e2 7d 48 58 17        vpbroadcastd zmm18,[rdi]
00163b  62 b2 6e 40 52 c0        vdpbf16ps zmm0,zmm18,zmm16
001641  62 b2 6e 40 52 c9        vdpbf16ps zmm1,zmm18,zmm17
001647  62 e2 7d 48 58 97 00 08 00 00 vpbroadcastd zmm18,[rdi+0x800]
001651  62 b2 6e 40 52 d0        vdpbf16ps zmm2,zmm18,zmm16
001657  62 b2 6e 40 52 d9        vdpbf16ps zmm3,zmm18,zmm17
00165d  62 e2 7d 48 58 97 00 10 00 00 vpbroadcastd zmm18,[rdi+0x1000]
001667  62 b2 6e 40 52 e0        vdpbf16ps zmm4,zmm18,zmm16
00166d  62 b2 6e 40 52 e9        vdpbf16ps zmm5,zmm18,zmm17
001673  62 e2 7d 48 58 97 00 18 00 00 vpbroadcastd zmm18,[rdi+0x1800]
00167d  62 b2 6e 40 52 f0        vdpbf16ps zmm6,zmm18,zmm16
001683  62 b2 6e 40 52 f9        vdpbf16ps zmm7,zmm18,zmm17
001689  62 e2 7d 48 58 97 00 20 00 00 vpbroadcastd zmm18,[rdi+0x2000]
001693  62 32 6e 40 52 c0        vdpbf16ps zmm8,zmm18,zmm16
001699  62 32 6e 40 52 c9        vdpbf16ps zmm9,zmm18,zmm17
00169f  62 e2 7d 48 58 97 00 28 00 00 vpbroadcastd zmm18,[rdi+0x2800]
0016a9  62 32 6e 40 52 d0        vdpbf16ps zmm10,zmm18,zmm16
0016af  62 32 6e 40 52 d9        vdpbf16ps zmm11,zmm18,zmm17
0016b5  62 e2 7d 48 58 97 00 30 00 00 vpbroadcastd zmm18,[rdi+0x3000]
0016bf  62 32 6e 40 52 e0        vdpbf16ps zmm12,zmm18,zmm16
0016c5  62 32 6e 40 52 e9        vdpbf16ps zmm13,zmm18,zmm17
0016cb  62 e2 7d 48 58 97 00 38 00 00 vpbroadcastd zmm18,[rdi+0x3800]
0016d5  62 32 6e 40 52 f0        vdpbf16ps zmm14,zmm18,zmm16
0016db  62 32 6e 40 52 f9        vdpbf16ps zmm15,zmm18,zmm17
0016e1  48 83 c7 04              add       rdi,4
0016e5  48 83 c6 40              add       rsi,0x40
0016e9  48 ff c9                 dec       rcx
0016ec  0f 85 28 ff ff ff        jne       near 0x000000000000161a
0016f2  62 f1 7c 48 11 02        vmovups   [rdx],zmm0
0016f8  62 f1 7c 48 11 4a 01     vmovups   [rdx+0x40],zmm1
0016ff  62 f1 7c 48 11 92 00 20 00 00 vmovups   [rdx+0x2000],zmm2
001709  62 f1 7c 48 11 9a 40 20 00 00 vmovups   [rdx+0x2040],zmm3
001713  62 f1 7c 48 11 a2 00 40 00 00 vmovups   [rdx+0x4000],zmm4
00171d  62 f1 7c 48 11 aa 40 40 00 00 vmovups   [rdx+0x4040],zmm5
001727  62 f1 7c 48 11 b2 00 60 00 00 vmovups   [rdx+0x6000],zmm6
001731  62 f1 7c 48 11 ba 40 60 00 00 vmovups   [rdx+0x6040],zmm7
00173b  62 71 7c 48 11 82 00 80 00 00 vmovups   [rdx+0x8000],zmm8
001745  62 71 7c 48 11 8a 40 80 00 00 vmovups   [rdx+0x8040],zmm9
00174f  62 71 7c 48 11 92 00 a0 00 00 vmovups   [rdx+0xa000],zmm10
001759  62 71 7c 48 11 9a 40 a0 00 00 vmovups   [rdx+0xa040],zmm11
001763  62 71 7c 48 11 a2 00 c0 00 00 vmovups   [rdx+0xc000],zmm12
00176d  62 71 7c 48 11 aa 40 c0 00 00 vmovups   [rdx+0xc040],zmm13
001777  62 71 7c 48 11 b2 00 e0 00 00 vmovups   [rdx+0xe000],zmm14
001781  62 71 7c 48 11 ba 40 e0 00 00 vmovups   [rdx+0xe040],zmm15
00178b  c5 f8 77                 vzeroupper
00178e  c3                       ret
