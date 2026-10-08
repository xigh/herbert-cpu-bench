; node 460: language-head-bf16 (layer -), kernel 436 at image offset 0x31f3e2, 5698 bytes, 5174 tasks, up to 12 participants

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
00001b  0f 84 db 01 00 00        je        near 0x00000000000001fc
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
00005b  48 3d 35 14 00 00        cmp       rax,0x1435
000061  73 11                    jae       short 0x0000000000000074
000063  49 89 c1                 mov       r9,rax
000066  49 83 e9 00              sub       r9,0
00006a  4d 6b c9 30              imul      r9,0x30
00006e  49 83 c1 00              add       r9,0
000072  eb 29                    jmp       short 0x000000000000009d
000074  90                       nop
000075  48 3d 36 14 00 00        cmp       rax,0x1436
00007b  73 1a                    jae       short 0x0000000000000097
00007d  49 89 c1                 mov       r9,rax
000080  49 81 e9 35 14 00 00     sub       r9,0x1435
000087  4d 6b c9 00              imul      r9,0
00008b  49 81 c1 f0 c9 03 00     add       r9,0x3c9f0
000092  e9 c3 00 00 00           jmp       0x000000000000015a
000097  90                       nop
000098  e9 5f 01 00 00           jmp       0x00000000000001fc
00009d  48 8b 3b                 mov       rdi,[rbx]
0000a0  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
0000a7  4c 01 d7                 add       rdi,r10
0000aa  48 8b 73 08              mov       rsi,[rbx+8]
0000ae  4d 69 d1 00 08 00 00     imul      r10,r9,0x800
0000b5  4c 01 d6                 add       rsi,r10
0000b8  48 8b 53 10              mov       rdx,[rbx+0x10]
0000bc  4d 69 d5 00 ca 03 00     imul      r10,r13,0x3ca00
0000c3  4d 01 ca                 add       r10,r9
0000c6  4d 6b d2 02              imul      r10,2
0000ca  4c 01 d2                 add       rdx,r10
0000cd  49 83 fc 01              cmp       r12,1
0000d1  75 0a                    jne       short 0x00000000000000dd
0000d3  e8 2a 01 00 00           call      0x0000000000000202
0000d8  e9 1f 01 00 00           jmp       0x00000000000001fc
0000dd  90                       nop
0000de  49 83 fc 02              cmp       r12,2
0000e2  75 0a                    jne       short 0x00000000000000ee
0000e4  e8 aa 01 00 00           call      0x0000000000000293
0000e9  e9 0e 01 00 00           jmp       0x00000000000001fc
0000ee  90                       nop
0000ef  49 83 fc 03              cmp       r12,3
0000f3  75 0a                    jne       short 0x00000000000000ff
0000f5  e8 82 02 00 00           call      0x000000000000037c
0000fa  e9 fd 00 00 00           jmp       0x00000000000001fc
0000ff  90                       nop
000100  49 83 fc 04              cmp       r12,4
000104  75 0a                    jne       short 0x0000000000000110
000106  e8 b6 03 00 00           call      0x00000000000004c1
00010b  e9 ec 00 00 00           jmp       0x00000000000001fc
000110  90                       nop
000111  49 83 fc 05              cmp       r12,5
000115  75 0a                    jne       short 0x0000000000000121
000117  e8 42 05 00 00           call      0x000000000000065e
00011c  e9 db 00 00 00           jmp       0x00000000000001fc
000121  90                       nop
000122  49 83 fc 06              cmp       r12,6
000126  75 0a                    jne       short 0x0000000000000132
000128  e8 26 07 00 00           call      0x0000000000000853
00012d  e9 ca 00 00 00           jmp       0x00000000000001fc
000132  90                       nop
000133  49 83 fc 07              cmp       r12,7
000137  75 0a                    jne       short 0x0000000000000143
000139  e8 62 09 00 00           call      0x0000000000000aa0
00013e  e9 b9 00 00 00           jmp       0x00000000000001fc
000143  90                       nop
000144  49 83 fc 08              cmp       r12,8
000148  75 0a                    jne       short 0x0000000000000154
00014a  e8 f6 0b 00 00           call      0x0000000000000d45
00014f  e9 a8 00 00 00           jmp       0x00000000000001fc
000154  90                       nop
000155  e9 a2 00 00 00           jmp       0x00000000000001fc
00015a  48 8b 3b                 mov       rdi,[rbx]
00015d  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
000164  4c 01 d7                 add       rdi,r10
000167  48 8b 73 08              mov       rsi,[rbx+8]
00016b  4d 69 d1 00 08 00 00     imul      r10,r9,0x800
000172  4c 01 d6                 add       rsi,r10
000175  48 8b 53 10              mov       rdx,[rbx+0x10]
000179  4d 69 d5 00 ca 03 00     imul      r10,r13,0x3ca00
000180  4d 01 ca                 add       r10,r9
000183  4d 6b d2 02              imul      r10,2
000187  4c 01 d2                 add       rdx,r10
00018a  49 83 fc 01              cmp       r12,1
00018e  75 07                    jne       short 0x0000000000000197
000190  e8 ad 0e 00 00           call      0x0000000000001042
000195  eb 65                    jmp       short 0x00000000000001fc
000197  90                       nop
000198  49 83 fc 02              cmp       r12,2
00019c  75 07                    jne       short 0x00000000000001a5
00019e  e8 e0 0e 00 00           call      0x0000000000001083
0001a3  eb 57                    jmp       short 0x00000000000001fc
0001a5  90                       nop
0001a6  49 83 fc 03              cmp       r12,3
0001aa  75 07                    jne       short 0x00000000000001b3
0001ac  e8 37 0f 00 00           call      0x00000000000010e8
0001b1  eb 49                    jmp       short 0x00000000000001fc
0001b3  90                       nop
0001b4  49 83 fc 04              cmp       r12,4
0001b8  75 07                    jne       short 0x00000000000001c1
0001ba  e8 b2 0f 00 00           call      0x0000000000001171
0001bf  eb 3b                    jmp       short 0x00000000000001fc
0001c1  90                       nop
0001c2  49 83 fc 05              cmp       r12,5
0001c6  75 07                    jne       short 0x00000000000001cf
0001c8  e8 51 10 00 00           call      0x000000000000121e
0001cd  eb 2d                    jmp       short 0x00000000000001fc
0001cf  90                       nop
0001d0  49 83 fc 06              cmp       r12,6
0001d4  75 07                    jne       short 0x00000000000001dd
0001d6  e8 14 11 00 00           call      0x00000000000012ef
0001db  eb 1f                    jmp       short 0x00000000000001fc
0001dd  90                       nop
0001de  49 83 fc 07              cmp       r12,7
0001e2  75 07                    jne       short 0x00000000000001eb
0001e4  e8 fb 11 00 00           call      0x00000000000013e4
0001e9  eb 11                    jmp       short 0x00000000000001fc
0001eb  90                       nop
0001ec  49 83 fc 08              cmp       r12,8
0001f0  75 07                    jne       short 0x00000000000001f9
0001f2  e8 0a 13 00 00           call      0x0000000000001501
0001f7  eb 03                    jmp       short 0x00000000000001fc
0001f9  90                       nop
0001fa  eb 00                    jmp       short 0x00000000000001fc
0001fc  41 5d                    pop       r13
0001fe  41 5c                    pop       r12
000200  5b                       pop       rbx
000201  c3                       ret
000202  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000208  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00020e  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000214  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00021e  0f 18 4e 40              prefetcht0 [rsi+0x40]
000222  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000229  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000230  62 f1 ff 48 6f 1e        vmovdqu16 zmm3,[rsi]
000236  62 f1 ff 48 6f a6 00 80 00 00 vmovdqu16 zmm4,[rsi+0x8000]
000240  62 f1 ff 48 6f ae 00 00 01 00 vmovdqu16 zmm5,[rsi+0x10000]
00024a  62 f2 7d 48 58 37        vpbroadcastd zmm6,[rdi]
000250  62 f2 4e 48 52 c3        vdpbf16ps zmm0,zmm6,zmm3
000256  62 f2 4e 48 52 cc        vdpbf16ps zmm1,zmm6,zmm4
00025c  62 f2 4e 48 52 d5        vdpbf16ps zmm2,zmm6,zmm5
000262  48 83 c7 04              add       rdi,4
000266  48 83 c6 40              add       rsi,0x40
00026a  48 ff c9                 dec       rcx
00026d  75 af                    jne       short 0x000000000000021e
00026f  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000275  c5 fc 11 02              vmovups   [rdx],ymm0
000279  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
00027f  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000284  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
00028a  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
00028f  c5 f8 77                 vzeroupper
000292  c3                       ret
000293  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000299  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00029f  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0002a5  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0002ab  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0002b1  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0002b7  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0002c1  0f 18 4e 40              prefetcht0 [rsi+0x40]
0002c5  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0002cc  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0002d3  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
0002d9  62 f1 ff 48 6f be 00 80 00 00 vmovdqu16 zmm7,[rsi+0x8000]
0002e3  62 71 ff 48 6f 86 00 00 01 00 vmovdqu16 zmm8,[rsi+0x10000]
0002ed  62 72 7d 48 58 0f        vpbroadcastd zmm9,[rdi]
0002f3  62 f2 36 48 52 c6        vdpbf16ps zmm0,zmm9,zmm6
0002f9  62 f2 36 48 52 cf        vdpbf16ps zmm1,zmm9,zmm7
0002ff  62 d2 36 48 52 d0        vdpbf16ps zmm2,zmm9,zmm8
000305  62 72 7d 48 58 8f 00 08 00 00 vpbroadcastd zmm9,[rdi+0x800]
00030f  62 f2 36 48 52 de        vdpbf16ps zmm3,zmm9,zmm6
000315  62 f2 36 48 52 e7        vdpbf16ps zmm4,zmm9,zmm7
00031b  62 d2 36 48 52 e8        vdpbf16ps zmm5,zmm9,zmm8
000321  48 83 c7 04              add       rdi,4
000325  48 83 c6 40              add       rsi,0x40
000329  48 ff c9                 dec       rcx
00032c  75 93                    jne       short 0x00000000000002c1
00032e  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000334  c5 fc 11 02              vmovups   [rdx],ymm0
000338  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
00033e  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000343  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000349  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
00034e  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
000354  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
00035c  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
000362  c5 fc 11 82 20 94 07 00  vmovups   [rdx+0x79420],ymm0
00036a  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000370  c5 fc 11 82 40 94 07 00  vmovups   [rdx+0x79440],ymm0
000378  c5 f8 77                 vzeroupper
00037b  c3                       ret
00037c  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000382  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000388  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
00038e  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000394  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00039a  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0003a0  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0003a6  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0003ac  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0003b2  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0003bc  0f 18 4e 40              prefetcht0 [rsi+0x40]
0003c0  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0003c7  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0003ce  62 71 ff 48 6f 0e        vmovdqu16 zmm9,[rsi]
0003d4  62 71 ff 48 6f 96 00 80 00 00 vmovdqu16 zmm10,[rsi+0x8000]
0003de  62 71 ff 48 6f 9e 00 00 01 00 vmovdqu16 zmm11,[rsi+0x10000]
0003e8  62 72 7d 48 58 27        vpbroadcastd zmm12,[rdi]
0003ee  62 d2 1e 48 52 c1        vdpbf16ps zmm0,zmm12,zmm9
0003f4  62 d2 1e 48 52 ca        vdpbf16ps zmm1,zmm12,zmm10
0003fa  62 d2 1e 48 52 d3        vdpbf16ps zmm2,zmm12,zmm11
000400  62 72 7d 48 58 a7 00 08 00 00 vpbroadcastd zmm12,[rdi+0x800]
00040a  62 d2 1e 48 52 d9        vdpbf16ps zmm3,zmm12,zmm9
000410  62 d2 1e 48 52 e2        vdpbf16ps zmm4,zmm12,zmm10
000416  62 d2 1e 48 52 eb        vdpbf16ps zmm5,zmm12,zmm11
00041c  62 72 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm12,[rdi+0x1000]
000426  62 d2 1e 48 52 f1        vdpbf16ps zmm6,zmm12,zmm9
00042c  62 d2 1e 48 52 fa        vdpbf16ps zmm7,zmm12,zmm10
000432  62 52 1e 48 52 c3        vdpbf16ps zmm8,zmm12,zmm11
000438  48 83 c7 04              add       rdi,4
00043c  48 83 c6 40              add       rsi,0x40
000440  48 ff c9                 dec       rcx
000443  0f 85 73 ff ff ff        jne       near 0x00000000000003bc
000449  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
00044f  c5 fc 11 02              vmovups   [rdx],ymm0
000453  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
000459  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
00045e  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000464  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
000469  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
00046f  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
000477  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00047d  c5 fc 11 82 20 94 07 00  vmovups   [rdx+0x79420],ymm0
000485  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
00048b  c5 fc 11 82 40 94 07 00  vmovups   [rdx+0x79440],ymm0
000493  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000499  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
0004a1  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
0004a7  c5 fc 11 82 20 28 0f 00  vmovups   [rdx+0xf2820],ymm0
0004af  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0004b5  c5 fc 11 82 40 28 0f 00  vmovups   [rdx+0xf2840],ymm0
0004bd  c5 f8 77                 vzeroupper
0004c0  c3                       ret
0004c1  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0004c7  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0004cd  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0004d3  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0004d9  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0004df  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0004e5  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0004eb  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0004f1  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
0004f7  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
0004fd  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000503  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000509  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000513  0f 18 4e 40              prefetcht0 [rsi+0x40]
000517  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
00051e  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000525  62 71 ff 48 6f 26        vmovdqu16 zmm12,[rsi]
00052b  62 71 ff 48 6f ae 00 80 00 00 vmovdqu16 zmm13,[rsi+0x8000]
000535  62 71 ff 48 6f b6 00 00 01 00 vmovdqu16 zmm14,[rsi+0x10000]
00053f  62 72 7d 48 58 3f        vpbroadcastd zmm15,[rdi]
000545  62 d2 06 48 52 c4        vdpbf16ps zmm0,zmm15,zmm12
00054b  62 d2 06 48 52 cd        vdpbf16ps zmm1,zmm15,zmm13
000551  62 d2 06 48 52 d6        vdpbf16ps zmm2,zmm15,zmm14
000557  62 72 7d 48 58 bf 00 08 00 00 vpbroadcastd zmm15,[rdi+0x800]
000561  62 d2 06 48 52 dc        vdpbf16ps zmm3,zmm15,zmm12
000567  62 d2 06 48 52 e5        vdpbf16ps zmm4,zmm15,zmm13
00056d  62 d2 06 48 52 ee        vdpbf16ps zmm5,zmm15,zmm14
000573  62 72 7d 48 58 bf 00 10 00 00 vpbroadcastd zmm15,[rdi+0x1000]
00057d  62 d2 06 48 52 f4        vdpbf16ps zmm6,zmm15,zmm12
000583  62 d2 06 48 52 fd        vdpbf16ps zmm7,zmm15,zmm13
000589  62 52 06 48 52 c6        vdpbf16ps zmm8,zmm15,zmm14
00058f  62 72 7d 48 58 bf 00 18 00 00 vpbroadcastd zmm15,[rdi+0x1800]
000599  62 52 06 48 52 cc        vdpbf16ps zmm9,zmm15,zmm12
00059f  62 52 06 48 52 d5        vdpbf16ps zmm10,zmm15,zmm13
0005a5  62 52 06 48 52 de        vdpbf16ps zmm11,zmm15,zmm14
0005ab  48 83 c7 04              add       rdi,4
0005af  48 83 c6 40              add       rsi,0x40
0005b3  48 ff c9                 dec       rcx
0005b6  0f 85 57 ff ff ff        jne       near 0x0000000000000513
0005bc  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0005c2  c5 fc 11 02              vmovups   [rdx],ymm0
0005c6  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0005cc  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
0005d1  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0005d7  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
0005dc  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0005e2  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0005ea  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0005f0  c5 fc 11 82 20 94 07 00  vmovups   [rdx+0x79420],ymm0
0005f8  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0005fe  c5 fc 11 82 40 94 07 00  vmovups   [rdx+0x79440],ymm0
000606  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
00060c  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
000614  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
00061a  c5 fc 11 82 20 28 0f 00  vmovups   [rdx+0xf2820],ymm0
000622  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000628  c5 fc 11 82 40 28 0f 00  vmovups   [rdx+0xf2840],ymm0
000630  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000636  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
00063e  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000644  c5 fc 11 82 20 bc 16 00  vmovups   [rdx+0x16bc20],ymm0
00064c  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000652  c5 fc 11 82 40 bc 16 00  vmovups   [rdx+0x16bc40],ymm0
00065a  c5 f8 77                 vzeroupper
00065d  c3                       ret
00065e  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000664  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00066a  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000670  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000676  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00067c  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000682  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000688  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
00068e  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000694  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
00069a  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
0006a0  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
0006a6  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0006ac  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0006b2  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0006b8  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0006c2  0f 18 4e 40              prefetcht0 [rsi+0x40]
0006c6  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0006cd  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0006d4  62 71 ff 48 6f 3e        vmovdqu16 zmm15,[rsi]
0006da  62 e1 ff 48 6f 86 00 80 00 00 vmovdqu16 zmm16,[rsi+0x8000]
0006e4  62 e1 ff 48 6f 8e 00 00 01 00 vmovdqu16 zmm17,[rsi+0x10000]
0006ee  62 e2 7d 48 58 17        vpbroadcastd zmm18,[rdi]
0006f4  62 d2 6e 40 52 c7        vdpbf16ps zmm0,zmm18,zmm15
0006fa  62 b2 6e 40 52 c8        vdpbf16ps zmm1,zmm18,zmm16
000700  62 b2 6e 40 52 d1        vdpbf16ps zmm2,zmm18,zmm17
000706  62 e2 7d 48 58 97 00 08 00 00 vpbroadcastd zmm18,[rdi+0x800]
000710  62 d2 6e 40 52 df        vdpbf16ps zmm3,zmm18,zmm15
000716  62 b2 6e 40 52 e0        vdpbf16ps zmm4,zmm18,zmm16
00071c  62 b2 6e 40 52 e9        vdpbf16ps zmm5,zmm18,zmm17
000722  62 e2 7d 48 58 97 00 10 00 00 vpbroadcastd zmm18,[rdi+0x1000]
00072c  62 d2 6e 40 52 f7        vdpbf16ps zmm6,zmm18,zmm15
000732  62 b2 6e 40 52 f8        vdpbf16ps zmm7,zmm18,zmm16
000738  62 32 6e 40 52 c1        vdpbf16ps zmm8,zmm18,zmm17
00073e  62 e2 7d 48 58 97 00 18 00 00 vpbroadcastd zmm18,[rdi+0x1800]
000748  62 52 6e 40 52 cf        vdpbf16ps zmm9,zmm18,zmm15
00074e  62 32 6e 40 52 d0        vdpbf16ps zmm10,zmm18,zmm16
000754  62 32 6e 40 52 d9        vdpbf16ps zmm11,zmm18,zmm17
00075a  62 e2 7d 48 58 97 00 20 00 00 vpbroadcastd zmm18,[rdi+0x2000]
000764  62 52 6e 40 52 e7        vdpbf16ps zmm12,zmm18,zmm15
00076a  62 32 6e 40 52 e8        vdpbf16ps zmm13,zmm18,zmm16
000770  62 32 6e 40 52 f1        vdpbf16ps zmm14,zmm18,zmm17
000776  48 83 c7 04              add       rdi,4
00077a  48 83 c6 40              add       rsi,0x40
00077e  48 ff c9                 dec       rcx
000781  0f 85 3b ff ff ff        jne       near 0x00000000000006c2
000787  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
00078d  c5 fc 11 02              vmovups   [rdx],ymm0
000791  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
000797  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
00079c  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0007a2  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
0007a7  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0007ad  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0007b5  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0007bb  c5 fc 11 82 20 94 07 00  vmovups   [rdx+0x79420],ymm0
0007c3  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0007c9  c5 fc 11 82 40 94 07 00  vmovups   [rdx+0x79440],ymm0
0007d1  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0007d7  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
0007df  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
0007e5  c5 fc 11 82 20 28 0f 00  vmovups   [rdx+0xf2820],ymm0
0007ed  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0007f3  c5 fc 11 82 40 28 0f 00  vmovups   [rdx+0xf2840],ymm0
0007fb  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000801  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
000809  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
00080f  c5 fc 11 82 20 bc 16 00  vmovups   [rdx+0x16bc20],ymm0
000817  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
00081d  c5 fc 11 82 40 bc 16 00  vmovups   [rdx+0x16bc40],ymm0
000825  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
00082b  c5 fc 11 82 00 50 1e 00  vmovups   [rdx+0x1e5000],ymm0
000833  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000839  c5 fc 11 82 20 50 1e 00  vmovups   [rdx+0x1e5020],ymm0
000841  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000847  c5 fc 11 82 40 50 1e 00  vmovups   [rdx+0x1e5040],ymm0
00084f  c5 f8 77                 vzeroupper
000852  c3                       ret
000853  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000859  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00085f  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000865  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00086b  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000871  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000877  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00087d  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000883  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000889  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
00088f  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000895  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
00089b  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0008a1  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0008a7  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0008ad  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
0008b3  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
0008b9  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0008bf  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
0008c9  0f 18 4e 40              prefetcht0 [rsi+0x40]
0008cd  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
0008d4  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
0008db  62 e1 ff 48 6f 16        vmovdqu16 zmm18,[rsi]
0008e1  62 e1 ff 48 6f 9e 00 80 00 00 vmovdqu16 zmm19,[rsi+0x8000]
0008eb  62 e1 ff 48 6f a6 00 00 01 00 vmovdqu16 zmm20,[rsi+0x10000]
0008f5  62 e2 7d 48 58 2f        vpbroadcastd zmm21,[rdi]
0008fb  62 b2 56 40 52 c2        vdpbf16ps zmm0,zmm21,zmm18
000901  62 b2 56 40 52 cb        vdpbf16ps zmm1,zmm21,zmm19
000907  62 b2 56 40 52 d4        vdpbf16ps zmm2,zmm21,zmm20
00090d  62 e2 7d 48 58 af 00 08 00 00 vpbroadcastd zmm21,[rdi+0x800]
000917  62 b2 56 40 52 da        vdpbf16ps zmm3,zmm21,zmm18
00091d  62 b2 56 40 52 e3        vdpbf16ps zmm4,zmm21,zmm19
000923  62 b2 56 40 52 ec        vdpbf16ps zmm5,zmm21,zmm20
000929  62 e2 7d 48 58 af 00 10 00 00 vpbroadcastd zmm21,[rdi+0x1000]
000933  62 b2 56 40 52 f2        vdpbf16ps zmm6,zmm21,zmm18
000939  62 b2 56 40 52 fb        vdpbf16ps zmm7,zmm21,zmm19
00093f  62 32 56 40 52 c4        vdpbf16ps zmm8,zmm21,zmm20
000945  62 e2 7d 48 58 af 00 18 00 00 vpbroadcastd zmm21,[rdi+0x1800]
00094f  62 32 56 40 52 ca        vdpbf16ps zmm9,zmm21,zmm18
000955  62 32 56 40 52 d3        vdpbf16ps zmm10,zmm21,zmm19
00095b  62 32 56 40 52 dc        vdpbf16ps zmm11,zmm21,zmm20
000961  62 e2 7d 48 58 af 00 20 00 00 vpbroadcastd zmm21,[rdi+0x2000]
00096b  62 32 56 40 52 e2        vdpbf16ps zmm12,zmm21,zmm18
000971  62 32 56 40 52 eb        vdpbf16ps zmm13,zmm21,zmm19
000977  62 32 56 40 52 f4        vdpbf16ps zmm14,zmm21,zmm20
00097d  62 e2 7d 48 58 af 00 28 00 00 vpbroadcastd zmm21,[rdi+0x2800]
000987  62 32 56 40 52 fa        vdpbf16ps zmm15,zmm21,zmm18
00098d  62 a2 56 40 52 c3        vdpbf16ps zmm16,zmm21,zmm19
000993  62 a2 56 40 52 cc        vdpbf16ps zmm17,zmm21,zmm20
000999  48 83 c7 04              add       rdi,4
00099d  48 83 c6 40              add       rsi,0x40
0009a1  48 ff c9                 dec       rcx
0009a4  0f 85 1f ff ff ff        jne       near 0x00000000000008c9
0009aa  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0009b0  c5 fc 11 02              vmovups   [rdx],ymm0
0009b4  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0009ba  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
0009bf  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0009c5  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
0009ca  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0009d0  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0009d8  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0009de  c5 fc 11 82 20 94 07 00  vmovups   [rdx+0x79420],ymm0
0009e6  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0009ec  c5 fc 11 82 40 94 07 00  vmovups   [rdx+0x79440],ymm0
0009f4  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0009fa  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
000a02  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000a08  c5 fc 11 82 20 28 0f 00  vmovups   [rdx+0xf2820],ymm0
000a10  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000a16  c5 fc 11 82 40 28 0f 00  vmovups   [rdx+0xf2840],ymm0
000a1e  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000a24  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
000a2c  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000a32  c5 fc 11 82 20 bc 16 00  vmovups   [rdx+0x16bc20],ymm0
000a3a  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000a40  c5 fc 11 82 40 bc 16 00  vmovups   [rdx+0x16bc40],ymm0
000a48  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000a4e  c5 fc 11 82 00 50 1e 00  vmovups   [rdx+0x1e5000],ymm0
000a56  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000a5c  c5 fc 11 82 20 50 1e 00  vmovups   [rdx+0x1e5020],ymm0
000a64  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000a6a  c5 fc 11 82 40 50 1e 00  vmovups   [rdx+0x1e5040],ymm0
000a72  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000a78  c5 fc 11 82 00 e4 25 00  vmovups   [rdx+0x25e400],ymm0
000a80  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000a86  c5 fc 11 82 20 e4 25 00  vmovups   [rdx+0x25e420],ymm0
000a8e  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000a94  c5 fc 11 82 40 e4 25 00  vmovups   [rdx+0x25e440],ymm0
000a9c  c5 f8 77                 vzeroupper
000a9f  c3                       ret
000aa0  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000aa6  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000aac  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000ab2  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000ab8  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000abe  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000ac4  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000aca  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000ad0  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000ad6  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000adc  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000ae2  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000ae8  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000aee  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000af4  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
000afa  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
000b00  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000b06  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000b0c  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
000b12  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000b18  62 a1 5c 40 57 e4        vxorps    zmm20,zmm20,zmm20
000b1e  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000b28  0f 18 4e 40              prefetcht0 [rsi+0x40]
000b2c  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000b33  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000b3a  62 e1 ff 48 6f 2e        vmovdqu16 zmm21,[rsi]
000b40  62 e1 ff 48 6f b6 00 80 00 00 vmovdqu16 zmm22,[rsi+0x8000]
000b4a  62 e1 ff 48 6f be 00 00 01 00 vmovdqu16 zmm23,[rsi+0x10000]
000b54  62 62 7d 48 58 07        vpbroadcastd zmm24,[rdi]
000b5a  62 b2 3e 40 52 c5        vdpbf16ps zmm0,zmm24,zmm21
000b60  62 b2 3e 40 52 ce        vdpbf16ps zmm1,zmm24,zmm22
000b66  62 b2 3e 40 52 d7        vdpbf16ps zmm2,zmm24,zmm23
000b6c  62 62 7d 48 58 87 00 08 00 00 vpbroadcastd zmm24,[rdi+0x800]
000b76  62 b2 3e 40 52 dd        vdpbf16ps zmm3,zmm24,zmm21
000b7c  62 b2 3e 40 52 e6        vdpbf16ps zmm4,zmm24,zmm22
000b82  62 b2 3e 40 52 ef        vdpbf16ps zmm5,zmm24,zmm23
000b88  62 62 7d 48 58 87 00 10 00 00 vpbroadcastd zmm24,[rdi+0x1000]
000b92  62 b2 3e 40 52 f5        vdpbf16ps zmm6,zmm24,zmm21
000b98  62 b2 3e 40 52 fe        vdpbf16ps zmm7,zmm24,zmm22
000b9e  62 32 3e 40 52 c7        vdpbf16ps zmm8,zmm24,zmm23
000ba4  62 62 7d 48 58 87 00 18 00 00 vpbroadcastd zmm24,[rdi+0x1800]
000bae  62 32 3e 40 52 cd        vdpbf16ps zmm9,zmm24,zmm21
000bb4  62 32 3e 40 52 d6        vdpbf16ps zmm10,zmm24,zmm22
000bba  62 32 3e 40 52 df        vdpbf16ps zmm11,zmm24,zmm23
000bc0  62 62 7d 48 58 87 00 20 00 00 vpbroadcastd zmm24,[rdi+0x2000]
000bca  62 32 3e 40 52 e5        vdpbf16ps zmm12,zmm24,zmm21
000bd0  62 32 3e 40 52 ee        vdpbf16ps zmm13,zmm24,zmm22
000bd6  62 32 3e 40 52 f7        vdpbf16ps zmm14,zmm24,zmm23
000bdc  62 62 7d 48 58 87 00 28 00 00 vpbroadcastd zmm24,[rdi+0x2800]
000be6  62 32 3e 40 52 fd        vdpbf16ps zmm15,zmm24,zmm21
000bec  62 a2 3e 40 52 c6        vdpbf16ps zmm16,zmm24,zmm22
000bf2  62 a2 3e 40 52 cf        vdpbf16ps zmm17,zmm24,zmm23
000bf8  62 62 7d 48 58 87 00 30 00 00 vpbroadcastd zmm24,[rdi+0x3000]
000c02  62 a2 3e 40 52 d5        vdpbf16ps zmm18,zmm24,zmm21
000c08  62 a2 3e 40 52 de        vdpbf16ps zmm19,zmm24,zmm22
000c0e  62 a2 3e 40 52 e7        vdpbf16ps zmm20,zmm24,zmm23
000c14  48 83 c7 04              add       rdi,4
000c18  48 83 c6 40              add       rsi,0x40
000c1c  48 ff c9                 dec       rcx
000c1f  0f 85 03 ff ff ff        jne       near 0x0000000000000b28
000c25  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000c2b  c5 fc 11 02              vmovups   [rdx],ymm0
000c2f  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
000c35  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000c3a  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000c40  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
000c45  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
000c4b  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
000c53  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
000c59  c5 fc 11 82 20 94 07 00  vmovups   [rdx+0x79420],ymm0
000c61  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000c67  c5 fc 11 82 40 94 07 00  vmovups   [rdx+0x79440],ymm0
000c6f  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000c75  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
000c7d  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000c83  c5 fc 11 82 20 28 0f 00  vmovups   [rdx+0xf2820],ymm0
000c8b  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000c91  c5 fc 11 82 40 28 0f 00  vmovups   [rdx+0xf2840],ymm0
000c99  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000c9f  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
000ca7  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000cad  c5 fc 11 82 20 bc 16 00  vmovups   [rdx+0x16bc20],ymm0
000cb5  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000cbb  c5 fc 11 82 40 bc 16 00  vmovups   [rdx+0x16bc40],ymm0
000cc3  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000cc9  c5 fc 11 82 00 50 1e 00  vmovups   [rdx+0x1e5000],ymm0
000cd1  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000cd7  c5 fc 11 82 20 50 1e 00  vmovups   [rdx+0x1e5020],ymm0
000cdf  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000ce5  c5 fc 11 82 40 50 1e 00  vmovups   [rdx+0x1e5040],ymm0
000ced  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000cf3  c5 fc 11 82 00 e4 25 00  vmovups   [rdx+0x25e400],ymm0
000cfb  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000d01  c5 fc 11 82 20 e4 25 00  vmovups   [rdx+0x25e420],ymm0
000d09  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000d0f  c5 fc 11 82 40 e4 25 00  vmovups   [rdx+0x25e440],ymm0
000d17  62 b2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm18
000d1d  c5 fc 11 82 00 78 2d 00  vmovups   [rdx+0x2d7800],ymm0
000d25  62 b2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm19
000d2b  c5 fc 11 82 20 78 2d 00  vmovups   [rdx+0x2d7820],ymm0
000d33  62 b2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm20
000d39  c5 fc 11 82 40 78 2d 00  vmovups   [rdx+0x2d7840],ymm0
000d41  c5 f8 77                 vzeroupper
000d44  c3                       ret
000d45  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000d4b  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000d51  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000d57  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000d5d  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000d63  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000d69  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000d6f  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000d75  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
000d7b  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000d81  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000d87  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
000d8d  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
000d93  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
000d99  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
000d9f  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
000da5  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
000dab  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
000db1  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
000db7  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000dbd  62 a1 5c 40 57 e4        vxorps    zmm20,zmm20,zmm20
000dc3  62 a1 54 40 57 ed        vxorps    zmm21,zmm21,zmm21
000dc9  62 a1 4c 40 57 f6        vxorps    zmm22,zmm22,zmm22
000dcf  62 a1 44 40 57 ff        vxorps    zmm23,zmm23,zmm23
000dd5  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
000ddf  0f 18 4e 40              prefetcht0 [rsi+0x40]
000de3  0f 18 8e 40 80 00 00     prefetcht0 [rsi+0x8040]
000dea  0f 18 8e 40 00 01 00     prefetcht0 [rsi+0x10040]
000df1  62 61 ff 48 6f 06        vmovdqu16 zmm24,[rsi]
000df7  62 61 ff 48 6f 8e 00 80 00 00 vmovdqu16 zmm25,[rsi+0x8000]
000e01  62 61 ff 48 6f 96 00 00 01 00 vmovdqu16 zmm26,[rsi+0x10000]
000e0b  62 62 7d 48 58 1f        vpbroadcastd zmm27,[rdi]
000e11  62 92 26 40 52 c0        vdpbf16ps zmm0,zmm27,zmm24
000e17  62 92 26 40 52 c9        vdpbf16ps zmm1,zmm27,zmm25
000e1d  62 92 26 40 52 d2        vdpbf16ps zmm2,zmm27,zmm26
000e23  62 62 7d 48 58 9f 00 08 00 00 vpbroadcastd zmm27,[rdi+0x800]
000e2d  62 92 26 40 52 d8        vdpbf16ps zmm3,zmm27,zmm24
000e33  62 92 26 40 52 e1        vdpbf16ps zmm4,zmm27,zmm25
000e39  62 92 26 40 52 ea        vdpbf16ps zmm5,zmm27,zmm26
000e3f  62 62 7d 48 58 9f 00 10 00 00 vpbroadcastd zmm27,[rdi+0x1000]
000e49  62 92 26 40 52 f0        vdpbf16ps zmm6,zmm27,zmm24
000e4f  62 92 26 40 52 f9        vdpbf16ps zmm7,zmm27,zmm25
000e55  62 12 26 40 52 c2        vdpbf16ps zmm8,zmm27,zmm26
000e5b  62 62 7d 48 58 9f 00 18 00 00 vpbroadcastd zmm27,[rdi+0x1800]
000e65  62 12 26 40 52 c8        vdpbf16ps zmm9,zmm27,zmm24
000e6b  62 12 26 40 52 d1        vdpbf16ps zmm10,zmm27,zmm25
000e71  62 12 26 40 52 da        vdpbf16ps zmm11,zmm27,zmm26
000e77  62 62 7d 48 58 9f 00 20 00 00 vpbroadcastd zmm27,[rdi+0x2000]
000e81  62 12 26 40 52 e0        vdpbf16ps zmm12,zmm27,zmm24
000e87  62 12 26 40 52 e9        vdpbf16ps zmm13,zmm27,zmm25
000e8d  62 12 26 40 52 f2        vdpbf16ps zmm14,zmm27,zmm26
000e93  62 62 7d 48 58 9f 00 28 00 00 vpbroadcastd zmm27,[rdi+0x2800]
000e9d  62 12 26 40 52 f8        vdpbf16ps zmm15,zmm27,zmm24
000ea3  62 82 26 40 52 c1        vdpbf16ps zmm16,zmm27,zmm25
000ea9  62 82 26 40 52 ca        vdpbf16ps zmm17,zmm27,zmm26
000eaf  62 62 7d 48 58 9f 00 30 00 00 vpbroadcastd zmm27,[rdi+0x3000]
000eb9  62 82 26 40 52 d0        vdpbf16ps zmm18,zmm27,zmm24
000ebf  62 82 26 40 52 d9        vdpbf16ps zmm19,zmm27,zmm25
000ec5  62 82 26 40 52 e2        vdpbf16ps zmm20,zmm27,zmm26
000ecb  62 62 7d 48 58 9f 00 38 00 00 vpbroadcastd zmm27,[rdi+0x3800]
000ed5  62 82 26 40 52 e8        vdpbf16ps zmm21,zmm27,zmm24
000edb  62 82 26 40 52 f1        vdpbf16ps zmm22,zmm27,zmm25
000ee1  62 82 26 40 52 fa        vdpbf16ps zmm23,zmm27,zmm26
000ee7  48 83 c7 04              add       rdi,4
000eeb  48 83 c6 40              add       rsi,0x40
000eef  48 ff c9                 dec       rcx
000ef2  0f 85 e7 fe ff ff        jne       near 0x0000000000000ddf
000ef8  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
000efe  c5 fc 11 02              vmovups   [rdx],ymm0
000f02  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
000f08  c5 fc 11 42 20           vmovups   [rdx+0x20],ymm0
000f0d  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
000f13  c5 fc 11 42 40           vmovups   [rdx+0x40],ymm0
000f18  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
000f1e  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
000f26  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
000f2c  c5 fc 11 82 20 94 07 00  vmovups   [rdx+0x79420],ymm0
000f34  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
000f3a  c5 fc 11 82 40 94 07 00  vmovups   [rdx+0x79440],ymm0
000f42  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
000f48  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
000f50  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
000f56  c5 fc 11 82 20 28 0f 00  vmovups   [rdx+0xf2820],ymm0
000f5e  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000f64  c5 fc 11 82 40 28 0f 00  vmovups   [rdx+0xf2840],ymm0
000f6c  62 d2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm9
000f72  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
000f7a  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
000f80  c5 fc 11 82 20 bc 16 00  vmovups   [rdx+0x16bc20],ymm0
000f88  62 d2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm11
000f8e  c5 fc 11 82 40 bc 16 00  vmovups   [rdx+0x16bc40],ymm0
000f96  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
000f9c  c5 fc 11 82 00 50 1e 00  vmovups   [rdx+0x1e5000],ymm0
000fa4  62 d2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm13
000faa  c5 fc 11 82 20 50 1e 00  vmovups   [rdx+0x1e5020],ymm0
000fb2  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
000fb8  c5 fc 11 82 40 50 1e 00  vmovups   [rdx+0x1e5040],ymm0
000fc0  62 d2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm15
000fc6  c5 fc 11 82 00 e4 25 00  vmovups   [rdx+0x25e400],ymm0
000fce  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
000fd4  c5 fc 11 82 20 e4 25 00  vmovups   [rdx+0x25e420],ymm0
000fdc  62 b2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm17
000fe2  c5 fc 11 82 40 e4 25 00  vmovups   [rdx+0x25e440],ymm0
000fea  62 b2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm18
000ff0  c5 fc 11 82 00 78 2d 00  vmovups   [rdx+0x2d7800],ymm0
000ff8  62 b2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm19
000ffe  c5 fc 11 82 20 78 2d 00  vmovups   [rdx+0x2d7820],ymm0
001006  62 b2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm20
00100c  c5 fc 11 82 40 78 2d 00  vmovups   [rdx+0x2d7840],ymm0
001014  62 b2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm21
00101a  c5 fc 11 82 00 0c 35 00  vmovups   [rdx+0x350c00],ymm0
001022  62 b2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm22
001028  c5 fc 11 82 20 0c 35 00  vmovups   [rdx+0x350c20],ymm0
001030  62 b2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm23
001036  c5 fc 11 82 40 0c 35 00  vmovups   [rdx+0x350c40],ymm0
00103e  c5 f8 77                 vzeroupper
001041  c3                       ret
001042  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001048  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
001052  0f 18 4e 40              prefetcht0 [rsi+0x40]
001056  62 f1 ff 48 6f 0e        vmovdqu16 zmm1,[rsi]
00105c  62 f2 7d 48 58 17        vpbroadcastd zmm2,[rdi]
001062  62 f2 6e 48 52 c1        vdpbf16ps zmm0,zmm2,zmm1
001068  48 83 c7 04              add       rdi,4
00106c  48 83 c6 40              add       rsi,0x40
001070  48 ff c9                 dec       rcx
001073  75 dd                    jne       short 0x0000000000001052
001075  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
00107b  c5 fc 11 02              vmovups   [rdx],ymm0
00107f  c5 f8 77                 vzeroupper
001082  c3                       ret
001083  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001089  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00108f  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
001099  0f 18 4e 40              prefetcht0 [rsi+0x40]
00109d  62 f1 ff 48 6f 16        vmovdqu16 zmm2,[rsi]
0010a3  62 f2 7d 48 58 1f        vpbroadcastd zmm3,[rdi]
0010a9  62 f2 66 48 52 c2        vdpbf16ps zmm0,zmm3,zmm2
0010af  62 f2 7d 48 58 9f 00 08 00 00 vpbroadcastd zmm3,[rdi+0x800]
0010b9  62 f2 66 48 52 ca        vdpbf16ps zmm1,zmm3,zmm2
0010bf  48 83 c7 04              add       rdi,4
0010c3  48 83 c6 40              add       rsi,0x40
0010c7  48 ff c9                 dec       rcx
0010ca  75 cd                    jne       short 0x0000000000001099
0010cc  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0010d2  c5 fc 11 02              vmovups   [rdx],ymm0
0010d6  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0010dc  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0010e4  c5 f8 77                 vzeroupper
0010e7  c3                       ret
0010e8  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0010ee  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0010f4  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0010fa  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
001104  0f 18 4e 40              prefetcht0 [rsi+0x40]
001108  62 f1 ff 48 6f 1e        vmovdqu16 zmm3,[rsi]
00110e  62 f2 7d 48 58 27        vpbroadcastd zmm4,[rdi]
001114  62 f2 5e 48 52 c3        vdpbf16ps zmm0,zmm4,zmm3
00111a  62 f2 7d 48 58 a7 00 08 00 00 vpbroadcastd zmm4,[rdi+0x800]
001124  62 f2 5e 48 52 cb        vdpbf16ps zmm1,zmm4,zmm3
00112a  62 f2 7d 48 58 a7 00 10 00 00 vpbroadcastd zmm4,[rdi+0x1000]
001134  62 f2 5e 48 52 d3        vdpbf16ps zmm2,zmm4,zmm3
00113a  48 83 c7 04              add       rdi,4
00113e  48 83 c6 40              add       rsi,0x40
001142  48 ff c9                 dec       rcx
001145  75 bd                    jne       short 0x0000000000001104
001147  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
00114d  c5 fc 11 02              vmovups   [rdx],ymm0
001151  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
001157  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
00115f  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
001165  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
00116d  c5 f8 77                 vzeroupper
001170  c3                       ret
001171  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001177  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00117d  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001183  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001189  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
001193  0f 18 4e 40              prefetcht0 [rsi+0x40]
001197  62 f1 ff 48 6f 26        vmovdqu16 zmm4,[rsi]
00119d  62 f2 7d 48 58 2f        vpbroadcastd zmm5,[rdi]
0011a3  62 f2 56 48 52 c4        vdpbf16ps zmm0,zmm5,zmm4
0011a9  62 f2 7d 48 58 af 00 08 00 00 vpbroadcastd zmm5,[rdi+0x800]
0011b3  62 f2 56 48 52 cc        vdpbf16ps zmm1,zmm5,zmm4
0011b9  62 f2 7d 48 58 af 00 10 00 00 vpbroadcastd zmm5,[rdi+0x1000]
0011c3  62 f2 56 48 52 d4        vdpbf16ps zmm2,zmm5,zmm4
0011c9  62 f2 7d 48 58 af 00 18 00 00 vpbroadcastd zmm5,[rdi+0x1800]
0011d3  62 f2 56 48 52 dc        vdpbf16ps zmm3,zmm5,zmm4
0011d9  48 83 c7 04              add       rdi,4
0011dd  48 83 c6 40              add       rsi,0x40
0011e1  48 ff c9                 dec       rcx
0011e4  75 ad                    jne       short 0x0000000000001193
0011e6  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0011ec  c5 fc 11 02              vmovups   [rdx],ymm0
0011f0  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0011f6  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0011fe  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
001204  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
00120c  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
001212  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
00121a  c5 f8 77                 vzeroupper
00121d  c3                       ret
00121e  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001224  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00122a  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001230  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001236  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00123c  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
001246  0f 18 4e 40              prefetcht0 [rsi+0x40]
00124a  62 f1 ff 48 6f 2e        vmovdqu16 zmm5,[rsi]
001250  62 f2 7d 48 58 37        vpbroadcastd zmm6,[rdi]
001256  62 f2 4e 48 52 c5        vdpbf16ps zmm0,zmm6,zmm5
00125c  62 f2 7d 48 58 b7 00 08 00 00 vpbroadcastd zmm6,[rdi+0x800]
001266  62 f2 4e 48 52 cd        vdpbf16ps zmm1,zmm6,zmm5
00126c  62 f2 7d 48 58 b7 00 10 00 00 vpbroadcastd zmm6,[rdi+0x1000]
001276  62 f2 4e 48 52 d5        vdpbf16ps zmm2,zmm6,zmm5
00127c  62 f2 7d 48 58 b7 00 18 00 00 vpbroadcastd zmm6,[rdi+0x1800]
001286  62 f2 4e 48 52 dd        vdpbf16ps zmm3,zmm6,zmm5
00128c  62 f2 7d 48 58 b7 00 20 00 00 vpbroadcastd zmm6,[rdi+0x2000]
001296  62 f2 4e 48 52 e5        vdpbf16ps zmm4,zmm6,zmm5
00129c  48 83 c7 04              add       rdi,4
0012a0  48 83 c6 40              add       rsi,0x40
0012a4  48 ff c9                 dec       rcx
0012a7  75 9d                    jne       short 0x0000000000001246
0012a9  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0012af  c5 fc 11 02              vmovups   [rdx],ymm0
0012b3  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0012b9  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0012c1  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0012c7  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
0012cf  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0012d5  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
0012dd  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0012e3  c5 fc 11 82 00 50 1e 00  vmovups   [rdx+0x1e5000],ymm0
0012eb  c5 f8 77                 vzeroupper
0012ee  c3                       ret
0012ef  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0012f5  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0012fb  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001301  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001307  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00130d  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001313  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00131d  0f 18 4e 40              prefetcht0 [rsi+0x40]
001321  62 f1 ff 48 6f 36        vmovdqu16 zmm6,[rsi]
001327  62 f2 7d 48 58 3f        vpbroadcastd zmm7,[rdi]
00132d  62 f2 46 48 52 c6        vdpbf16ps zmm0,zmm7,zmm6
001333  62 f2 7d 48 58 bf 00 08 00 00 vpbroadcastd zmm7,[rdi+0x800]
00133d  62 f2 46 48 52 ce        vdpbf16ps zmm1,zmm7,zmm6
001343  62 f2 7d 48 58 bf 00 10 00 00 vpbroadcastd zmm7,[rdi+0x1000]
00134d  62 f2 46 48 52 d6        vdpbf16ps zmm2,zmm7,zmm6
001353  62 f2 7d 48 58 bf 00 18 00 00 vpbroadcastd zmm7,[rdi+0x1800]
00135d  62 f2 46 48 52 de        vdpbf16ps zmm3,zmm7,zmm6
001363  62 f2 7d 48 58 bf 00 20 00 00 vpbroadcastd zmm7,[rdi+0x2000]
00136d  62 f2 46 48 52 e6        vdpbf16ps zmm4,zmm7,zmm6
001373  62 f2 7d 48 58 bf 00 28 00 00 vpbroadcastd zmm7,[rdi+0x2800]
00137d  62 f2 46 48 52 ee        vdpbf16ps zmm5,zmm7,zmm6
001383  48 83 c7 04              add       rdi,4
001387  48 83 c6 40              add       rsi,0x40
00138b  48 ff c9                 dec       rcx
00138e  75 8d                    jne       short 0x000000000000131d
001390  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
001396  c5 fc 11 02              vmovups   [rdx],ymm0
00139a  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0013a0  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0013a8  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0013ae  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
0013b6  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0013bc  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
0013c4  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0013ca  c5 fc 11 82 00 50 1e 00  vmovups   [rdx+0x1e5000],ymm0
0013d2  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0013d8  c5 fc 11 82 00 e4 25 00  vmovups   [rdx+0x25e400],ymm0
0013e0  c5 f8 77                 vzeroupper
0013e3  c3                       ret
0013e4  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0013ea  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0013f0  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0013f6  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0013fc  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001402  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001408  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00140e  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
001418  0f 18 4e 40              prefetcht0 [rsi+0x40]
00141c  62 f1 ff 48 6f 3e        vmovdqu16 zmm7,[rsi]
001422  62 72 7d 48 58 07        vpbroadcastd zmm8,[rdi]
001428  62 f2 3e 48 52 c7        vdpbf16ps zmm0,zmm8,zmm7
00142e  62 72 7d 48 58 87 00 08 00 00 vpbroadcastd zmm8,[rdi+0x800]
001438  62 f2 3e 48 52 cf        vdpbf16ps zmm1,zmm8,zmm7
00143e  62 72 7d 48 58 87 00 10 00 00 vpbroadcastd zmm8,[rdi+0x1000]
001448  62 f2 3e 48 52 d7        vdpbf16ps zmm2,zmm8,zmm7
00144e  62 72 7d 48 58 87 00 18 00 00 vpbroadcastd zmm8,[rdi+0x1800]
001458  62 f2 3e 48 52 df        vdpbf16ps zmm3,zmm8,zmm7
00145e  62 72 7d 48 58 87 00 20 00 00 vpbroadcastd zmm8,[rdi+0x2000]
001468  62 f2 3e 48 52 e7        vdpbf16ps zmm4,zmm8,zmm7
00146e  62 72 7d 48 58 87 00 28 00 00 vpbroadcastd zmm8,[rdi+0x2800]
001478  62 f2 3e 48 52 ef        vdpbf16ps zmm5,zmm8,zmm7
00147e  62 72 7d 48 58 87 00 30 00 00 vpbroadcastd zmm8,[rdi+0x3000]
001488  62 f2 3e 48 52 f7        vdpbf16ps zmm6,zmm8,zmm7
00148e  48 83 c7 04              add       rdi,4
001492  48 83 c6 40              add       rsi,0x40
001496  48 ff c9                 dec       rcx
001499  0f 85 79 ff ff ff        jne       near 0x0000000000001418
00149f  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0014a5  c5 fc 11 02              vmovups   [rdx],ymm0
0014a9  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0014af  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0014b7  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0014bd  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
0014c5  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0014cb  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
0014d3  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0014d9  c5 fc 11 82 00 50 1e 00  vmovups   [rdx+0x1e5000],ymm0
0014e1  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
0014e7  c5 fc 11 82 00 e4 25 00  vmovups   [rdx+0x25e400],ymm0
0014ef  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0014f5  c5 fc 11 82 00 78 2d 00  vmovups   [rdx+0x2d7800],ymm0
0014fd  c5 f8 77                 vzeroupper
001500  c3                       ret
001501  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001507  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
00150d  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001513  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001519  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00151f  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001525  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00152b  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001531  48 b9 00 02 00 00 00 00 00 00 mov       rcx,0x200
00153b  0f 18 4e 40              prefetcht0 [rsi+0x40]
00153f  62 71 ff 48 6f 06        vmovdqu16 zmm8,[rsi]
001545  62 72 7d 48 58 0f        vpbroadcastd zmm9,[rdi]
00154b  62 d2 36 48 52 c0        vdpbf16ps zmm0,zmm9,zmm8
001551  62 72 7d 48 58 8f 00 08 00 00 vpbroadcastd zmm9,[rdi+0x800]
00155b  62 d2 36 48 52 c8        vdpbf16ps zmm1,zmm9,zmm8
001561  62 72 7d 48 58 8f 00 10 00 00 vpbroadcastd zmm9,[rdi+0x1000]
00156b  62 d2 36 48 52 d0        vdpbf16ps zmm2,zmm9,zmm8
001571  62 72 7d 48 58 8f 00 18 00 00 vpbroadcastd zmm9,[rdi+0x1800]
00157b  62 d2 36 48 52 d8        vdpbf16ps zmm3,zmm9,zmm8
001581  62 72 7d 48 58 8f 00 20 00 00 vpbroadcastd zmm9,[rdi+0x2000]
00158b  62 d2 36 48 52 e0        vdpbf16ps zmm4,zmm9,zmm8
001591  62 72 7d 48 58 8f 00 28 00 00 vpbroadcastd zmm9,[rdi+0x2800]
00159b  62 d2 36 48 52 e8        vdpbf16ps zmm5,zmm9,zmm8
0015a1  62 72 7d 48 58 8f 00 30 00 00 vpbroadcastd zmm9,[rdi+0x3000]
0015ab  62 d2 36 48 52 f0        vdpbf16ps zmm6,zmm9,zmm8
0015b1  62 72 7d 48 58 8f 00 38 00 00 vpbroadcastd zmm9,[rdi+0x3800]
0015bb  62 d2 36 48 52 f8        vdpbf16ps zmm7,zmm9,zmm8
0015c1  48 83 c7 04              add       rdi,4
0015c5  48 83 c6 40              add       rsi,0x40
0015c9  48 ff c9                 dec       rcx
0015cc  0f 85 69 ff ff ff        jne       near 0x000000000000153b
0015d2  62 f2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm0
0015d8  c5 fc 11 02              vmovups   [rdx],ymm0
0015dc  62 f2 7e 48 72 c1        vcvtneps2bf16 ymm0,zmm1
0015e2  c5 fc 11 82 00 94 07 00  vmovups   [rdx+0x79400],ymm0
0015ea  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
0015f0  c5 fc 11 82 00 28 0f 00  vmovups   [rdx+0xf2800],ymm0
0015f8  62 f2 7e 48 72 c3        vcvtneps2bf16 ymm0,zmm3
0015fe  c5 fc 11 82 00 bc 16 00  vmovups   [rdx+0x16bc00],ymm0
001606  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00160c  c5 fc 11 82 00 50 1e 00  vmovups   [rdx+0x1e5000],ymm0
001614  62 f2 7e 48 72 c5        vcvtneps2bf16 ymm0,zmm5
00161a  c5 fc 11 82 00 e4 25 00  vmovups   [rdx+0x25e400],ymm0
001622  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
001628  c5 fc 11 82 00 78 2d 00  vmovups   [rdx+0x2d7800],ymm0
001630  62 f2 7e 48 72 c7        vcvtneps2bf16 ymm0,zmm7
001636  c5 fc 11 82 00 0c 35 00  vmovups   [rdx+0x350c00],ymm0
00163e  c5 f8 77                 vzeroupper
001641  c3                       ret
