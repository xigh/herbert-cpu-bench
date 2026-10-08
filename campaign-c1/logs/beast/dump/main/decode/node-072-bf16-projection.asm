; node 72: bf16-projection (layer 3), kernel 69 at image offset 0xf37da, 6751 bytes, 75 tasks, up to 12 participants

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
00005b  48 3d 4a 00 00 00        cmp       rax,0x4a
000061  73 11                    jae       short 0x0000000000000074
000063  49 89 c1                 mov       r9,rax
000066  49 83 e9 00              sub       r9,0
00006a  4d 6b c9 30              imul      r9,0x30
00006e  49 83 c1 00              add       r9,0
000072  eb 26                    jmp       short 0x000000000000009a
000074  90                       nop
000075  48 3d 4b 00 00 00        cmp       rax,0x4b
00007b  73 17                    jae       short 0x0000000000000094
00007d  49 89 c1                 mov       r9,rax
000080  49 83 e9 4a              sub       r9,0x4a
000084  4d 6b c9 00              imul      r9,0
000088  49 81 c1 e0 0d 00 00     add       r9,0xde0
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
0000b9  4d 69 d5 00 0e 00 00     imul      r10,r13,0xe00
0000c0  4d 01 ca                 add       r10,r9
0000c3  4d 6b d2 02              imul      r10,2
0000c7  4c 01 d2                 add       rdx,r10
0000ca  49 83 fc 01              cmp       r12,1
0000ce  75 0a                    jne       short 0x00000000000000da
0000d0  e8 2a 01 00 00           call      0x00000000000001ff
0000d5  e9 1f 01 00 00           jmp       0x00000000000001f9
0000da  90                       nop
0000db  49 83 fc 02              cmp       r12,2
0000df  75 0a                    jne       short 0x00000000000000eb
0000e1  e8 aa 01 00 00           call      0x0000000000000290
0000e6  e9 0e 01 00 00           jmp       0x00000000000001f9
0000eb  90                       nop
0000ec  49 83 fc 03              cmp       r12,3
0000f0  75 0a                    jne       short 0x00000000000000fc
0000f2  e8 82 02 00 00           call      0x0000000000000379
0000f7  e9 fd 00 00 00           jmp       0x00000000000001f9
0000fc  90                       nop
0000fd  49 83 fc 04              cmp       r12,4
000101  75 0a                    jne       short 0x000000000000010d
000103  e8 b6 03 00 00           call      0x00000000000004be
000108  e9 ec 00 00 00           jmp       0x00000000000001f9
00010d  90                       nop
00010e  49 83 fc 05              cmp       r12,5
000112  75 0a                    jne       short 0x000000000000011e
000114  e8 42 05 00 00           call      0x000000000000065b
000119  e9 db 00 00 00           jmp       0x00000000000001f9
00011e  90                       nop
00011f  49 83 fc 06              cmp       r12,6
000123  75 0a                    jne       short 0x000000000000012f
000125  e8 26 07 00 00           call      0x0000000000000850
00012a  e9 ca 00 00 00           jmp       0x00000000000001f9
00012f  90                       nop
000130  49 83 fc 07              cmp       r12,7
000134  75 0a                    jne       short 0x0000000000000140
000136  e8 62 09 00 00           call      0x0000000000000a9d
00013b  e9 b9 00 00 00           jmp       0x00000000000001f9
000140  90                       nop
000141  49 83 fc 08              cmp       r12,8
000145  75 0a                    jne       short 0x0000000000000151
000147  e8 f6 0b 00 00           call      0x0000000000000d42
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
000176  4d 69 d5 00 0e 00 00     imul      r10,r13,0xe00
00017d  4d 01 ca                 add       r10,r9
000180  4d 6b d2 02              imul      r10,2
000184  4c 01 d2                 add       rdx,r10
000187  49 83 fc 01              cmp       r12,1
00018b  75 07                    jne       short 0x0000000000000194
00018d  e8 ad 0e 00 00           call      0x000000000000103f
000192  eb 65                    jmp       short 0x00000000000001f9
000194  90                       nop
000195  49 83 fc 02              cmp       r12,2
000199  75 07                    jne       short 0x00000000000001a2
00019b  e8 08 0f 00 00           call      0x00000000000010a8
0001a0  eb 57                    jmp       short 0x00000000000001f9
0001a2  90                       nop
0001a3  49 83 fc 03              cmp       r12,3
0001a7  75 07                    jne       short 0x00000000000001b0
0001a9  e8 a1 0f 00 00           call      0x000000000000114f
0001ae  eb 49                    jmp       short 0x00000000000001f9
0001b0  90                       nop
0001b1  49 83 fc 04              cmp       r12,4
0001b5  75 07                    jne       short 0x00000000000001be
0001b7  e8 78 10 00 00           call      0x0000000000001234
0001bc  eb 3b                    jmp       short 0x00000000000001f9
0001be  90                       nop
0001bf  49 83 fc 05              cmp       r12,5
0001c3  75 07                    jne       short 0x00000000000001cc
0001c5  e8 8d 11 00 00           call      0x0000000000001357
0001ca  eb 2d                    jmp       short 0x00000000000001f9
0001cc  90                       nop
0001cd  49 83 fc 06              cmp       r12,6
0001d1  75 07                    jne       short 0x00000000000001da
0001d3  e8 e4 12 00 00           call      0x00000000000014bc
0001d8  eb 1f                    jmp       short 0x00000000000001f9
0001da  90                       nop
0001db  49 83 fc 07              cmp       r12,7
0001df  75 07                    jne       short 0x00000000000001e8
0001e1  e8 79 14 00 00           call      0x000000000000165f
0001e6  eb 11                    jmp       short 0x00000000000001f9
0001e8  90                       nop
0001e9  49 83 fc 08              cmp       r12,8
0001ed  75 07                    jne       short 0x00000000000001f6
0001ef  e8 4c 16 00 00           call      0x0000000000001840
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
00026c  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000272  c5 fc 11 02              vmovups   [rdx],ymm0
000276  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
00027c  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000281  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000287  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
00028c  c5 f8 77                 vzeroupper
00028f  c3                       ret
000290  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000296  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00029c  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0002a2  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0002a8  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0002ae  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0002b4  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0002be  0f 18 4e 40              prefetcht0 [rsi+0x40]
0002c2  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0002c9  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0002d0  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
0002d6  62 f1 ff 48 6f be 00 80 00 00 vmovdqu16 zmm7,[rsi+0x8000]
0002e0  62 71 ff 48 6f 86 00 00 01 00 vmovdqu16 zmm8,[rsi+0x10000]
0002ea  62 72 7d 48 58 0f        vpbroadcastd zmm9,[rdi]
0002f0  62 f2 36 48 52 c6        vdpbf16ps zmm0,zmm9,zmm6
0002f6  62 f2 36 48 52 cf        vdpbf16ps zmm1,zmm9,zmm7
0002fc  62 d2 36 48 52 d0        vdpbf16ps zmm2,zmm9,zmm8
000302  62 72 7d 48 58 8f 00 08 00 00 vpbroadcastd zmm9,[rdi+0x800]
00030c  62 f2 36 48 52 de        vdpbf16ps zmm3,zmm9,zmm6
000312  62 f2 36 48 52 e7        vdpbf16ps zmm4,zmm9,zmm7
000318  62 d2 36 48 52 e8        vdpbf16ps zmm5,zmm9,zmm8
00031e  48 83 c7 04              add       rdi,4
000322  48 83 c6 40              add       rsi,0x40
000326  48 ff c9                 dec       rcx
000329  75 93                    jne       short 0x00000000000002be
00032b  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000331  c5 fc 11 02              vmovups   [rdx],ymm0
000335  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
00033b  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000340  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000346  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
00034b  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
000351  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
000359  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00035f  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
000367  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
00036d  c5 fc 11 82 40 1c 00 00  vmovups   [rdx+0x1c40],ymm0
000375  c5 f8 77                 vzeroupper
000378  c3                       ret
000379  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00037f  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000385  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
00038b  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000391  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000397  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00039d  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0003a3  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0003a9  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0003af  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0003b9  0f 18 4e 40              prefetcht0 [rsi+0x40]
0003bd  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0003c4  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0003cb  62 71 ff 48 6f 0e        vmovdqu16 zmm9,[rsi]
0003d1  62 71 ff 48 6f 96 00 80 00 00 vmovdqu16 zmm10,[rsi+0x8000]
0003db  62 71 ff 48 6f 9e 00 00 01 00 vmovdqu16 zmm11,[rsi+0x10000]
0003e5  62 72 7d 48 58 27        vpbroadcastd zmm12,[rdi]
0003eb  62 d2 1e 48 52 c1        vdpbf16ps zmm0,zmm12,zmm9
0003f1  62 d2 1e 48 52 ca        vdpbf16ps zmm1,zmm12,zmm10
0003f7  62 d2 1e 48 52 d3        vdpbf16ps zmm2,zmm12,zmm11
0003fd  62 72 7d 48 58 a7 00 08 00 00 vpbroadcastd zmm12,[rdi+0x800]
000407  62 d2 1e 48 52 d9        vdpbf16ps zmm3,zmm12,zmm9
00040d  62 d2 1e 48 52 e2        vdpbf16ps zmm4,zmm12,zmm10
000413  62 d2 1e 48 52 eb        vdpbf16ps zmm5,zmm12,zmm11
000419  62 72 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm12,[rdi+0x1000]
000423  62 d2 1e 48 52 f1        vdpbf16ps zmm6,zmm12,zmm9
000429  62 d2 1e 48 52 fa        vdpbf16ps zmm7,zmm12,zmm10
00042f  62 52 1e 48 52 c3        vdpbf16ps zmm8,zmm12,zmm11
000435  48 83 c7 04              add       rdi,4
000439  48 83 c6 40              add       rsi,0x40
00043d  48 ff c9                 dec       rcx
000440  0f 85 73 ff ff ff        jne       near 0x00000000000003b9
000446  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
00044c  c5 fc 11 02              vmovups   [rdx],ymm0
000450  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
000456  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
00045b  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000461  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
000466  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
00046c  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
000474  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00047a  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
000482  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000488  c5 fc 11 82 40 1c 00 00  vmovups   [rdx+0x1c40],ymm0
000490  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000496  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
00049e  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
0004a4  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
0004ac  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0004b2  c5 fc 11 82 40 38 00 00  vmovups   [rdx+0x3840],ymm0
0004ba  c5 f8 77                 vzeroupper
0004bd  c3                       ret
0004be  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0004c4  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0004ca  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0004d0  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0004d6  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0004dc  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0004e2  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0004e8  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0004ee  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0004f4  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0004fa  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000500  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000506  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000510  0f 18 4e 40              prefetcht0 [rsi+0x40]
000514  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
00051b  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000522  62 71 ff 48 6f 26        vmovdqu16 zmm12,[rsi]
000528  62 71 ff 48 6f ae 00 80 00 00 vmovdqu16 zmm13,[rsi+0x8000]
000532  62 71 ff 48 6f b6 00 00 01 00 vmovdqu16 zmm14,[rsi+0x10000]
00053c  62 72 7d 48 58 3f        vpbroadcastd zmm15,[rdi]
000542  62 d2 06 48 52 c4        vdpbf16ps zmm0,zmm15,zmm12
000548  62 d2 06 48 52 cd        vdpbf16ps zmm1,zmm15,zmm13
00054e  62 d2 06 48 52 d6        vdpbf16ps zmm2,zmm15,zmm14
000554  62 72 7d 48 58 bf 00 08 00 00 vpbroadcastd zmm15,[rdi+0x800]
00055e  62 d2 06 48 52 dc        vdpbf16ps zmm3,zmm15,zmm12
000564  62 d2 06 48 52 e5        vdpbf16ps zmm4,zmm15,zmm13
00056a  62 d2 06 48 52 ee        vdpbf16ps zmm5,zmm15,zmm14
000570  62 72 7d 48 58 bf 00 10 00 00 vpbroadcastd zmm15,[rdi+0x1000]
00057a  62 d2 06 48 52 f4        vdpbf16ps zmm6,zmm15,zmm12
000580  62 d2 06 48 52 fd        vdpbf16ps zmm7,zmm15,zmm13
000586  62 52 06 48 52 c6        vdpbf16ps zmm8,zmm15,zmm14
00058c  62 72 7d 48 58 bf 00 18 00 00 vpbroadcastd zmm15,[rdi+0x1800]
000596  62 52 06 48 52 cc        vdpbf16ps zmm9,zmm15,zmm12
00059c  62 52 06 48 52 d5        vdpbf16ps zmm10,zmm15,zmm13
0005a2  62 52 06 48 52 de        vdpbf16ps zmm11,zmm15,zmm14
0005a8  48 83 c7 04              add       rdi,4
0005ac  48 83 c6 40              add       rsi,0x40
0005b0  48 ff c9                 dec       rcx
0005b3  0f 85 57 ff ff ff        jne       near 0x0000000000000510
0005b9  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0005bf  c5 fc 11 02              vmovups   [rdx],ymm0
0005c3  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0005c9  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
0005ce  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0005d4  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
0005d9  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0005df  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
0005e7  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0005ed  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
0005f5  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0005fb  c5 fc 11 82 40 1c 00 00  vmovups   [rdx+0x1c40],ymm0
000603  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000609  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
000611  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000617  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
00061f  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000625  c5 fc 11 82 40 38 00 00  vmovups   [rdx+0x3840],ymm0
00062d  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000633  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
00063b  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000641  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
000649  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
00064f  c5 fc 11 82 40 54 00 00  vmovups   [rdx+0x5440],ymm0
000657  c5 f8 77                 vzeroupper
00065a  c3                       ret
00065b  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000661  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000667  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
00066d  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000673  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000679  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00067f  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000685  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
00068b  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000691  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000697  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
00069d  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0006a3  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0006a9  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0006af  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0006b5  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0006bf  0f 18 4e 40              prefetcht0 [rsi+0x40]
0006c3  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0006ca  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0006d1  62 71 ff 48 6f 3e        vmovdqu16 zmm15,[rsi]
0006d7  62 e1 ff 48 6f 86 00 80 00 00 vmovdqu16 zmm16,[rsi+0x8000]
0006e1  62 e1 ff 48 6f 8e 00 00 01 00 vmovdqu16 zmm17,[rsi+0x10000]
0006eb  62 e2 7d 48 58 17        vpbroadcastd zmm18,[rdi]
0006f1  62 d2 6e 40 52 c7        vdpbf16ps zmm0,zmm18,zmm15
0006f7  62 b2 6e 40 52 c8        vdpbf16ps zmm1,zmm18,zmm16
0006fd  62 b2 6e 40 52 d1        vdpbf16ps zmm2,zmm18,zmm17
000703  62 e2 7d 48 58 97 00 08 00 00 vpbroadcastd zmm18,[rdi+0x800]
00070d  62 d2 6e 40 52 df        vdpbf16ps zmm3,zmm18,zmm15
000713  62 b2 6e 40 52 e0        vdpbf16ps zmm4,zmm18,zmm16
000719  62 b2 6e 40 52 e9        vdpbf16ps zmm5,zmm18,zmm17
00071f  62 e2 7d 48 58 97 00 10 00 00 vpbroadcastd zmm18,[rdi+0x1000]
000729  62 d2 6e 40 52 f7        vdpbf16ps zmm6,zmm18,zmm15
00072f  62 b2 6e 40 52 f8        vdpbf16ps zmm7,zmm18,zmm16
000735  62 32 6e 40 52 c1        vdpbf16ps zmm8,zmm18,zmm17
00073b  62 e2 7d 48 58 97 00 18 00 00 vpbroadcastd zmm18,[rdi+0x1800]
000745  62 52 6e 40 52 cf        vdpbf16ps zmm9,zmm18,zmm15
00074b  62 32 6e 40 52 d0        vdpbf16ps zmm10,zmm18,zmm16
000751  62 32 6e 40 52 d9        vdpbf16ps zmm11,zmm18,zmm17
000757  62 e2 7d 48 58 97 00 20 00 00 vpbroadcastd zmm18,[rdi+0x2000]
000761  62 52 6e 40 52 e7        vdpbf16ps zmm12,zmm18,zmm15
000767  62 32 6e 40 52 e8        vdpbf16ps zmm13,zmm18,zmm16
00076d  62 32 6e 40 52 f1        vdpbf16ps zmm14,zmm18,zmm17
000773  48 83 c7 04              add       rdi,4
000777  48 83 c6 40              add       rsi,0x40
00077b  48 ff c9                 dec       rcx
00077e  0f 85 3b ff ff ff        jne       near 0x00000000000006bf
000784  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
00078a  c5 fc 11 02              vmovups   [rdx],ymm0
00078e  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
000794  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000799  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
00079f  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
0007a4  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0007aa  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
0007b2  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0007b8  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
0007c0  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0007c6  c5 fc 11 82 40 1c 00 00  vmovups   [rdx+0x1c40],ymm0
0007ce  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0007d4  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
0007dc  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
0007e2  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
0007ea  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0007f0  c5 fc 11 82 40 38 00 00  vmovups   [rdx+0x3840],ymm0
0007f8  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
0007fe  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
000806  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
00080c  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
000814  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
00081a  c5 fc 11 82 40 54 00 00  vmovups   [rdx+0x5440],ymm0
000822  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000828  c5 fc 11 82 00 70 00 00  vmovups   [rdx+0x7000],ymm0
000830  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000836  c5 fc 11 82 20 70 00 00  vmovups   [rdx+0x7020],ymm0
00083e  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000844  c5 fc 11 82 40 70 00 00  vmovups   [rdx+0x7040],ymm0
00084c  c5 f8 77                 vzeroupper
00084f  c3                       ret
000850  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000856  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00085c  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000862  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000868  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00086e  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000874  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00087a  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000880  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000886  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
00088c  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000892  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000898  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
00089e  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0008a4  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0008aa  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
0008b0  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
0008b6  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0008bc  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0008c6  0f 18 4e 40              prefetcht0 [rsi+0x40]
0008ca  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0008d1  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0008d8  62 e1 ff 48 6f 16        vmovdqu16 zmm18,[rsi]
0008de  62 e1 ff 48 6f 9e 00 80 00 00 vmovdqu16 zmm19,[rsi+0x8000]
0008e8  62 e1 ff 48 6f a6 00 00 01 00 vmovdqu16 zmm20,[rsi+0x10000]
0008f2  62 e2 7d 48 58 2f        vpbroadcastd zmm21,[rdi]
0008f8  62 b2 56 40 52 c2        vdpbf16ps zmm0,zmm21,zmm18
0008fe  62 b2 56 40 52 cb        vdpbf16ps zmm1,zmm21,zmm19
000904  62 b2 56 40 52 d4        vdpbf16ps zmm2,zmm21,zmm20
00090a  62 e2 7d 48 58 af 00 08 00 00 vpbroadcastd zmm21,[rdi+0x800]
000914  62 b2 56 40 52 da        vdpbf16ps zmm3,zmm21,zmm18
00091a  62 b2 56 40 52 e3        vdpbf16ps zmm4,zmm21,zmm19
000920  62 b2 56 40 52 ec        vdpbf16ps zmm5,zmm21,zmm20
000926  62 e2 7d 48 58 af 00 10 00 00 vpbroadcastd zmm21,[rdi+0x1000]
000930  62 b2 56 40 52 f2        vdpbf16ps zmm6,zmm21,zmm18
000936  62 b2 56 40 52 fb        vdpbf16ps zmm7,zmm21,zmm19
00093c  62 32 56 40 52 c4        vdpbf16ps zmm8,zmm21,zmm20
000942  62 e2 7d 48 58 af 00 18 00 00 vpbroadcastd zmm21,[rdi+0x1800]
00094c  62 32 56 40 52 ca        vdpbf16ps zmm9,zmm21,zmm18
000952  62 32 56 40 52 d3        vdpbf16ps zmm10,zmm21,zmm19
000958  62 32 56 40 52 dc        vdpbf16ps zmm11,zmm21,zmm20
00095e  62 e2 7d 48 58 af 00 20 00 00 vpbroadcastd zmm21,[rdi+0x2000]
000968  62 32 56 40 52 e2        vdpbf16ps zmm12,zmm21,zmm18
00096e  62 32 56 40 52 eb        vdpbf16ps zmm13,zmm21,zmm19
000974  62 32 56 40 52 f4        vdpbf16ps zmm14,zmm21,zmm20
00097a  62 e2 7d 48 58 af 00 28 00 00 vpbroadcastd zmm21,[rdi+0x2800]
000984  62 32 56 40 52 fa        vdpbf16ps zmm15,zmm21,zmm18
00098a  62 a2 56 40 52 c3        vdpbf16ps zmm16,zmm21,zmm19
000990  62 a2 56 40 52 cc        vdpbf16ps zmm17,zmm21,zmm20
000996  48 83 c7 04              add       rdi,4
00099a  48 83 c6 40              add       rsi,0x40
00099e  48 ff c9                 dec       rcx
0009a1  0f 85 1f ff ff ff        jne       near 0x00000000000008c6
0009a7  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0009ad  c5 fc 11 02              vmovups   [rdx],ymm0
0009b1  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0009b7  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
0009bc  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0009c2  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
0009c7  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0009cd  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
0009d5  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0009db  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
0009e3  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0009e9  c5 fc 11 82 40 1c 00 00  vmovups   [rdx+0x1c40],ymm0
0009f1  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0009f7  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
0009ff  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000a05  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
000a0d  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000a13  c5 fc 11 82 40 38 00 00  vmovups   [rdx+0x3840],ymm0
000a1b  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000a21  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
000a29  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000a2f  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
000a37  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000a3d  c5 fc 11 82 40 54 00 00  vmovups   [rdx+0x5440],ymm0
000a45  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000a4b  c5 fc 11 82 00 70 00 00  vmovups   [rdx+0x7000],ymm0
000a53  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000a59  c5 fc 11 82 20 70 00 00  vmovups   [rdx+0x7020],ymm0
000a61  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000a67  c5 fc 11 82 40 70 00 00  vmovups   [rdx+0x7040],ymm0
000a6f  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000a75  c5 fc 11 82 00 8c 00 00  vmovups   [rdx+0x8c00],ymm0
000a7d  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000a83  c5 fc 11 82 20 8c 00 00  vmovups   [rdx+0x8c20],ymm0
000a8b  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000a91  c5 fc 11 82 40 8c 00 00  vmovups   [rdx+0x8c40],ymm0
000a99  c5 f8 77                 vzeroupper
000a9c  c3                       ret
000a9d  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000aa3  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000aa9  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000aaf  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000ab5  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000abb  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000ac1  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000ac7  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000acd  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000ad3  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000ad9  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000adf  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000ae5  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000aeb  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000af1  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
000af7  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
000afd  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000b03  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000b09  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
000b0f  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000b15  62 a1 5c 40 57 e4        vxorps    zmm20,zmm20,zmm20
000b1b  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000b25  0f 18 4e 40              prefetcht0 [rsi+0x40]
000b29  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000b30  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000b37  62 e1 ff 48 6f 2e        vmovdqu16 zmm21,[rsi]
000b3d  62 e1 ff 48 6f b6 00 80 00 00 vmovdqu16 zmm22,[rsi+0x8000]
000b47  62 e1 ff 48 6f be 00 00 01 00 vmovdqu16 zmm23,[rsi+0x10000]
000b51  62 62 7d 48 58 07        vpbroadcastd zmm24,[rdi]
000b57  62 b2 3e 40 52 c5        vdpbf16ps zmm0,zmm24,zmm21
000b5d  62 b2 3e 40 52 ce        vdpbf16ps zmm1,zmm24,zmm22
000b63  62 b2 3e 40 52 d7        vdpbf16ps zmm2,zmm24,zmm23
000b69  62 62 7d 48 58 87 00 08 00 00 vpbroadcastd zmm24,[rdi+0x800]
000b73  62 b2 3e 40 52 dd        vdpbf16ps zmm3,zmm24,zmm21
000b79  62 b2 3e 40 52 e6        vdpbf16ps zmm4,zmm24,zmm22
000b7f  62 b2 3e 40 52 ef        vdpbf16ps zmm5,zmm24,zmm23
000b85  62 62 7d 48 58 87 00 10 00 00 vpbroadcastd zmm24,[rdi+0x1000]
000b8f  62 b2 3e 40 52 f5        vdpbf16ps zmm6,zmm24,zmm21
000b95  62 b2 3e 40 52 fe        vdpbf16ps zmm7,zmm24,zmm22
000b9b  62 32 3e 40 52 c7        vdpbf16ps zmm8,zmm24,zmm23
000ba1  62 62 7d 48 58 87 00 18 00 00 vpbroadcastd zmm24,[rdi+0x1800]
000bab  62 32 3e 40 52 cd        vdpbf16ps zmm9,zmm24,zmm21
000bb1  62 32 3e 40 52 d6        vdpbf16ps zmm10,zmm24,zmm22
000bb7  62 32 3e 40 52 df        vdpbf16ps zmm11,zmm24,zmm23
000bbd  62 62 7d 48 58 87 00 20 00 00 vpbroadcastd zmm24,[rdi+0x2000]
000bc7  62 32 3e 40 52 e5        vdpbf16ps zmm12,zmm24,zmm21
000bcd  62 32 3e 40 52 ee        vdpbf16ps zmm13,zmm24,zmm22
000bd3  62 32 3e 40 52 f7        vdpbf16ps zmm14,zmm24,zmm23
000bd9  62 62 7d 48 58 87 00 28 00 00 vpbroadcastd zmm24,[rdi+0x2800]
000be3  62 32 3e 40 52 fd        vdpbf16ps zmm15,zmm24,zmm21
000be9  62 a2 3e 40 52 c6        vdpbf16ps zmm16,zmm24,zmm22
000bef  62 a2 3e 40 52 cf        vdpbf16ps zmm17,zmm24,zmm23
000bf5  62 62 7d 48 58 87 00 30 00 00 vpbroadcastd zmm24,[rdi+0x3000]
000bff  62 a2 3e 40 52 d5        vdpbf16ps zmm18,zmm24,zmm21
000c05  62 a2 3e 40 52 de        vdpbf16ps zmm19,zmm24,zmm22
000c0b  62 a2 3e 40 52 e7        vdpbf16ps zmm20,zmm24,zmm23
000c11  48 83 c7 04              add       rdi,4
000c15  48 83 c6 40              add       rsi,0x40
000c19  48 ff c9                 dec       rcx
000c1c  0f 85 03 ff ff ff        jne       near 0x0000000000000b25
000c22  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000c28  c5 fc 11 02              vmovups   [rdx],ymm0
000c2c  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
000c32  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000c37  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000c3d  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
000c42  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
000c48  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
000c50  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
000c56  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
000c5e  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000c64  c5 fc 11 82 40 1c 00 00  vmovups   [rdx+0x1c40],ymm0
000c6c  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000c72  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
000c7a  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000c80  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
000c88  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000c8e  c5 fc 11 82 40 38 00 00  vmovups   [rdx+0x3840],ymm0
000c96  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000c9c  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
000ca4  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000caa  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
000cb2  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000cb8  c5 fc 11 82 40 54 00 00  vmovups   [rdx+0x5440],ymm0
000cc0  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000cc6  c5 fc 11 82 00 70 00 00  vmovups   [rdx+0x7000],ymm0
000cce  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000cd4  c5 fc 11 82 20 70 00 00  vmovups   [rdx+0x7020],ymm0
000cdc  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000ce2  c5 fc 11 82 40 70 00 00  vmovups   [rdx+0x7040],ymm0
000cea  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000cf0  c5 fc 11 82 00 8c 00 00  vmovups   [rdx+0x8c00],ymm0
000cf8  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000cfe  c5 fc 11 82 20 8c 00 00  vmovups   [rdx+0x8c20],ymm0
000d06  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000d0c  c5 fc 11 82 40 8c 00 00  vmovups   [rdx+0x8c40],ymm0
000d14  62 b2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm18
000d1a  c5 fc 11 82 00 a8 00 00  vmovups   [rdx+0xa800],ymm0
000d22  62 b2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm19
000d28  c5 fc 11 82 20 a8 00 00  vmovups   [rdx+0xa820],ymm0
000d30  62 b2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm20
000d36  c5 fc 11 82 40 a8 00 00  vmovups   [rdx+0xa840],ymm0
000d3e  c5 f8 77                 vzeroupper
000d41  c3                       ret
000d42  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000d48  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000d4e  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000d54  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000d5a  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000d60  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000d66  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000d6c  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000d72  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000d78  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000d7e  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000d84  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000d8a  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000d90  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000d96  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
000d9c  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
000da2  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000da8  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000dae  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
000db4  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000dba  62 a1 5c 40 57 e4        vxorps    zmm20,zmm20,zmm20
000dc0  62 a1 54 40 57 ed        vxorps    zmm21,zmm21,zmm21
000dc6  62 a1 4c 40 57 f6        vxorps    zmm22,zmm22,zmm22
000dcc  62 a1 44 40 57 ff        vxorps    zmm23,zmm23,zmm23
000dd2  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000ddc  0f 18 4e 40              prefetcht0 [rsi+0x40]
000de0  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000de7  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000dee  62 61 ff 48 6f 06        vmovdqu16 zmm24,[rsi]
000df4  62 61 ff 48 6f 8e 00 80 00 00 vmovdqu16 zmm25,[rsi+0x8000]
000dfe  62 61 ff 48 6f 96 00 00 01 00 vmovdqu16 zmm26,[rsi+0x10000]
000e08  62 62 7d 48 58 1f        vpbroadcastd zmm27,[rdi]
000e0e  62 92 26 40 52 c0        vdpbf16ps zmm0,zmm27,zmm24
000e14  62 92 26 40 52 c9        vdpbf16ps zmm1,zmm27,zmm25
000e1a  62 92 26 40 52 d2        vdpbf16ps zmm2,zmm27,zmm26
000e20  62 62 7d 48 58 9f 00 08 00 00 vpbroadcastd zmm27,[rdi+0x800]
000e2a  62 92 26 40 52 d8        vdpbf16ps zmm3,zmm27,zmm24
000e30  62 92 26 40 52 e1        vdpbf16ps zmm4,zmm27,zmm25
000e36  62 92 26 40 52 ea        vdpbf16ps zmm5,zmm27,zmm26
000e3c  62 62 7d 48 58 9f 00 10 00 00 vpbroadcastd zmm27,[rdi+0x1000]
000e46  62 92 26 40 52 f0        vdpbf16ps zmm6,zmm27,zmm24
000e4c  62 92 26 40 52 f9        vdpbf16ps zmm7,zmm27,zmm25
000e52  62 12 26 40 52 c2        vdpbf16ps zmm8,zmm27,zmm26
000e58  62 62 7d 48 58 9f 00 18 00 00 vpbroadcastd zmm27,[rdi+0x1800]
000e62  62 12 26 40 52 c8        vdpbf16ps zmm9,zmm27,zmm24
000e68  62 12 26 40 52 d1        vdpbf16ps zmm10,zmm27,zmm25
000e6e  62 12 26 40 52 da        vdpbf16ps zmm11,zmm27,zmm26
000e74  62 62 7d 48 58 9f 00 20 00 00 vpbroadcastd zmm27,[rdi+0x2000]
000e7e  62 12 26 40 52 e0        vdpbf16ps zmm12,zmm27,zmm24
000e84  62 12 26 40 52 e9        vdpbf16ps zmm13,zmm27,zmm25
000e8a  62 12 26 40 52 f2        vdpbf16ps zmm14,zmm27,zmm26
000e90  62 62 7d 48 58 9f 00 28 00 00 vpbroadcastd zmm27,[rdi+0x2800]
000e9a  62 12 26 40 52 f8        vdpbf16ps zmm15,zmm27,zmm24
000ea0  62 82 26 40 52 c1        vdpbf16ps zmm16,zmm27,zmm25
000ea6  62 82 26 40 52 ca        vdpbf16ps zmm17,zmm27,zmm26
000eac  62 62 7d 48 58 9f 00 30 00 00 vpbroadcastd zmm27,[rdi+0x3000]
000eb6  62 82 26 40 52 d0        vdpbf16ps zmm18,zmm27,zmm24
000ebc  62 82 26 40 52 d9        vdpbf16ps zmm19,zmm27,zmm25
000ec2  62 82 26 40 52 e2        vdpbf16ps zmm20,zmm27,zmm26
000ec8  62 62 7d 48 58 9f 00 38 00 00 vpbroadcastd zmm27,[rdi+0x3800]
000ed2  62 82 26 40 52 e8        vdpbf16ps zmm21,zmm27,zmm24
000ed8  62 82 26 40 52 f1        vdpbf16ps zmm22,zmm27,zmm25
000ede  62 82 26 40 52 fa        vdpbf16ps zmm23,zmm27,zmm26
000ee4  48 83 c7 04              add       rdi,4
000ee8  48 83 c6 40              add       rsi,0x40
000eec  48 ff c9                 dec       rcx
000eef  0f 85 e7 fe ff ff        jne       near 0x0000000000000ddc
000ef5  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000efb  c5 fc 11 02              vmovups   [rdx],ymm0
000eff  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
000f05  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000f0a  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000f10  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
000f15  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
000f1b  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
000f23  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
000f29  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
000f31  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000f37  c5 fc 11 82 40 1c 00 00  vmovups   [rdx+0x1c40],ymm0
000f3f  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000f45  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
000f4d  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000f53  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
000f5b  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000f61  c5 fc 11 82 40 38 00 00  vmovups   [rdx+0x3840],ymm0
000f69  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000f6f  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
000f77  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000f7d  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
000f85  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000f8b  c5 fc 11 82 40 54 00 00  vmovups   [rdx+0x5440],ymm0
000f93  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000f99  c5 fc 11 82 00 70 00 00  vmovups   [rdx+0x7000],ymm0
000fa1  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000fa7  c5 fc 11 82 20 70 00 00  vmovups   [rdx+0x7020],ymm0
000faf  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000fb5  c5 fc 11 82 40 70 00 00  vmovups   [rdx+0x7040],ymm0
000fbd  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000fc3  c5 fc 11 82 00 8c 00 00  vmovups   [rdx+0x8c00],ymm0
000fcb  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000fd1  c5 fc 11 82 20 8c 00 00  vmovups   [rdx+0x8c20],ymm0
000fd9  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000fdf  c5 fc 11 82 40 8c 00 00  vmovups   [rdx+0x8c40],ymm0
000fe7  62 b2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm18
000fed  c5 fc 11 82 00 a8 00 00  vmovups   [rdx+0xa800],ymm0
000ff5  62 b2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm19
000ffb  c5 fc 11 82 20 a8 00 00  vmovups   [rdx+0xa820],ymm0
001003  62 b2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm20
001009  c5 fc 11 82 40 a8 00 00  vmovups   [rdx+0xa840],ymm0
001011  62 b2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm21
001017  c5 fc 11 82 00 c4 00 00  vmovups   [rdx+0xc400],ymm0
00101f  62 b2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm22
001025  c5 fc 11 82 20 c4 00 00  vmovups   [rdx+0xc420],ymm0
00102d  62 b2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm23
001033  c5 fc 11 82 40 c4 00 00  vmovups   [rdx+0xc440],ymm0
00103b  c5 f8 77                 vzeroupper
00103e  c3                       ret
00103f  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001045  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00104b  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
001055  0f 18 4e 40              prefetcht0 [rsi+0x40]
001059  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
001060  62 f1 ff 48 6f 16        vmovdqu16 zmm2,[rsi]
001066  62 f1 ff 48 6f 9e 00 80 00 00 vmovdqu16 zmm3,[rsi+0x8000]
001070  62 f2 7d 48 58 27        vpbroadcastd zmm4,[rdi]
001076  62 f2 5e 48 52 c2        vdpbf16ps zmm0,zmm4,zmm2
00107c  62 f2 5e 48 52 cb        vdpbf16ps zmm1,zmm4,zmm3
001082  48 83 c7 04              add       rdi,4
001086  48 83 c6 40              add       rsi,0x40
00108a  48 ff c9                 dec       rcx
00108d  75 c6                    jne       short 0x0000000000001055
00108f  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
001095  c5 fc 11 02              vmovups   [rdx],ymm0
001099  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
00109f  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
0010a4  c5 f8 77                 vzeroupper
0010a7  c3                       ret
0010a8  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0010ae  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0010b4  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0010ba  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0010c0  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0010ca  0f 18 4e 40              prefetcht0 [rsi+0x40]
0010ce  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0010d5  62 f1 ff 48 6f 26        vmovdqu16 zmm4,[rsi]
0010db  62 f1 ff 48 6f ae 00 80 00 00 vmovdqu16 zmm5,[rsi+0x8000]
0010e5  62 f2 7d 48 58 37        vpbroadcastd zmm6,[rdi]
0010eb  62 f2 4e 48 52 c4        vdpbf16ps zmm0,zmm6,zmm4
0010f1  62 f2 4e 48 52 cd        vdpbf16ps zmm1,zmm6,zmm5
0010f7  62 f2 7d 48 58 b7 00 08 00 00 vpbroadcastd zmm6,[rdi+0x800]
001101  62 f2 4e 48 52 d4        vdpbf16ps zmm2,zmm6,zmm4
001107  62 f2 4e 48 52 dd        vdpbf16ps zmm3,zmm6,zmm5
00110d  48 83 c7 04              add       rdi,4
001111  48 83 c6 40              add       rsi,0x40
001115  48 ff c9                 dec       rcx
001118  75 b0                    jne       short 0x00000000000010ca
00111a  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
001120  c5 fc 11 02              vmovups   [rdx],ymm0
001124  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
00112a  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
00112f  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
001135  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
00113d  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
001143  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
00114b  c5 f8 77                 vzeroupper
00114e  c3                       ret
00114f  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001155  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00115b  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001161  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001167  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00116d  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001173  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00117d  0f 18 4e 40              prefetcht0 [rsi+0x40]
001181  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
001188  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
00118e  62 f1 ff 48 6f be 00 80 00 00 vmovdqu16 zmm7,[rsi+0x8000]
001198  62 72 7d 48 58 07        vpbroadcastd zmm8,[rdi]
00119e  62 f2 3e 48 52 c6        vdpbf16ps zmm0,zmm8,zmm6
0011a4  62 f2 3e 48 52 cf        vdpbf16ps zmm1,zmm8,zmm7
0011aa  62 72 7d 48 58 87 00 08 00 00 vpbroadcastd zmm8,[rdi+0x800]
0011b4  62 f2 3e 48 52 d6        vdpbf16ps zmm2,zmm8,zmm6
0011ba  62 f2 3e 48 52 df        vdpbf16ps zmm3,zmm8,zmm7
0011c0  62 72 7d 48 58 87 00 10 00 00 vpbroadcastd zmm8,[rdi+0x1000]
0011ca  62 f2 3e 48 52 e6        vdpbf16ps zmm4,zmm8,zmm6
0011d0  62 f2 3e 48 52 ef        vdpbf16ps zmm5,zmm8,zmm7
0011d6  48 83 c7 04              add       rdi,4
0011da  48 83 c6 40              add       rsi,0x40
0011de  48 ff c9                 dec       rcx
0011e1  75 9a                    jne       short 0x000000000000117d
0011e3  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0011e9  c5 fc 11 02              vmovups   [rdx],ymm0
0011ed  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0011f3  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
0011f8  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0011fe  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
001206  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
00120c  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
001214  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00121a  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
001222  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
001228  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
001230  c5 f8 77                 vzeroupper
001233  c3                       ret
001234  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00123a  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
001240  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001246  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00124c  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001252  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001258  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00125e  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001264  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00126e  0f 18 4e 40              prefetcht0 [rsi+0x40]
001272  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
001279  62 71 ff 48 6f 06        vmovdqu16 zmm8,[rsi]
00127f  62 71 ff 48 6f 8e 00 80 00 00 vmovdqu16 zmm9,[rsi+0x8000]
001289  62 72 7d 48 58 17        vpbroadcastd zmm10,[rdi]
00128f  62 d2 2e 48 52 c0        vdpbf16ps zmm0,zmm10,zmm8
001295  62 d2 2e 48 52 c9        vdpbf16ps zmm1,zmm10,zmm9
00129b  62 72 7d 48 58 97 00 08 00 00 vpbroadcastd zmm10,[rdi+0x800]
0012a5  62 d2 2e 48 52 d0        vdpbf16ps zmm2,zmm10,zmm8
0012ab  62 d2 2e 48 52 d9        vdpbf16ps zmm3,zmm10,zmm9
0012b1  62 72 7d 48 58 97 00 10 00 00 vpbroadcastd zmm10,[rdi+0x1000]
0012bb  62 d2 2e 48 52 e0        vdpbf16ps zmm4,zmm10,zmm8
0012c1  62 d2 2e 48 52 e9        vdpbf16ps zmm5,zmm10,zmm9
0012c7  62 72 7d 48 58 97 00 18 00 00 vpbroadcastd zmm10,[rdi+0x1800]
0012d1  62 d2 2e 48 52 f0        vdpbf16ps zmm6,zmm10,zmm8
0012d7  62 d2 2e 48 52 f9        vdpbf16ps zmm7,zmm10,zmm9
0012dd  48 83 c7 04              add       rdi,4
0012e1  48 83 c6 40              add       rsi,0x40
0012e5  48 ff c9                 dec       rcx
0012e8  75 84                    jne       short 0x000000000000126e
0012ea  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0012f0  c5 fc 11 02              vmovups   [rdx],ymm0
0012f4  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0012fa  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
0012ff  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
001305  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
00130d  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
001313  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
00131b  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
001321  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
001329  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
00132f  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
001337  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
00133d  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
001345  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
00134b  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
001353  c5 f8 77                 vzeroupper
001356  c3                       ret
001357  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00135d  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
001363  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001369  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00136f  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001375  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00137b  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
001381  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001387  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00138d  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
001393  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00139d  0f 18 4e 40              prefetcht0 [rsi+0x40]
0013a1  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0013a8  62 71 ff 48 6f 16        vmovdqu16 zmm10,[rsi]
0013ae  62 71 ff 48 6f 9e 00 80 00 00 vmovdqu16 zmm11,[rsi+0x8000]
0013b8  62 72 7d 48 58 27        vpbroadcastd zmm12,[rdi]
0013be  62 d2 1e 48 52 c2        vdpbf16ps zmm0,zmm12,zmm10
0013c4  62 d2 1e 48 52 cb        vdpbf16ps zmm1,zmm12,zmm11
0013ca  62 72 7d 48 58 a7 00 08 00 00 vpbroadcastd zmm12,[rdi+0x800]
0013d4  62 d2 1e 48 52 d2        vdpbf16ps zmm2,zmm12,zmm10
0013da  62 d2 1e 48 52 db        vdpbf16ps zmm3,zmm12,zmm11
0013e0  62 72 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm12,[rdi+0x1000]
0013ea  62 d2 1e 48 52 e2        vdpbf16ps zmm4,zmm12,zmm10
0013f0  62 d2 1e 48 52 eb        vdpbf16ps zmm5,zmm12,zmm11
0013f6  62 72 7d 48 58 a7 00 18 00 00 vpbroadcastd zmm12,[rdi+0x1800]
001400  62 d2 1e 48 52 f2        vdpbf16ps zmm6,zmm12,zmm10
001406  62 d2 1e 48 52 fb        vdpbf16ps zmm7,zmm12,zmm11
00140c  62 72 7d 48 58 a7 00 20 00 00 vpbroadcastd zmm12,[rdi+0x2000]
001416  62 52 1e 48 52 c2        vdpbf16ps zmm8,zmm12,zmm10
00141c  62 52 1e 48 52 cb        vdpbf16ps zmm9,zmm12,zmm11
001422  48 83 c7 04              add       rdi,4
001426  48 83 c6 40              add       rsi,0x40
00142a  48 ff c9                 dec       rcx
00142d  0f 85 6a ff ff ff        jne       near 0x000000000000139d
001433  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
001439  c5 fc 11 02              vmovups   [rdx],ymm0
00143d  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
001443  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
001448  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
00144e  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
001456  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
00145c  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
001464  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00146a  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
001472  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
001478  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
001480  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
001486  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
00148e  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
001494  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
00149c  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0014a2  c5 fc 11 82 00 70 00 00  vmovups   [rdx+0x7000],ymm0
0014aa  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
0014b0  c5 fc 11 82 20 70 00 00  vmovups   [rdx+0x7020],ymm0
0014b8  c5 f8 77                 vzeroupper
0014bb  c3                       ret
0014bc  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0014c2  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0014c8  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0014ce  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0014d4  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0014da  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0014e0  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0014e6  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0014ec  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0014f2  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0014f8  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0014fe  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
001504  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00150e  0f 18 4e 40              prefetcht0 [rsi+0x40]
001512  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
001519  62 71 ff 48 6f 26        vmovdqu16 zmm12,[rsi]
00151f  62 71 ff 48 6f ae 00 80 00 00 vmovdqu16 zmm13,[rsi+0x8000]
001529  62 72 7d 48 58 37        vpbroadcastd zmm14,[rdi]
00152f  62 d2 0e 48 52 c4        vdpbf16ps zmm0,zmm14,zmm12
001535  62 d2 0e 48 52 cd        vdpbf16ps zmm1,zmm14,zmm13
00153b  62 72 7d 48 58 b7 00 08 00 00 vpbroadcastd zmm14,[rdi+0x800]
001545  62 d2 0e 48 52 d4        vdpbf16ps zmm2,zmm14,zmm12
00154b  62 d2 0e 48 52 dd        vdpbf16ps zmm3,zmm14,zmm13
001551  62 72 7d 48 58 b7 00 10 00 00 vpbroadcastd zmm14,[rdi+0x1000]
00155b  62 d2 0e 48 52 e4        vdpbf16ps zmm4,zmm14,zmm12
001561  62 d2 0e 48 52 ed        vdpbf16ps zmm5,zmm14,zmm13
001567  62 72 7d 48 58 b7 00 18 00 00 vpbroadcastd zmm14,[rdi+0x1800]
001571  62 d2 0e 48 52 f4        vdpbf16ps zmm6,zmm14,zmm12
001577  62 d2 0e 48 52 fd        vdpbf16ps zmm7,zmm14,zmm13
00157d  62 72 7d 48 58 b7 00 20 00 00 vpbroadcastd zmm14,[rdi+0x2000]
001587  62 52 0e 48 52 c4        vdpbf16ps zmm8,zmm14,zmm12
00158d  62 52 0e 48 52 cd        vdpbf16ps zmm9,zmm14,zmm13
001593  62 72 7d 48 58 b7 00 28 00 00 vpbroadcastd zmm14,[rdi+0x2800]
00159d  62 52 0e 48 52 d4        vdpbf16ps zmm10,zmm14,zmm12
0015a3  62 52 0e 48 52 dd        vdpbf16ps zmm11,zmm14,zmm13
0015a9  48 83 c7 04              add       rdi,4
0015ad  48 83 c6 40              add       rsi,0x40
0015b1  48 ff c9                 dec       rcx
0015b4  0f 85 54 ff ff ff        jne       near 0x000000000000150e
0015ba  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0015c0  c5 fc 11 02              vmovups   [rdx],ymm0
0015c4  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0015ca  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
0015cf  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0015d5  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
0015dd  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0015e3  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
0015eb  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0015f1  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
0015f9  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0015ff  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
001607  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
00160d  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
001615  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
00161b  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
001623  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
001629  c5 fc 11 82 00 70 00 00  vmovups   [rdx+0x7000],ymm0
001631  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
001637  c5 fc 11 82 20 70 00 00  vmovups   [rdx+0x7020],ymm0
00163f  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
001645  c5 fc 11 82 00 8c 00 00  vmovups   [rdx+0x8c00],ymm0
00164d  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
001653  c5 fc 11 82 20 8c 00 00  vmovups   [rdx+0x8c20],ymm0
00165b  c5 f8 77                 vzeroupper
00165e  c3                       ret
00165f  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001665  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00166b  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001671  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001677  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00167d  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001683  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
001689  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
00168f  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
001695  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
00169b  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0016a1  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0016a7  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0016ad  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0016b3  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0016bd  0f 18 4e 40              prefetcht0 [rsi+0x40]
0016c1  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0016c8  62 71 ff 48 6f 36        vmovdqu16 zmm14,[rsi]
0016ce  62 71 ff 48 6f be 00 80 00 00 vmovdqu16 zmm15,[rsi+0x8000]
0016d8  62 e2 7d 48 58 07        vpbroadcastd zmm16,[rdi]
0016de  62 d2 7e 40 52 c6        vdpbf16ps zmm0,zmm16,zmm14
0016e4  62 d2 7e 40 52 cf        vdpbf16ps zmm1,zmm16,zmm15
0016ea  62 e2 7d 48 58 87 00 08 00 00 vpbroadcastd zmm16,[rdi+0x800]
0016f4  62 d2 7e 40 52 d6        vdpbf16ps zmm2,zmm16,zmm14
0016fa  62 d2 7e 40 52 df        vdpbf16ps zmm3,zmm16,zmm15
001700  62 e2 7d 48 58 87 00 10 00 00 vpbroadcastd zmm16,[rdi+0x1000]
00170a  62 d2 7e 40 52 e6        vdpbf16ps zmm4,zmm16,zmm14
001710  62 d2 7e 40 52 ef        vdpbf16ps zmm5,zmm16,zmm15
001716  62 e2 7d 48 58 87 00 18 00 00 vpbroadcastd zmm16,[rdi+0x1800]
001720  62 d2 7e 40 52 f6        vdpbf16ps zmm6,zmm16,zmm14
001726  62 d2 7e 40 52 ff        vdpbf16ps zmm7,zmm16,zmm15
00172c  62 e2 7d 48 58 87 00 20 00 00 vpbroadcastd zmm16,[rdi+0x2000]
001736  62 52 7e 40 52 c6        vdpbf16ps zmm8,zmm16,zmm14
00173c  62 52 7e 40 52 cf        vdpbf16ps zmm9,zmm16,zmm15
001742  62 e2 7d 48 58 87 00 28 00 00 vpbroadcastd zmm16,[rdi+0x2800]
00174c  62 52 7e 40 52 d6        vdpbf16ps zmm10,zmm16,zmm14
001752  62 52 7e 40 52 df        vdpbf16ps zmm11,zmm16,zmm15
001758  62 e2 7d 48 58 87 00 30 00 00 vpbroadcastd zmm16,[rdi+0x3000]
001762  62 52 7e 40 52 e6        vdpbf16ps zmm12,zmm16,zmm14
001768  62 52 7e 40 52 ef        vdpbf16ps zmm13,zmm16,zmm15
00176e  48 83 c7 04              add       rdi,4
001772  48 83 c6 40              add       rsi,0x40
001776  48 ff c9                 dec       rcx
001779  0f 85 3e ff ff ff        jne       near 0x00000000000016bd
00177f  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
001785  c5 fc 11 02              vmovups   [rdx],ymm0
001789  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
00178f  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
001794  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
00179a  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
0017a2  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0017a8  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
0017b0  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0017b6  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
0017be  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0017c4  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
0017cc  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0017d2  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
0017da  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
0017e0  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
0017e8  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0017ee  c5 fc 11 82 00 70 00 00  vmovups   [rdx+0x7000],ymm0
0017f6  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
0017fc  c5 fc 11 82 20 70 00 00  vmovups   [rdx+0x7020],ymm0
001804  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
00180a  c5 fc 11 82 00 8c 00 00  vmovups   [rdx+0x8c00],ymm0
001812  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
001818  c5 fc 11 82 20 8c 00 00  vmovups   [rdx+0x8c20],ymm0
001820  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
001826  c5 fc 11 82 00 a8 00 00  vmovups   [rdx+0xa800],ymm0
00182e  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
001834  c5 fc 11 82 20 a8 00 00  vmovups   [rdx+0xa820],ymm0
00183c  c5 f8 77                 vzeroupper
00183f  c3                       ret
001840  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001846  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00184c  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001852  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001858  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00185e  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001864  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00186a  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001870  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
001876  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
00187c  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
001882  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
001888  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
00188e  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
001894  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
00189a  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
0018a0  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0018aa  0f 18 4e 40              prefetcht0 [rsi+0x40]
0018ae  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0018b5  62 e1 ff 48 6f 06        vmovdqu16 zmm16,[rsi]
0018bb  62 e1 ff 48 6f 8e 00 80 00 00 vmovdqu16 zmm17,[rsi+0x8000]
0018c5  62 e2 7d 48 58 17        vpbroadcastd zmm18,[rdi]
0018cb  62 b2 6e 40 52 c0        vdpbf16ps zmm0,zmm18,zmm16
0018d1  62 b2 6e 40 52 c9        vdpbf16ps zmm1,zmm18,zmm17
0018d7  62 e2 7d 48 58 97 00 08 00 00 vpbroadcastd zmm18,[rdi+0x800]
0018e1  62 b2 6e 40 52 d0        vdpbf16ps zmm2,zmm18,zmm16
0018e7  62 b2 6e 40 52 d9        vdpbf16ps zmm3,zmm18,zmm17
0018ed  62 e2 7d 48 58 97 00 10 00 00 vpbroadcastd zmm18,[rdi+0x1000]
0018f7  62 b2 6e 40 52 e0        vdpbf16ps zmm4,zmm18,zmm16
0018fd  62 b2 6e 40 52 e9        vdpbf16ps zmm5,zmm18,zmm17
001903  62 e2 7d 48 58 97 00 18 00 00 vpbroadcastd zmm18,[rdi+0x1800]
00190d  62 b2 6e 40 52 f0        vdpbf16ps zmm6,zmm18,zmm16
001913  62 b2 6e 40 52 f9        vdpbf16ps zmm7,zmm18,zmm17
001919  62 e2 7d 48 58 97 00 20 00 00 vpbroadcastd zmm18,[rdi+0x2000]
001923  62 32 6e 40 52 c0        vdpbf16ps zmm8,zmm18,zmm16
001929  62 32 6e 40 52 c9        vdpbf16ps zmm9,zmm18,zmm17
00192f  62 e2 7d 48 58 97 00 28 00 00 vpbroadcastd zmm18,[rdi+0x2800]
001939  62 32 6e 40 52 d0        vdpbf16ps zmm10,zmm18,zmm16
00193f  62 32 6e 40 52 d9        vdpbf16ps zmm11,zmm18,zmm17
001945  62 e2 7d 48 58 97 00 30 00 00 vpbroadcastd zmm18,[rdi+0x3000]
00194f  62 32 6e 40 52 e0        vdpbf16ps zmm12,zmm18,zmm16
001955  62 32 6e 40 52 e9        vdpbf16ps zmm13,zmm18,zmm17
00195b  62 e2 7d 48 58 97 00 38 00 00 vpbroadcastd zmm18,[rdi+0x3800]
001965  62 32 6e 40 52 f0        vdpbf16ps zmm14,zmm18,zmm16
00196b  62 32 6e 40 52 f9        vdpbf16ps zmm15,zmm18,zmm17
001971  48 83 c7 04              add       rdi,4
001975  48 83 c6 40              add       rsi,0x40
001979  48 ff c9                 dec       rcx
00197c  0f 85 28 ff ff ff        jne       near 0x00000000000018aa
001982  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
001988  c5 fc 11 02              vmovups   [rdx],ymm0
00198c  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
001992  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
001997  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
00199d  c5 fc 11 82 00 1c 00 00  vmovups   [rdx+0x1c00],ymm0
0019a5  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0019ab  c5 fc 11 82 20 1c 00 00  vmovups   [rdx+0x1c20],ymm0
0019b3  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0019b9  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
0019c1  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0019c7  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
0019cf  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0019d5  c5 fc 11 82 00 54 00 00  vmovups   [rdx+0x5400],ymm0
0019dd  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
0019e3  c5 fc 11 82 20 54 00 00  vmovups   [rdx+0x5420],ymm0
0019eb  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0019f1  c5 fc 11 82 00 70 00 00  vmovups   [rdx+0x7000],ymm0
0019f9  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
0019ff  c5 fc 11 82 20 70 00 00  vmovups   [rdx+0x7020],ymm0
001a07  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
001a0d  c5 fc 11 82 00 8c 00 00  vmovups   [rdx+0x8c00],ymm0
001a15  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
001a1b  c5 fc 11 82 20 8c 00 00  vmovups   [rdx+0x8c20],ymm0
001a23  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
001a29  c5 fc 11 82 00 a8 00 00  vmovups   [rdx+0xa800],ymm0
001a31  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
001a37  c5 fc 11 82 20 a8 00 00  vmovups   [rdx+0xa820],ymm0
001a3f  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
001a45  c5 fc 11 82 00 c4 00 00  vmovups   [rdx+0xc400],ymm0
001a4d  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
001a53  c5 fc 11 82 20 c4 00 00  vmovups   [rdx+0xc420],ymm0
001a5b  c5 f8 77                 vzeroupper
001a5e  c3                       ret
