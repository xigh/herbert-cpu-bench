; node 12: bf16-projection (layer 0), kernel 12 at image offset 0x9ca48, 5695 bytes, 22 tasks, up to 12 participants

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
00005b  48 3d 15 00 00 00        cmp       rax,0x15
000061  73 11                    jae       short 0x0000000000000074
000063  49 89 c1                 mov       r9,rax
000066  49 83 e9 00              sub       r9,0
00006a  4d 6b c9 30              imul      r9,0x30
00006e  49 83 c1 00              add       r9,0
000072  eb 26                    jmp       short 0x000000000000009a
000074  90                       nop
000075  48 3d 16 00 00 00        cmp       rax,0x16
00007b  73 17                    jae       short 0x0000000000000094
00007d  49 89 c1                 mov       r9,rax
000080  49 83 e9 15              sub       r9,0x15
000084  4d 6b c9 00              imul      r9,0
000088  49 81 c1 f0 03 00 00     add       r9,0x3f0
00008f  e9 c3 00 00 00           jmp       0x0000000000000157
000094  90                       nop
000095  e9 5f 01 00 00           jmp       0x00000000000001f9
00009a  48 8b 3b                 mov       rdi,[rbx]
00009d  4d 69 d5 00 10 00 00     imul      r10,r13,0x1000
0000a4  4c 01 d7                 add       rdi,r10
0000a7  48 8b 73 08              mov       rsi,[rbx+8]
0000ab  4d 69 d1 00 10 00 00     imul      r10,r9,0x1000
0000b2  4c 01 d6                 add       rsi,r10
0000b5  48 8b 53 10              mov       rdx,[rbx+0x10]
0000b9  4d 69 d5 00 04 00 00     imul      r10,r13,0x400
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
00015a  4d 69 d5 00 10 00 00     imul      r10,r13,0x1000
000161  4c 01 d7                 add       rdi,r10
000164  48 8b 73 08              mov       rsi,[rbx+8]
000168  4d 69 d1 00 10 00 00     imul      r10,r9,0x1000
00016f  4c 01 d6                 add       rsi,r10
000172  48 8b 53 10              mov       rdx,[rbx+0x10]
000176  4d 69 d5 00 04 00 00     imul      r10,r13,0x400
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
00019b  e8 e0 0e 00 00           call      0x0000000000001080
0001a0  eb 57                    jmp       short 0x00000000000001f9
0001a2  90                       nop
0001a3  49 83 fc 03              cmp       r12,3
0001a7  75 07                    jne       short 0x00000000000001b0
0001a9  e8 37 0f 00 00           call      0x00000000000010e5
0001ae  eb 49                    jmp       short 0x00000000000001f9
0001b0  90                       nop
0001b1  49 83 fc 04              cmp       r12,4
0001b5  75 07                    jne       short 0x00000000000001be
0001b7  e8 b2 0f 00 00           call      0x000000000000116e
0001bc  eb 3b                    jmp       short 0x00000000000001f9
0001be  90                       nop
0001bf  49 83 fc 05              cmp       r12,5
0001c3  75 07                    jne       short 0x00000000000001cc
0001c5  e8 51 10 00 00           call      0x000000000000121b
0001ca  eb 2d                    jmp       short 0x00000000000001f9
0001cc  90                       nop
0001cd  49 83 fc 06              cmp       r12,6
0001d1  75 07                    jne       short 0x00000000000001da
0001d3  e8 14 11 00 00           call      0x00000000000012ec
0001d8  eb 1f                    jmp       short 0x00000000000001f9
0001da  90                       nop
0001db  49 83 fc 07              cmp       r12,7
0001df  75 07                    jne       short 0x00000000000001e8
0001e1  e8 fb 11 00 00           call      0x00000000000013e1
0001e6  eb 11                    jmp       short 0x00000000000001f9
0001e8  90                       nop
0001e9  49 83 fc 08              cmp       r12,8
0001ed  75 07                    jne       short 0x00000000000001f6
0001ef  e8 0a 13 00 00           call      0x00000000000014fe
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
000211  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
00021b  0f 18 4e 40              prefetcht0 [rsi+0x40]
00021f  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000226  0f 18 8e 40 00 02 00     prefetcht0 [rsi+0x20040]
00022d  62 f1 ff 48 6f 1e        vmovdqu16 zmm3,[rsi]
000233  62 f1 ff 48 6f a6 00 00 01 00 vmovdqu16 zmm4,[rsi+0x10000]
00023d  62 f1 ff 48 6f ae 00 00 02 00 vmovdqu16 zmm5,[rsi+0x20000]
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
0002b4  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
0002be  0f 18 4e 40              prefetcht0 [rsi+0x40]
0002c2  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0002c9  0f 18 8e 40 00 02 00     prefetcht0 [rsi+0x20040]
0002d0  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
0002d6  62 f1 ff 48 6f be 00 00 01 00 vmovdqu16 zmm7,[rsi+0x10000]
0002e0  62 71 ff 48 6f 86 00 00 02 00 vmovdqu16 zmm8,[rsi+0x20000]
0002ea  62 72 7d 48 58 0f        vpbroadcastd zmm9,[rdi]
0002f0  62 f2 36 48 52 c6        vdpbf16ps zmm0,zmm9,zmm6
0002f6  62 f2 36 48 52 cf        vdpbf16ps zmm1,zmm9,zmm7
0002fc  62 d2 36 48 52 d0        vdpbf16ps zmm2,zmm9,zmm8
000302  62 72 7d 48 58 8f 00 10 00 00 vpbroadcastd zmm9,[rdi+0x1000]
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
000351  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
000359  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00035f  c5 fc 11 82 20 08 00 00  vmovups   [rdx+0x820],ymm0
000367  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
00036d  c5 fc 11 82 40 08 00 00  vmovups   [rdx+0x840],ymm0
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
0003af  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
0003b9  0f 18 4e 40              prefetcht0 [rsi+0x40]
0003bd  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0003c4  0f 18 8e 40 00 02 00     prefetcht0 [rsi+0x20040]
0003cb  62 71 ff 48 6f 0e        vmovdqu16 zmm9,[rsi]
0003d1  62 71 ff 48 6f 96 00 00 01 00 vmovdqu16 zmm10,[rsi+0x10000]
0003db  62 71 ff 48 6f 9e 00 00 02 00 vmovdqu16 zmm11,[rsi+0x20000]
0003e5  62 72 7d 48 58 27        vpbroadcastd zmm12,[rdi]
0003eb  62 d2 1e 48 52 c1        vdpbf16ps zmm0,zmm12,zmm9
0003f1  62 d2 1e 48 52 ca        vdpbf16ps zmm1,zmm12,zmm10
0003f7  62 d2 1e 48 52 d3        vdpbf16ps zmm2,zmm12,zmm11
0003fd  62 72 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm12,[rdi+0x1000]
000407  62 d2 1e 48 52 d9        vdpbf16ps zmm3,zmm12,zmm9
00040d  62 d2 1e 48 52 e2        vdpbf16ps zmm4,zmm12,zmm10
000413  62 d2 1e 48 52 eb        vdpbf16ps zmm5,zmm12,zmm11
000419  62 72 7d 48 58 a7 00 20 00 00 vpbroadcastd zmm12,[rdi+0x2000]
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
00046c  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
000474  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00047a  c5 fc 11 82 20 08 00 00  vmovups   [rdx+0x820],ymm0
000482  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000488  c5 fc 11 82 40 08 00 00  vmovups   [rdx+0x840],ymm0
000490  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000496  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
00049e  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
0004a4  c5 fc 11 82 20 10 00 00  vmovups   [rdx+0x1020],ymm0
0004ac  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0004b2  c5 fc 11 82 40 10 00 00  vmovups   [rdx+0x1040],ymm0
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
000506  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
000510  0f 18 4e 40              prefetcht0 [rsi+0x40]
000514  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
00051b  0f 18 8e 40 00 02 00     prefetcht0 [rsi+0x20040]
000522  62 71 ff 48 6f 26        vmovdqu16 zmm12,[rsi]
000528  62 71 ff 48 6f ae 00 00 01 00 vmovdqu16 zmm13,[rsi+0x10000]
000532  62 71 ff 48 6f b6 00 00 02 00 vmovdqu16 zmm14,[rsi+0x20000]
00053c  62 72 7d 48 58 3f        vpbroadcastd zmm15,[rdi]
000542  62 d2 06 48 52 c4        vdpbf16ps zmm0,zmm15,zmm12
000548  62 d2 06 48 52 cd        vdpbf16ps zmm1,zmm15,zmm13
00054e  62 d2 06 48 52 d6        vdpbf16ps zmm2,zmm15,zmm14
000554  62 72 7d 48 58 bf 00 10 00 00 vpbroadcastd zmm15,[rdi+0x1000]
00055e  62 d2 06 48 52 dc        vdpbf16ps zmm3,zmm15,zmm12
000564  62 d2 06 48 52 e5        vdpbf16ps zmm4,zmm15,zmm13
00056a  62 d2 06 48 52 ee        vdpbf16ps zmm5,zmm15,zmm14
000570  62 72 7d 48 58 bf 00 20 00 00 vpbroadcastd zmm15,[rdi+0x2000]
00057a  62 d2 06 48 52 f4        vdpbf16ps zmm6,zmm15,zmm12
000580  62 d2 06 48 52 fd        vdpbf16ps zmm7,zmm15,zmm13
000586  62 52 06 48 52 c6        vdpbf16ps zmm8,zmm15,zmm14
00058c  62 72 7d 48 58 bf 00 30 00 00 vpbroadcastd zmm15,[rdi+0x3000]
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
0005df  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0005e7  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0005ed  c5 fc 11 82 20 08 00 00  vmovups   [rdx+0x820],ymm0
0005f5  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0005fb  c5 fc 11 82 40 08 00 00  vmovups   [rdx+0x840],ymm0
000603  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000609  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
000611  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000617  c5 fc 11 82 20 10 00 00  vmovups   [rdx+0x1020],ymm0
00061f  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000625  c5 fc 11 82 40 10 00 00  vmovups   [rdx+0x1040],ymm0
00062d  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000633  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
00063b  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000641  c5 fc 11 82 20 18 00 00  vmovups   [rdx+0x1820],ymm0
000649  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
00064f  c5 fc 11 82 40 18 00 00  vmovups   [rdx+0x1840],ymm0
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
0006b5  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
0006bf  0f 18 4e 40              prefetcht0 [rsi+0x40]
0006c3  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0006ca  0f 18 8e 40 00 02 00     prefetcht0 [rsi+0x20040]
0006d1  62 71 ff 48 6f 3e        vmovdqu16 zmm15,[rsi]
0006d7  62 e1 ff 48 6f 86 00 00 01 00 vmovdqu16 zmm16,[rsi+0x10000]
0006e1  62 e1 ff 48 6f 8e 00 00 02 00 vmovdqu16 zmm17,[rsi+0x20000]
0006eb  62 e2 7d 48 58 17        vpbroadcastd zmm18,[rdi]
0006f1  62 d2 6e 40 52 c7        vdpbf16ps zmm0,zmm18,zmm15
0006f7  62 b2 6e 40 52 c8        vdpbf16ps zmm1,zmm18,zmm16
0006fd  62 b2 6e 40 52 d1        vdpbf16ps zmm2,zmm18,zmm17
000703  62 e2 7d 48 58 97 00 10 00 00 vpbroadcastd zmm18,[rdi+0x1000]
00070d  62 d2 6e 40 52 df        vdpbf16ps zmm3,zmm18,zmm15
000713  62 b2 6e 40 52 e0        vdpbf16ps zmm4,zmm18,zmm16
000719  62 b2 6e 40 52 e9        vdpbf16ps zmm5,zmm18,zmm17
00071f  62 e2 7d 48 58 97 00 20 00 00 vpbroadcastd zmm18,[rdi+0x2000]
000729  62 d2 6e 40 52 f7        vdpbf16ps zmm6,zmm18,zmm15
00072f  62 b2 6e 40 52 f8        vdpbf16ps zmm7,zmm18,zmm16
000735  62 32 6e 40 52 c1        vdpbf16ps zmm8,zmm18,zmm17
00073b  62 e2 7d 48 58 97 00 30 00 00 vpbroadcastd zmm18,[rdi+0x3000]
000745  62 52 6e 40 52 cf        vdpbf16ps zmm9,zmm18,zmm15
00074b  62 32 6e 40 52 d0        vdpbf16ps zmm10,zmm18,zmm16
000751  62 32 6e 40 52 d9        vdpbf16ps zmm11,zmm18,zmm17
000757  62 e2 7d 48 58 97 00 40 00 00 vpbroadcastd zmm18,[rdi+0x4000]
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
0007aa  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0007b2  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0007b8  c5 fc 11 82 20 08 00 00  vmovups   [rdx+0x820],ymm0
0007c0  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0007c6  c5 fc 11 82 40 08 00 00  vmovups   [rdx+0x840],ymm0
0007ce  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0007d4  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
0007dc  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
0007e2  c5 fc 11 82 20 10 00 00  vmovups   [rdx+0x1020],ymm0
0007ea  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0007f0  c5 fc 11 82 40 10 00 00  vmovups   [rdx+0x1040],ymm0
0007f8  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
0007fe  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
000806  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
00080c  c5 fc 11 82 20 18 00 00  vmovups   [rdx+0x1820],ymm0
000814  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
00081a  c5 fc 11 82 40 18 00 00  vmovups   [rdx+0x1840],ymm0
000822  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000828  c5 fc 11 82 00 20 00 00  vmovups   [rdx+0x2000],ymm0
000830  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000836  c5 fc 11 82 20 20 00 00  vmovups   [rdx+0x2020],ymm0
00083e  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000844  c5 fc 11 82 40 20 00 00  vmovups   [rdx+0x2040],ymm0
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
0008bc  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
0008c6  0f 18 4e 40              prefetcht0 [rsi+0x40]
0008ca  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0008d1  0f 18 8e 40 00 02 00     prefetcht0 [rsi+0x20040]
0008d8  62 e1 ff 48 6f 16        vmovdqu16 zmm18,[rsi]
0008de  62 e1 ff 48 6f 9e 00 00 01 00 vmovdqu16 zmm19,[rsi+0x10000]
0008e8  62 e1 ff 48 6f a6 00 00 02 00 vmovdqu16 zmm20,[rsi+0x20000]
0008f2  62 e2 7d 48 58 2f        vpbroadcastd zmm21,[rdi]
0008f8  62 b2 56 40 52 c2        vdpbf16ps zmm0,zmm21,zmm18
0008fe  62 b2 56 40 52 cb        vdpbf16ps zmm1,zmm21,zmm19
000904  62 b2 56 40 52 d4        vdpbf16ps zmm2,zmm21,zmm20
00090a  62 e2 7d 48 58 af 00 10 00 00 vpbroadcastd zmm21,[rdi+0x1000]
000914  62 b2 56 40 52 da        vdpbf16ps zmm3,zmm21,zmm18
00091a  62 b2 56 40 52 e3        vdpbf16ps zmm4,zmm21,zmm19
000920  62 b2 56 40 52 ec        vdpbf16ps zmm5,zmm21,zmm20
000926  62 e2 7d 48 58 af 00 20 00 00 vpbroadcastd zmm21,[rdi+0x2000]
000930  62 b2 56 40 52 f2        vdpbf16ps zmm6,zmm21,zmm18
000936  62 b2 56 40 52 fb        vdpbf16ps zmm7,zmm21,zmm19
00093c  62 32 56 40 52 c4        vdpbf16ps zmm8,zmm21,zmm20
000942  62 e2 7d 48 58 af 00 30 00 00 vpbroadcastd zmm21,[rdi+0x3000]
00094c  62 32 56 40 52 ca        vdpbf16ps zmm9,zmm21,zmm18
000952  62 32 56 40 52 d3        vdpbf16ps zmm10,zmm21,zmm19
000958  62 32 56 40 52 dc        vdpbf16ps zmm11,zmm21,zmm20
00095e  62 e2 7d 48 58 af 00 40 00 00 vpbroadcastd zmm21,[rdi+0x4000]
000968  62 32 56 40 52 e2        vdpbf16ps zmm12,zmm21,zmm18
00096e  62 32 56 40 52 eb        vdpbf16ps zmm13,zmm21,zmm19
000974  62 32 56 40 52 f4        vdpbf16ps zmm14,zmm21,zmm20
00097a  62 e2 7d 48 58 af 00 50 00 00 vpbroadcastd zmm21,[rdi+0x5000]
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
0009cd  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0009d5  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0009db  c5 fc 11 82 20 08 00 00  vmovups   [rdx+0x820],ymm0
0009e3  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0009e9  c5 fc 11 82 40 08 00 00  vmovups   [rdx+0x840],ymm0
0009f1  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0009f7  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
0009ff  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000a05  c5 fc 11 82 20 10 00 00  vmovups   [rdx+0x1020],ymm0
000a0d  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000a13  c5 fc 11 82 40 10 00 00  vmovups   [rdx+0x1040],ymm0
000a1b  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000a21  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
000a29  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000a2f  c5 fc 11 82 20 18 00 00  vmovups   [rdx+0x1820],ymm0
000a37  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000a3d  c5 fc 11 82 40 18 00 00  vmovups   [rdx+0x1840],ymm0
000a45  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000a4b  c5 fc 11 82 00 20 00 00  vmovups   [rdx+0x2000],ymm0
000a53  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000a59  c5 fc 11 82 20 20 00 00  vmovups   [rdx+0x2020],ymm0
000a61  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000a67  c5 fc 11 82 40 20 00 00  vmovups   [rdx+0x2040],ymm0
000a6f  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000a75  c5 fc 11 82 00 28 00 00  vmovups   [rdx+0x2800],ymm0
000a7d  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000a83  c5 fc 11 82 20 28 00 00  vmovups   [rdx+0x2820],ymm0
000a8b  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000a91  c5 fc 11 82 40 28 00 00  vmovups   [rdx+0x2840],ymm0
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
000b1b  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
000b25  0f 18 4e 40              prefetcht0 [rsi+0x40]
000b29  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000b30  0f 18 8e 40 00 02 00     prefetcht0 [rsi+0x20040]
000b37  62 e1 ff 48 6f 2e        vmovdqu16 zmm21,[rsi]
000b3d  62 e1 ff 48 6f b6 00 00 01 00 vmovdqu16 zmm22,[rsi+0x10000]
000b47  62 e1 ff 48 6f be 00 00 02 00 vmovdqu16 zmm23,[rsi+0x20000]
000b51  62 62 7d 48 58 07        vpbroadcastd zmm24,[rdi]
000b57  62 b2 3e 40 52 c5        vdpbf16ps zmm0,zmm24,zmm21
000b5d  62 b2 3e 40 52 ce        vdpbf16ps zmm1,zmm24,zmm22
000b63  62 b2 3e 40 52 d7        vdpbf16ps zmm2,zmm24,zmm23
000b69  62 62 7d 48 58 87 00 10 00 00 vpbroadcastd zmm24,[rdi+0x1000]
000b73  62 b2 3e 40 52 dd        vdpbf16ps zmm3,zmm24,zmm21
000b79  62 b2 3e 40 52 e6        vdpbf16ps zmm4,zmm24,zmm22
000b7f  62 b2 3e 40 52 ef        vdpbf16ps zmm5,zmm24,zmm23
000b85  62 62 7d 48 58 87 00 20 00 00 vpbroadcastd zmm24,[rdi+0x2000]
000b8f  62 b2 3e 40 52 f5        vdpbf16ps zmm6,zmm24,zmm21
000b95  62 b2 3e 40 52 fe        vdpbf16ps zmm7,zmm24,zmm22
000b9b  62 32 3e 40 52 c7        vdpbf16ps zmm8,zmm24,zmm23
000ba1  62 62 7d 48 58 87 00 30 00 00 vpbroadcastd zmm24,[rdi+0x3000]
000bab  62 32 3e 40 52 cd        vdpbf16ps zmm9,zmm24,zmm21
000bb1  62 32 3e 40 52 d6        vdpbf16ps zmm10,zmm24,zmm22
000bb7  62 32 3e 40 52 df        vdpbf16ps zmm11,zmm24,zmm23
000bbd  62 62 7d 48 58 87 00 40 00 00 vpbroadcastd zmm24,[rdi+0x4000]
000bc7  62 32 3e 40 52 e5        vdpbf16ps zmm12,zmm24,zmm21
000bcd  62 32 3e 40 52 ee        vdpbf16ps zmm13,zmm24,zmm22
000bd3  62 32 3e 40 52 f7        vdpbf16ps zmm14,zmm24,zmm23
000bd9  62 62 7d 48 58 87 00 50 00 00 vpbroadcastd zmm24,[rdi+0x5000]
000be3  62 32 3e 40 52 fd        vdpbf16ps zmm15,zmm24,zmm21
000be9  62 a2 3e 40 52 c6        vdpbf16ps zmm16,zmm24,zmm22
000bef  62 a2 3e 40 52 cf        vdpbf16ps zmm17,zmm24,zmm23
000bf5  62 62 7d 48 58 87 00 60 00 00 vpbroadcastd zmm24,[rdi+0x6000]
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
000c48  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
000c50  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
000c56  c5 fc 11 82 20 08 00 00  vmovups   [rdx+0x820],ymm0
000c5e  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000c64  c5 fc 11 82 40 08 00 00  vmovups   [rdx+0x840],ymm0
000c6c  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000c72  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
000c7a  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000c80  c5 fc 11 82 20 10 00 00  vmovups   [rdx+0x1020],ymm0
000c88  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000c8e  c5 fc 11 82 40 10 00 00  vmovups   [rdx+0x1040],ymm0
000c96  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000c9c  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
000ca4  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000caa  c5 fc 11 82 20 18 00 00  vmovups   [rdx+0x1820],ymm0
000cb2  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000cb8  c5 fc 11 82 40 18 00 00  vmovups   [rdx+0x1840],ymm0
000cc0  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000cc6  c5 fc 11 82 00 20 00 00  vmovups   [rdx+0x2000],ymm0
000cce  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000cd4  c5 fc 11 82 20 20 00 00  vmovups   [rdx+0x2020],ymm0
000cdc  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000ce2  c5 fc 11 82 40 20 00 00  vmovups   [rdx+0x2040],ymm0
000cea  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000cf0  c5 fc 11 82 00 28 00 00  vmovups   [rdx+0x2800],ymm0
000cf8  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000cfe  c5 fc 11 82 20 28 00 00  vmovups   [rdx+0x2820],ymm0
000d06  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000d0c  c5 fc 11 82 40 28 00 00  vmovups   [rdx+0x2840],ymm0
000d14  62 b2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm18
000d1a  c5 fc 11 82 00 30 00 00  vmovups   [rdx+0x3000],ymm0
000d22  62 b2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm19
000d28  c5 fc 11 82 20 30 00 00  vmovups   [rdx+0x3020],ymm0
000d30  62 b2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm20
000d36  c5 fc 11 82 40 30 00 00  vmovups   [rdx+0x3040],ymm0
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
000dd2  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
000ddc  0f 18 4e 40              prefetcht0 [rsi+0x40]
000de0  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000de7  0f 18 8e 40 00 02 00     prefetcht0 [rsi+0x20040]
000dee  62 61 ff 48 6f 06        vmovdqu16 zmm24,[rsi]
000df4  62 61 ff 48 6f 8e 00 00 01 00 vmovdqu16 zmm25,[rsi+0x10000]
000dfe  62 61 ff 48 6f 96 00 00 02 00 vmovdqu16 zmm26,[rsi+0x20000]
000e08  62 62 7d 48 58 1f        vpbroadcastd zmm27,[rdi]
000e0e  62 92 26 40 52 c0        vdpbf16ps zmm0,zmm27,zmm24
000e14  62 92 26 40 52 c9        vdpbf16ps zmm1,zmm27,zmm25
000e1a  62 92 26 40 52 d2        vdpbf16ps zmm2,zmm27,zmm26
000e20  62 62 7d 48 58 9f 00 10 00 00 vpbroadcastd zmm27,[rdi+0x1000]
000e2a  62 92 26 40 52 d8        vdpbf16ps zmm3,zmm27,zmm24
000e30  62 92 26 40 52 e1        vdpbf16ps zmm4,zmm27,zmm25
000e36  62 92 26 40 52 ea        vdpbf16ps zmm5,zmm27,zmm26
000e3c  62 62 7d 48 58 9f 00 20 00 00 vpbroadcastd zmm27,[rdi+0x2000]
000e46  62 92 26 40 52 f0        vdpbf16ps zmm6,zmm27,zmm24
000e4c  62 92 26 40 52 f9        vdpbf16ps zmm7,zmm27,zmm25
000e52  62 12 26 40 52 c2        vdpbf16ps zmm8,zmm27,zmm26
000e58  62 62 7d 48 58 9f 00 30 00 00 vpbroadcastd zmm27,[rdi+0x3000]
000e62  62 12 26 40 52 c8        vdpbf16ps zmm9,zmm27,zmm24
000e68  62 12 26 40 52 d1        vdpbf16ps zmm10,zmm27,zmm25
000e6e  62 12 26 40 52 da        vdpbf16ps zmm11,zmm27,zmm26
000e74  62 62 7d 48 58 9f 00 40 00 00 vpbroadcastd zmm27,[rdi+0x4000]
000e7e  62 12 26 40 52 e0        vdpbf16ps zmm12,zmm27,zmm24
000e84  62 12 26 40 52 e9        vdpbf16ps zmm13,zmm27,zmm25
000e8a  62 12 26 40 52 f2        vdpbf16ps zmm14,zmm27,zmm26
000e90  62 62 7d 48 58 9f 00 50 00 00 vpbroadcastd zmm27,[rdi+0x5000]
000e9a  62 12 26 40 52 f8        vdpbf16ps zmm15,zmm27,zmm24
000ea0  62 82 26 40 52 c1        vdpbf16ps zmm16,zmm27,zmm25
000ea6  62 82 26 40 52 ca        vdpbf16ps zmm17,zmm27,zmm26
000eac  62 62 7d 48 58 9f 00 60 00 00 vpbroadcastd zmm27,[rdi+0x6000]
000eb6  62 82 26 40 52 d0        vdpbf16ps zmm18,zmm27,zmm24
000ebc  62 82 26 40 52 d9        vdpbf16ps zmm19,zmm27,zmm25
000ec2  62 82 26 40 52 e2        vdpbf16ps zmm20,zmm27,zmm26
000ec8  62 62 7d 48 58 9f 00 70 00 00 vpbroadcastd zmm27,[rdi+0x7000]
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
000f1b  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
000f23  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
000f29  c5 fc 11 82 20 08 00 00  vmovups   [rdx+0x820],ymm0
000f31  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000f37  c5 fc 11 82 40 08 00 00  vmovups   [rdx+0x840],ymm0
000f3f  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000f45  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
000f4d  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000f53  c5 fc 11 82 20 10 00 00  vmovups   [rdx+0x1020],ymm0
000f5b  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000f61  c5 fc 11 82 40 10 00 00  vmovups   [rdx+0x1040],ymm0
000f69  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000f6f  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
000f77  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000f7d  c5 fc 11 82 20 18 00 00  vmovups   [rdx+0x1820],ymm0
000f85  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000f8b  c5 fc 11 82 40 18 00 00  vmovups   [rdx+0x1840],ymm0
000f93  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000f99  c5 fc 11 82 00 20 00 00  vmovups   [rdx+0x2000],ymm0
000fa1  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000fa7  c5 fc 11 82 20 20 00 00  vmovups   [rdx+0x2020],ymm0
000faf  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000fb5  c5 fc 11 82 40 20 00 00  vmovups   [rdx+0x2040],ymm0
000fbd  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000fc3  c5 fc 11 82 00 28 00 00  vmovups   [rdx+0x2800],ymm0
000fcb  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000fd1  c5 fc 11 82 20 28 00 00  vmovups   [rdx+0x2820],ymm0
000fd9  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000fdf  c5 fc 11 82 40 28 00 00  vmovups   [rdx+0x2840],ymm0
000fe7  62 b2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm18
000fed  c5 fc 11 82 00 30 00 00  vmovups   [rdx+0x3000],ymm0
000ff5  62 b2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm19
000ffb  c5 fc 11 82 20 30 00 00  vmovups   [rdx+0x3020],ymm0
001003  62 b2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm20
001009  c5 fc 11 82 40 30 00 00  vmovups   [rdx+0x3040],ymm0
001011  62 b2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm21
001017  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
00101f  62 b2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm22
001025  c5 fc 11 82 20 38 00 00  vmovups   [rdx+0x3820],ymm0
00102d  62 b2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm23
001033  c5 fc 11 82 40 38 00 00  vmovups   [rdx+0x3840],ymm0
00103b  c5 f8 77                 vzeroupper
00103e  c3                       ret
00103f  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001045  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
00104f  0f 18 4e 40              prefetcht0 [rsi+0x40]
001053  62 f1 ff 48 6f 0e        vmovdqu16 zmm1,[rsi]
001059  62 f2 7d 48 58 17        vpbroadcastd zmm2,[rdi]
00105f  62 f2 6e 48 52 c1        vdpbf16ps zmm0,zmm2,zmm1
001065  48 83 c7 04              add       rdi,4
001069  48 83 c6 40              add       rsi,0x40
00106d  48 ff c9                 dec       rcx
001070  75 dd                    jne       short 0x000000000000104f
001072  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
001078  c5 fc 11 02              vmovups   [rdx],ymm0
00107c  c5 f8 77                 vzeroupper
00107f  c3                       ret
001080  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001086  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00108c  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
001096  0f 18 4e 40              prefetcht0 [rsi+0x40]
00109a  62 f1 ff 48 6f 16        vmovdqu16 zmm2,[rsi]
0010a0  62 f2 7d 48 58 1f        vpbroadcastd zmm3,[rdi]
0010a6  62 f2 66 48 52 c2        vdpbf16ps zmm0,zmm3,zmm2
0010ac  62 f2 7d 48 58 9f 00 10 00 00 vpbroadcastd zmm3,[rdi+0x1000]
0010b6  62 f2 66 48 52 ca        vdpbf16ps zmm1,zmm3,zmm2
0010bc  48 83 c7 04              add       rdi,4
0010c0  48 83 c6 40              add       rsi,0x40
0010c4  48 ff c9                 dec       rcx
0010c7  75 cd                    jne       short 0x0000000000001096
0010c9  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0010cf  c5 fc 11 02              vmovups   [rdx],ymm0
0010d3  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0010d9  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0010e1  c5 f8 77                 vzeroupper
0010e4  c3                       ret
0010e5  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0010eb  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0010f1  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0010f7  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
001101  0f 18 4e 40              prefetcht0 [rsi+0x40]
001105  62 f1 ff 48 6f 1e        vmovdqu16 zmm3,[rsi]
00110b  62 f2 7d 48 58 27        vpbroadcastd zmm4,[rdi]
001111  62 f2 5e 48 52 c3        vdpbf16ps zmm0,zmm4,zmm3
001117  62 f2 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm4,[rdi+0x1000]
001121  62 f2 5e 48 52 cb        vdpbf16ps zmm1,zmm4,zmm3
001127  62 f2 7d 48 58 a7 00 20 00 00 vpbroadcastd zmm4,[rdi+0x2000]
001131  62 f2 5e 48 52 d3        vdpbf16ps zmm2,zmm4,zmm3
001137  48 83 c7 04              add       rdi,4
00113b  48 83 c6 40              add       rsi,0x40
00113f  48 ff c9                 dec       rcx
001142  75 bd                    jne       short 0x0000000000001101
001144  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
00114a  c5 fc 11 02              vmovups   [rdx],ymm0
00114e  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
001154  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
00115c  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
001162  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
00116a  c5 f8 77                 vzeroupper
00116d  c3                       ret
00116e  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001174  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00117a  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001180  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001186  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
001190  0f 18 4e 40              prefetcht0 [rsi+0x40]
001194  62 f1 ff 48 6f 26        vmovdqu16 zmm4,[rsi]
00119a  62 f2 7d 48 58 2f        vpbroadcastd zmm5,[rdi]
0011a0  62 f2 56 48 52 c4        vdpbf16ps zmm0,zmm5,zmm4
0011a6  62 f2 7d 48 58 af 00 10 00 00 vpbroadcastd zmm5,[rdi+0x1000]
0011b0  62 f2 56 48 52 cc        vdpbf16ps zmm1,zmm5,zmm4
0011b6  62 f2 7d 48 58 af 00 20 00 00 vpbroadcastd zmm5,[rdi+0x2000]
0011c0  62 f2 56 48 52 d4        vdpbf16ps zmm2,zmm5,zmm4
0011c6  62 f2 7d 48 58 af 00 30 00 00 vpbroadcastd zmm5,[rdi+0x3000]
0011d0  62 f2 56 48 52 dc        vdpbf16ps zmm3,zmm5,zmm4
0011d6  48 83 c7 04              add       rdi,4
0011da  48 83 c6 40              add       rsi,0x40
0011de  48 ff c9                 dec       rcx
0011e1  75 ad                    jne       short 0x0000000000001190
0011e3  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0011e9  c5 fc 11 02              vmovups   [rdx],ymm0
0011ed  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0011f3  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0011fb  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
001201  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
001209  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
00120f  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
001217  c5 f8 77                 vzeroupper
00121a  c3                       ret
00121b  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001221  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
001227  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
00122d  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001233  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001239  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
001243  0f 18 4e 40              prefetcht0 [rsi+0x40]
001247  62 f1 ff 48 6f 2e        vmovdqu16 zmm5,[rsi]
00124d  62 f2 7d 48 58 37        vpbroadcastd zmm6,[rdi]
001253  62 f2 4e 48 52 c5        vdpbf16ps zmm0,zmm6,zmm5
001259  62 f2 7d 48 58 b7 00 10 00 00 vpbroadcastd zmm6,[rdi+0x1000]
001263  62 f2 4e 48 52 cd        vdpbf16ps zmm1,zmm6,zmm5
001269  62 f2 7d 48 58 b7 00 20 00 00 vpbroadcastd zmm6,[rdi+0x2000]
001273  62 f2 4e 48 52 d5        vdpbf16ps zmm2,zmm6,zmm5
001279  62 f2 7d 48 58 b7 00 30 00 00 vpbroadcastd zmm6,[rdi+0x3000]
001283  62 f2 4e 48 52 dd        vdpbf16ps zmm3,zmm6,zmm5
001289  62 f2 7d 48 58 b7 00 40 00 00 vpbroadcastd zmm6,[rdi+0x4000]
001293  62 f2 4e 48 52 e5        vdpbf16ps zmm4,zmm6,zmm5
001299  48 83 c7 04              add       rdi,4
00129d  48 83 c6 40              add       rsi,0x40
0012a1  48 ff c9                 dec       rcx
0012a4  75 9d                    jne       short 0x0000000000001243
0012a6  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0012ac  c5 fc 11 02              vmovups   [rdx],ymm0
0012b0  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0012b6  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0012be  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0012c4  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
0012cc  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0012d2  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
0012da  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0012e0  c5 fc 11 82 00 20 00 00  vmovups   [rdx+0x2000],ymm0
0012e8  c5 f8 77                 vzeroupper
0012eb  c3                       ret
0012ec  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0012f2  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0012f8  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0012fe  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001304  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00130a  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001310  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
00131a  0f 18 4e 40              prefetcht0 [rsi+0x40]
00131e  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
001324  62 f2 7d 48 58 3f        vpbroadcastd zmm7,[rdi]
00132a  62 f2 46 48 52 c6        vdpbf16ps zmm0,zmm7,zmm6
001330  62 f2 7d 48 58 bf 00 10 00 00 vpbroadcastd zmm7,[rdi+0x1000]
00133a  62 f2 46 48 52 ce        vdpbf16ps zmm1,zmm7,zmm6
001340  62 f2 7d 48 58 bf 00 20 00 00 vpbroadcastd zmm7,[rdi+0x2000]
00134a  62 f2 46 48 52 d6        vdpbf16ps zmm2,zmm7,zmm6
001350  62 f2 7d 48 58 bf 00 30 00 00 vpbroadcastd zmm7,[rdi+0x3000]
00135a  62 f2 46 48 52 de        vdpbf16ps zmm3,zmm7,zmm6
001360  62 f2 7d 48 58 bf 00 40 00 00 vpbroadcastd zmm7,[rdi+0x4000]
00136a  62 f2 46 48 52 e6        vdpbf16ps zmm4,zmm7,zmm6
001370  62 f2 7d 48 58 bf 00 50 00 00 vpbroadcastd zmm7,[rdi+0x5000]
00137a  62 f2 46 48 52 ee        vdpbf16ps zmm5,zmm7,zmm6
001380  48 83 c7 04              add       rdi,4
001384  48 83 c6 40              add       rsi,0x40
001388  48 ff c9                 dec       rcx
00138b  75 8d                    jne       short 0x000000000000131a
00138d  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
001393  c5 fc 11 02              vmovups   [rdx],ymm0
001397  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
00139d  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0013a5  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0013ab  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
0013b3  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0013b9  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
0013c1  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0013c7  c5 fc 11 82 00 20 00 00  vmovups   [rdx+0x2000],ymm0
0013cf  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0013d5  c5 fc 11 82 00 28 00 00  vmovups   [rdx+0x2800],ymm0
0013dd  c5 f8 77                 vzeroupper
0013e0  c3                       ret
0013e1  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0013e7  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0013ed  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0013f3  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0013f9  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0013ff  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001405  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00140b  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
001415  0f 18 4e 40              prefetcht0 [rsi+0x40]
001419  62 f1 ff 48 6f 3e        vmovdqu16 zmm7,[rsi]
00141f  62 72 7d 48 58 07        vpbroadcastd zmm8,[rdi]
001425  62 f2 3e 48 52 c7        vdpbf16ps zmm0,zmm8,zmm7
00142b  62 72 7d 48 58 87 00 10 00 00 vpbroadcastd zmm8,[rdi+0x1000]
001435  62 f2 3e 48 52 cf        vdpbf16ps zmm1,zmm8,zmm7
00143b  62 72 7d 48 58 87 00 20 00 00 vpbroadcastd zmm8,[rdi+0x2000]
001445  62 f2 3e 48 52 d7        vdpbf16ps zmm2,zmm8,zmm7
00144b  62 72 7d 48 58 87 00 30 00 00 vpbroadcastd zmm8,[rdi+0x3000]
001455  62 f2 3e 48 52 df        vdpbf16ps zmm3,zmm8,zmm7
00145b  62 72 7d 48 58 87 00 40 00 00 vpbroadcastd zmm8,[rdi+0x4000]
001465  62 f2 3e 48 52 e7        vdpbf16ps zmm4,zmm8,zmm7
00146b  62 72 7d 48 58 87 00 50 00 00 vpbroadcastd zmm8,[rdi+0x5000]
001475  62 f2 3e 48 52 ef        vdpbf16ps zmm5,zmm8,zmm7
00147b  62 72 7d 48 58 87 00 60 00 00 vpbroadcastd zmm8,[rdi+0x6000]
001485  62 f2 3e 48 52 f7        vdpbf16ps zmm6,zmm8,zmm7
00148b  48 83 c7 04              add       rdi,4
00148f  48 83 c6 40              add       rsi,0x40
001493  48 ff c9                 dec       rcx
001496  0f 85 79 ff ff ff        jne       near 0x0000000000001415
00149c  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0014a2  c5 fc 11 02              vmovups   [rdx],ymm0
0014a6  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0014ac  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0014b4  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0014ba  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
0014c2  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0014c8  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
0014d0  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0014d6  c5 fc 11 82 00 20 00 00  vmovups   [rdx+0x2000],ymm0
0014de  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0014e4  c5 fc 11 82 00 28 00 00  vmovups   [rdx+0x2800],ymm0
0014ec  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0014f2  c5 fc 11 82 00 30 00 00  vmovups   [rdx+0x3000],ymm0
0014fa  c5 f8 77                 vzeroupper
0014fd  c3                       ret
0014fe  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001504  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00150a  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001510  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001516  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00151c  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001522  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
001528  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
00152e  48 b9 00 04 00 00 00 00 00 00 mov       rcx,0x400
001538  0f 18 4e 40              prefetcht0 [rsi+0x40]
00153c  62 71 ff 48 6f 06        vmovdqu16 zmm8,[rsi]
001542  62 72 7d 48 58 0f        vpbroadcastd zmm9,[rdi]
001548  62 d2 36 48 52 c0        vdpbf16ps zmm0,zmm9,zmm8
00154e  62 72 7d 48 58 8f 00 10 00 00 vpbroadcastd zmm9,[rdi+0x1000]
001558  62 d2 36 48 52 c8        vdpbf16ps zmm1,zmm9,zmm8
00155e  62 72 7d 48 58 8f 00 20 00 00 vpbroadcastd zmm9,[rdi+0x2000]
001568  62 d2 36 48 52 d0        vdpbf16ps zmm2,zmm9,zmm8
00156e  62 72 7d 48 58 8f 00 30 00 00 vpbroadcastd zmm9,[rdi+0x3000]
001578  62 d2 36 48 52 d8        vdpbf16ps zmm3,zmm9,zmm8
00157e  62 72 7d 48 58 8f 00 40 00 00 vpbroadcastd zmm9,[rdi+0x4000]
001588  62 d2 36 48 52 e0        vdpbf16ps zmm4,zmm9,zmm8
00158e  62 72 7d 48 58 8f 00 50 00 00 vpbroadcastd zmm9,[rdi+0x5000]
001598  62 d2 36 48 52 e8        vdpbf16ps zmm5,zmm9,zmm8
00159e  62 72 7d 48 58 8f 00 60 00 00 vpbroadcastd zmm9,[rdi+0x6000]
0015a8  62 d2 36 48 52 f0        vdpbf16ps zmm6,zmm9,zmm8
0015ae  62 72 7d 48 58 8f 00 70 00 00 vpbroadcastd zmm9,[rdi+0x7000]
0015b8  62 d2 36 48 52 f8        vdpbf16ps zmm7,zmm9,zmm8
0015be  48 83 c7 04              add       rdi,4
0015c2  48 83 c6 40              add       rsi,0x40
0015c6  48 ff c9                 dec       rcx
0015c9  0f 85 69 ff ff ff        jne       near 0x0000000000001538
0015cf  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0015d5  c5 fc 11 02              vmovups   [rdx],ymm0
0015d9  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0015df  c5 fc 11 82 00 08 00 00  vmovups   [rdx+0x800],ymm0
0015e7  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0015ed  c5 fc 11 82 00 10 00 00  vmovups   [rdx+0x1000],ymm0
0015f5  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0015fb  c5 fc 11 82 00 18 00 00  vmovups   [rdx+0x1800],ymm0
001603  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
001609  c5 fc 11 82 00 20 00 00  vmovups   [rdx+0x2000],ymm0
001611  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
001617  c5 fc 11 82 00 28 00 00  vmovups   [rdx+0x2800],ymm0
00161f  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
001625  c5 fc 11 82 00 30 00 00  vmovups   [rdx+0x3000],ymm0
00162d  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
001633  c5 fc 11 82 00 38 00 00  vmovups   [rdx+0x3800],ymm0
00163b  c5 f8 77                 vzeroupper
00163e  c3                       ret
