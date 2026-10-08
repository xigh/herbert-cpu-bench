; node 67: attention (layer 3), kernel 64 at image offset 0xe7178, 15247 bytes, 8 tasks, up to 12 participants

000000  53                       push      rbx
000001  55                       push      rbp
000002  41 54                    push      r12
000004  41 55                    push      r13
000006  41 56                    push      r14
000008  41 57                    push      r15
00000a  48 83 ec 08              sub       rsp,8
00000e  48 89 fb                 mov       rbx,rdi
000011  48 89 d5                 mov       rbp,rdx
000014  48 8b 43 20              mov       rax,[rbx+0x20]
000018  4c 8b 00                 mov       r8,[rax]
00001b  4d 85 c0                 test      r8,r8
00001e  0f 84 42 01 00 00        je        near 0x0000000000000166
000024  4c 89 c0                 mov       rax,r8
000027  31 d2                    xor       edx,edx
000029  49 bb 08 00 00 00 00 00 00 00 mov       r11,8
000033  49 f7 f3                 div       r11
000036  48 85 d2                 test      rdx,rdx
000039  0f 95 c2                 setne     dl
00003c  0f b6 d2                 movzx     edx,dl
00003f  48 01 d0                 add       rax,rdx
000042  48 89 c1                 mov       rcx,rax
000045  48 89 f0                 mov       rax,rsi
000048  31 d2                    xor       edx,edx
00004a  48 f7 f1                 div       rcx
00004d  49 89 c4                 mov       r12,rax
000050  49 83 fc 08              cmp       r12,8
000054  0f 83 0c 01 00 00        jae       near 0x0000000000000166
00005a  4c 6b ea 08              imul      r13,rdx,8
00005e  4d 8d 75 08              lea       r14,[r13+8]
000062  4d 39 c6                 cmp       r14,r8
000065  4d 0f 47 f0              cmova     r14,r8
000069  4c 89 e0                 mov       rax,r12
00006c  31 d2                    xor       edx,edx
00006e  49 ba 04 00 00 00 00 00 00 00 mov       r10,4
000078  49 f7 f2                 div       r10
00007b  49 89 c7                 mov       r15,rax
00007e  4c 89 f0                 mov       rax,r14
000081  4c 29 e8                 sub       rax,r13
000084  48 3d 08 00 00 00        cmp       rax,8
00008a  75 68                    jne       short 0x00000000000000f4
00008c  4c 8b 53 30              mov       r10,[rbx+0x30]
000090  4d 0f af d7              imul      r10,r15
000094  49 d1 e2                 shl       r10,1
000097  48 8b 43 28              mov       rax,[rbx+0x28]
00009b  4c 8b 08                 mov       r9,[rax]
00009e  4d 01 e9                 add       r9,r13
0000a1  48 8b 73 08              mov       rsi,[rbx+8]
0000a5  4c 01 d6                 add       rsi,r10
0000a8  48 8b 53 10              mov       rdx,[rbx+0x10]
0000ac  4c 01 d2                 add       rdx,r10
0000af  48 89 e9                 mov       rcx,rbp
0000b2  48 8b 3b                 mov       rdi,[rbx]
0000b5  4d 69 d5 00 10 00 00     imul      r10,r13,0x1000
0000bc  4d 69 dc 00 01 00 00     imul      r11,r12,0x100
0000c3  4d 01 da                 add       r10,r11
0000c6  4a 8d 3c 57              lea       rdi,[rdi+r10*2]
0000ca  4c 8b 43 18              mov       r8,[rbx+0x18]
0000ce  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
0000d5  4d 69 dc 00 01 00 00     imul      r11,r12,0x100
0000dc  4d 01 da                 add       r10,r11
0000df  4f 8d 04 50              lea       r8,[r8+r10*2]
0000e3  66 0f 6e 43 38           movd      xmm0,[rbx+0x38]
0000e8  66 0f 6e 4b 3c           movd      xmm1,[rbx+0x3c]
0000ed  e8 1f 09 00 00           call      0x0000000000000a11
0000f2  eb 72                    jmp       short 0x0000000000000166
0000f4  90                       nop
0000f5  48 8b 43 28              mov       rax,[rbx+0x28]
0000f9  4c 8b 08                 mov       r9,[rax]
0000fc  4d 01 e9                 add       r9,r13
0000ff  49 ff c1                 inc       r9
000102  4c 8b 53 30              mov       r10,[rbx+0x30]
000106  4d 0f af d7              imul      r10,r15
00010a  49 d1 e2                 shl       r10,1
00010d  48 8b 73 08              mov       rsi,[rbx+8]
000111  4c 01 d6                 add       rsi,r10
000114  48 8b 53 10              mov       rdx,[rbx+0x10]
000118  4c 01 d2                 add       rdx,r10
00011b  48 89 e9                 mov       rcx,rbp
00011e  48 8b 3b                 mov       rdi,[rbx]
000121  4d 69 d5 00 10 00 00     imul      r10,r13,0x1000
000128  4d 69 dc 00 01 00 00     imul      r11,r12,0x100
00012f  4d 01 da                 add       r10,r11
000132  4a 8d 3c 57              lea       rdi,[rdi+r10*2]
000136  4c 8b 43 18              mov       r8,[rbx+0x18]
00013a  4d 69 d5 00 08 00 00     imul      r10,r13,0x800
000141  4d 69 dc 00 01 00 00     imul      r11,r12,0x100
000148  4d 01 da                 add       r10,r11
00014b  4f 8d 04 50              lea       r8,[r8+r10*2]
00014f  66 0f 6e 43 38           movd      xmm0,[rbx+0x38]
000154  66 0f 6e 4b 3c           movd      xmm1,[rbx+0x3c]
000159  e8 17 00 00 00           call      0x0000000000000175
00015e  49 ff c5                 inc       r13
000161  4d 39 f5                 cmp       r13,r14
000164  72 8f                    jb        short 0x00000000000000f5
000166  48 83 c4 08              add       rsp,8
00016a  41 5f                    pop       r15
00016c  41 5e                    pop       r14
00016e  41 5d                    pop       r13
000170  41 5c                    pop       r12
000172  5d                       pop       rbp
000173  5b                       pop       rbx
000174  c3                       ret
000175  55                       push      rbp
000176  48 89 e5                 mov       rbp,rsp
000179  48 83 e4 c0              and       rsp,0xffffffffffffffc0
00017d  48 81 ec c0 00 00 00     sub       rsp,0xc0
000184  4d 89 ca                 mov       r10,r9
000187  c5 fa 11 44 24 60        vmovss    [rsp+0x60],xmm0
00018d  c5 f8 28 c1              vmovaps   xmm0,xmm1
000191  48 89 54 24 48           mov       [rsp+0x48],rdx
000196  4c 89 44 24 50           mov       [rsp+0x50],r8
00019b  48 89 4c 24 58           mov       [rsp+0x58],rcx
0001a0  48 89 ca                 mov       rdx,rcx
0001a3  4c 89 d1                 mov       rcx,r10
0001a6  62 62 7d 48 18 74 24 18  vbroadcastss zmm30,[rsp+0x60]
0001ae  49 89 cb                 mov       r11,rcx
0001b1  49 c1 eb 03              shr       r11,3
0001b5  48 83 e1 07              and       rcx,7
0001b9  4d 85 db                 test      r11,r11
0001bc  0f 84 27 03 00 00        je        near 0x00000000000004e9
0001c2  62 71 ff 48 6f 0f        vmovdqu16 zmm9,[rdi]
0001c8  62 71 ff 48 6f 57 01     vmovdqu16 zmm10,[rdi+0x40]
0001cf  62 71 ff 48 6f 5f 02     vmovdqu16 zmm11,[rdi+0x80]
0001d6  62 71 ff 48 6f 67 03     vmovdqu16 zmm12,[rdi+0xc0]
0001dd  62 71 ff 48 6f 6f 04     vmovdqu16 zmm13,[rdi+0x100]
0001e4  62 71 ff 48 6f 77 05     vmovdqu16 zmm14,[rdi+0x140]
0001eb  62 71 ff 48 6f 7f 06     vmovdqu16 zmm15,[rdi+0x180]
0001f2  62 e1 ff 48 6f 47 07     vmovdqu16 zmm16,[rdi+0x1c0]
0001f9  b8 33 33 00 00           mov       eax,0x3333
0001fe  c5 f8 92 c8              kmovw     k1,eax
000202  0f 18 8e 00 40 00 00     prefetcht0 [rsi+0x4000]
000209  0f 18 8e 00 42 00 00     prefetcht0 [rsi+0x4200]
000210  0f 18 8e 00 44 00 00     prefetcht0 [rsi+0x4400]
000217  0f 18 8e 00 46 00 00     prefetcht0 [rsi+0x4600]
00021e  0f 18 8e 00 48 00 00     prefetcht0 [rsi+0x4800]
000225  0f 18 8e 00 4a 00 00     prefetcht0 [rsi+0x4a00]
00022c  0f 18 8e 00 4c 00 00     prefetcht0 [rsi+0x4c00]
000233  0f 18 8e 00 4e 00 00     prefetcht0 [rsi+0x4e00]
00023a  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000240  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000246  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00024c  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000252  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000258  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00025e  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000264  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00026a  62 f2 36 48 52 0e        vdpbf16ps zmm1,zmm9,[rsi]
000270  62 f2 2e 48 52 4e 01     vdpbf16ps zmm1,zmm10,[rsi+0x40]
000277  62 f2 26 48 52 4e 02     vdpbf16ps zmm1,zmm11,[rsi+0x80]
00027e  62 f2 1e 48 52 4e 03     vdpbf16ps zmm1,zmm12,[rsi+0xc0]
000285  62 f2 16 48 52 4e 04     vdpbf16ps zmm1,zmm13,[rsi+0x100]
00028c  62 f2 0e 48 52 4e 05     vdpbf16ps zmm1,zmm14,[rsi+0x140]
000293  62 f2 06 48 52 4e 06     vdpbf16ps zmm1,zmm15,[rsi+0x180]
00029a  62 f2 7e 40 52 4e 07     vdpbf16ps zmm1,zmm16,[rsi+0x1c0]
0002a1  62 f2 36 48 52 56 10     vdpbf16ps zmm2,zmm9,[rsi+0x400]
0002a8  62 f2 2e 48 52 56 11     vdpbf16ps zmm2,zmm10,[rsi+0x440]
0002af  62 f2 26 48 52 56 12     vdpbf16ps zmm2,zmm11,[rsi+0x480]
0002b6  62 f2 1e 48 52 56 13     vdpbf16ps zmm2,zmm12,[rsi+0x4c0]
0002bd  62 f2 16 48 52 56 14     vdpbf16ps zmm2,zmm13,[rsi+0x500]
0002c4  62 f2 0e 48 52 56 15     vdpbf16ps zmm2,zmm14,[rsi+0x540]
0002cb  62 f2 06 48 52 56 16     vdpbf16ps zmm2,zmm15,[rsi+0x580]
0002d2  62 f2 7e 40 52 56 17     vdpbf16ps zmm2,zmm16,[rsi+0x5c0]
0002d9  62 f2 36 48 52 5e 20     vdpbf16ps zmm3,zmm9,[rsi+0x800]
0002e0  62 f2 2e 48 52 5e 21     vdpbf16ps zmm3,zmm10,[rsi+0x840]
0002e7  62 f2 26 48 52 5e 22     vdpbf16ps zmm3,zmm11,[rsi+0x880]
0002ee  62 f2 1e 48 52 5e 23     vdpbf16ps zmm3,zmm12,[rsi+0x8c0]
0002f5  62 f2 16 48 52 5e 24     vdpbf16ps zmm3,zmm13,[rsi+0x900]
0002fc  62 f2 0e 48 52 5e 25     vdpbf16ps zmm3,zmm14,[rsi+0x940]
000303  62 f2 06 48 52 5e 26     vdpbf16ps zmm3,zmm15,[rsi+0x980]
00030a  62 f2 7e 40 52 5e 27     vdpbf16ps zmm3,zmm16,[rsi+0x9c0]
000311  62 f2 36 48 52 66 30     vdpbf16ps zmm4,zmm9,[rsi+0xc00]
000318  62 f2 2e 48 52 66 31     vdpbf16ps zmm4,zmm10,[rsi+0xc40]
00031f  62 f2 26 48 52 66 32     vdpbf16ps zmm4,zmm11,[rsi+0xc80]
000326  62 f2 1e 48 52 66 33     vdpbf16ps zmm4,zmm12,[rsi+0xcc0]
00032d  62 f2 16 48 52 66 34     vdpbf16ps zmm4,zmm13,[rsi+0xd00]
000334  62 f2 0e 48 52 66 35     vdpbf16ps zmm4,zmm14,[rsi+0xd40]
00033b  62 f2 06 48 52 66 36     vdpbf16ps zmm4,zmm15,[rsi+0xd80]
000342  62 f2 7e 40 52 66 37     vdpbf16ps zmm4,zmm16,[rsi+0xdc0]
000349  62 f2 36 48 52 6e 08     vdpbf16ps zmm5,zmm9,[rsi+0x200]
000350  62 f2 2e 48 52 6e 09     vdpbf16ps zmm5,zmm10,[rsi+0x240]
000357  62 f2 26 48 52 6e 0a     vdpbf16ps zmm5,zmm11,[rsi+0x280]
00035e  62 f2 1e 48 52 6e 0b     vdpbf16ps zmm5,zmm12,[rsi+0x2c0]
000365  62 f2 16 48 52 6e 0c     vdpbf16ps zmm5,zmm13,[rsi+0x300]
00036c  62 f2 0e 48 52 6e 0d     vdpbf16ps zmm5,zmm14,[rsi+0x340]
000373  62 f2 06 48 52 6e 0e     vdpbf16ps zmm5,zmm15,[rsi+0x380]
00037a  62 f2 7e 40 52 6e 0f     vdpbf16ps zmm5,zmm16,[rsi+0x3c0]
000381  62 f2 36 48 52 76 18     vdpbf16ps zmm6,zmm9,[rsi+0x600]
000388  62 f2 2e 48 52 76 19     vdpbf16ps zmm6,zmm10,[rsi+0x640]
00038f  62 f2 26 48 52 76 1a     vdpbf16ps zmm6,zmm11,[rsi+0x680]
000396  62 f2 1e 48 52 76 1b     vdpbf16ps zmm6,zmm12,[rsi+0x6c0]
00039d  62 f2 16 48 52 76 1c     vdpbf16ps zmm6,zmm13,[rsi+0x700]
0003a4  62 f2 0e 48 52 76 1d     vdpbf16ps zmm6,zmm14,[rsi+0x740]
0003ab  62 f2 06 48 52 76 1e     vdpbf16ps zmm6,zmm15,[rsi+0x780]
0003b2  62 f2 7e 40 52 76 1f     vdpbf16ps zmm6,zmm16,[rsi+0x7c0]
0003b9  62 f2 36 48 52 7e 28     vdpbf16ps zmm7,zmm9,[rsi+0xa00]
0003c0  62 f2 2e 48 52 7e 29     vdpbf16ps zmm7,zmm10,[rsi+0xa40]
0003c7  62 f2 26 48 52 7e 2a     vdpbf16ps zmm7,zmm11,[rsi+0xa80]
0003ce  62 f2 1e 48 52 7e 2b     vdpbf16ps zmm7,zmm12,[rsi+0xac0]
0003d5  62 f2 16 48 52 7e 2c     vdpbf16ps zmm7,zmm13,[rsi+0xb00]
0003dc  62 f2 0e 48 52 7e 2d     vdpbf16ps zmm7,zmm14,[rsi+0xb40]
0003e3  62 f2 06 48 52 7e 2e     vdpbf16ps zmm7,zmm15,[rsi+0xb80]
0003ea  62 f2 7e 40 52 7e 2f     vdpbf16ps zmm7,zmm16,[rsi+0xbc0]
0003f1  62 72 36 48 52 46 38     vdpbf16ps zmm8,zmm9,[rsi+0xe00]
0003f8  62 72 2e 48 52 46 39     vdpbf16ps zmm8,zmm10,[rsi+0xe40]
0003ff  62 72 26 48 52 46 3a     vdpbf16ps zmm8,zmm11,[rsi+0xe80]
000406  62 72 1e 48 52 46 3b     vdpbf16ps zmm8,zmm12,[rsi+0xec0]
00040d  62 72 16 48 52 46 3c     vdpbf16ps zmm8,zmm13,[rsi+0xf00]
000414  62 72 0e 48 52 46 3d     vdpbf16ps zmm8,zmm14,[rsi+0xf40]
00041b  62 72 06 48 52 46 3e     vdpbf16ps zmm8,zmm15,[rsi+0xf80]
000422  62 72 7e 40 52 46 3f     vdpbf16ps zmm8,zmm16,[rsi+0xfc0]
000429  62 63 f5 48 23 fa ee     vshuff64x2 zmm31,zmm1,zmm2,0xee
000430  62 f3 f5 48 23 ca 44     vshuff64x2 zmm1,zmm1,zmm2,0x44
000437  62 91 74 48 58 cf        vaddps    zmm1,zmm1,zmm31
00043d  62 63 e5 48 23 fc ee     vshuff64x2 zmm31,zmm3,zmm4,0xee
000444  62 f3 e5 48 23 dc 44     vshuff64x2 zmm3,zmm3,zmm4,0x44
00044b  62 91 64 48 58 df        vaddps    zmm3,zmm3,zmm31
000451  62 63 d5 48 23 fe ee     vshuff64x2 zmm31,zmm5,zmm6,0xee
000458  62 f3 d5 48 23 ee 44     vshuff64x2 zmm5,zmm5,zmm6,0x44
00045f  62 91 54 48 58 ef        vaddps    zmm5,zmm5,zmm31
000465  62 43 c5 48 23 f8 ee     vshuff64x2 zmm31,zmm7,zmm8,0xee
00046c  62 d3 c5 48 23 f8 44     vshuff64x2 zmm7,zmm7,zmm8,0x44
000473  62 91 44 48 58 ff        vaddps    zmm7,zmm7,zmm31
000479  62 63 f5 48 23 fb dd     vshuff64x2 zmm31,zmm1,zmm3,0xdd
000480  62 f3 f5 48 23 cb 88     vshuff64x2 zmm1,zmm1,zmm3,0x88
000487  62 91 74 48 58 cf        vaddps    zmm1,zmm1,zmm31
00048d  62 63 d5 48 23 ff dd     vshuff64x2 zmm31,zmm5,zmm7,0xdd
000494  62 f3 d5 48 23 ef 88     vshuff64x2 zmm5,zmm5,zmm7,0x88
00049b  62 91 54 48 58 ef        vaddps    zmm5,zmm5,zmm31
0004a1  62 61 74 48 c6 fd dd     vshufps   zmm31,zmm1,zmm5,0xdd
0004a8  62 f1 74 48 c6 cd 88     vshufps   zmm1,zmm1,zmm5,0x88
0004af  62 91 74 48 58 cf        vaddps    zmm1,zmm1,zmm31
0004b5  62 61 74 48 c6 f9 dd     vshufps   zmm31,zmm1,zmm1,0xdd
0004bc  62 f1 74 48 c6 c9 88     vshufps   zmm1,zmm1,zmm1,0x88
0004c3  62 91 74 48 58 cf        vaddps    zmm1,zmm1,zmm31
0004c9  62 91 74 48 59 ce        vmulps    zmm1,zmm1,zmm30
0004cf  62 f2 7d 49 8a 0a        vcompressps [rdx]{k1},zmm1
0004d5  48 81 c6 00 10 00 00     add       rsi,0x1000
0004dc  48 83 c2 20              add       rdx,0x20
0004e0  49 ff cb                 dec       r11
0004e3  0f 85 19 fd ff ff        jne       near 0x0000000000000202
0004e9  c5 fa 10 74 24 60        vmovss    xmm6,[rsp+0x60]
0004ef  48 85 c9                 test      rcx,rcx
0004f2  0f 84 b4 00 00 00        je        near 0x00000000000005ac
0004f8  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0004fe  0f 18 8e 00 08 00 00     prefetcht0 [rsi+0x800]
000505  62 f1 ff 48 6f 16        vmovdqu16 zmm2,[rsi]
00050b  62 f2 6e 48 52 0f        vdpbf16ps zmm1,zmm2,[rdi]
000511  62 f1 ff 48 6f 5e 01     vmovdqu16 zmm3,[rsi+0x40]
000518  62 f2 66 48 52 4f 01     vdpbf16ps zmm1,zmm3,[rdi+0x40]
00051f  62 f1 ff 48 6f 66 02     vmovdqu16 zmm4,[rsi+0x80]
000526  62 f2 5e 48 52 4f 02     vdpbf16ps zmm1,zmm4,[rdi+0x80]
00052d  62 f1 ff 48 6f 6e 03     vmovdqu16 zmm5,[rsi+0xc0]
000534  62 f2 56 48 52 4f 03     vdpbf16ps zmm1,zmm5,[rdi+0xc0]
00053b  62 f1 ff 48 6f 56 04     vmovdqu16 zmm2,[rsi+0x100]
000542  62 f2 6e 48 52 4f 04     vdpbf16ps zmm1,zmm2,[rdi+0x100]
000549  62 f1 ff 48 6f 5e 05     vmovdqu16 zmm3,[rsi+0x140]
000550  62 f2 66 48 52 4f 05     vdpbf16ps zmm1,zmm3,[rdi+0x140]
000557  62 f1 ff 48 6f 66 06     vmovdqu16 zmm4,[rsi+0x180]
00055e  62 f2 5e 48 52 4f 06     vdpbf16ps zmm1,zmm4,[rdi+0x180]
000565  62 f1 ff 48 6f 6e 07     vmovdqu16 zmm5,[rsi+0x1c0]
00056c  62 f2 56 48 52 4f 07     vdpbf16ps zmm1,zmm5,[rdi+0x1c0]
000573  62 f3 fd 48 1b ca 01     vextractf64x4 ymm2,zmm1,1
00057a  c5 f4 58 ca              vaddps    ymm1,ymm1,ymm2
00057e  c4 e3 7d 19 ca 01        vextractf128 xmm2,ymm1,1
000584  c5 f0 58 ca              vaddps    xmm1,xmm1,xmm2
000588  c5 f3 7c c9              vhaddps   xmm1,xmm1,xmm1
00058c  c5 f3 7c c9              vhaddps   xmm1,xmm1,xmm1
000590  c5 f2 59 ce              vmulss    xmm1,xmm1,xmm6
000594  c5 fa 11 0a              vmovss    [rdx],xmm1
000598  48 81 c6 00 02 00 00     add       rsi,0x200
00059f  48 83 c2 04              add       rdx,4
0005a3  48 ff c9                 dec       rcx
0005a6  0f 85 4c ff ff ff        jne       near 0x00000000000004f8
0005ac  4c 89 d0                 mov       rax,r10
0005af  48 25 0f 00 00 00        and       rax,0xf
0005b5  74 1c                    je        short 0x00000000000005d3
0005b7  49 bb 10 00 00 00 00 00 00 00 mov       r11,0x10
0005c1  49 29 c3                 sub       r11,rax
0005c4  c7 02 00 00 80 ff        mov       dword [rdx],0xff800000
0005ca  48 83 c2 04              add       rdx,4
0005ce  49 ff cb                 dec       r11
0005d1  75 f1                    jne       short 0x00000000000005c4
0005d3  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
0005d8  4d 89 d3                 mov       r11,r10
0005db  49 83 c3 0f              add       r11,0xf
0005df  49 c1 eb 04              shr       r11,4
0005e3  b8 4f ac ae c2           mov       eax,0xc2aeac4f
0005e8  62 62 7d 48 7c f8        vpbroadcastd zmm31,eax
0005ee  b8 3b aa b8 3f           mov       eax,0x3fb8aa3b
0005f3  62 62 7d 48 7c f0        vpbroadcastd zmm30,eax
0005f9  b8 52 79 1e 3c           mov       eax,0x3c1e7952
0005fe  62 62 7d 48 7c e8        vpbroadcastd zmm29,eax
000604  b8 47 58 63 3d           mov       eax,0x3d635847
000609  62 62 7d 48 7c e0        vpbroadcastd zmm28,eax
00060f  b8 f0 fd 75 3e           mov       eax,0x3e75fdf0
000614  62 62 7d 48 7c d8        vpbroadcastd zmm27,eax
00061a  b8 18 72 31 3f           mov       eax,0x3f317218
00061f  62 62 7d 48 7c d0        vpbroadcastd zmm26,eax
000625  b8 00 00 80 3f           mov       eax,0x3f800000
00062a  62 62 7d 48 7c c8        vpbroadcastd zmm25,eax
000630  b8 00 00 80 3f           mov       eax,0x3f800000
000635  62 62 7d 48 7c c0        vpbroadcastd zmm24,eax
00063b  b8 00 00 80 ff           mov       eax,0xff800000
000640  62 e2 7d 48 7c f8        vpbroadcastd zmm23,eax
000646  48 89 fe                 mov       rsi,rdi
000649  4c 89 d9                 mov       rcx,r11
00064c  62 f1 7c 48 10 0e        vmovups   zmm1,[rsi]
000652  62 e1 44 40 5f f9        vmaxps    zmm23,zmm23,zmm1
000658  48 83 c6 40              add       rsi,0x40
00065c  48 ff c9                 dec       rcx
00065f  75 eb                    jne       short 0x000000000000064c
000661  62 b1 7c 48 28 d7        vmovaps   zmm2,zmm23
000667  62 f3 fd 48 1b d3 01     vextractf64x4 ymm3,zmm2,1
00066e  c5 ec 5f d3              vmaxps    ymm2,ymm2,ymm3
000672  c4 e3 7d 19 d3 01        vextractf128 xmm3,ymm2,1
000678  c5 e8 5f d3              vmaxps    xmm2,xmm2,xmm3
00067c  c5 e8 c6 da 4e           vshufps   xmm3,xmm2,xmm2,0x4e
000681  c5 e8 5f d3              vmaxps    xmm2,xmm2,xmm3
000685  c5 e8 c6 da b1           vshufps   xmm3,xmm2,xmm2,0xb1
00068a  c5 e8 5f d3              vmaxps    xmm2,xmm2,xmm3
00068e  62 e2 7d 48 18 fa        vbroadcastss zmm23,xmm2
000694  62 a1 4c 40 57 f6        vxorps    zmm22,zmm22,zmm22
00069a  48 89 fe                 mov       rsi,rdi
00069d  4c 89 d9                 mov       rcx,r11
0006a0  62 f1 7c 48 10 0e        vmovups   zmm1,[rsi]
0006a6  62 b1 74 48 5c cf        vsubps    zmm1,zmm1,zmm23
0006ac  62 91 74 48 5f cf        vmaxps    zmm1,zmm1,zmm31
0006b2  62 81 74 48 59 ee        vmulps    zmm21,zmm1,zmm30
0006b8  62 a3 7d 48 08 e5 00     vrndscaleps zmm20,zmm21,0
0006bf  62 a1 54 40 5c ec        vsubps    zmm21,zmm21,zmm20
0006c5  62 81 7c 48 28 dd        vmovaps   zmm19,zmm29
0006cb  62 82 55 40 a8 dc        vfmadd213ps zmm19,zmm21,zmm28
0006d1  62 82 55 40 a8 db        vfmadd213ps zmm19,zmm21,zmm27
0006d7  62 82 55 40 a8 da        vfmadd213ps zmm19,zmm21,zmm26
0006dd  62 82 55 40 a8 d9        vfmadd213ps zmm19,zmm21,zmm25
0006e3  62 a1 7d 48 5b e4        vcvtps2dq zmm20,zmm20
0006e9  62 b1 5d 40 72 f4 17     vpslld    zmm20,zmm20,0x17
0006f0  62 81 5d 40 fe e0        vpaddd    zmm20,zmm20,zmm24
0006f6  62 b1 64 40 59 cc        vmulps    zmm1,zmm19,zmm20
0006fc  62 e1 4c 40 58 f1        vaddps    zmm22,zmm22,zmm1
000702  62 f1 7c 48 11 0e        vmovups   [rsi],zmm1
000708  48 83 c6 40              add       rsi,0x40
00070c  48 ff c9                 dec       rcx
00070f  75 8f                    jne       short 0x00000000000006a0
000711  62 b1 7c 48 28 e6        vmovaps   zmm4,zmm22
000717  62 f3 fd 48 1b e3 01     vextractf64x4 ymm3,zmm4,1
00071e  c5 dc 58 e3              vaddps    ymm4,ymm4,ymm3
000722  c4 e3 7d 19 e3 01        vextractf128 xmm3,ymm4,1
000728  c5 d8 58 e3              vaddps    xmm4,xmm4,xmm3
00072c  c5 db 7c e4              vhaddps   xmm4,xmm4,xmm4
000730  c5 db 7c e4              vhaddps   xmm4,xmm4,xmm4
000734  62 e2 7d 48 18 f4        vbroadcastss zmm22,xmm4
00073a  48 89 fe                 mov       rsi,rdi
00073d  4c 89 d9                 mov       rcx,r11
000740  62 f1 7c 48 10 0e        vmovups   zmm1,[rsi]
000746  62 b1 74 48 5e ce        vdivps    zmm1,zmm1,zmm22
00074c  62 f1 7c 48 11 0e        vmovups   [rsi],zmm1
000752  48 83 c6 40              add       rsi,0x40
000756  48 ff c9                 dec       rcx
000759  75 e5                    jne       short 0x0000000000000740
00075b  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
000760  48 8b 74 24 48           mov       rsi,[rsp+0x48]
000765  48 8b 54 24 50           mov       rdx,[rsp+0x50]
00076a  4c 89 d1                 mov       rcx,r10
00076d  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000773  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000779  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00077f  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000785  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00078b  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
000791  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
000797  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
00079d  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0007a3  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0007a9  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0007af  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
0007b5  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
0007bb  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0007c1  62 a1 6c 40 57 d2        vxorps    zmm18,zmm18,zmm18
0007c7  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
0007cd  48 85 c9                 test      rcx,rcx
0007d0  0f 84 60 01 00 00        je        near 0x0000000000000936
0007d6  62 62 7d 48 18 3f        vbroadcastss zmm31,[rdi]
0007dc  0f 18 8e 00 08 00 00     prefetcht0 [rsi+0x800]
0007e3  62 f2 7d 48 33 06        vpmovzxwd zmm0,[rsi]
0007e9  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
0007f0  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
0007f6  62 f2 7d 48 33 4e 01     vpmovzxwd zmm1,[rsi+0x20]
0007fd  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
000804  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
00080a  62 f2 7d 48 33 56 02     vpmovzxwd zmm2,[rsi+0x40]
000811  62 f1 6d 48 72 f2 10     vpslld    zmm2,zmm2,0x10
000818  62 92 6d 48 b8 f7        vfmadd231ps zmm6,zmm2,zmm31
00081e  62 f2 7d 48 33 5e 03     vpmovzxwd zmm3,[rsi+0x60]
000825  62 f1 65 48 72 f3 10     vpslld    zmm3,zmm3,0x10
00082c  62 92 65 48 b8 ff        vfmadd231ps zmm7,zmm3,zmm31
000832  62 f2 7d 48 33 46 04     vpmovzxwd zmm0,[rsi+0x80]
000839  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
000840  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
000846  62 f2 7d 48 33 4e 05     vpmovzxwd zmm1,[rsi+0xa0]
00084d  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
000854  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
00085a  62 f2 7d 48 33 56 06     vpmovzxwd zmm2,[rsi+0xc0]
000861  62 f1 6d 48 72 f2 10     vpslld    zmm2,zmm2,0x10
000868  62 12 6d 48 b8 d7        vfmadd231ps zmm10,zmm2,zmm31
00086e  62 f2 7d 48 33 5e 07     vpmovzxwd zmm3,[rsi+0xe0]
000875  62 f1 65 48 72 f3 10     vpslld    zmm3,zmm3,0x10
00087c  62 12 65 48 b8 df        vfmadd231ps zmm11,zmm3,zmm31
000882  62 f2 7d 48 33 46 08     vpmovzxwd zmm0,[rsi+0x100]
000889  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
000890  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
000896  62 f2 7d 48 33 4e 09     vpmovzxwd zmm1,[rsi+0x120]
00089d  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
0008a4  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
0008aa  62 f2 7d 48 33 56 0a     vpmovzxwd zmm2,[rsi+0x140]
0008b1  62 f1 6d 48 72 f2 10     vpslld    zmm2,zmm2,0x10
0008b8  62 12 6d 48 b8 f7        vfmadd231ps zmm14,zmm2,zmm31
0008be  62 f2 7d 48 33 5e 0b     vpmovzxwd zmm3,[rsi+0x160]
0008c5  62 f1 65 48 72 f3 10     vpslld    zmm3,zmm3,0x10
0008cc  62 12 65 48 b8 ff        vfmadd231ps zmm15,zmm3,zmm31
0008d2  62 f2 7d 48 33 46 0c     vpmovzxwd zmm0,[rsi+0x180]
0008d9  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
0008e0  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
0008e6  62 f2 7d 48 33 4e 0d     vpmovzxwd zmm1,[rsi+0x1a0]
0008ed  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
0008f4  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
0008fa  62 f2 7d 48 33 56 0e     vpmovzxwd zmm2,[rsi+0x1c0]
000901  62 f1 6d 48 72 f2 10     vpslld    zmm2,zmm2,0x10
000908  62 82 6d 48 b8 d7        vfmadd231ps zmm18,zmm2,zmm31
00090e  62 f2 7d 48 33 5e 0f     vpmovzxwd zmm3,[rsi+0x1e0]
000915  62 f1 65 48 72 f3 10     vpslld    zmm3,zmm3,0x10
00091c  62 82 65 48 b8 df        vfmadd231ps zmm19,zmm3,zmm31
000922  48 83 c7 04              add       rdi,4
000926  48 81 c6 00 02 00 00     add       rsi,0x200
00092d  48 ff c9                 dec       rcx
000930  0f 85 a0 fe ff ff        jne       near 0x00000000000007d6
000936  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00093c  c5 fc 11 02              vmovups   [rdx],ymm0
000940  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
000946  c5 fc 11 4a 20           vmovups   [rdx+0x20],ymm1
00094b  62 f2 7e 48 72 d6        vcvtneps2bf16 ymm2,zmm6
000951  c5 fc 11 52 40           vmovups   [rdx+0x40],ymm2
000956  62 f2 7e 48 72 df        vcvtneps2bf16 ymm3,zmm7
00095c  c5 fc 11 5a 60           vmovups   [rdx+0x60],ymm3
000961  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
000967  c5 fc 11 82 80 00 00 00  vmovups   [rdx+0x80],ymm0
00096f  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
000975  c5 fc 11 8a a0 00 00 00  vmovups   [rdx+0xa0],ymm1
00097d  62 d2 7e 48 72 d2        vcvtneps2bf16 ymm2,zmm10
000983  c5 fc 11 92 c0 00 00 00  vmovups   [rdx+0xc0],ymm2
00098b  62 d2 7e 48 72 db        vcvtneps2bf16 ymm3,zmm11
000991  c5 fc 11 9a e0 00 00 00  vmovups   [rdx+0xe0],ymm3
000999  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
00099f  c5 fc 11 82 00 01 00 00  vmovups   [rdx+0x100],ymm0
0009a7  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
0009ad  c5 fc 11 8a 20 01 00 00  vmovups   [rdx+0x120],ymm1
0009b5  62 d2 7e 48 72 d6        vcvtneps2bf16 ymm2,zmm14
0009bb  c5 fc 11 92 40 01 00 00  vmovups   [rdx+0x140],ymm2
0009c3  62 d2 7e 48 72 df        vcvtneps2bf16 ymm3,zmm15
0009c9  c5 fc 11 9a 60 01 00 00  vmovups   [rdx+0x160],ymm3
0009d1  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
0009d7  c5 fc 11 82 80 01 00 00  vmovups   [rdx+0x180],ymm0
0009df  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
0009e5  c5 fc 11 8a a0 01 00 00  vmovups   [rdx+0x1a0],ymm1
0009ed  62 b2 7e 48 72 d2        vcvtneps2bf16 ymm2,zmm18
0009f3  c5 fc 11 92 c0 01 00 00  vmovups   [rdx+0x1c0],ymm2
0009fb  62 b2 7e 48 72 db        vcvtneps2bf16 ymm3,zmm19
000a01  c5 fc 11 9a e0 01 00 00  vmovups   [rdx+0x1e0],ymm3
000a09  48 89 ec                 mov       rsp,rbp
000a0c  5d                       pop       rbp
000a0d  c5 f8 77                 vzeroupper
000a10  c3                       ret
000a11  55                       push      rbp
000a12  48 89 e5                 mov       rbp,rsp
000a15  53                       push      rbx
000a16  41 54                    push      r12
000a18  41 55                    push      r13
000a1a  41 56                    push      r14
000a1c  41 57                    push      r15
000a1e  48 83 e4 c0              and       rsp,0xffffffffffffffc0
000a22  48 81 ec 00 01 00 00     sub       rsp,0x100
000a29  48 89 7c 24 40           mov       [rsp+0x40],rdi
000a2e  48 89 74 24 48           mov       [rsp+0x48],rsi
000a33  48 89 54 24 50           mov       [rsp+0x50],rdx
000a38  48 89 8c 24 c0 00 00 00  mov       [rsp+0xc0],rcx
000a40  4c 89 44 24 58           mov       [rsp+0x58],r8
000a45  4c 89 4c 24 60           mov       [rsp+0x60],r9
000a4a  c5 fa 11 44 24 78        vmovss    [rsp+0x78],xmm0
000a50  c5 fa 11 4c 24 7c        vmovss    [rsp+0x7c],xmm1
000a56  49 8d 41 08              lea       rax,[r9+8]
000a5a  48 89 44 24 68           mov       [rsp+0x68],rax
000a5f  48 05 0f 00 00 00        add       rax,0xf
000a65  48 25 f0 ff ff ff        and       rax,0xfffffffffffffff0
000a6b  48 c1 e0 02              shl       rax,2
000a6f  48 89 44 24 70           mov       [rsp+0x70],rax
000a74  48 8b 44 24 70           mov       rax,[rsp+0x70]
000a79  48 8b 8c 24 c0 00 00 00  mov       rcx,[rsp+0xc0]
000a81  48 8d 14 01              lea       rdx,[rcx+rax]
000a85  4c 8d 04 02              lea       r8,[rdx+rax]
000a89  4d 8d 0c 00              lea       r9,[r8+rax]
000a8d  4d 8d 1c 01              lea       r11,[r9+rax]
000a91  4d 8d 24 03              lea       r12,[r11+rax]
000a95  4d 8d 2c 04              lea       r13,[r12+rax]
000a99  4d 8d 74 05 00           lea       r14,[r13+rax]
000a9e  48 8b 7c 24 40           mov       rdi,[rsp+0x40]
000aa3  48 8b 74 24 48           mov       rsi,[rsp+0x48]
000aa8  4c 8b 54 24 68           mov       r10,[rsp+0x68]
000aad  48 31 db                 xor       rbx,rbx
000ab0  62 62 7d 48 18 74 24 1e  vbroadcastss zmm30,[rsp+0x78]
000ab8  4d 89 d7                 mov       r15,r10
000abb  49 c1 ef 03              shr       r15,3
000abf  49 83 e2 07              and       r10,7
000ac3  4d 85 ff                 test      r15,r15
000ac6  0f 84 65 17 00 00        je        near 0x0000000000002231
000acc  b8 33 33 00 00           mov       eax,0x3333
000ad1  c5 f8 92 c8              kmovw     k1,eax
000ad5  62 71 ff 48 6f 07        vmovdqu16 zmm8,[rdi]
000adb  62 71 ff 48 6f 4f 01     vmovdqu16 zmm9,[rdi+0x40]
000ae2  62 71 ff 48 6f 57 02     vmovdqu16 zmm10,[rdi+0x80]
000ae9  62 71 ff 48 6f 5f 03     vmovdqu16 zmm11,[rdi+0xc0]
000af0  62 71 ff 48 6f 67 04     vmovdqu16 zmm12,[rdi+0x100]
000af7  62 71 ff 48 6f 6f 05     vmovdqu16 zmm13,[rdi+0x140]
000afe  62 71 ff 48 6f 77 06     vmovdqu16 zmm14,[rdi+0x180]
000b05  62 71 ff 48 6f 7f 07     vmovdqu16 zmm15,[rdi+0x1c0]
000b0c  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000b12  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000b18  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000b1e  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000b24  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000b2a  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000b30  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000b36  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000b3c  62 f2 3e 48 52 06        vdpbf16ps zmm0,zmm8,[rsi]
000b42  62 f2 36 48 52 46 01     vdpbf16ps zmm0,zmm9,[rsi+0x40]
000b49  62 f2 2e 48 52 46 02     vdpbf16ps zmm0,zmm10,[rsi+0x80]
000b50  62 f2 26 48 52 46 03     vdpbf16ps zmm0,zmm11,[rsi+0xc0]
000b57  62 f2 1e 48 52 46 04     vdpbf16ps zmm0,zmm12,[rsi+0x100]
000b5e  62 f2 16 48 52 46 05     vdpbf16ps zmm0,zmm13,[rsi+0x140]
000b65  62 f2 0e 48 52 46 06     vdpbf16ps zmm0,zmm14,[rsi+0x180]
000b6c  62 f2 06 48 52 46 07     vdpbf16ps zmm0,zmm15,[rsi+0x1c0]
000b73  62 f2 3e 48 52 4e 10     vdpbf16ps zmm1,zmm8,[rsi+0x400]
000b7a  62 f2 36 48 52 4e 11     vdpbf16ps zmm1,zmm9,[rsi+0x440]
000b81  62 f2 2e 48 52 4e 12     vdpbf16ps zmm1,zmm10,[rsi+0x480]
000b88  62 f2 26 48 52 4e 13     vdpbf16ps zmm1,zmm11,[rsi+0x4c0]
000b8f  62 f2 1e 48 52 4e 14     vdpbf16ps zmm1,zmm12,[rsi+0x500]
000b96  62 f2 16 48 52 4e 15     vdpbf16ps zmm1,zmm13,[rsi+0x540]
000b9d  62 f2 0e 48 52 4e 16     vdpbf16ps zmm1,zmm14,[rsi+0x580]
000ba4  62 f2 06 48 52 4e 17     vdpbf16ps zmm1,zmm15,[rsi+0x5c0]
000bab  62 f2 3e 48 52 56 20     vdpbf16ps zmm2,zmm8,[rsi+0x800]
000bb2  62 f2 36 48 52 56 21     vdpbf16ps zmm2,zmm9,[rsi+0x840]
000bb9  62 f2 2e 48 52 56 22     vdpbf16ps zmm2,zmm10,[rsi+0x880]
000bc0  62 f2 26 48 52 56 23     vdpbf16ps zmm2,zmm11,[rsi+0x8c0]
000bc7  62 f2 1e 48 52 56 24     vdpbf16ps zmm2,zmm12,[rsi+0x900]
000bce  62 f2 16 48 52 56 25     vdpbf16ps zmm2,zmm13,[rsi+0x940]
000bd5  62 f2 0e 48 52 56 26     vdpbf16ps zmm2,zmm14,[rsi+0x980]
000bdc  62 f2 06 48 52 56 27     vdpbf16ps zmm2,zmm15,[rsi+0x9c0]
000be3  62 f2 3e 48 52 5e 30     vdpbf16ps zmm3,zmm8,[rsi+0xc00]
000bea  62 f2 36 48 52 5e 31     vdpbf16ps zmm3,zmm9,[rsi+0xc40]
000bf1  62 f2 2e 48 52 5e 32     vdpbf16ps zmm3,zmm10,[rsi+0xc80]
000bf8  62 f2 26 48 52 5e 33     vdpbf16ps zmm3,zmm11,[rsi+0xcc0]
000bff  62 f2 1e 48 52 5e 34     vdpbf16ps zmm3,zmm12,[rsi+0xd00]
000c06  62 f2 16 48 52 5e 35     vdpbf16ps zmm3,zmm13,[rsi+0xd40]
000c0d  62 f2 0e 48 52 5e 36     vdpbf16ps zmm3,zmm14,[rsi+0xd80]
000c14  62 f2 06 48 52 5e 37     vdpbf16ps zmm3,zmm15,[rsi+0xdc0]
000c1b  62 f2 3e 48 52 66 08     vdpbf16ps zmm4,zmm8,[rsi+0x200]
000c22  62 f2 36 48 52 66 09     vdpbf16ps zmm4,zmm9,[rsi+0x240]
000c29  62 f2 2e 48 52 66 0a     vdpbf16ps zmm4,zmm10,[rsi+0x280]
000c30  62 f2 26 48 52 66 0b     vdpbf16ps zmm4,zmm11,[rsi+0x2c0]
000c37  62 f2 1e 48 52 66 0c     vdpbf16ps zmm4,zmm12,[rsi+0x300]
000c3e  62 f2 16 48 52 66 0d     vdpbf16ps zmm4,zmm13,[rsi+0x340]
000c45  62 f2 0e 48 52 66 0e     vdpbf16ps zmm4,zmm14,[rsi+0x380]
000c4c  62 f2 06 48 52 66 0f     vdpbf16ps zmm4,zmm15,[rsi+0x3c0]
000c53  62 f2 3e 48 52 6e 18     vdpbf16ps zmm5,zmm8,[rsi+0x600]
000c5a  62 f2 36 48 52 6e 19     vdpbf16ps zmm5,zmm9,[rsi+0x640]
000c61  62 f2 2e 48 52 6e 1a     vdpbf16ps zmm5,zmm10,[rsi+0x680]
000c68  62 f2 26 48 52 6e 1b     vdpbf16ps zmm5,zmm11,[rsi+0x6c0]
000c6f  62 f2 1e 48 52 6e 1c     vdpbf16ps zmm5,zmm12,[rsi+0x700]
000c76  62 f2 16 48 52 6e 1d     vdpbf16ps zmm5,zmm13,[rsi+0x740]
000c7d  62 f2 0e 48 52 6e 1e     vdpbf16ps zmm5,zmm14,[rsi+0x780]
000c84  62 f2 06 48 52 6e 1f     vdpbf16ps zmm5,zmm15,[rsi+0x7c0]
000c8b  62 f2 3e 48 52 76 28     vdpbf16ps zmm6,zmm8,[rsi+0xa00]
000c92  62 f2 36 48 52 76 29     vdpbf16ps zmm6,zmm9,[rsi+0xa40]
000c99  62 f2 2e 48 52 76 2a     vdpbf16ps zmm6,zmm10,[rsi+0xa80]
000ca0  62 f2 26 48 52 76 2b     vdpbf16ps zmm6,zmm11,[rsi+0xac0]
000ca7  62 f2 1e 48 52 76 2c     vdpbf16ps zmm6,zmm12,[rsi+0xb00]
000cae  62 f2 16 48 52 76 2d     vdpbf16ps zmm6,zmm13,[rsi+0xb40]
000cb5  62 f2 0e 48 52 76 2e     vdpbf16ps zmm6,zmm14,[rsi+0xb80]
000cbc  62 f2 06 48 52 76 2f     vdpbf16ps zmm6,zmm15,[rsi+0xbc0]
000cc3  62 f2 3e 48 52 7e 38     vdpbf16ps zmm7,zmm8,[rsi+0xe00]
000cca  62 f2 36 48 52 7e 39     vdpbf16ps zmm7,zmm9,[rsi+0xe40]
000cd1  62 f2 2e 48 52 7e 3a     vdpbf16ps zmm7,zmm10,[rsi+0xe80]
000cd8  62 f2 26 48 52 7e 3b     vdpbf16ps zmm7,zmm11,[rsi+0xec0]
000cdf  62 f2 1e 48 52 7e 3c     vdpbf16ps zmm7,zmm12,[rsi+0xf00]
000ce6  62 f2 16 48 52 7e 3d     vdpbf16ps zmm7,zmm13,[rsi+0xf40]
000ced  62 f2 0e 48 52 7e 3e     vdpbf16ps zmm7,zmm14,[rsi+0xf80]
000cf4  62 f2 06 48 52 7e 3f     vdpbf16ps zmm7,zmm15,[rsi+0xfc0]
000cfb  62 63 fd 48 23 f9 ee     vshuff64x2 zmm31,zmm0,zmm1,0xee
000d02  62 f3 fd 48 23 c1 44     vshuff64x2 zmm0,zmm0,zmm1,0x44
000d09  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
000d0f  62 63 ed 48 23 fb ee     vshuff64x2 zmm31,zmm2,zmm3,0xee
000d16  62 f3 ed 48 23 d3 44     vshuff64x2 zmm2,zmm2,zmm3,0x44
000d1d  62 91 6c 48 58 d7        vaddps    zmm2,zmm2,zmm31
000d23  62 63 dd 48 23 fd ee     vshuff64x2 zmm31,zmm4,zmm5,0xee
000d2a  62 f3 dd 48 23 e5 44     vshuff64x2 zmm4,zmm4,zmm5,0x44
000d31  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
000d37  62 63 cd 48 23 ff ee     vshuff64x2 zmm31,zmm6,zmm7,0xee
000d3e  62 f3 cd 48 23 f7 44     vshuff64x2 zmm6,zmm6,zmm7,0x44
000d45  62 91 4c 48 58 f7        vaddps    zmm6,zmm6,zmm31
000d4b  62 63 fd 48 23 fa dd     vshuff64x2 zmm31,zmm0,zmm2,0xdd
000d52  62 f3 fd 48 23 c2 88     vshuff64x2 zmm0,zmm0,zmm2,0x88
000d59  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
000d5f  62 63 dd 48 23 fe dd     vshuff64x2 zmm31,zmm4,zmm6,0xdd
000d66  62 f3 dd 48 23 e6 88     vshuff64x2 zmm4,zmm4,zmm6,0x88
000d6d  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
000d73  62 61 7c 48 c6 fc dd     vshufps   zmm31,zmm0,zmm4,0xdd
000d7a  62 f1 7c 48 c6 c4 88     vshufps   zmm0,zmm0,zmm4,0x88
000d81  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
000d87  62 61 7c 48 c6 f8 dd     vshufps   zmm31,zmm0,zmm0,0xdd
000d8e  62 f1 7c 48 c6 c0 88     vshufps   zmm0,zmm0,zmm0,0x88
000d95  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
000d9b  62 91 7c 48 59 c6        vmulps    zmm0,zmm0,zmm30
000da1  62 f2 7d 49 8a 04 19     vcompressps [rcx+rbx]{k1},zmm0
000da8  62 71 ff 48 6f 87 00 20 00 00 vmovdqu16 zmm8,[rdi+0x2000]
000db2  62 71 ff 48 6f 8f 40 20 00 00 vmovdqu16 zmm9,[rdi+0x2040]
000dbc  62 71 ff 48 6f 97 80 20 00 00 vmovdqu16 zmm10,[rdi+0x2080]
000dc6  62 71 ff 48 6f 9f c0 20 00 00 vmovdqu16 zmm11,[rdi+0x20c0]
000dd0  62 71 ff 48 6f a7 00 21 00 00 vmovdqu16 zmm12,[rdi+0x2100]
000dda  62 71 ff 48 6f af 40 21 00 00 vmovdqu16 zmm13,[rdi+0x2140]
000de4  62 71 ff 48 6f b7 80 21 00 00 vmovdqu16 zmm14,[rdi+0x2180]
000dee  62 71 ff 48 6f bf c0 21 00 00 vmovdqu16 zmm15,[rdi+0x21c0]
000df8  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
000dfe  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
000e04  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
000e0a  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
000e10  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
000e16  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
000e1c  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
000e22  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
000e28  62 f2 3e 48 52 06        vdpbf16ps zmm0,zmm8,[rsi]
000e2e  62 f2 36 48 52 46 01     vdpbf16ps zmm0,zmm9,[rsi+0x40]
000e35  62 f2 2e 48 52 46 02     vdpbf16ps zmm0,zmm10,[rsi+0x80]
000e3c  62 f2 26 48 52 46 03     vdpbf16ps zmm0,zmm11,[rsi+0xc0]
000e43  62 f2 1e 48 52 46 04     vdpbf16ps zmm0,zmm12,[rsi+0x100]
000e4a  62 f2 16 48 52 46 05     vdpbf16ps zmm0,zmm13,[rsi+0x140]
000e51  62 f2 0e 48 52 46 06     vdpbf16ps zmm0,zmm14,[rsi+0x180]
000e58  62 f2 06 48 52 46 07     vdpbf16ps zmm0,zmm15,[rsi+0x1c0]
000e5f  62 f2 3e 48 52 4e 10     vdpbf16ps zmm1,zmm8,[rsi+0x400]
000e66  62 f2 36 48 52 4e 11     vdpbf16ps zmm1,zmm9,[rsi+0x440]
000e6d  62 f2 2e 48 52 4e 12     vdpbf16ps zmm1,zmm10,[rsi+0x480]
000e74  62 f2 26 48 52 4e 13     vdpbf16ps zmm1,zmm11,[rsi+0x4c0]
000e7b  62 f2 1e 48 52 4e 14     vdpbf16ps zmm1,zmm12,[rsi+0x500]
000e82  62 f2 16 48 52 4e 15     vdpbf16ps zmm1,zmm13,[rsi+0x540]
000e89  62 f2 0e 48 52 4e 16     vdpbf16ps zmm1,zmm14,[rsi+0x580]
000e90  62 f2 06 48 52 4e 17     vdpbf16ps zmm1,zmm15,[rsi+0x5c0]
000e97  62 f2 3e 48 52 56 20     vdpbf16ps zmm2,zmm8,[rsi+0x800]
000e9e  62 f2 36 48 52 56 21     vdpbf16ps zmm2,zmm9,[rsi+0x840]
000ea5  62 f2 2e 48 52 56 22     vdpbf16ps zmm2,zmm10,[rsi+0x880]
000eac  62 f2 26 48 52 56 23     vdpbf16ps zmm2,zmm11,[rsi+0x8c0]
000eb3  62 f2 1e 48 52 56 24     vdpbf16ps zmm2,zmm12,[rsi+0x900]
000eba  62 f2 16 48 52 56 25     vdpbf16ps zmm2,zmm13,[rsi+0x940]
000ec1  62 f2 0e 48 52 56 26     vdpbf16ps zmm2,zmm14,[rsi+0x980]
000ec8  62 f2 06 48 52 56 27     vdpbf16ps zmm2,zmm15,[rsi+0x9c0]
000ecf  62 f2 3e 48 52 5e 30     vdpbf16ps zmm3,zmm8,[rsi+0xc00]
000ed6  62 f2 36 48 52 5e 31     vdpbf16ps zmm3,zmm9,[rsi+0xc40]
000edd  62 f2 2e 48 52 5e 32     vdpbf16ps zmm3,zmm10,[rsi+0xc80]
000ee4  62 f2 26 48 52 5e 33     vdpbf16ps zmm3,zmm11,[rsi+0xcc0]
000eeb  62 f2 1e 48 52 5e 34     vdpbf16ps zmm3,zmm12,[rsi+0xd00]
000ef2  62 f2 16 48 52 5e 35     vdpbf16ps zmm3,zmm13,[rsi+0xd40]
000ef9  62 f2 0e 48 52 5e 36     vdpbf16ps zmm3,zmm14,[rsi+0xd80]
000f00  62 f2 06 48 52 5e 37     vdpbf16ps zmm3,zmm15,[rsi+0xdc0]
000f07  62 f2 3e 48 52 66 08     vdpbf16ps zmm4,zmm8,[rsi+0x200]
000f0e  62 f2 36 48 52 66 09     vdpbf16ps zmm4,zmm9,[rsi+0x240]
000f15  62 f2 2e 48 52 66 0a     vdpbf16ps zmm4,zmm10,[rsi+0x280]
000f1c  62 f2 26 48 52 66 0b     vdpbf16ps zmm4,zmm11,[rsi+0x2c0]
000f23  62 f2 1e 48 52 66 0c     vdpbf16ps zmm4,zmm12,[rsi+0x300]
000f2a  62 f2 16 48 52 66 0d     vdpbf16ps zmm4,zmm13,[rsi+0x340]
000f31  62 f2 0e 48 52 66 0e     vdpbf16ps zmm4,zmm14,[rsi+0x380]
000f38  62 f2 06 48 52 66 0f     vdpbf16ps zmm4,zmm15,[rsi+0x3c0]
000f3f  62 f2 3e 48 52 6e 18     vdpbf16ps zmm5,zmm8,[rsi+0x600]
000f46  62 f2 36 48 52 6e 19     vdpbf16ps zmm5,zmm9,[rsi+0x640]
000f4d  62 f2 2e 48 52 6e 1a     vdpbf16ps zmm5,zmm10,[rsi+0x680]
000f54  62 f2 26 48 52 6e 1b     vdpbf16ps zmm5,zmm11,[rsi+0x6c0]
000f5b  62 f2 1e 48 52 6e 1c     vdpbf16ps zmm5,zmm12,[rsi+0x700]
000f62  62 f2 16 48 52 6e 1d     vdpbf16ps zmm5,zmm13,[rsi+0x740]
000f69  62 f2 0e 48 52 6e 1e     vdpbf16ps zmm5,zmm14,[rsi+0x780]
000f70  62 f2 06 48 52 6e 1f     vdpbf16ps zmm5,zmm15,[rsi+0x7c0]
000f77  62 f2 3e 48 52 76 28     vdpbf16ps zmm6,zmm8,[rsi+0xa00]
000f7e  62 f2 36 48 52 76 29     vdpbf16ps zmm6,zmm9,[rsi+0xa40]
000f85  62 f2 2e 48 52 76 2a     vdpbf16ps zmm6,zmm10,[rsi+0xa80]
000f8c  62 f2 26 48 52 76 2b     vdpbf16ps zmm6,zmm11,[rsi+0xac0]
000f93  62 f2 1e 48 52 76 2c     vdpbf16ps zmm6,zmm12,[rsi+0xb00]
000f9a  62 f2 16 48 52 76 2d     vdpbf16ps zmm6,zmm13,[rsi+0xb40]
000fa1  62 f2 0e 48 52 76 2e     vdpbf16ps zmm6,zmm14,[rsi+0xb80]
000fa8  62 f2 06 48 52 76 2f     vdpbf16ps zmm6,zmm15,[rsi+0xbc0]
000faf  62 f2 3e 48 52 7e 38     vdpbf16ps zmm7,zmm8,[rsi+0xe00]
000fb6  62 f2 36 48 52 7e 39     vdpbf16ps zmm7,zmm9,[rsi+0xe40]
000fbd  62 f2 2e 48 52 7e 3a     vdpbf16ps zmm7,zmm10,[rsi+0xe80]
000fc4  62 f2 26 48 52 7e 3b     vdpbf16ps zmm7,zmm11,[rsi+0xec0]
000fcb  62 f2 1e 48 52 7e 3c     vdpbf16ps zmm7,zmm12,[rsi+0xf00]
000fd2  62 f2 16 48 52 7e 3d     vdpbf16ps zmm7,zmm13,[rsi+0xf40]
000fd9  62 f2 0e 48 52 7e 3e     vdpbf16ps zmm7,zmm14,[rsi+0xf80]
000fe0  62 f2 06 48 52 7e 3f     vdpbf16ps zmm7,zmm15,[rsi+0xfc0]
000fe7  62 63 fd 48 23 f9 ee     vshuff64x2 zmm31,zmm0,zmm1,0xee
000fee  62 f3 fd 48 23 c1 44     vshuff64x2 zmm0,zmm0,zmm1,0x44
000ff5  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
000ffb  62 63 ed 48 23 fb ee     vshuff64x2 zmm31,zmm2,zmm3,0xee
001002  62 f3 ed 48 23 d3 44     vshuff64x2 zmm2,zmm2,zmm3,0x44
001009  62 91 6c 48 58 d7        vaddps    zmm2,zmm2,zmm31
00100f  62 63 dd 48 23 fd ee     vshuff64x2 zmm31,zmm4,zmm5,0xee
001016  62 f3 dd 48 23 e5 44     vshuff64x2 zmm4,zmm4,zmm5,0x44
00101d  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
001023  62 63 cd 48 23 ff ee     vshuff64x2 zmm31,zmm6,zmm7,0xee
00102a  62 f3 cd 48 23 f7 44     vshuff64x2 zmm6,zmm6,zmm7,0x44
001031  62 91 4c 48 58 f7        vaddps    zmm6,zmm6,zmm31
001037  62 63 fd 48 23 fa dd     vshuff64x2 zmm31,zmm0,zmm2,0xdd
00103e  62 f3 fd 48 23 c2 88     vshuff64x2 zmm0,zmm0,zmm2,0x88
001045  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
00104b  62 63 dd 48 23 fe dd     vshuff64x2 zmm31,zmm4,zmm6,0xdd
001052  62 f3 dd 48 23 e6 88     vshuff64x2 zmm4,zmm4,zmm6,0x88
001059  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
00105f  62 61 7c 48 c6 fc dd     vshufps   zmm31,zmm0,zmm4,0xdd
001066  62 f1 7c 48 c6 c4 88     vshufps   zmm0,zmm0,zmm4,0x88
00106d  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001073  62 61 7c 48 c6 f8 dd     vshufps   zmm31,zmm0,zmm0,0xdd
00107a  62 f1 7c 48 c6 c0 88     vshufps   zmm0,zmm0,zmm0,0x88
001081  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001087  62 91 7c 48 59 c6        vmulps    zmm0,zmm0,zmm30
00108d  62 f2 7d 49 8a 04 1a     vcompressps [rdx+rbx]{k1},zmm0
001094  62 71 ff 48 6f 87 00 40 00 00 vmovdqu16 zmm8,[rdi+0x4000]
00109e  62 71 ff 48 6f 8f 40 40 00 00 vmovdqu16 zmm9,[rdi+0x4040]
0010a8  62 71 ff 48 6f 97 80 40 00 00 vmovdqu16 zmm10,[rdi+0x4080]
0010b2  62 71 ff 48 6f 9f c0 40 00 00 vmovdqu16 zmm11,[rdi+0x40c0]
0010bc  62 71 ff 48 6f a7 00 41 00 00 vmovdqu16 zmm12,[rdi+0x4100]
0010c6  62 71 ff 48 6f af 40 41 00 00 vmovdqu16 zmm13,[rdi+0x4140]
0010d0  62 71 ff 48 6f b7 80 41 00 00 vmovdqu16 zmm14,[rdi+0x4180]
0010da  62 71 ff 48 6f bf c0 41 00 00 vmovdqu16 zmm15,[rdi+0x41c0]
0010e4  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0010ea  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0010f0  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0010f6  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0010fc  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001102  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001108  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00110e  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001114  62 f2 3e 48 52 06        vdpbf16ps zmm0,zmm8,[rsi]
00111a  62 f2 36 48 52 46 01     vdpbf16ps zmm0,zmm9,[rsi+0x40]
001121  62 f2 2e 48 52 46 02     vdpbf16ps zmm0,zmm10,[rsi+0x80]
001128  62 f2 26 48 52 46 03     vdpbf16ps zmm0,zmm11,[rsi+0xc0]
00112f  62 f2 1e 48 52 46 04     vdpbf16ps zmm0,zmm12,[rsi+0x100]
001136  62 f2 16 48 52 46 05     vdpbf16ps zmm0,zmm13,[rsi+0x140]
00113d  62 f2 0e 48 52 46 06     vdpbf16ps zmm0,zmm14,[rsi+0x180]
001144  62 f2 06 48 52 46 07     vdpbf16ps zmm0,zmm15,[rsi+0x1c0]
00114b  62 f2 3e 48 52 4e 10     vdpbf16ps zmm1,zmm8,[rsi+0x400]
001152  62 f2 36 48 52 4e 11     vdpbf16ps zmm1,zmm9,[rsi+0x440]
001159  62 f2 2e 48 52 4e 12     vdpbf16ps zmm1,zmm10,[rsi+0x480]
001160  62 f2 26 48 52 4e 13     vdpbf16ps zmm1,zmm11,[rsi+0x4c0]
001167  62 f2 1e 48 52 4e 14     vdpbf16ps zmm1,zmm12,[rsi+0x500]
00116e  62 f2 16 48 52 4e 15     vdpbf16ps zmm1,zmm13,[rsi+0x540]
001175  62 f2 0e 48 52 4e 16     vdpbf16ps zmm1,zmm14,[rsi+0x580]
00117c  62 f2 06 48 52 4e 17     vdpbf16ps zmm1,zmm15,[rsi+0x5c0]
001183  62 f2 3e 48 52 56 20     vdpbf16ps zmm2,zmm8,[rsi+0x800]
00118a  62 f2 36 48 52 56 21     vdpbf16ps zmm2,zmm9,[rsi+0x840]
001191  62 f2 2e 48 52 56 22     vdpbf16ps zmm2,zmm10,[rsi+0x880]
001198  62 f2 26 48 52 56 23     vdpbf16ps zmm2,zmm11,[rsi+0x8c0]
00119f  62 f2 1e 48 52 56 24     vdpbf16ps zmm2,zmm12,[rsi+0x900]
0011a6  62 f2 16 48 52 56 25     vdpbf16ps zmm2,zmm13,[rsi+0x940]
0011ad  62 f2 0e 48 52 56 26     vdpbf16ps zmm2,zmm14,[rsi+0x980]
0011b4  62 f2 06 48 52 56 27     vdpbf16ps zmm2,zmm15,[rsi+0x9c0]
0011bb  62 f2 3e 48 52 5e 30     vdpbf16ps zmm3,zmm8,[rsi+0xc00]
0011c2  62 f2 36 48 52 5e 31     vdpbf16ps zmm3,zmm9,[rsi+0xc40]
0011c9  62 f2 2e 48 52 5e 32     vdpbf16ps zmm3,zmm10,[rsi+0xc80]
0011d0  62 f2 26 48 52 5e 33     vdpbf16ps zmm3,zmm11,[rsi+0xcc0]
0011d7  62 f2 1e 48 52 5e 34     vdpbf16ps zmm3,zmm12,[rsi+0xd00]
0011de  62 f2 16 48 52 5e 35     vdpbf16ps zmm3,zmm13,[rsi+0xd40]
0011e5  62 f2 0e 48 52 5e 36     vdpbf16ps zmm3,zmm14,[rsi+0xd80]
0011ec  62 f2 06 48 52 5e 37     vdpbf16ps zmm3,zmm15,[rsi+0xdc0]
0011f3  62 f2 3e 48 52 66 08     vdpbf16ps zmm4,zmm8,[rsi+0x200]
0011fa  62 f2 36 48 52 66 09     vdpbf16ps zmm4,zmm9,[rsi+0x240]
001201  62 f2 2e 48 52 66 0a     vdpbf16ps zmm4,zmm10,[rsi+0x280]
001208  62 f2 26 48 52 66 0b     vdpbf16ps zmm4,zmm11,[rsi+0x2c0]
00120f  62 f2 1e 48 52 66 0c     vdpbf16ps zmm4,zmm12,[rsi+0x300]
001216  62 f2 16 48 52 66 0d     vdpbf16ps zmm4,zmm13,[rsi+0x340]
00121d  62 f2 0e 48 52 66 0e     vdpbf16ps zmm4,zmm14,[rsi+0x380]
001224  62 f2 06 48 52 66 0f     vdpbf16ps zmm4,zmm15,[rsi+0x3c0]
00122b  62 f2 3e 48 52 6e 18     vdpbf16ps zmm5,zmm8,[rsi+0x600]
001232  62 f2 36 48 52 6e 19     vdpbf16ps zmm5,zmm9,[rsi+0x640]
001239  62 f2 2e 48 52 6e 1a     vdpbf16ps zmm5,zmm10,[rsi+0x680]
001240  62 f2 26 48 52 6e 1b     vdpbf16ps zmm5,zmm11,[rsi+0x6c0]
001247  62 f2 1e 48 52 6e 1c     vdpbf16ps zmm5,zmm12,[rsi+0x700]
00124e  62 f2 16 48 52 6e 1d     vdpbf16ps zmm5,zmm13,[rsi+0x740]
001255  62 f2 0e 48 52 6e 1e     vdpbf16ps zmm5,zmm14,[rsi+0x780]
00125c  62 f2 06 48 52 6e 1f     vdpbf16ps zmm5,zmm15,[rsi+0x7c0]
001263  62 f2 3e 48 52 76 28     vdpbf16ps zmm6,zmm8,[rsi+0xa00]
00126a  62 f2 36 48 52 76 29     vdpbf16ps zmm6,zmm9,[rsi+0xa40]
001271  62 f2 2e 48 52 76 2a     vdpbf16ps zmm6,zmm10,[rsi+0xa80]
001278  62 f2 26 48 52 76 2b     vdpbf16ps zmm6,zmm11,[rsi+0xac0]
00127f  62 f2 1e 48 52 76 2c     vdpbf16ps zmm6,zmm12,[rsi+0xb00]
001286  62 f2 16 48 52 76 2d     vdpbf16ps zmm6,zmm13,[rsi+0xb40]
00128d  62 f2 0e 48 52 76 2e     vdpbf16ps zmm6,zmm14,[rsi+0xb80]
001294  62 f2 06 48 52 76 2f     vdpbf16ps zmm6,zmm15,[rsi+0xbc0]
00129b  62 f2 3e 48 52 7e 38     vdpbf16ps zmm7,zmm8,[rsi+0xe00]
0012a2  62 f2 36 48 52 7e 39     vdpbf16ps zmm7,zmm9,[rsi+0xe40]
0012a9  62 f2 2e 48 52 7e 3a     vdpbf16ps zmm7,zmm10,[rsi+0xe80]
0012b0  62 f2 26 48 52 7e 3b     vdpbf16ps zmm7,zmm11,[rsi+0xec0]
0012b7  62 f2 1e 48 52 7e 3c     vdpbf16ps zmm7,zmm12,[rsi+0xf00]
0012be  62 f2 16 48 52 7e 3d     vdpbf16ps zmm7,zmm13,[rsi+0xf40]
0012c5  62 f2 0e 48 52 7e 3e     vdpbf16ps zmm7,zmm14,[rsi+0xf80]
0012cc  62 f2 06 48 52 7e 3f     vdpbf16ps zmm7,zmm15,[rsi+0xfc0]
0012d3  62 63 fd 48 23 f9 ee     vshuff64x2 zmm31,zmm0,zmm1,0xee
0012da  62 f3 fd 48 23 c1 44     vshuff64x2 zmm0,zmm0,zmm1,0x44
0012e1  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
0012e7  62 63 ed 48 23 fb ee     vshuff64x2 zmm31,zmm2,zmm3,0xee
0012ee  62 f3 ed 48 23 d3 44     vshuff64x2 zmm2,zmm2,zmm3,0x44
0012f5  62 91 6c 48 58 d7        vaddps    zmm2,zmm2,zmm31
0012fb  62 63 dd 48 23 fd ee     vshuff64x2 zmm31,zmm4,zmm5,0xee
001302  62 f3 dd 48 23 e5 44     vshuff64x2 zmm4,zmm4,zmm5,0x44
001309  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
00130f  62 63 cd 48 23 ff ee     vshuff64x2 zmm31,zmm6,zmm7,0xee
001316  62 f3 cd 48 23 f7 44     vshuff64x2 zmm6,zmm6,zmm7,0x44
00131d  62 91 4c 48 58 f7        vaddps    zmm6,zmm6,zmm31
001323  62 63 fd 48 23 fa dd     vshuff64x2 zmm31,zmm0,zmm2,0xdd
00132a  62 f3 fd 48 23 c2 88     vshuff64x2 zmm0,zmm0,zmm2,0x88
001331  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001337  62 63 dd 48 23 fe dd     vshuff64x2 zmm31,zmm4,zmm6,0xdd
00133e  62 f3 dd 48 23 e6 88     vshuff64x2 zmm4,zmm4,zmm6,0x88
001345  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
00134b  62 61 7c 48 c6 fc dd     vshufps   zmm31,zmm0,zmm4,0xdd
001352  62 f1 7c 48 c6 c4 88     vshufps   zmm0,zmm0,zmm4,0x88
001359  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
00135f  62 61 7c 48 c6 f8 dd     vshufps   zmm31,zmm0,zmm0,0xdd
001366  62 f1 7c 48 c6 c0 88     vshufps   zmm0,zmm0,zmm0,0x88
00136d  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001373  62 91 7c 48 59 c6        vmulps    zmm0,zmm0,zmm30
001379  62 d2 7d 49 8a 04 18     vcompressps [r8+rbx]{k1},zmm0
001380  62 71 ff 48 6f 87 00 60 00 00 vmovdqu16 zmm8,[rdi+0x6000]
00138a  62 71 ff 48 6f 8f 40 60 00 00 vmovdqu16 zmm9,[rdi+0x6040]
001394  62 71 ff 48 6f 97 80 60 00 00 vmovdqu16 zmm10,[rdi+0x6080]
00139e  62 71 ff 48 6f 9f c0 60 00 00 vmovdqu16 zmm11,[rdi+0x60c0]
0013a8  62 71 ff 48 6f a7 00 61 00 00 vmovdqu16 zmm12,[rdi+0x6100]
0013b2  62 71 ff 48 6f af 40 61 00 00 vmovdqu16 zmm13,[rdi+0x6140]
0013bc  62 71 ff 48 6f b7 80 61 00 00 vmovdqu16 zmm14,[rdi+0x6180]
0013c6  62 71 ff 48 6f bf c0 61 00 00 vmovdqu16 zmm15,[rdi+0x61c0]
0013d0  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0013d6  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0013dc  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0013e2  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0013e8  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0013ee  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0013f4  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0013fa  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001400  62 f2 3e 48 52 06        vdpbf16ps zmm0,zmm8,[rsi]
001406  62 f2 36 48 52 46 01     vdpbf16ps zmm0,zmm9,[rsi+0x40]
00140d  62 f2 2e 48 52 46 02     vdpbf16ps zmm0,zmm10,[rsi+0x80]
001414  62 f2 26 48 52 46 03     vdpbf16ps zmm0,zmm11,[rsi+0xc0]
00141b  62 f2 1e 48 52 46 04     vdpbf16ps zmm0,zmm12,[rsi+0x100]
001422  62 f2 16 48 52 46 05     vdpbf16ps zmm0,zmm13,[rsi+0x140]
001429  62 f2 0e 48 52 46 06     vdpbf16ps zmm0,zmm14,[rsi+0x180]
001430  62 f2 06 48 52 46 07     vdpbf16ps zmm0,zmm15,[rsi+0x1c0]
001437  62 f2 3e 48 52 4e 10     vdpbf16ps zmm1,zmm8,[rsi+0x400]
00143e  62 f2 36 48 52 4e 11     vdpbf16ps zmm1,zmm9,[rsi+0x440]
001445  62 f2 2e 48 52 4e 12     vdpbf16ps zmm1,zmm10,[rsi+0x480]
00144c  62 f2 26 48 52 4e 13     vdpbf16ps zmm1,zmm11,[rsi+0x4c0]
001453  62 f2 1e 48 52 4e 14     vdpbf16ps zmm1,zmm12,[rsi+0x500]
00145a  62 f2 16 48 52 4e 15     vdpbf16ps zmm1,zmm13,[rsi+0x540]
001461  62 f2 0e 48 52 4e 16     vdpbf16ps zmm1,zmm14,[rsi+0x580]
001468  62 f2 06 48 52 4e 17     vdpbf16ps zmm1,zmm15,[rsi+0x5c0]
00146f  62 f2 3e 48 52 56 20     vdpbf16ps zmm2,zmm8,[rsi+0x800]
001476  62 f2 36 48 52 56 21     vdpbf16ps zmm2,zmm9,[rsi+0x840]
00147d  62 f2 2e 48 52 56 22     vdpbf16ps zmm2,zmm10,[rsi+0x880]
001484  62 f2 26 48 52 56 23     vdpbf16ps zmm2,zmm11,[rsi+0x8c0]
00148b  62 f2 1e 48 52 56 24     vdpbf16ps zmm2,zmm12,[rsi+0x900]
001492  62 f2 16 48 52 56 25     vdpbf16ps zmm2,zmm13,[rsi+0x940]
001499  62 f2 0e 48 52 56 26     vdpbf16ps zmm2,zmm14,[rsi+0x980]
0014a0  62 f2 06 48 52 56 27     vdpbf16ps zmm2,zmm15,[rsi+0x9c0]
0014a7  62 f2 3e 48 52 5e 30     vdpbf16ps zmm3,zmm8,[rsi+0xc00]
0014ae  62 f2 36 48 52 5e 31     vdpbf16ps zmm3,zmm9,[rsi+0xc40]
0014b5  62 f2 2e 48 52 5e 32     vdpbf16ps zmm3,zmm10,[rsi+0xc80]
0014bc  62 f2 26 48 52 5e 33     vdpbf16ps zmm3,zmm11,[rsi+0xcc0]
0014c3  62 f2 1e 48 52 5e 34     vdpbf16ps zmm3,zmm12,[rsi+0xd00]
0014ca  62 f2 16 48 52 5e 35     vdpbf16ps zmm3,zmm13,[rsi+0xd40]
0014d1  62 f2 0e 48 52 5e 36     vdpbf16ps zmm3,zmm14,[rsi+0xd80]
0014d8  62 f2 06 48 52 5e 37     vdpbf16ps zmm3,zmm15,[rsi+0xdc0]
0014df  62 f2 3e 48 52 66 08     vdpbf16ps zmm4,zmm8,[rsi+0x200]
0014e6  62 f2 36 48 52 66 09     vdpbf16ps zmm4,zmm9,[rsi+0x240]
0014ed  62 f2 2e 48 52 66 0a     vdpbf16ps zmm4,zmm10,[rsi+0x280]
0014f4  62 f2 26 48 52 66 0b     vdpbf16ps zmm4,zmm11,[rsi+0x2c0]
0014fb  62 f2 1e 48 52 66 0c     vdpbf16ps zmm4,zmm12,[rsi+0x300]
001502  62 f2 16 48 52 66 0d     vdpbf16ps zmm4,zmm13,[rsi+0x340]
001509  62 f2 0e 48 52 66 0e     vdpbf16ps zmm4,zmm14,[rsi+0x380]
001510  62 f2 06 48 52 66 0f     vdpbf16ps zmm4,zmm15,[rsi+0x3c0]
001517  62 f2 3e 48 52 6e 18     vdpbf16ps zmm5,zmm8,[rsi+0x600]
00151e  62 f2 36 48 52 6e 19     vdpbf16ps zmm5,zmm9,[rsi+0x640]
001525  62 f2 2e 48 52 6e 1a     vdpbf16ps zmm5,zmm10,[rsi+0x680]
00152c  62 f2 26 48 52 6e 1b     vdpbf16ps zmm5,zmm11,[rsi+0x6c0]
001533  62 f2 1e 48 52 6e 1c     vdpbf16ps zmm5,zmm12,[rsi+0x700]
00153a  62 f2 16 48 52 6e 1d     vdpbf16ps zmm5,zmm13,[rsi+0x740]
001541  62 f2 0e 48 52 6e 1e     vdpbf16ps zmm5,zmm14,[rsi+0x780]
001548  62 f2 06 48 52 6e 1f     vdpbf16ps zmm5,zmm15,[rsi+0x7c0]
00154f  62 f2 3e 48 52 76 28     vdpbf16ps zmm6,zmm8,[rsi+0xa00]
001556  62 f2 36 48 52 76 29     vdpbf16ps zmm6,zmm9,[rsi+0xa40]
00155d  62 f2 2e 48 52 76 2a     vdpbf16ps zmm6,zmm10,[rsi+0xa80]
001564  62 f2 26 48 52 76 2b     vdpbf16ps zmm6,zmm11,[rsi+0xac0]
00156b  62 f2 1e 48 52 76 2c     vdpbf16ps zmm6,zmm12,[rsi+0xb00]
001572  62 f2 16 48 52 76 2d     vdpbf16ps zmm6,zmm13,[rsi+0xb40]
001579  62 f2 0e 48 52 76 2e     vdpbf16ps zmm6,zmm14,[rsi+0xb80]
001580  62 f2 06 48 52 76 2f     vdpbf16ps zmm6,zmm15,[rsi+0xbc0]
001587  62 f2 3e 48 52 7e 38     vdpbf16ps zmm7,zmm8,[rsi+0xe00]
00158e  62 f2 36 48 52 7e 39     vdpbf16ps zmm7,zmm9,[rsi+0xe40]
001595  62 f2 2e 48 52 7e 3a     vdpbf16ps zmm7,zmm10,[rsi+0xe80]
00159c  62 f2 26 48 52 7e 3b     vdpbf16ps zmm7,zmm11,[rsi+0xec0]
0015a3  62 f2 1e 48 52 7e 3c     vdpbf16ps zmm7,zmm12,[rsi+0xf00]
0015aa  62 f2 16 48 52 7e 3d     vdpbf16ps zmm7,zmm13,[rsi+0xf40]
0015b1  62 f2 0e 48 52 7e 3e     vdpbf16ps zmm7,zmm14,[rsi+0xf80]
0015b8  62 f2 06 48 52 7e 3f     vdpbf16ps zmm7,zmm15,[rsi+0xfc0]
0015bf  62 63 fd 48 23 f9 ee     vshuff64x2 zmm31,zmm0,zmm1,0xee
0015c6  62 f3 fd 48 23 c1 44     vshuff64x2 zmm0,zmm0,zmm1,0x44
0015cd  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
0015d3  62 63 ed 48 23 fb ee     vshuff64x2 zmm31,zmm2,zmm3,0xee
0015da  62 f3 ed 48 23 d3 44     vshuff64x2 zmm2,zmm2,zmm3,0x44
0015e1  62 91 6c 48 58 d7        vaddps    zmm2,zmm2,zmm31
0015e7  62 63 dd 48 23 fd ee     vshuff64x2 zmm31,zmm4,zmm5,0xee
0015ee  62 f3 dd 48 23 e5 44     vshuff64x2 zmm4,zmm4,zmm5,0x44
0015f5  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
0015fb  62 63 cd 48 23 ff ee     vshuff64x2 zmm31,zmm6,zmm7,0xee
001602  62 f3 cd 48 23 f7 44     vshuff64x2 zmm6,zmm6,zmm7,0x44
001609  62 91 4c 48 58 f7        vaddps    zmm6,zmm6,zmm31
00160f  62 63 fd 48 23 fa dd     vshuff64x2 zmm31,zmm0,zmm2,0xdd
001616  62 f3 fd 48 23 c2 88     vshuff64x2 zmm0,zmm0,zmm2,0x88
00161d  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001623  62 63 dd 48 23 fe dd     vshuff64x2 zmm31,zmm4,zmm6,0xdd
00162a  62 f3 dd 48 23 e6 88     vshuff64x2 zmm4,zmm4,zmm6,0x88
001631  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
001637  62 61 7c 48 c6 fc dd     vshufps   zmm31,zmm0,zmm4,0xdd
00163e  62 f1 7c 48 c6 c4 88     vshufps   zmm0,zmm0,zmm4,0x88
001645  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
00164b  62 61 7c 48 c6 f8 dd     vshufps   zmm31,zmm0,zmm0,0xdd
001652  62 f1 7c 48 c6 c0 88     vshufps   zmm0,zmm0,zmm0,0x88
001659  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
00165f  62 91 7c 48 59 c6        vmulps    zmm0,zmm0,zmm30
001665  62 d2 7d 49 8a 04 19     vcompressps [r9+rbx]{k1},zmm0
00166c  62 71 ff 48 6f 87 00 80 00 00 vmovdqu16 zmm8,[rdi+0x8000]
001676  62 71 ff 48 6f 8f 40 80 00 00 vmovdqu16 zmm9,[rdi+0x8040]
001680  62 71 ff 48 6f 97 80 80 00 00 vmovdqu16 zmm10,[rdi+0x8080]
00168a  62 71 ff 48 6f 9f c0 80 00 00 vmovdqu16 zmm11,[rdi+0x80c0]
001694  62 71 ff 48 6f a7 00 81 00 00 vmovdqu16 zmm12,[rdi+0x8100]
00169e  62 71 ff 48 6f af 40 81 00 00 vmovdqu16 zmm13,[rdi+0x8140]
0016a8  62 71 ff 48 6f b7 80 81 00 00 vmovdqu16 zmm14,[rdi+0x8180]
0016b2  62 71 ff 48 6f bf c0 81 00 00 vmovdqu16 zmm15,[rdi+0x81c0]
0016bc  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0016c2  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0016c8  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0016ce  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0016d4  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0016da  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0016e0  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0016e6  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0016ec  62 f2 3e 48 52 06        vdpbf16ps zmm0,zmm8,[rsi]
0016f2  62 f2 36 48 52 46 01     vdpbf16ps zmm0,zmm9,[rsi+0x40]
0016f9  62 f2 2e 48 52 46 02     vdpbf16ps zmm0,zmm10,[rsi+0x80]
001700  62 f2 26 48 52 46 03     vdpbf16ps zmm0,zmm11,[rsi+0xc0]
001707  62 f2 1e 48 52 46 04     vdpbf16ps zmm0,zmm12,[rsi+0x100]
00170e  62 f2 16 48 52 46 05     vdpbf16ps zmm0,zmm13,[rsi+0x140]
001715  62 f2 0e 48 52 46 06     vdpbf16ps zmm0,zmm14,[rsi+0x180]
00171c  62 f2 06 48 52 46 07     vdpbf16ps zmm0,zmm15,[rsi+0x1c0]
001723  62 f2 3e 48 52 4e 10     vdpbf16ps zmm1,zmm8,[rsi+0x400]
00172a  62 f2 36 48 52 4e 11     vdpbf16ps zmm1,zmm9,[rsi+0x440]
001731  62 f2 2e 48 52 4e 12     vdpbf16ps zmm1,zmm10,[rsi+0x480]
001738  62 f2 26 48 52 4e 13     vdpbf16ps zmm1,zmm11,[rsi+0x4c0]
00173f  62 f2 1e 48 52 4e 14     vdpbf16ps zmm1,zmm12,[rsi+0x500]
001746  62 f2 16 48 52 4e 15     vdpbf16ps zmm1,zmm13,[rsi+0x540]
00174d  62 f2 0e 48 52 4e 16     vdpbf16ps zmm1,zmm14,[rsi+0x580]
001754  62 f2 06 48 52 4e 17     vdpbf16ps zmm1,zmm15,[rsi+0x5c0]
00175b  62 f2 3e 48 52 56 20     vdpbf16ps zmm2,zmm8,[rsi+0x800]
001762  62 f2 36 48 52 56 21     vdpbf16ps zmm2,zmm9,[rsi+0x840]
001769  62 f2 2e 48 52 56 22     vdpbf16ps zmm2,zmm10,[rsi+0x880]
001770  62 f2 26 48 52 56 23     vdpbf16ps zmm2,zmm11,[rsi+0x8c0]
001777  62 f2 1e 48 52 56 24     vdpbf16ps zmm2,zmm12,[rsi+0x900]
00177e  62 f2 16 48 52 56 25     vdpbf16ps zmm2,zmm13,[rsi+0x940]
001785  62 f2 0e 48 52 56 26     vdpbf16ps zmm2,zmm14,[rsi+0x980]
00178c  62 f2 06 48 52 56 27     vdpbf16ps zmm2,zmm15,[rsi+0x9c0]
001793  62 f2 3e 48 52 5e 30     vdpbf16ps zmm3,zmm8,[rsi+0xc00]
00179a  62 f2 36 48 52 5e 31     vdpbf16ps zmm3,zmm9,[rsi+0xc40]
0017a1  62 f2 2e 48 52 5e 32     vdpbf16ps zmm3,zmm10,[rsi+0xc80]
0017a8  62 f2 26 48 52 5e 33     vdpbf16ps zmm3,zmm11,[rsi+0xcc0]
0017af  62 f2 1e 48 52 5e 34     vdpbf16ps zmm3,zmm12,[rsi+0xd00]
0017b6  62 f2 16 48 52 5e 35     vdpbf16ps zmm3,zmm13,[rsi+0xd40]
0017bd  62 f2 0e 48 52 5e 36     vdpbf16ps zmm3,zmm14,[rsi+0xd80]
0017c4  62 f2 06 48 52 5e 37     vdpbf16ps zmm3,zmm15,[rsi+0xdc0]
0017cb  62 f2 3e 48 52 66 08     vdpbf16ps zmm4,zmm8,[rsi+0x200]
0017d2  62 f2 36 48 52 66 09     vdpbf16ps zmm4,zmm9,[rsi+0x240]
0017d9  62 f2 2e 48 52 66 0a     vdpbf16ps zmm4,zmm10,[rsi+0x280]
0017e0  62 f2 26 48 52 66 0b     vdpbf16ps zmm4,zmm11,[rsi+0x2c0]
0017e7  62 f2 1e 48 52 66 0c     vdpbf16ps zmm4,zmm12,[rsi+0x300]
0017ee  62 f2 16 48 52 66 0d     vdpbf16ps zmm4,zmm13,[rsi+0x340]
0017f5  62 f2 0e 48 52 66 0e     vdpbf16ps zmm4,zmm14,[rsi+0x380]
0017fc  62 f2 06 48 52 66 0f     vdpbf16ps zmm4,zmm15,[rsi+0x3c0]
001803  62 f2 3e 48 52 6e 18     vdpbf16ps zmm5,zmm8,[rsi+0x600]
00180a  62 f2 36 48 52 6e 19     vdpbf16ps zmm5,zmm9,[rsi+0x640]
001811  62 f2 2e 48 52 6e 1a     vdpbf16ps zmm5,zmm10,[rsi+0x680]
001818  62 f2 26 48 52 6e 1b     vdpbf16ps zmm5,zmm11,[rsi+0x6c0]
00181f  62 f2 1e 48 52 6e 1c     vdpbf16ps zmm5,zmm12,[rsi+0x700]
001826  62 f2 16 48 52 6e 1d     vdpbf16ps zmm5,zmm13,[rsi+0x740]
00182d  62 f2 0e 48 52 6e 1e     vdpbf16ps zmm5,zmm14,[rsi+0x780]
001834  62 f2 06 48 52 6e 1f     vdpbf16ps zmm5,zmm15,[rsi+0x7c0]
00183b  62 f2 3e 48 52 76 28     vdpbf16ps zmm6,zmm8,[rsi+0xa00]
001842  62 f2 36 48 52 76 29     vdpbf16ps zmm6,zmm9,[rsi+0xa40]
001849  62 f2 2e 48 52 76 2a     vdpbf16ps zmm6,zmm10,[rsi+0xa80]
001850  62 f2 26 48 52 76 2b     vdpbf16ps zmm6,zmm11,[rsi+0xac0]
001857  62 f2 1e 48 52 76 2c     vdpbf16ps zmm6,zmm12,[rsi+0xb00]
00185e  62 f2 16 48 52 76 2d     vdpbf16ps zmm6,zmm13,[rsi+0xb40]
001865  62 f2 0e 48 52 76 2e     vdpbf16ps zmm6,zmm14,[rsi+0xb80]
00186c  62 f2 06 48 52 76 2f     vdpbf16ps zmm6,zmm15,[rsi+0xbc0]
001873  62 f2 3e 48 52 7e 38     vdpbf16ps zmm7,zmm8,[rsi+0xe00]
00187a  62 f2 36 48 52 7e 39     vdpbf16ps zmm7,zmm9,[rsi+0xe40]
001881  62 f2 2e 48 52 7e 3a     vdpbf16ps zmm7,zmm10,[rsi+0xe80]
001888  62 f2 26 48 52 7e 3b     vdpbf16ps zmm7,zmm11,[rsi+0xec0]
00188f  62 f2 1e 48 52 7e 3c     vdpbf16ps zmm7,zmm12,[rsi+0xf00]
001896  62 f2 16 48 52 7e 3d     vdpbf16ps zmm7,zmm13,[rsi+0xf40]
00189d  62 f2 0e 48 52 7e 3e     vdpbf16ps zmm7,zmm14,[rsi+0xf80]
0018a4  62 f2 06 48 52 7e 3f     vdpbf16ps zmm7,zmm15,[rsi+0xfc0]
0018ab  62 63 fd 48 23 f9 ee     vshuff64x2 zmm31,zmm0,zmm1,0xee
0018b2  62 f3 fd 48 23 c1 44     vshuff64x2 zmm0,zmm0,zmm1,0x44
0018b9  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
0018bf  62 63 ed 48 23 fb ee     vshuff64x2 zmm31,zmm2,zmm3,0xee
0018c6  62 f3 ed 48 23 d3 44     vshuff64x2 zmm2,zmm2,zmm3,0x44
0018cd  62 91 6c 48 58 d7        vaddps    zmm2,zmm2,zmm31
0018d3  62 63 dd 48 23 fd ee     vshuff64x2 zmm31,zmm4,zmm5,0xee
0018da  62 f3 dd 48 23 e5 44     vshuff64x2 zmm4,zmm4,zmm5,0x44
0018e1  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
0018e7  62 63 cd 48 23 ff ee     vshuff64x2 zmm31,zmm6,zmm7,0xee
0018ee  62 f3 cd 48 23 f7 44     vshuff64x2 zmm6,zmm6,zmm7,0x44
0018f5  62 91 4c 48 58 f7        vaddps    zmm6,zmm6,zmm31
0018fb  62 63 fd 48 23 fa dd     vshuff64x2 zmm31,zmm0,zmm2,0xdd
001902  62 f3 fd 48 23 c2 88     vshuff64x2 zmm0,zmm0,zmm2,0x88
001909  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
00190f  62 63 dd 48 23 fe dd     vshuff64x2 zmm31,zmm4,zmm6,0xdd
001916  62 f3 dd 48 23 e6 88     vshuff64x2 zmm4,zmm4,zmm6,0x88
00191d  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
001923  62 61 7c 48 c6 fc dd     vshufps   zmm31,zmm0,zmm4,0xdd
00192a  62 f1 7c 48 c6 c4 88     vshufps   zmm0,zmm0,zmm4,0x88
001931  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001937  62 61 7c 48 c6 f8 dd     vshufps   zmm31,zmm0,zmm0,0xdd
00193e  62 f1 7c 48 c6 c0 88     vshufps   zmm0,zmm0,zmm0,0x88
001945  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
00194b  62 91 7c 48 59 c6        vmulps    zmm0,zmm0,zmm30
001951  62 d2 7d 49 8a 04 1b     vcompressps [r11+rbx]{k1},zmm0
001958  62 71 ff 48 6f 87 00 a0 00 00 vmovdqu16 zmm8,[rdi+0xa000]
001962  62 71 ff 48 6f 8f 40 a0 00 00 vmovdqu16 zmm9,[rdi+0xa040]
00196c  62 71 ff 48 6f 97 80 a0 00 00 vmovdqu16 zmm10,[rdi+0xa080]
001976  62 71 ff 48 6f 9f c0 a0 00 00 vmovdqu16 zmm11,[rdi+0xa0c0]
001980  62 71 ff 48 6f a7 00 a1 00 00 vmovdqu16 zmm12,[rdi+0xa100]
00198a  62 71 ff 48 6f af 40 a1 00 00 vmovdqu16 zmm13,[rdi+0xa140]
001994  62 71 ff 48 6f b7 80 a1 00 00 vmovdqu16 zmm14,[rdi+0xa180]
00199e  62 71 ff 48 6f bf c0 a1 00 00 vmovdqu16 zmm15,[rdi+0xa1c0]
0019a8  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0019ae  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
0019b4  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0019ba  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
0019c0  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
0019c6  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
0019cc  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
0019d2  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
0019d8  62 f2 3e 48 52 06        vdpbf16ps zmm0,zmm8,[rsi]
0019de  62 f2 36 48 52 46 01     vdpbf16ps zmm0,zmm9,[rsi+0x40]
0019e5  62 f2 2e 48 52 46 02     vdpbf16ps zmm0,zmm10,[rsi+0x80]
0019ec  62 f2 26 48 52 46 03     vdpbf16ps zmm0,zmm11,[rsi+0xc0]
0019f3  62 f2 1e 48 52 46 04     vdpbf16ps zmm0,zmm12,[rsi+0x100]
0019fa  62 f2 16 48 52 46 05     vdpbf16ps zmm0,zmm13,[rsi+0x140]
001a01  62 f2 0e 48 52 46 06     vdpbf16ps zmm0,zmm14,[rsi+0x180]
001a08  62 f2 06 48 52 46 07     vdpbf16ps zmm0,zmm15,[rsi+0x1c0]
001a0f  62 f2 3e 48 52 4e 10     vdpbf16ps zmm1,zmm8,[rsi+0x400]
001a16  62 f2 36 48 52 4e 11     vdpbf16ps zmm1,zmm9,[rsi+0x440]
001a1d  62 f2 2e 48 52 4e 12     vdpbf16ps zmm1,zmm10,[rsi+0x480]
001a24  62 f2 26 48 52 4e 13     vdpbf16ps zmm1,zmm11,[rsi+0x4c0]
001a2b  62 f2 1e 48 52 4e 14     vdpbf16ps zmm1,zmm12,[rsi+0x500]
001a32  62 f2 16 48 52 4e 15     vdpbf16ps zmm1,zmm13,[rsi+0x540]
001a39  62 f2 0e 48 52 4e 16     vdpbf16ps zmm1,zmm14,[rsi+0x580]
001a40  62 f2 06 48 52 4e 17     vdpbf16ps zmm1,zmm15,[rsi+0x5c0]
001a47  62 f2 3e 48 52 56 20     vdpbf16ps zmm2,zmm8,[rsi+0x800]
001a4e  62 f2 36 48 52 56 21     vdpbf16ps zmm2,zmm9,[rsi+0x840]
001a55  62 f2 2e 48 52 56 22     vdpbf16ps zmm2,zmm10,[rsi+0x880]
001a5c  62 f2 26 48 52 56 23     vdpbf16ps zmm2,zmm11,[rsi+0x8c0]
001a63  62 f2 1e 48 52 56 24     vdpbf16ps zmm2,zmm12,[rsi+0x900]
001a6a  62 f2 16 48 52 56 25     vdpbf16ps zmm2,zmm13,[rsi+0x940]
001a71  62 f2 0e 48 52 56 26     vdpbf16ps zmm2,zmm14,[rsi+0x980]
001a78  62 f2 06 48 52 56 27     vdpbf16ps zmm2,zmm15,[rsi+0x9c0]
001a7f  62 f2 3e 48 52 5e 30     vdpbf16ps zmm3,zmm8,[rsi+0xc00]
001a86  62 f2 36 48 52 5e 31     vdpbf16ps zmm3,zmm9,[rsi+0xc40]
001a8d  62 f2 2e 48 52 5e 32     vdpbf16ps zmm3,zmm10,[rsi+0xc80]
001a94  62 f2 26 48 52 5e 33     vdpbf16ps zmm3,zmm11,[rsi+0xcc0]
001a9b  62 f2 1e 48 52 5e 34     vdpbf16ps zmm3,zmm12,[rsi+0xd00]
001aa2  62 f2 16 48 52 5e 35     vdpbf16ps zmm3,zmm13,[rsi+0xd40]
001aa9  62 f2 0e 48 52 5e 36     vdpbf16ps zmm3,zmm14,[rsi+0xd80]
001ab0  62 f2 06 48 52 5e 37     vdpbf16ps zmm3,zmm15,[rsi+0xdc0]
001ab7  62 f2 3e 48 52 66 08     vdpbf16ps zmm4,zmm8,[rsi+0x200]
001abe  62 f2 36 48 52 66 09     vdpbf16ps zmm4,zmm9,[rsi+0x240]
001ac5  62 f2 2e 48 52 66 0a     vdpbf16ps zmm4,zmm10,[rsi+0x280]
001acc  62 f2 26 48 52 66 0b     vdpbf16ps zmm4,zmm11,[rsi+0x2c0]
001ad3  62 f2 1e 48 52 66 0c     vdpbf16ps zmm4,zmm12,[rsi+0x300]
001ada  62 f2 16 48 52 66 0d     vdpbf16ps zmm4,zmm13,[rsi+0x340]
001ae1  62 f2 0e 48 52 66 0e     vdpbf16ps zmm4,zmm14,[rsi+0x380]
001ae8  62 f2 06 48 52 66 0f     vdpbf16ps zmm4,zmm15,[rsi+0x3c0]
001aef  62 f2 3e 48 52 6e 18     vdpbf16ps zmm5,zmm8,[rsi+0x600]
001af6  62 f2 36 48 52 6e 19     vdpbf16ps zmm5,zmm9,[rsi+0x640]
001afd  62 f2 2e 48 52 6e 1a     vdpbf16ps zmm5,zmm10,[rsi+0x680]
001b04  62 f2 26 48 52 6e 1b     vdpbf16ps zmm5,zmm11,[rsi+0x6c0]
001b0b  62 f2 1e 48 52 6e 1c     vdpbf16ps zmm5,zmm12,[rsi+0x700]
001b12  62 f2 16 48 52 6e 1d     vdpbf16ps zmm5,zmm13,[rsi+0x740]
001b19  62 f2 0e 48 52 6e 1e     vdpbf16ps zmm5,zmm14,[rsi+0x780]
001b20  62 f2 06 48 52 6e 1f     vdpbf16ps zmm5,zmm15,[rsi+0x7c0]
001b27  62 f2 3e 48 52 76 28     vdpbf16ps zmm6,zmm8,[rsi+0xa00]
001b2e  62 f2 36 48 52 76 29     vdpbf16ps zmm6,zmm9,[rsi+0xa40]
001b35  62 f2 2e 48 52 76 2a     vdpbf16ps zmm6,zmm10,[rsi+0xa80]
001b3c  62 f2 26 48 52 76 2b     vdpbf16ps zmm6,zmm11,[rsi+0xac0]
001b43  62 f2 1e 48 52 76 2c     vdpbf16ps zmm6,zmm12,[rsi+0xb00]
001b4a  62 f2 16 48 52 76 2d     vdpbf16ps zmm6,zmm13,[rsi+0xb40]
001b51  62 f2 0e 48 52 76 2e     vdpbf16ps zmm6,zmm14,[rsi+0xb80]
001b58  62 f2 06 48 52 76 2f     vdpbf16ps zmm6,zmm15,[rsi+0xbc0]
001b5f  62 f2 3e 48 52 7e 38     vdpbf16ps zmm7,zmm8,[rsi+0xe00]
001b66  62 f2 36 48 52 7e 39     vdpbf16ps zmm7,zmm9,[rsi+0xe40]
001b6d  62 f2 2e 48 52 7e 3a     vdpbf16ps zmm7,zmm10,[rsi+0xe80]
001b74  62 f2 26 48 52 7e 3b     vdpbf16ps zmm7,zmm11,[rsi+0xec0]
001b7b  62 f2 1e 48 52 7e 3c     vdpbf16ps zmm7,zmm12,[rsi+0xf00]
001b82  62 f2 16 48 52 7e 3d     vdpbf16ps zmm7,zmm13,[rsi+0xf40]
001b89  62 f2 0e 48 52 7e 3e     vdpbf16ps zmm7,zmm14,[rsi+0xf80]
001b90  62 f2 06 48 52 7e 3f     vdpbf16ps zmm7,zmm15,[rsi+0xfc0]
001b97  62 63 fd 48 23 f9 ee     vshuff64x2 zmm31,zmm0,zmm1,0xee
001b9e  62 f3 fd 48 23 c1 44     vshuff64x2 zmm0,zmm0,zmm1,0x44
001ba5  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001bab  62 63 ed 48 23 fb ee     vshuff64x2 zmm31,zmm2,zmm3,0xee
001bb2  62 f3 ed 48 23 d3 44     vshuff64x2 zmm2,zmm2,zmm3,0x44
001bb9  62 91 6c 48 58 d7        vaddps    zmm2,zmm2,zmm31
001bbf  62 63 dd 48 23 fd ee     vshuff64x2 zmm31,zmm4,zmm5,0xee
001bc6  62 f3 dd 48 23 e5 44     vshuff64x2 zmm4,zmm4,zmm5,0x44
001bcd  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
001bd3  62 63 cd 48 23 ff ee     vshuff64x2 zmm31,zmm6,zmm7,0xee
001bda  62 f3 cd 48 23 f7 44     vshuff64x2 zmm6,zmm6,zmm7,0x44
001be1  62 91 4c 48 58 f7        vaddps    zmm6,zmm6,zmm31
001be7  62 63 fd 48 23 fa dd     vshuff64x2 zmm31,zmm0,zmm2,0xdd
001bee  62 f3 fd 48 23 c2 88     vshuff64x2 zmm0,zmm0,zmm2,0x88
001bf5  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001bfb  62 63 dd 48 23 fe dd     vshuff64x2 zmm31,zmm4,zmm6,0xdd
001c02  62 f3 dd 48 23 e6 88     vshuff64x2 zmm4,zmm4,zmm6,0x88
001c09  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
001c0f  62 61 7c 48 c6 fc dd     vshufps   zmm31,zmm0,zmm4,0xdd
001c16  62 f1 7c 48 c6 c4 88     vshufps   zmm0,zmm0,zmm4,0x88
001c1d  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001c23  62 61 7c 48 c6 f8 dd     vshufps   zmm31,zmm0,zmm0,0xdd
001c2a  62 f1 7c 48 c6 c0 88     vshufps   zmm0,zmm0,zmm0,0x88
001c31  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001c37  62 91 7c 48 59 c6        vmulps    zmm0,zmm0,zmm30
001c3d  62 d2 7d 49 8a 04 1c     vcompressps [r12+rbx]{k1},zmm0
001c44  62 71 ff 48 6f 87 00 c0 00 00 vmovdqu16 zmm8,[rdi+0xc000]
001c4e  62 71 ff 48 6f 8f 40 c0 00 00 vmovdqu16 zmm9,[rdi+0xc040]
001c58  62 71 ff 48 6f 97 80 c0 00 00 vmovdqu16 zmm10,[rdi+0xc080]
001c62  62 71 ff 48 6f 9f c0 c0 00 00 vmovdqu16 zmm11,[rdi+0xc0c0]
001c6c  62 71 ff 48 6f a7 00 c1 00 00 vmovdqu16 zmm12,[rdi+0xc100]
001c76  62 71 ff 48 6f af 40 c1 00 00 vmovdqu16 zmm13,[rdi+0xc140]
001c80  62 71 ff 48 6f b7 80 c1 00 00 vmovdqu16 zmm14,[rdi+0xc180]
001c8a  62 71 ff 48 6f bf c0 c1 00 00 vmovdqu16 zmm15,[rdi+0xc1c0]
001c94  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001c9a  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
001ca0  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001ca6  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001cac  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001cb2  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001cb8  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
001cbe  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001cc4  62 f2 3e 48 52 06        vdpbf16ps zmm0,zmm8,[rsi]
001cca  62 f2 36 48 52 46 01     vdpbf16ps zmm0,zmm9,[rsi+0x40]
001cd1  62 f2 2e 48 52 46 02     vdpbf16ps zmm0,zmm10,[rsi+0x80]
001cd8  62 f2 26 48 52 46 03     vdpbf16ps zmm0,zmm11,[rsi+0xc0]
001cdf  62 f2 1e 48 52 46 04     vdpbf16ps zmm0,zmm12,[rsi+0x100]
001ce6  62 f2 16 48 52 46 05     vdpbf16ps zmm0,zmm13,[rsi+0x140]
001ced  62 f2 0e 48 52 46 06     vdpbf16ps zmm0,zmm14,[rsi+0x180]
001cf4  62 f2 06 48 52 46 07     vdpbf16ps zmm0,zmm15,[rsi+0x1c0]
001cfb  62 f2 3e 48 52 4e 10     vdpbf16ps zmm1,zmm8,[rsi+0x400]
001d02  62 f2 36 48 52 4e 11     vdpbf16ps zmm1,zmm9,[rsi+0x440]
001d09  62 f2 2e 48 52 4e 12     vdpbf16ps zmm1,zmm10,[rsi+0x480]
001d10  62 f2 26 48 52 4e 13     vdpbf16ps zmm1,zmm11,[rsi+0x4c0]
001d17  62 f2 1e 48 52 4e 14     vdpbf16ps zmm1,zmm12,[rsi+0x500]
001d1e  62 f2 16 48 52 4e 15     vdpbf16ps zmm1,zmm13,[rsi+0x540]
001d25  62 f2 0e 48 52 4e 16     vdpbf16ps zmm1,zmm14,[rsi+0x580]
001d2c  62 f2 06 48 52 4e 17     vdpbf16ps zmm1,zmm15,[rsi+0x5c0]
001d33  62 f2 3e 48 52 56 20     vdpbf16ps zmm2,zmm8,[rsi+0x800]
001d3a  62 f2 36 48 52 56 21     vdpbf16ps zmm2,zmm9,[rsi+0x840]
001d41  62 f2 2e 48 52 56 22     vdpbf16ps zmm2,zmm10,[rsi+0x880]
001d48  62 f2 26 48 52 56 23     vdpbf16ps zmm2,zmm11,[rsi+0x8c0]
001d4f  62 f2 1e 48 52 56 24     vdpbf16ps zmm2,zmm12,[rsi+0x900]
001d56  62 f2 16 48 52 56 25     vdpbf16ps zmm2,zmm13,[rsi+0x940]
001d5d  62 f2 0e 48 52 56 26     vdpbf16ps zmm2,zmm14,[rsi+0x980]
001d64  62 f2 06 48 52 56 27     vdpbf16ps zmm2,zmm15,[rsi+0x9c0]
001d6b  62 f2 3e 48 52 5e 30     vdpbf16ps zmm3,zmm8,[rsi+0xc00]
001d72  62 f2 36 48 52 5e 31     vdpbf16ps zmm3,zmm9,[rsi+0xc40]
001d79  62 f2 2e 48 52 5e 32     vdpbf16ps zmm3,zmm10,[rsi+0xc80]
001d80  62 f2 26 48 52 5e 33     vdpbf16ps zmm3,zmm11,[rsi+0xcc0]
001d87  62 f2 1e 48 52 5e 34     vdpbf16ps zmm3,zmm12,[rsi+0xd00]
001d8e  62 f2 16 48 52 5e 35     vdpbf16ps zmm3,zmm13,[rsi+0xd40]
001d95  62 f2 0e 48 52 5e 36     vdpbf16ps zmm3,zmm14,[rsi+0xd80]
001d9c  62 f2 06 48 52 5e 37     vdpbf16ps zmm3,zmm15,[rsi+0xdc0]
001da3  62 f2 3e 48 52 66 08     vdpbf16ps zmm4,zmm8,[rsi+0x200]
001daa  62 f2 36 48 52 66 09     vdpbf16ps zmm4,zmm9,[rsi+0x240]
001db1  62 f2 2e 48 52 66 0a     vdpbf16ps zmm4,zmm10,[rsi+0x280]
001db8  62 f2 26 48 52 66 0b     vdpbf16ps zmm4,zmm11,[rsi+0x2c0]
001dbf  62 f2 1e 48 52 66 0c     vdpbf16ps zmm4,zmm12,[rsi+0x300]
001dc6  62 f2 16 48 52 66 0d     vdpbf16ps zmm4,zmm13,[rsi+0x340]
001dcd  62 f2 0e 48 52 66 0e     vdpbf16ps zmm4,zmm14,[rsi+0x380]
001dd4  62 f2 06 48 52 66 0f     vdpbf16ps zmm4,zmm15,[rsi+0x3c0]
001ddb  62 f2 3e 48 52 6e 18     vdpbf16ps zmm5,zmm8,[rsi+0x600]
001de2  62 f2 36 48 52 6e 19     vdpbf16ps zmm5,zmm9,[rsi+0x640]
001de9  62 f2 2e 48 52 6e 1a     vdpbf16ps zmm5,zmm10,[rsi+0x680]
001df0  62 f2 26 48 52 6e 1b     vdpbf16ps zmm5,zmm11,[rsi+0x6c0]
001df7  62 f2 1e 48 52 6e 1c     vdpbf16ps zmm5,zmm12,[rsi+0x700]
001dfe  62 f2 16 48 52 6e 1d     vdpbf16ps zmm5,zmm13,[rsi+0x740]
001e05  62 f2 0e 48 52 6e 1e     vdpbf16ps zmm5,zmm14,[rsi+0x780]
001e0c  62 f2 06 48 52 6e 1f     vdpbf16ps zmm5,zmm15,[rsi+0x7c0]
001e13  62 f2 3e 48 52 76 28     vdpbf16ps zmm6,zmm8,[rsi+0xa00]
001e1a  62 f2 36 48 52 76 29     vdpbf16ps zmm6,zmm9,[rsi+0xa40]
001e21  62 f2 2e 48 52 76 2a     vdpbf16ps zmm6,zmm10,[rsi+0xa80]
001e28  62 f2 26 48 52 76 2b     vdpbf16ps zmm6,zmm11,[rsi+0xac0]
001e2f  62 f2 1e 48 52 76 2c     vdpbf16ps zmm6,zmm12,[rsi+0xb00]
001e36  62 f2 16 48 52 76 2d     vdpbf16ps zmm6,zmm13,[rsi+0xb40]
001e3d  62 f2 0e 48 52 76 2e     vdpbf16ps zmm6,zmm14,[rsi+0xb80]
001e44  62 f2 06 48 52 76 2f     vdpbf16ps zmm6,zmm15,[rsi+0xbc0]
001e4b  62 f2 3e 48 52 7e 38     vdpbf16ps zmm7,zmm8,[rsi+0xe00]
001e52  62 f2 36 48 52 7e 39     vdpbf16ps zmm7,zmm9,[rsi+0xe40]
001e59  62 f2 2e 48 52 7e 3a     vdpbf16ps zmm7,zmm10,[rsi+0xe80]
001e60  62 f2 26 48 52 7e 3b     vdpbf16ps zmm7,zmm11,[rsi+0xec0]
001e67  62 f2 1e 48 52 7e 3c     vdpbf16ps zmm7,zmm12,[rsi+0xf00]
001e6e  62 f2 16 48 52 7e 3d     vdpbf16ps zmm7,zmm13,[rsi+0xf40]
001e75  62 f2 0e 48 52 7e 3e     vdpbf16ps zmm7,zmm14,[rsi+0xf80]
001e7c  62 f2 06 48 52 7e 3f     vdpbf16ps zmm7,zmm15,[rsi+0xfc0]
001e83  62 63 fd 48 23 f9 ee     vshuff64x2 zmm31,zmm0,zmm1,0xee
001e8a  62 f3 fd 48 23 c1 44     vshuff64x2 zmm0,zmm0,zmm1,0x44
001e91  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001e97  62 63 ed 48 23 fb ee     vshuff64x2 zmm31,zmm2,zmm3,0xee
001e9e  62 f3 ed 48 23 d3 44     vshuff64x2 zmm2,zmm2,zmm3,0x44
001ea5  62 91 6c 48 58 d7        vaddps    zmm2,zmm2,zmm31
001eab  62 63 dd 48 23 fd ee     vshuff64x2 zmm31,zmm4,zmm5,0xee
001eb2  62 f3 dd 48 23 e5 44     vshuff64x2 zmm4,zmm4,zmm5,0x44
001eb9  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
001ebf  62 63 cd 48 23 ff ee     vshuff64x2 zmm31,zmm6,zmm7,0xee
001ec6  62 f3 cd 48 23 f7 44     vshuff64x2 zmm6,zmm6,zmm7,0x44
001ecd  62 91 4c 48 58 f7        vaddps    zmm6,zmm6,zmm31
001ed3  62 63 fd 48 23 fa dd     vshuff64x2 zmm31,zmm0,zmm2,0xdd
001eda  62 f3 fd 48 23 c2 88     vshuff64x2 zmm0,zmm0,zmm2,0x88
001ee1  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001ee7  62 63 dd 48 23 fe dd     vshuff64x2 zmm31,zmm4,zmm6,0xdd
001eee  62 f3 dd 48 23 e6 88     vshuff64x2 zmm4,zmm4,zmm6,0x88
001ef5  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
001efb  62 61 7c 48 c6 fc dd     vshufps   zmm31,zmm0,zmm4,0xdd
001f02  62 f1 7c 48 c6 c4 88     vshufps   zmm0,zmm0,zmm4,0x88
001f09  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001f0f  62 61 7c 48 c6 f8 dd     vshufps   zmm31,zmm0,zmm0,0xdd
001f16  62 f1 7c 48 c6 c0 88     vshufps   zmm0,zmm0,zmm0,0x88
001f1d  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
001f23  62 91 7c 48 59 c6        vmulps    zmm0,zmm0,zmm30
001f29  62 d2 7d 49 8a 44 1d 00  vcompressps [r13+rbx]{k1},zmm0
001f31  62 71 ff 48 6f 87 00 e0 00 00 vmovdqu16 zmm8,[rdi+0xe000]
001f3b  62 71 ff 48 6f 8f 40 e0 00 00 vmovdqu16 zmm9,[rdi+0xe040]
001f45  62 71 ff 48 6f 97 80 e0 00 00 vmovdqu16 zmm10,[rdi+0xe080]
001f4f  62 71 ff 48 6f 9f c0 e0 00 00 vmovdqu16 zmm11,[rdi+0xe0c0]
001f59  62 71 ff 48 6f a7 00 e1 00 00 vmovdqu16 zmm12,[rdi+0xe100]
001f63  62 71 ff 48 6f af 40 e1 00 00 vmovdqu16 zmm13,[rdi+0xe140]
001f6d  62 71 ff 48 6f b7 80 e1 00 00 vmovdqu16 zmm14,[rdi+0xe180]
001f77  62 71 ff 48 6f bf c0 e1 00 00 vmovdqu16 zmm15,[rdi+0xe1c0]
001f81  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
001f87  62 f1 74 48 57 c9        vxorps    zmm1,zmm1,zmm1
001f8d  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
001f93  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
001f99  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
001f9f  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
001fa5  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
001fab  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
001fb1  62 f2 3e 48 52 06        vdpbf16ps zmm0,zmm8,[rsi]
001fb7  62 f2 36 48 52 46 01     vdpbf16ps zmm0,zmm9,[rsi+0x40]
001fbe  62 f2 2e 48 52 46 02     vdpbf16ps zmm0,zmm10,[rsi+0x80]
001fc5  62 f2 26 48 52 46 03     vdpbf16ps zmm0,zmm11,[rsi+0xc0]
001fcc  62 f2 1e 48 52 46 04     vdpbf16ps zmm0,zmm12,[rsi+0x100]
001fd3  62 f2 16 48 52 46 05     vdpbf16ps zmm0,zmm13,[rsi+0x140]
001fda  62 f2 0e 48 52 46 06     vdpbf16ps zmm0,zmm14,[rsi+0x180]
001fe1  62 f2 06 48 52 46 07     vdpbf16ps zmm0,zmm15,[rsi+0x1c0]
001fe8  62 f2 3e 48 52 4e 10     vdpbf16ps zmm1,zmm8,[rsi+0x400]
001fef  62 f2 36 48 52 4e 11     vdpbf16ps zmm1,zmm9,[rsi+0x440]
001ff6  62 f2 2e 48 52 4e 12     vdpbf16ps zmm1,zmm10,[rsi+0x480]
001ffd  62 f2 26 48 52 4e 13     vdpbf16ps zmm1,zmm11,[rsi+0x4c0]
002004  62 f2 1e 48 52 4e 14     vdpbf16ps zmm1,zmm12,[rsi+0x500]
00200b  62 f2 16 48 52 4e 15     vdpbf16ps zmm1,zmm13,[rsi+0x540]
002012  62 f2 0e 48 52 4e 16     vdpbf16ps zmm1,zmm14,[rsi+0x580]
002019  62 f2 06 48 52 4e 17     vdpbf16ps zmm1,zmm15,[rsi+0x5c0]
002020  62 f2 3e 48 52 56 20     vdpbf16ps zmm2,zmm8,[rsi+0x800]
002027  62 f2 36 48 52 56 21     vdpbf16ps zmm2,zmm9,[rsi+0x840]
00202e  62 f2 2e 48 52 56 22     vdpbf16ps zmm2,zmm10,[rsi+0x880]
002035  62 f2 26 48 52 56 23     vdpbf16ps zmm2,zmm11,[rsi+0x8c0]
00203c  62 f2 1e 48 52 56 24     vdpbf16ps zmm2,zmm12,[rsi+0x900]
002043  62 f2 16 48 52 56 25     vdpbf16ps zmm2,zmm13,[rsi+0x940]
00204a  62 f2 0e 48 52 56 26     vdpbf16ps zmm2,zmm14,[rsi+0x980]
002051  62 f2 06 48 52 56 27     vdpbf16ps zmm2,zmm15,[rsi+0x9c0]
002058  62 f2 3e 48 52 5e 30     vdpbf16ps zmm3,zmm8,[rsi+0xc00]
00205f  62 f2 36 48 52 5e 31     vdpbf16ps zmm3,zmm9,[rsi+0xc40]
002066  62 f2 2e 48 52 5e 32     vdpbf16ps zmm3,zmm10,[rsi+0xc80]
00206d  62 f2 26 48 52 5e 33     vdpbf16ps zmm3,zmm11,[rsi+0xcc0]
002074  62 f2 1e 48 52 5e 34     vdpbf16ps zmm3,zmm12,[rsi+0xd00]
00207b  62 f2 16 48 52 5e 35     vdpbf16ps zmm3,zmm13,[rsi+0xd40]
002082  62 f2 0e 48 52 5e 36     vdpbf16ps zmm3,zmm14,[rsi+0xd80]
002089  62 f2 06 48 52 5e 37     vdpbf16ps zmm3,zmm15,[rsi+0xdc0]
002090  62 f2 3e 48 52 66 08     vdpbf16ps zmm4,zmm8,[rsi+0x200]
002097  62 f2 36 48 52 66 09     vdpbf16ps zmm4,zmm9,[rsi+0x240]
00209e  62 f2 2e 48 52 66 0a     vdpbf16ps zmm4,zmm10,[rsi+0x280]
0020a5  62 f2 26 48 52 66 0b     vdpbf16ps zmm4,zmm11,[rsi+0x2c0]
0020ac  62 f2 1e 48 52 66 0c     vdpbf16ps zmm4,zmm12,[rsi+0x300]
0020b3  62 f2 16 48 52 66 0d     vdpbf16ps zmm4,zmm13,[rsi+0x340]
0020ba  62 f2 0e 48 52 66 0e     vdpbf16ps zmm4,zmm14,[rsi+0x380]
0020c1  62 f2 06 48 52 66 0f     vdpbf16ps zmm4,zmm15,[rsi+0x3c0]
0020c8  62 f2 3e 48 52 6e 18     vdpbf16ps zmm5,zmm8,[rsi+0x600]
0020cf  62 f2 36 48 52 6e 19     vdpbf16ps zmm5,zmm9,[rsi+0x640]
0020d6  62 f2 2e 48 52 6e 1a     vdpbf16ps zmm5,zmm10,[rsi+0x680]
0020dd  62 f2 26 48 52 6e 1b     vdpbf16ps zmm5,zmm11,[rsi+0x6c0]
0020e4  62 f2 1e 48 52 6e 1c     vdpbf16ps zmm5,zmm12,[rsi+0x700]
0020eb  62 f2 16 48 52 6e 1d     vdpbf16ps zmm5,zmm13,[rsi+0x740]
0020f2  62 f2 0e 48 52 6e 1e     vdpbf16ps zmm5,zmm14,[rsi+0x780]
0020f9  62 f2 06 48 52 6e 1f     vdpbf16ps zmm5,zmm15,[rsi+0x7c0]
002100  62 f2 3e 48 52 76 28     vdpbf16ps zmm6,zmm8,[rsi+0xa00]
002107  62 f2 36 48 52 76 29     vdpbf16ps zmm6,zmm9,[rsi+0xa40]
00210e  62 f2 2e 48 52 76 2a     vdpbf16ps zmm6,zmm10,[rsi+0xa80]
002115  62 f2 26 48 52 76 2b     vdpbf16ps zmm6,zmm11,[rsi+0xac0]
00211c  62 f2 1e 48 52 76 2c     vdpbf16ps zmm6,zmm12,[rsi+0xb00]
002123  62 f2 16 48 52 76 2d     vdpbf16ps zmm6,zmm13,[rsi+0xb40]
00212a  62 f2 0e 48 52 76 2e     vdpbf16ps zmm6,zmm14,[rsi+0xb80]
002131  62 f2 06 48 52 76 2f     vdpbf16ps zmm6,zmm15,[rsi+0xbc0]
002138  62 f2 3e 48 52 7e 38     vdpbf16ps zmm7,zmm8,[rsi+0xe00]
00213f  62 f2 36 48 52 7e 39     vdpbf16ps zmm7,zmm9,[rsi+0xe40]
002146  62 f2 2e 48 52 7e 3a     vdpbf16ps zmm7,zmm10,[rsi+0xe80]
00214d  62 f2 26 48 52 7e 3b     vdpbf16ps zmm7,zmm11,[rsi+0xec0]
002154  62 f2 1e 48 52 7e 3c     vdpbf16ps zmm7,zmm12,[rsi+0xf00]
00215b  62 f2 16 48 52 7e 3d     vdpbf16ps zmm7,zmm13,[rsi+0xf40]
002162  62 f2 0e 48 52 7e 3e     vdpbf16ps zmm7,zmm14,[rsi+0xf80]
002169  62 f2 06 48 52 7e 3f     vdpbf16ps zmm7,zmm15,[rsi+0xfc0]
002170  62 63 fd 48 23 f9 ee     vshuff64x2 zmm31,zmm0,zmm1,0xee
002177  62 f3 fd 48 23 c1 44     vshuff64x2 zmm0,zmm0,zmm1,0x44
00217e  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
002184  62 63 ed 48 23 fb ee     vshuff64x2 zmm31,zmm2,zmm3,0xee
00218b  62 f3 ed 48 23 d3 44     vshuff64x2 zmm2,zmm2,zmm3,0x44
002192  62 91 6c 48 58 d7        vaddps    zmm2,zmm2,zmm31
002198  62 63 dd 48 23 fd ee     vshuff64x2 zmm31,zmm4,zmm5,0xee
00219f  62 f3 dd 48 23 e5 44     vshuff64x2 zmm4,zmm4,zmm5,0x44
0021a6  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
0021ac  62 63 cd 48 23 ff ee     vshuff64x2 zmm31,zmm6,zmm7,0xee
0021b3  62 f3 cd 48 23 f7 44     vshuff64x2 zmm6,zmm6,zmm7,0x44
0021ba  62 91 4c 48 58 f7        vaddps    zmm6,zmm6,zmm31
0021c0  62 63 fd 48 23 fa dd     vshuff64x2 zmm31,zmm0,zmm2,0xdd
0021c7  62 f3 fd 48 23 c2 88     vshuff64x2 zmm0,zmm0,zmm2,0x88
0021ce  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
0021d4  62 63 dd 48 23 fe dd     vshuff64x2 zmm31,zmm4,zmm6,0xdd
0021db  62 f3 dd 48 23 e6 88     vshuff64x2 zmm4,zmm4,zmm6,0x88
0021e2  62 91 5c 48 58 e7        vaddps    zmm4,zmm4,zmm31
0021e8  62 61 7c 48 c6 fc dd     vshufps   zmm31,zmm0,zmm4,0xdd
0021ef  62 f1 7c 48 c6 c4 88     vshufps   zmm0,zmm0,zmm4,0x88
0021f6  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
0021fc  62 61 7c 48 c6 f8 dd     vshufps   zmm31,zmm0,zmm0,0xdd
002203  62 f1 7c 48 c6 c0 88     vshufps   zmm0,zmm0,zmm0,0x88
00220a  62 91 7c 48 58 c7        vaddps    zmm0,zmm0,zmm31
002210  62 91 7c 48 59 c6        vmulps    zmm0,zmm0,zmm30
002216  62 d2 7d 49 8a 04 1e     vcompressps [r14+rbx]{k1},zmm0
00221d  48 81 c6 00 10 00 00     add       rsi,0x1000
002224  48 83 c3 20              add       rbx,0x20
002228  49 ff cf                 dec       r15
00222b  0f 85 a4 e8 ff ff        jne       near 0x0000000000000ad5
002231  c5 fa 10 54 24 78        vmovss    xmm2,[rsp+0x78]
002237  4d 85 d2                 test      r10,r10
00223a  0f 84 19 04 00 00        je        near 0x0000000000002659
002240  62 61 ff 48 6f 3e        vmovdqu16 zmm31,[rsi]
002246  62 61 ff 48 6f 76 01     vmovdqu16 zmm30,[rsi+0x40]
00224d  62 61 ff 48 6f 6e 02     vmovdqu16 zmm29,[rsi+0x80]
002254  62 61 ff 48 6f 66 03     vmovdqu16 zmm28,[rsi+0xc0]
00225b  62 61 ff 48 6f 5e 04     vmovdqu16 zmm27,[rsi+0x100]
002262  62 61 ff 48 6f 56 05     vmovdqu16 zmm26,[rsi+0x140]
002269  62 61 ff 48 6f 4e 06     vmovdqu16 zmm25,[rsi+0x180]
002270  62 61 ff 48 6f 46 07     vmovdqu16 zmm24,[rsi+0x1c0]
002277  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00227d  62 f2 06 40 52 07        vdpbf16ps zmm0,zmm31,[rdi]
002283  62 f2 0e 40 52 47 01     vdpbf16ps zmm0,zmm30,[rdi+0x40]
00228a  62 f2 16 40 52 47 02     vdpbf16ps zmm0,zmm29,[rdi+0x80]
002291  62 f2 1e 40 52 47 03     vdpbf16ps zmm0,zmm28,[rdi+0xc0]
002298  62 f2 26 40 52 47 04     vdpbf16ps zmm0,zmm27,[rdi+0x100]
00229f  62 f2 2e 40 52 47 05     vdpbf16ps zmm0,zmm26,[rdi+0x140]
0022a6  62 f2 36 40 52 47 06     vdpbf16ps zmm0,zmm25,[rdi+0x180]
0022ad  62 f2 3e 40 52 47 07     vdpbf16ps zmm0,zmm24,[rdi+0x1c0]
0022b4  62 f3 fd 48 1b c1 01     vextractf64x4 ymm1,zmm0,1
0022bb  c5 fc 58 c1              vaddps    ymm0,ymm0,ymm1
0022bf  c4 e3 7d 19 c1 01        vextractf128 xmm1,ymm0,1
0022c5  c5 f8 58 c1              vaddps    xmm0,xmm0,xmm1
0022c9  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0022cd  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0022d1  c5 fa 59 c2              vmulss    xmm0,xmm0,xmm2
0022d5  c5 fa 11 04 19           vmovss    [rcx+rbx],xmm0
0022da  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0022e0  62 f2 06 40 52 87 00 20 00 00 vdpbf16ps zmm0,zmm31,[rdi+0x2000]
0022ea  62 f2 0e 40 52 87 40 20 00 00 vdpbf16ps zmm0,zmm30,[rdi+0x2040]
0022f4  62 f2 16 40 52 87 80 20 00 00 vdpbf16ps zmm0,zmm29,[rdi+0x2080]
0022fe  62 f2 1e 40 52 87 c0 20 00 00 vdpbf16ps zmm0,zmm28,[rdi+0x20c0]
002308  62 f2 26 40 52 87 00 21 00 00 vdpbf16ps zmm0,zmm27,[rdi+0x2100]
002312  62 f2 2e 40 52 87 40 21 00 00 vdpbf16ps zmm0,zmm26,[rdi+0x2140]
00231c  62 f2 36 40 52 87 80 21 00 00 vdpbf16ps zmm0,zmm25,[rdi+0x2180]
002326  62 f2 3e 40 52 87 c0 21 00 00 vdpbf16ps zmm0,zmm24,[rdi+0x21c0]
002330  62 f3 fd 48 1b c1 01     vextractf64x4 ymm1,zmm0,1
002337  c5 fc 58 c1              vaddps    ymm0,ymm0,ymm1
00233b  c4 e3 7d 19 c1 01        vextractf128 xmm1,ymm0,1
002341  c5 f8 58 c1              vaddps    xmm0,xmm0,xmm1
002345  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
002349  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
00234d  c5 fa 59 c2              vmulss    xmm0,xmm0,xmm2
002351  c5 fa 11 04 1a           vmovss    [rdx+rbx],xmm0
002356  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
00235c  62 f2 06 40 52 87 00 40 00 00 vdpbf16ps zmm0,zmm31,[rdi+0x4000]
002366  62 f2 0e 40 52 87 40 40 00 00 vdpbf16ps zmm0,zmm30,[rdi+0x4040]
002370  62 f2 16 40 52 87 80 40 00 00 vdpbf16ps zmm0,zmm29,[rdi+0x4080]
00237a  62 f2 1e 40 52 87 c0 40 00 00 vdpbf16ps zmm0,zmm28,[rdi+0x40c0]
002384  62 f2 26 40 52 87 00 41 00 00 vdpbf16ps zmm0,zmm27,[rdi+0x4100]
00238e  62 f2 2e 40 52 87 40 41 00 00 vdpbf16ps zmm0,zmm26,[rdi+0x4140]
002398  62 f2 36 40 52 87 80 41 00 00 vdpbf16ps zmm0,zmm25,[rdi+0x4180]
0023a2  62 f2 3e 40 52 87 c0 41 00 00 vdpbf16ps zmm0,zmm24,[rdi+0x41c0]
0023ac  62 f3 fd 48 1b c1 01     vextractf64x4 ymm1,zmm0,1
0023b3  c5 fc 58 c1              vaddps    ymm0,ymm0,ymm1
0023b7  c4 e3 7d 19 c1 01        vextractf128 xmm1,ymm0,1
0023bd  c5 f8 58 c1              vaddps    xmm0,xmm0,xmm1
0023c1  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0023c5  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0023c9  c5 fa 59 c2              vmulss    xmm0,xmm0,xmm2
0023cd  c4 c1 7a 11 04 18        vmovss    [r8+rbx],xmm0
0023d3  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0023d9  62 f2 06 40 52 87 00 60 00 00 vdpbf16ps zmm0,zmm31,[rdi+0x6000]
0023e3  62 f2 0e 40 52 87 40 60 00 00 vdpbf16ps zmm0,zmm30,[rdi+0x6040]
0023ed  62 f2 16 40 52 87 80 60 00 00 vdpbf16ps zmm0,zmm29,[rdi+0x6080]
0023f7  62 f2 1e 40 52 87 c0 60 00 00 vdpbf16ps zmm0,zmm28,[rdi+0x60c0]
002401  62 f2 26 40 52 87 00 61 00 00 vdpbf16ps zmm0,zmm27,[rdi+0x6100]
00240b  62 f2 2e 40 52 87 40 61 00 00 vdpbf16ps zmm0,zmm26,[rdi+0x6140]
002415  62 f2 36 40 52 87 80 61 00 00 vdpbf16ps zmm0,zmm25,[rdi+0x6180]
00241f  62 f2 3e 40 52 87 c0 61 00 00 vdpbf16ps zmm0,zmm24,[rdi+0x61c0]
002429  62 f3 fd 48 1b c1 01     vextractf64x4 ymm1,zmm0,1
002430  c5 fc 58 c1              vaddps    ymm0,ymm0,ymm1
002434  c4 e3 7d 19 c1 01        vextractf128 xmm1,ymm0,1
00243a  c5 f8 58 c1              vaddps    xmm0,xmm0,xmm1
00243e  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
002442  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
002446  c5 fa 59 c2              vmulss    xmm0,xmm0,xmm2
00244a  c4 c1 7a 11 04 19        vmovss    [r9+rbx],xmm0
002450  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
002456  62 f2 06 40 52 87 00 80 00 00 vdpbf16ps zmm0,zmm31,[rdi+0x8000]
002460  62 f2 0e 40 52 87 40 80 00 00 vdpbf16ps zmm0,zmm30,[rdi+0x8040]
00246a  62 f2 16 40 52 87 80 80 00 00 vdpbf16ps zmm0,zmm29,[rdi+0x8080]
002474  62 f2 1e 40 52 87 c0 80 00 00 vdpbf16ps zmm0,zmm28,[rdi+0x80c0]
00247e  62 f2 26 40 52 87 00 81 00 00 vdpbf16ps zmm0,zmm27,[rdi+0x8100]
002488  62 f2 2e 40 52 87 40 81 00 00 vdpbf16ps zmm0,zmm26,[rdi+0x8140]
002492  62 f2 36 40 52 87 80 81 00 00 vdpbf16ps zmm0,zmm25,[rdi+0x8180]
00249c  62 f2 3e 40 52 87 c0 81 00 00 vdpbf16ps zmm0,zmm24,[rdi+0x81c0]
0024a6  62 f3 fd 48 1b c1 01     vextractf64x4 ymm1,zmm0,1
0024ad  c5 fc 58 c1              vaddps    ymm0,ymm0,ymm1
0024b1  c4 e3 7d 19 c1 01        vextractf128 xmm1,ymm0,1
0024b7  c5 f8 58 c1              vaddps    xmm0,xmm0,xmm1
0024bb  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0024bf  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0024c3  c5 fa 59 c2              vmulss    xmm0,xmm0,xmm2
0024c7  c4 c1 7a 11 04 1b        vmovss    [r11+rbx],xmm0
0024cd  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0024d3  62 f2 06 40 52 87 00 a0 00 00 vdpbf16ps zmm0,zmm31,[rdi+0xa000]
0024dd  62 f2 0e 40 52 87 40 a0 00 00 vdpbf16ps zmm0,zmm30,[rdi+0xa040]
0024e7  62 f2 16 40 52 87 80 a0 00 00 vdpbf16ps zmm0,zmm29,[rdi+0xa080]
0024f1  62 f2 1e 40 52 87 c0 a0 00 00 vdpbf16ps zmm0,zmm28,[rdi+0xa0c0]
0024fb  62 f2 26 40 52 87 00 a1 00 00 vdpbf16ps zmm0,zmm27,[rdi+0xa100]
002505  62 f2 2e 40 52 87 40 a1 00 00 vdpbf16ps zmm0,zmm26,[rdi+0xa140]
00250f  62 f2 36 40 52 87 80 a1 00 00 vdpbf16ps zmm0,zmm25,[rdi+0xa180]
002519  62 f2 3e 40 52 87 c0 a1 00 00 vdpbf16ps zmm0,zmm24,[rdi+0xa1c0]
002523  62 f3 fd 48 1b c1 01     vextractf64x4 ymm1,zmm0,1
00252a  c5 fc 58 c1              vaddps    ymm0,ymm0,ymm1
00252e  c4 e3 7d 19 c1 01        vextractf128 xmm1,ymm0,1
002534  c5 f8 58 c1              vaddps    xmm0,xmm0,xmm1
002538  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
00253c  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
002540  c5 fa 59 c2              vmulss    xmm0,xmm0,xmm2
002544  c4 c1 7a 11 04 1c        vmovss    [r12+rbx],xmm0
00254a  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
002550  62 f2 06 40 52 87 00 c0 00 00 vdpbf16ps zmm0,zmm31,[rdi+0xc000]
00255a  62 f2 0e 40 52 87 40 c0 00 00 vdpbf16ps zmm0,zmm30,[rdi+0xc040]
002564  62 f2 16 40 52 87 80 c0 00 00 vdpbf16ps zmm0,zmm29,[rdi+0xc080]
00256e  62 f2 1e 40 52 87 c0 c0 00 00 vdpbf16ps zmm0,zmm28,[rdi+0xc0c0]
002578  62 f2 26 40 52 87 00 c1 00 00 vdpbf16ps zmm0,zmm27,[rdi+0xc100]
002582  62 f2 2e 40 52 87 40 c1 00 00 vdpbf16ps zmm0,zmm26,[rdi+0xc140]
00258c  62 f2 36 40 52 87 80 c1 00 00 vdpbf16ps zmm0,zmm25,[rdi+0xc180]
002596  62 f2 3e 40 52 87 c0 c1 00 00 vdpbf16ps zmm0,zmm24,[rdi+0xc1c0]
0025a0  62 f3 fd 48 1b c1 01     vextractf64x4 ymm1,zmm0,1
0025a7  c5 fc 58 c1              vaddps    ymm0,ymm0,ymm1
0025ab  c4 e3 7d 19 c1 01        vextractf128 xmm1,ymm0,1
0025b1  c5 f8 58 c1              vaddps    xmm0,xmm0,xmm1
0025b5  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0025b9  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
0025bd  c5 fa 59 c2              vmulss    xmm0,xmm0,xmm2
0025c1  c4 c1 7a 11 44 1d 00     vmovss    [r13+rbx],xmm0
0025c8  62 f1 7c 48 57 c0        vxorps    zmm0,zmm0,zmm0
0025ce  62 f2 06 40 52 87 00 e0 00 00 vdpbf16ps zmm0,zmm31,[rdi+0xe000]
0025d8  62 f2 0e 40 52 87 40 e0 00 00 vdpbf16ps zmm0,zmm30,[rdi+0xe040]
0025e2  62 f2 16 40 52 87 80 e0 00 00 vdpbf16ps zmm0,zmm29,[rdi+0xe080]
0025ec  62 f2 1e 40 52 87 c0 e0 00 00 vdpbf16ps zmm0,zmm28,[rdi+0xe0c0]
0025f6  62 f2 26 40 52 87 00 e1 00 00 vdpbf16ps zmm0,zmm27,[rdi+0xe100]
002600  62 f2 2e 40 52 87 40 e1 00 00 vdpbf16ps zmm0,zmm26,[rdi+0xe140]
00260a  62 f2 36 40 52 87 80 e1 00 00 vdpbf16ps zmm0,zmm25,[rdi+0xe180]
002614  62 f2 3e 40 52 87 c0 e1 00 00 vdpbf16ps zmm0,zmm24,[rdi+0xe1c0]
00261e  62 f3 fd 48 1b c1 01     vextractf64x4 ymm1,zmm0,1
002625  c5 fc 58 c1              vaddps    ymm0,ymm0,ymm1
002629  c4 e3 7d 19 c1 01        vextractf128 xmm1,ymm0,1
00262f  c5 f8 58 c1              vaddps    xmm0,xmm0,xmm1
002633  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
002637  c5 fb 7c c0              vhaddps   xmm0,xmm0,xmm0
00263b  c5 fa 59 c2              vmulss    xmm0,xmm0,xmm2
00263f  c4 c1 7a 11 04 1e        vmovss    [r14+rbx],xmm0
002645  48 81 c6 00 02 00 00     add       rsi,0x200
00264c  48 83 c3 04              add       rbx,4
002650  49 ff ca                 dec       r10
002653  0f 85 e7 fb ff ff        jne       near 0x0000000000002240
002659  48 8b 44 24 60           mov       rax,[rsp+0x60]
00265e  48 8d 78 01              lea       rdi,[rax+1]
002662  48 89 fe                 mov       rsi,rdi
002665  48 83 e6 0f              and       rsi,0xf
002669  74 20                    je        short 0x000000000000268b
00266b  49 ba 10 00 00 00 00 00 00 00 mov       r10,0x10
002675  49 29 f2                 sub       r10,rsi
002678  48 8d 34 b9              lea       rsi,[rcx+rdi*4]
00267c  c7 06 00 00 80 ff        mov       dword [rsi],0xff800000
002682  48 83 c6 04              add       rsi,4
002686  49 ff ca                 dec       r10
002689  75 f1                    jne       short 0x000000000000267c
00268b  48 8d 78 02              lea       rdi,[rax+2]
00268f  48 89 fe                 mov       rsi,rdi
002692  48 83 e6 0f              and       rsi,0xf
002696  74 20                    je        short 0x00000000000026b8
002698  49 ba 10 00 00 00 00 00 00 00 mov       r10,0x10
0026a2  49 29 f2                 sub       r10,rsi
0026a5  48 8d 34 ba              lea       rsi,[rdx+rdi*4]
0026a9  c7 06 00 00 80 ff        mov       dword [rsi],0xff800000
0026af  48 83 c6 04              add       rsi,4
0026b3  49 ff ca                 dec       r10
0026b6  75 f1                    jne       short 0x00000000000026a9
0026b8  48 8d 78 03              lea       rdi,[rax+3]
0026bc  48 89 fe                 mov       rsi,rdi
0026bf  48 83 e6 0f              and       rsi,0xf
0026c3  74 20                    je        short 0x00000000000026e5
0026c5  49 ba 10 00 00 00 00 00 00 00 mov       r10,0x10
0026cf  49 29 f2                 sub       r10,rsi
0026d2  49 8d 34 b8              lea       rsi,[r8+rdi*4]
0026d6  c7 06 00 00 80 ff        mov       dword [rsi],0xff800000
0026dc  48 83 c6 04              add       rsi,4
0026e0  49 ff ca                 dec       r10
0026e3  75 f1                    jne       short 0x00000000000026d6
0026e5  48 8d 78 04              lea       rdi,[rax+4]
0026e9  48 89 fe                 mov       rsi,rdi
0026ec  48 83 e6 0f              and       rsi,0xf
0026f0  74 20                    je        short 0x0000000000002712
0026f2  49 ba 10 00 00 00 00 00 00 00 mov       r10,0x10
0026fc  49 29 f2                 sub       r10,rsi
0026ff  49 8d 34 b9              lea       rsi,[r9+rdi*4]
002703  c7 06 00 00 80 ff        mov       dword [rsi],0xff800000
002709  48 83 c6 04              add       rsi,4
00270d  49 ff ca                 dec       r10
002710  75 f1                    jne       short 0x0000000000002703
002712  48 8d 78 05              lea       rdi,[rax+5]
002716  48 89 fe                 mov       rsi,rdi
002719  48 83 e6 0f              and       rsi,0xf
00271d  74 20                    je        short 0x000000000000273f
00271f  49 ba 10 00 00 00 00 00 00 00 mov       r10,0x10
002729  49 29 f2                 sub       r10,rsi
00272c  49 8d 34 bb              lea       rsi,[r11+rdi*4]
002730  c7 06 00 00 80 ff        mov       dword [rsi],0xff800000
002736  48 83 c6 04              add       rsi,4
00273a  49 ff ca                 dec       r10
00273d  75 f1                    jne       short 0x0000000000002730
00273f  48 8d 78 06              lea       rdi,[rax+6]
002743  48 89 fe                 mov       rsi,rdi
002746  48 83 e6 0f              and       rsi,0xf
00274a  74 20                    je        short 0x000000000000276c
00274c  49 ba 10 00 00 00 00 00 00 00 mov       r10,0x10
002756  49 29 f2                 sub       r10,rsi
002759  49 8d 34 bc              lea       rsi,[r12+rdi*4]
00275d  c7 06 00 00 80 ff        mov       dword [rsi],0xff800000
002763  48 83 c6 04              add       rsi,4
002767  49 ff ca                 dec       r10
00276a  75 f1                    jne       short 0x000000000000275d
00276c  48 8d 78 07              lea       rdi,[rax+7]
002770  48 89 fe                 mov       rsi,rdi
002773  48 83 e6 0f              and       rsi,0xf
002777  74 21                    je        short 0x000000000000279a
002779  49 ba 10 00 00 00 00 00 00 00 mov       r10,0x10
002783  49 29 f2                 sub       r10,rsi
002786  49 8d 74 bd 00           lea       rsi,[r13+rdi*4]
00278b  c7 06 00 00 80 ff        mov       dword [rsi],0xff800000
002791  48 83 c6 04              add       rsi,4
002795  49 ff ca                 dec       r10
002798  75 f1                    jne       short 0x000000000000278b
00279a  48 8d 78 08              lea       rdi,[rax+8]
00279e  48 89 fe                 mov       rsi,rdi
0027a1  48 83 e6 0f              and       rsi,0xf
0027a5  74 20                    je        short 0x00000000000027c7
0027a7  49 ba 10 00 00 00 00 00 00 00 mov       r10,0x10
0027b1  49 29 f2                 sub       r10,rsi
0027b4  49 8d 34 be              lea       rsi,[r14+rdi*4]
0027b8  c7 06 00 00 80 ff        mov       dword [rsi],0xff800000
0027be  48 83 c6 04              add       rsi,4
0027c2  49 ff ca                 dec       r10
0027c5  75 f1                    jne       short 0x00000000000027b8
0027c7  c5 fa 10 44 24 7c        vmovss    xmm0,[rsp+0x7c]
0027cd  b8 4f ac ae c2           mov       eax,0xc2aeac4f
0027d2  62 62 7d 48 7c f8        vpbroadcastd zmm31,eax
0027d8  b8 3b aa b8 3f           mov       eax,0x3fb8aa3b
0027dd  62 62 7d 48 7c f0        vpbroadcastd zmm30,eax
0027e3  b8 52 79 1e 3c           mov       eax,0x3c1e7952
0027e8  62 62 7d 48 7c e8        vpbroadcastd zmm29,eax
0027ee  b8 47 58 63 3d           mov       eax,0x3d635847
0027f3  62 62 7d 48 7c e0        vpbroadcastd zmm28,eax
0027f9  b8 f0 fd 75 3e           mov       eax,0x3e75fdf0
0027fe  62 62 7d 48 7c d8        vpbroadcastd zmm27,eax
002804  b8 18 72 31 3f           mov       eax,0x3f317218
002809  62 62 7d 48 7c d0        vpbroadcastd zmm26,eax
00280f  b8 00 00 80 3f           mov       eax,0x3f800000
002814  62 62 7d 48 7c c8        vpbroadcastd zmm25,eax
00281a  b8 00 00 80 3f           mov       eax,0x3f800000
00281f  62 62 7d 48 7c c0        vpbroadcastd zmm24,eax
002825  4c 8b ac 24 c0 00 00 00  mov       r13,[rsp+0xc0]
00282d  4c 8b 74 24 70           mov       r14,[rsp+0x70]
002832  4d 31 ff                 xor       r15,r15
002835  4c 89 ef                 mov       rdi,r13
002838  48 8b 44 24 60           mov       rax,[rsp+0x60]
00283d  4a 8d 44 38 01           lea       rax,[rax+r15+1]
002842  48 05 0f 00 00 00        add       rax,0xf
002848  48 c1 e8 04              shr       rax,4
00284c  49 89 c3                 mov       r11,rax
00284f  b8 00 00 80 ff           mov       eax,0xff800000
002854  62 e2 7d 48 7c f8        vpbroadcastd zmm23,eax
00285a  48 89 fe                 mov       rsi,rdi
00285d  4c 89 d9                 mov       rcx,r11
002860  62 f1 7c 48 10 0e        vmovups   zmm1,[rsi]
002866  62 e1 44 40 5f f9        vmaxps    zmm23,zmm23,zmm1
00286c  48 83 c6 40              add       rsi,0x40
002870  48 ff c9                 dec       rcx
002873  75 eb                    jne       short 0x0000000000002860
002875  62 b1 7c 48 28 d7        vmovaps   zmm2,zmm23
00287b  62 f3 fd 48 1b d3 01     vextractf64x4 ymm3,zmm2,1
002882  c5 ec 5f d3              vmaxps    ymm2,ymm2,ymm3
002886  c4 e3 7d 19 d3 01        vextractf128 xmm3,ymm2,1
00288c  c5 e8 5f d3              vmaxps    xmm2,xmm2,xmm3
002890  c5 e8 c6 da 4e           vshufps   xmm3,xmm2,xmm2,0x4e
002895  c5 e8 5f d3              vmaxps    xmm2,xmm2,xmm3
002899  c5 e8 c6 da b1           vshufps   xmm3,xmm2,xmm2,0xb1
00289e  c5 e8 5f d3              vmaxps    xmm2,xmm2,xmm3
0028a2  62 e2 7d 48 18 fa        vbroadcastss zmm23,xmm2
0028a8  62 a1 4c 40 57 f6        vxorps    zmm22,zmm22,zmm22
0028ae  48 89 fe                 mov       rsi,rdi
0028b1  4c 89 d9                 mov       rcx,r11
0028b4  62 f1 7c 48 10 0e        vmovups   zmm1,[rsi]
0028ba  62 b1 74 48 5c cf        vsubps    zmm1,zmm1,zmm23
0028c0  62 91 74 48 5f cf        vmaxps    zmm1,zmm1,zmm31
0028c6  62 81 74 48 59 ee        vmulps    zmm21,zmm1,zmm30
0028cc  62 a3 7d 48 08 e5 00     vrndscaleps zmm20,zmm21,0
0028d3  62 a1 54 40 5c ec        vsubps    zmm21,zmm21,zmm20
0028d9  62 81 7c 48 28 dd        vmovaps   zmm19,zmm29
0028df  62 82 55 40 a8 dc        vfmadd213ps zmm19,zmm21,zmm28
0028e5  62 82 55 40 a8 db        vfmadd213ps zmm19,zmm21,zmm27
0028eb  62 82 55 40 a8 da        vfmadd213ps zmm19,zmm21,zmm26
0028f1  62 82 55 40 a8 d9        vfmadd213ps zmm19,zmm21,zmm25
0028f7  62 a1 7d 48 5b e4        vcvtps2dq zmm20,zmm20
0028fd  62 b1 5d 40 72 f4 17     vpslld    zmm20,zmm20,0x17
002904  62 81 5d 40 fe e0        vpaddd    zmm20,zmm20,zmm24
00290a  62 b1 64 40 59 cc        vmulps    zmm1,zmm19,zmm20
002910  62 e1 4c 40 58 f1        vaddps    zmm22,zmm22,zmm1
002916  62 f1 7c 48 11 0e        vmovups   [rsi],zmm1
00291c  48 83 c6 40              add       rsi,0x40
002920  48 ff c9                 dec       rcx
002923  75 8f                    jne       short 0x00000000000028b4
002925  62 b1 7c 48 28 e6        vmovaps   zmm4,zmm22
00292b  62 f3 fd 48 1b e3 01     vextractf64x4 ymm3,zmm4,1
002932  c5 dc 58 e3              vaddps    ymm4,ymm4,ymm3
002936  c4 e3 7d 19 e3 01        vextractf128 xmm3,ymm4,1
00293c  c5 d8 58 e3              vaddps    xmm4,xmm4,xmm3
002940  c5 db 7c e4              vhaddps   xmm4,xmm4,xmm4
002944  c5 db 7c e4              vhaddps   xmm4,xmm4,xmm4
002948  62 e2 7d 48 18 f4        vbroadcastss zmm22,xmm4
00294e  48 89 fe                 mov       rsi,rdi
002951  4c 89 d9                 mov       rcx,r11
002954  62 f1 7c 48 10 0e        vmovups   zmm1,[rsi]
00295a  62 b1 74 48 5e ce        vdivps    zmm1,zmm1,zmm22
002960  62 f1 7c 48 11 0e        vmovups   [rsi],zmm1
002966  48 83 c6 40              add       rsi,0x40
00296a  48 ff c9                 dec       rcx
00296d  75 e5                    jne       short 0x0000000000002954
00296f  4d 01 f5                 add       r13,r14
002972  49 ff c7                 inc       r15
002975  49 83 ff 08              cmp       r15,8
002979  0f 82 b6 fe ff ff        jb        near 0x0000000000002835
00297f  48 8b 44 24 60           mov       rax,[rsp+0x60]
002984  48 8b bc 24 c0 00 00 00  mov       rdi,[rsp+0xc0]
00298c  48 8b 74 24 70           mov       rsi,[rsp+0x70]
002991  c7 44 87 04 00 00 00 00  mov       dword [rdi+rax*4+4],0
002999  c7 44 87 08 00 00 00 00  mov       dword [rdi+rax*4+8],0
0029a1  c7 44 87 0c 00 00 00 00  mov       dword [rdi+rax*4+0xc],0
0029a9  c7 44 87 10 00 00 00 00  mov       dword [rdi+rax*4+0x10],0
0029b1  c7 44 87 14 00 00 00 00  mov       dword [rdi+rax*4+0x14],0
0029b9  c7 44 87 18 00 00 00 00  mov       dword [rdi+rax*4+0x18],0
0029c1  c7 44 87 1c 00 00 00 00  mov       dword [rdi+rax*4+0x1c],0
0029c9  48 01 f7                 add       rdi,rsi
0029cc  c7 44 87 08 00 00 00 00  mov       dword [rdi+rax*4+8],0
0029d4  c7 44 87 0c 00 00 00 00  mov       dword [rdi+rax*4+0xc],0
0029dc  c7 44 87 10 00 00 00 00  mov       dword [rdi+rax*4+0x10],0
0029e4  c7 44 87 14 00 00 00 00  mov       dword [rdi+rax*4+0x14],0
0029ec  c7 44 87 18 00 00 00 00  mov       dword [rdi+rax*4+0x18],0
0029f4  c7 44 87 1c 00 00 00 00  mov       dword [rdi+rax*4+0x1c],0
0029fc  48 01 f7                 add       rdi,rsi
0029ff  c7 44 87 0c 00 00 00 00  mov       dword [rdi+rax*4+0xc],0
002a07  c7 44 87 10 00 00 00 00  mov       dword [rdi+rax*4+0x10],0
002a0f  c7 44 87 14 00 00 00 00  mov       dword [rdi+rax*4+0x14],0
002a17  c7 44 87 18 00 00 00 00  mov       dword [rdi+rax*4+0x18],0
002a1f  c7 44 87 1c 00 00 00 00  mov       dword [rdi+rax*4+0x1c],0
002a27  48 01 f7                 add       rdi,rsi
002a2a  c7 44 87 10 00 00 00 00  mov       dword [rdi+rax*4+0x10],0
002a32  c7 44 87 14 00 00 00 00  mov       dword [rdi+rax*4+0x14],0
002a3a  c7 44 87 18 00 00 00 00  mov       dword [rdi+rax*4+0x18],0
002a42  c7 44 87 1c 00 00 00 00  mov       dword [rdi+rax*4+0x1c],0
002a4a  48 01 f7                 add       rdi,rsi
002a4d  c7 44 87 14 00 00 00 00  mov       dword [rdi+rax*4+0x14],0
002a55  c7 44 87 18 00 00 00 00  mov       dword [rdi+rax*4+0x18],0
002a5d  c7 44 87 1c 00 00 00 00  mov       dword [rdi+rax*4+0x1c],0
002a65  48 01 f7                 add       rdi,rsi
002a68  c7 44 87 18 00 00 00 00  mov       dword [rdi+rax*4+0x18],0
002a70  c7 44 87 1c 00 00 00 00  mov       dword [rdi+rax*4+0x1c],0
002a78  48 01 f7                 add       rdi,rsi
002a7b  c7 44 87 1c 00 00 00 00  mov       dword [rdi+rax*4+0x1c],0
002a83  48 01 f7                 add       rdi,rsi
002a86  48 01 f7                 add       rdi,rsi
002a89  48 8b 44 24 70           mov       rax,[rsp+0x70]
002a8e  48 8b 8c 24 c0 00 00 00  mov       rcx,[rsp+0xc0]
002a96  48 8d 14 01              lea       rdx,[rcx+rax]
002a9a  4c 8d 04 02              lea       r8,[rdx+rax]
002a9e  4d 8d 0c 00              lea       r9,[r8+rax]
002aa2  4d 8d 1c 01              lea       r11,[r9+rax]
002aa6  4d 8d 24 03              lea       r12,[r11+rax]
002aaa  4d 8d 2c 04              lea       r13,[r12+rax]
002aae  4d 8d 74 05 00           lea       r14,[r13+rax]
002ab3  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
002ab9  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
002abf  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
002ac5  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
002acb  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
002ad1  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
002ad7  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
002add  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
002ae3  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
002ae9  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
002aef  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
002af5  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
002afb  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
002b01  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
002b07  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
002b0d  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002b13  48 8b 74 24 50           mov       rsi,[rsp+0x50]
002b18  4c 8b 54 24 68           mov       r10,[rsp+0x68]
002b1d  48 31 db                 xor       rbx,rbx
002b20  62 f2 7d 48 33 06        vpmovzxwd zmm0,[rsi]
002b26  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
002b2d  62 f2 7d 48 33 4e 01     vpmovzxwd zmm1,[rsi+0x20]
002b34  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
002b3b  62 62 7d 48 18 3c 19     vbroadcastss zmm31,[rcx+rbx]
002b42  62 92 7d 48 b8 d7        vfmadd231ps zmm2,zmm0,zmm31
002b48  62 92 75 48 b8 df        vfmadd231ps zmm3,zmm1,zmm31
002b4e  62 62 7d 48 18 3c 1a     vbroadcastss zmm31,[rdx+rbx]
002b55  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
002b5b  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
002b61  62 42 7d 48 18 3c 18     vbroadcastss zmm31,[r8+rbx]
002b68  62 92 7d 48 b8 f7        vfmadd231ps zmm6,zmm0,zmm31
002b6e  62 92 75 48 b8 ff        vfmadd231ps zmm7,zmm1,zmm31
002b74  62 42 7d 48 18 3c 19     vbroadcastss zmm31,[r9+rbx]
002b7b  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
002b81  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
002b87  62 42 7d 48 18 3c 1b     vbroadcastss zmm31,[r11+rbx]
002b8e  62 12 7d 48 b8 d7        vfmadd231ps zmm10,zmm0,zmm31
002b94  62 12 75 48 b8 df        vfmadd231ps zmm11,zmm1,zmm31
002b9a  62 42 7d 48 18 3c 1c     vbroadcastss zmm31,[r12+rbx]
002ba1  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
002ba7  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
002bad  62 42 7d 48 18 7c 1d 00  vbroadcastss zmm31,[r13+rbx]
002bb5  62 12 7d 48 b8 f7        vfmadd231ps zmm14,zmm0,zmm31
002bbb  62 12 75 48 b8 ff        vfmadd231ps zmm15,zmm1,zmm31
002bc1  62 42 7d 48 18 3c 1e     vbroadcastss zmm31,[r14+rbx]
002bc8  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
002bce  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
002bd4  48 81 c6 00 02 00 00     add       rsi,0x200
002bdb  48 83 c3 04              add       rbx,4
002bdf  49 ff ca                 dec       r10
002be2  0f 85 38 ff ff ff        jne       near 0x0000000000002b20
002be8  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
002bed  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
002bf3  c5 fc 11 07              vmovups   [rdi],ymm0
002bf7  62 f2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm3
002bfd  c5 fc 11 4f 20           vmovups   [rdi+0x20],ymm1
002c02  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
002c08  c5 fc 11 87 00 10 00 00  vmovups   [rdi+0x1000],ymm0
002c10  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
002c16  c5 fc 11 8f 20 10 00 00  vmovups   [rdi+0x1020],ymm1
002c1e  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
002c24  c5 fc 11 87 00 20 00 00  vmovups   [rdi+0x2000],ymm0
002c2c  62 f2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm7
002c32  c5 fc 11 8f 20 20 00 00  vmovups   [rdi+0x2020],ymm1
002c3a  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
002c40  c5 fc 11 87 00 30 00 00  vmovups   [rdi+0x3000],ymm0
002c48  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
002c4e  c5 fc 11 8f 20 30 00 00  vmovups   [rdi+0x3020],ymm1
002c56  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
002c5c  c5 fc 11 87 00 40 00 00  vmovups   [rdi+0x4000],ymm0
002c64  62 d2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm11
002c6a  c5 fc 11 8f 20 40 00 00  vmovups   [rdi+0x4020],ymm1
002c72  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
002c78  c5 fc 11 87 00 50 00 00  vmovups   [rdi+0x5000],ymm0
002c80  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
002c86  c5 fc 11 8f 20 50 00 00  vmovups   [rdi+0x5020],ymm1
002c8e  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
002c94  c5 fc 11 87 00 60 00 00  vmovups   [rdi+0x6000],ymm0
002c9c  62 d2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm15
002ca2  c5 fc 11 8f 20 60 00 00  vmovups   [rdi+0x6020],ymm1
002caa  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
002cb0  c5 fc 11 87 00 70 00 00  vmovups   [rdi+0x7000],ymm0
002cb8  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
002cbe  c5 fc 11 8f 20 70 00 00  vmovups   [rdi+0x7020],ymm1
002cc6  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
002ccc  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
002cd2  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
002cd8  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
002cde  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
002ce4  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
002cea  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
002cf0  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
002cf6  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
002cfc  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
002d02  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
002d08  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
002d0e  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
002d14  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
002d1a  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
002d20  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002d26  48 8b 74 24 50           mov       rsi,[rsp+0x50]
002d2b  4c 8b 54 24 68           mov       r10,[rsp+0x68]
002d30  48 31 db                 xor       rbx,rbx
002d33  62 f2 7d 48 33 46 02     vpmovzxwd zmm0,[rsi+0x40]
002d3a  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
002d41  62 f2 7d 48 33 4e 03     vpmovzxwd zmm1,[rsi+0x60]
002d48  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
002d4f  62 62 7d 48 18 3c 19     vbroadcastss zmm31,[rcx+rbx]
002d56  62 92 7d 48 b8 d7        vfmadd231ps zmm2,zmm0,zmm31
002d5c  62 92 75 48 b8 df        vfmadd231ps zmm3,zmm1,zmm31
002d62  62 62 7d 48 18 3c 1a     vbroadcastss zmm31,[rdx+rbx]
002d69  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
002d6f  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
002d75  62 42 7d 48 18 3c 18     vbroadcastss zmm31,[r8+rbx]
002d7c  62 92 7d 48 b8 f7        vfmadd231ps zmm6,zmm0,zmm31
002d82  62 92 75 48 b8 ff        vfmadd231ps zmm7,zmm1,zmm31
002d88  62 42 7d 48 18 3c 19     vbroadcastss zmm31,[r9+rbx]
002d8f  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
002d95  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
002d9b  62 42 7d 48 18 3c 1b     vbroadcastss zmm31,[r11+rbx]
002da2  62 12 7d 48 b8 d7        vfmadd231ps zmm10,zmm0,zmm31
002da8  62 12 75 48 b8 df        vfmadd231ps zmm11,zmm1,zmm31
002dae  62 42 7d 48 18 3c 1c     vbroadcastss zmm31,[r12+rbx]
002db5  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
002dbb  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
002dc1  62 42 7d 48 18 7c 1d 00  vbroadcastss zmm31,[r13+rbx]
002dc9  62 12 7d 48 b8 f7        vfmadd231ps zmm14,zmm0,zmm31
002dcf  62 12 75 48 b8 ff        vfmadd231ps zmm15,zmm1,zmm31
002dd5  62 42 7d 48 18 3c 1e     vbroadcastss zmm31,[r14+rbx]
002ddc  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
002de2  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
002de8  48 81 c6 00 02 00 00     add       rsi,0x200
002def  48 83 c3 04              add       rbx,4
002df3  49 ff ca                 dec       r10
002df6  0f 85 37 ff ff ff        jne       near 0x0000000000002d33
002dfc  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
002e01  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
002e07  c5 fc 11 47 40           vmovups   [rdi+0x40],ymm0
002e0c  62 f2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm3
002e12  c5 fc 11 4f 60           vmovups   [rdi+0x60],ymm1
002e17  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
002e1d  c5 fc 11 87 40 10 00 00  vmovups   [rdi+0x1040],ymm0
002e25  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
002e2b  c5 fc 11 8f 60 10 00 00  vmovups   [rdi+0x1060],ymm1
002e33  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
002e39  c5 fc 11 87 40 20 00 00  vmovups   [rdi+0x2040],ymm0
002e41  62 f2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm7
002e47  c5 fc 11 8f 60 20 00 00  vmovups   [rdi+0x2060],ymm1
002e4f  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
002e55  c5 fc 11 87 40 30 00 00  vmovups   [rdi+0x3040],ymm0
002e5d  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
002e63  c5 fc 11 8f 60 30 00 00  vmovups   [rdi+0x3060],ymm1
002e6b  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
002e71  c5 fc 11 87 40 40 00 00  vmovups   [rdi+0x4040],ymm0
002e79  62 d2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm11
002e7f  c5 fc 11 8f 60 40 00 00  vmovups   [rdi+0x4060],ymm1
002e87  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
002e8d  c5 fc 11 87 40 50 00 00  vmovups   [rdi+0x5040],ymm0
002e95  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
002e9b  c5 fc 11 8f 60 50 00 00  vmovups   [rdi+0x5060],ymm1
002ea3  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
002ea9  c5 fc 11 87 40 60 00 00  vmovups   [rdi+0x6040],ymm0
002eb1  62 d2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm15
002eb7  c5 fc 11 8f 60 60 00 00  vmovups   [rdi+0x6060],ymm1
002ebf  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
002ec5  c5 fc 11 87 40 70 00 00  vmovups   [rdi+0x7040],ymm0
002ecd  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
002ed3  c5 fc 11 8f 60 70 00 00  vmovups   [rdi+0x7060],ymm1
002edb  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
002ee1  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
002ee7  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
002eed  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
002ef3  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
002ef9  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
002eff  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
002f05  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
002f0b  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
002f11  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
002f17  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
002f1d  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
002f23  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
002f29  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
002f2f  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
002f35  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
002f3b  48 8b 74 24 50           mov       rsi,[rsp+0x50]
002f40  4c 8b 54 24 68           mov       r10,[rsp+0x68]
002f45  48 31 db                 xor       rbx,rbx
002f48  62 f2 7d 48 33 46 04     vpmovzxwd zmm0,[rsi+0x80]
002f4f  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
002f56  62 f2 7d 48 33 4e 05     vpmovzxwd zmm1,[rsi+0xa0]
002f5d  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
002f64  62 62 7d 48 18 3c 19     vbroadcastss zmm31,[rcx+rbx]
002f6b  62 92 7d 48 b8 d7        vfmadd231ps zmm2,zmm0,zmm31
002f71  62 92 75 48 b8 df        vfmadd231ps zmm3,zmm1,zmm31
002f77  62 62 7d 48 18 3c 1a     vbroadcastss zmm31,[rdx+rbx]
002f7e  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
002f84  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
002f8a  62 42 7d 48 18 3c 18     vbroadcastss zmm31,[r8+rbx]
002f91  62 92 7d 48 b8 f7        vfmadd231ps zmm6,zmm0,zmm31
002f97  62 92 75 48 b8 ff        vfmadd231ps zmm7,zmm1,zmm31
002f9d  62 42 7d 48 18 3c 19     vbroadcastss zmm31,[r9+rbx]
002fa4  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
002faa  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
002fb0  62 42 7d 48 18 3c 1b     vbroadcastss zmm31,[r11+rbx]
002fb7  62 12 7d 48 b8 d7        vfmadd231ps zmm10,zmm0,zmm31
002fbd  62 12 75 48 b8 df        vfmadd231ps zmm11,zmm1,zmm31
002fc3  62 42 7d 48 18 3c 1c     vbroadcastss zmm31,[r12+rbx]
002fca  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
002fd0  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
002fd6  62 42 7d 48 18 7c 1d 00  vbroadcastss zmm31,[r13+rbx]
002fde  62 12 7d 48 b8 f7        vfmadd231ps zmm14,zmm0,zmm31
002fe4  62 12 75 48 b8 ff        vfmadd231ps zmm15,zmm1,zmm31
002fea  62 42 7d 48 18 3c 1e     vbroadcastss zmm31,[r14+rbx]
002ff1  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
002ff7  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
002ffd  48 81 c6 00 02 00 00     add       rsi,0x200
003004  48 83 c3 04              add       rbx,4
003008  49 ff ca                 dec       r10
00300b  0f 85 37 ff ff ff        jne       near 0x0000000000002f48
003011  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
003016  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
00301c  c5 fc 11 87 80 00 00 00  vmovups   [rdi+0x80],ymm0
003024  62 f2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm3
00302a  c5 fc 11 8f a0 00 00 00  vmovups   [rdi+0xa0],ymm1
003032  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
003038  c5 fc 11 87 80 10 00 00  vmovups   [rdi+0x1080],ymm0
003040  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
003046  c5 fc 11 8f a0 10 00 00  vmovups   [rdi+0x10a0],ymm1
00304e  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
003054  c5 fc 11 87 80 20 00 00  vmovups   [rdi+0x2080],ymm0
00305c  62 f2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm7
003062  c5 fc 11 8f a0 20 00 00  vmovups   [rdi+0x20a0],ymm1
00306a  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
003070  c5 fc 11 87 80 30 00 00  vmovups   [rdi+0x3080],ymm0
003078  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
00307e  c5 fc 11 8f a0 30 00 00  vmovups   [rdi+0x30a0],ymm1
003086  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
00308c  c5 fc 11 87 80 40 00 00  vmovups   [rdi+0x4080],ymm0
003094  62 d2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm11
00309a  c5 fc 11 8f a0 40 00 00  vmovups   [rdi+0x40a0],ymm1
0030a2  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
0030a8  c5 fc 11 87 80 50 00 00  vmovups   [rdi+0x5080],ymm0
0030b0  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
0030b6  c5 fc 11 8f a0 50 00 00  vmovups   [rdi+0x50a0],ymm1
0030be  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
0030c4  c5 fc 11 87 80 60 00 00  vmovups   [rdi+0x6080],ymm0
0030cc  62 d2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm15
0030d2  c5 fc 11 8f a0 60 00 00  vmovups   [rdi+0x60a0],ymm1
0030da  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
0030e0  c5 fc 11 87 80 70 00 00  vmovups   [rdi+0x7080],ymm0
0030e8  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
0030ee  c5 fc 11 8f a0 70 00 00  vmovups   [rdi+0x70a0],ymm1
0030f6  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
0030fc  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
003102  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
003108  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00310e  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
003114  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
00311a  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
003120  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
003126  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
00312c  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
003132  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
003138  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
00313e  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
003144  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
00314a  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
003150  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003156  48 8b 74 24 50           mov       rsi,[rsp+0x50]
00315b  4c 8b 54 24 68           mov       r10,[rsp+0x68]
003160  48 31 db                 xor       rbx,rbx
003163  62 f2 7d 48 33 46 06     vpmovzxwd zmm0,[rsi+0xc0]
00316a  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
003171  62 f2 7d 48 33 4e 07     vpmovzxwd zmm1,[rsi+0xe0]
003178  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
00317f  62 62 7d 48 18 3c 19     vbroadcastss zmm31,[rcx+rbx]
003186  62 92 7d 48 b8 d7        vfmadd231ps zmm2,zmm0,zmm31
00318c  62 92 75 48 b8 df        vfmadd231ps zmm3,zmm1,zmm31
003192  62 62 7d 48 18 3c 1a     vbroadcastss zmm31,[rdx+rbx]
003199  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
00319f  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
0031a5  62 42 7d 48 18 3c 18     vbroadcastss zmm31,[r8+rbx]
0031ac  62 92 7d 48 b8 f7        vfmadd231ps zmm6,zmm0,zmm31
0031b2  62 92 75 48 b8 ff        vfmadd231ps zmm7,zmm1,zmm31
0031b8  62 42 7d 48 18 3c 19     vbroadcastss zmm31,[r9+rbx]
0031bf  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
0031c5  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
0031cb  62 42 7d 48 18 3c 1b     vbroadcastss zmm31,[r11+rbx]
0031d2  62 12 7d 48 b8 d7        vfmadd231ps zmm10,zmm0,zmm31
0031d8  62 12 75 48 b8 df        vfmadd231ps zmm11,zmm1,zmm31
0031de  62 42 7d 48 18 3c 1c     vbroadcastss zmm31,[r12+rbx]
0031e5  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
0031eb  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
0031f1  62 42 7d 48 18 7c 1d 00  vbroadcastss zmm31,[r13+rbx]
0031f9  62 12 7d 48 b8 f7        vfmadd231ps zmm14,zmm0,zmm31
0031ff  62 12 75 48 b8 ff        vfmadd231ps zmm15,zmm1,zmm31
003205  62 42 7d 48 18 3c 1e     vbroadcastss zmm31,[r14+rbx]
00320c  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
003212  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
003218  48 81 c6 00 02 00 00     add       rsi,0x200
00321f  48 83 c3 04              add       rbx,4
003223  49 ff ca                 dec       r10
003226  0f 85 37 ff ff ff        jne       near 0x0000000000003163
00322c  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
003231  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
003237  c5 fc 11 87 c0 00 00 00  vmovups   [rdi+0xc0],ymm0
00323f  62 f2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm3
003245  c5 fc 11 8f e0 00 00 00  vmovups   [rdi+0xe0],ymm1
00324d  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
003253  c5 fc 11 87 c0 10 00 00  vmovups   [rdi+0x10c0],ymm0
00325b  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
003261  c5 fc 11 8f e0 10 00 00  vmovups   [rdi+0x10e0],ymm1
003269  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
00326f  c5 fc 11 87 c0 20 00 00  vmovups   [rdi+0x20c0],ymm0
003277  62 f2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm7
00327d  c5 fc 11 8f e0 20 00 00  vmovups   [rdi+0x20e0],ymm1
003285  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
00328b  c5 fc 11 87 c0 30 00 00  vmovups   [rdi+0x30c0],ymm0
003293  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
003299  c5 fc 11 8f e0 30 00 00  vmovups   [rdi+0x30e0],ymm1
0032a1  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
0032a7  c5 fc 11 87 c0 40 00 00  vmovups   [rdi+0x40c0],ymm0
0032af  62 d2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm11
0032b5  c5 fc 11 8f e0 40 00 00  vmovups   [rdi+0x40e0],ymm1
0032bd  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
0032c3  c5 fc 11 87 c0 50 00 00  vmovups   [rdi+0x50c0],ymm0
0032cb  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
0032d1  c5 fc 11 8f e0 50 00 00  vmovups   [rdi+0x50e0],ymm1
0032d9  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
0032df  c5 fc 11 87 c0 60 00 00  vmovups   [rdi+0x60c0],ymm0
0032e7  62 d2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm15
0032ed  c5 fc 11 8f e0 60 00 00  vmovups   [rdi+0x60e0],ymm1
0032f5  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
0032fb  c5 fc 11 87 c0 70 00 00  vmovups   [rdi+0x70c0],ymm0
003303  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
003309  c5 fc 11 8f e0 70 00 00  vmovups   [rdi+0x70e0],ymm1
003311  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
003317  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00331d  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
003323  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
003329  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00332f  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
003335  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00333b  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
003341  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
003347  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
00334d  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
003353  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
003359  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
00335f  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
003365  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
00336b  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
003371  48 8b 74 24 50           mov       rsi,[rsp+0x50]
003376  4c 8b 54 24 68           mov       r10,[rsp+0x68]
00337b  48 31 db                 xor       rbx,rbx
00337e  62 f2 7d 48 33 46 08     vpmovzxwd zmm0,[rsi+0x100]
003385  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
00338c  62 f2 7d 48 33 4e 09     vpmovzxwd zmm1,[rsi+0x120]
003393  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
00339a  62 62 7d 48 18 3c 19     vbroadcastss zmm31,[rcx+rbx]
0033a1  62 92 7d 48 b8 d7        vfmadd231ps zmm2,zmm0,zmm31
0033a7  62 92 75 48 b8 df        vfmadd231ps zmm3,zmm1,zmm31
0033ad  62 62 7d 48 18 3c 1a     vbroadcastss zmm31,[rdx+rbx]
0033b4  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
0033ba  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
0033c0  62 42 7d 48 18 3c 18     vbroadcastss zmm31,[r8+rbx]
0033c7  62 92 7d 48 b8 f7        vfmadd231ps zmm6,zmm0,zmm31
0033cd  62 92 75 48 b8 ff        vfmadd231ps zmm7,zmm1,zmm31
0033d3  62 42 7d 48 18 3c 19     vbroadcastss zmm31,[r9+rbx]
0033da  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
0033e0  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
0033e6  62 42 7d 48 18 3c 1b     vbroadcastss zmm31,[r11+rbx]
0033ed  62 12 7d 48 b8 d7        vfmadd231ps zmm10,zmm0,zmm31
0033f3  62 12 75 48 b8 df        vfmadd231ps zmm11,zmm1,zmm31
0033f9  62 42 7d 48 18 3c 1c     vbroadcastss zmm31,[r12+rbx]
003400  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
003406  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
00340c  62 42 7d 48 18 7c 1d 00  vbroadcastss zmm31,[r13+rbx]
003414  62 12 7d 48 b8 f7        vfmadd231ps zmm14,zmm0,zmm31
00341a  62 12 75 48 b8 ff        vfmadd231ps zmm15,zmm1,zmm31
003420  62 42 7d 48 18 3c 1e     vbroadcastss zmm31,[r14+rbx]
003427  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
00342d  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
003433  48 81 c6 00 02 00 00     add       rsi,0x200
00343a  48 83 c3 04              add       rbx,4
00343e  49 ff ca                 dec       r10
003441  0f 85 37 ff ff ff        jne       near 0x000000000000337e
003447  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
00344c  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
003452  c5 fc 11 87 00 01 00 00  vmovups   [rdi+0x100],ymm0
00345a  62 f2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm3
003460  c5 fc 11 8f 20 01 00 00  vmovups   [rdi+0x120],ymm1
003468  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
00346e  c5 fc 11 87 00 11 00 00  vmovups   [rdi+0x1100],ymm0
003476  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
00347c  c5 fc 11 8f 20 11 00 00  vmovups   [rdi+0x1120],ymm1
003484  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
00348a  c5 fc 11 87 00 21 00 00  vmovups   [rdi+0x2100],ymm0
003492  62 f2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm7
003498  c5 fc 11 8f 20 21 00 00  vmovups   [rdi+0x2120],ymm1
0034a0  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0034a6  c5 fc 11 87 00 31 00 00  vmovups   [rdi+0x3100],ymm0
0034ae  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
0034b4  c5 fc 11 8f 20 31 00 00  vmovups   [rdi+0x3120],ymm1
0034bc  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
0034c2  c5 fc 11 87 00 41 00 00  vmovups   [rdi+0x4100],ymm0
0034ca  62 d2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm11
0034d0  c5 fc 11 8f 20 41 00 00  vmovups   [rdi+0x4120],ymm1
0034d8  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
0034de  c5 fc 11 87 00 51 00 00  vmovups   [rdi+0x5100],ymm0
0034e6  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
0034ec  c5 fc 11 8f 20 51 00 00  vmovups   [rdi+0x5120],ymm1
0034f4  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
0034fa  c5 fc 11 87 00 61 00 00  vmovups   [rdi+0x6100],ymm0
003502  62 d2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm15
003508  c5 fc 11 8f 20 61 00 00  vmovups   [rdi+0x6120],ymm1
003510  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
003516  c5 fc 11 87 00 71 00 00  vmovups   [rdi+0x7100],ymm0
00351e  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
003524  c5 fc 11 8f 20 71 00 00  vmovups   [rdi+0x7120],ymm1
00352c  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
003532  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
003538  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
00353e  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
003544  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
00354a  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
003550  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
003556  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
00355c  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
003562  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
003568  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
00356e  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
003574  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
00357a  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
003580  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
003586  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
00358c  48 8b 74 24 50           mov       rsi,[rsp+0x50]
003591  4c 8b 54 24 68           mov       r10,[rsp+0x68]
003596  48 31 db                 xor       rbx,rbx
003599  62 f2 7d 48 33 46 0a     vpmovzxwd zmm0,[rsi+0x140]
0035a0  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
0035a7  62 f2 7d 48 33 4e 0b     vpmovzxwd zmm1,[rsi+0x160]
0035ae  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
0035b5  62 62 7d 48 18 3c 19     vbroadcastss zmm31,[rcx+rbx]
0035bc  62 92 7d 48 b8 d7        vfmadd231ps zmm2,zmm0,zmm31
0035c2  62 92 75 48 b8 df        vfmadd231ps zmm3,zmm1,zmm31
0035c8  62 62 7d 48 18 3c 1a     vbroadcastss zmm31,[rdx+rbx]
0035cf  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
0035d5  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
0035db  62 42 7d 48 18 3c 18     vbroadcastss zmm31,[r8+rbx]
0035e2  62 92 7d 48 b8 f7        vfmadd231ps zmm6,zmm0,zmm31
0035e8  62 92 75 48 b8 ff        vfmadd231ps zmm7,zmm1,zmm31
0035ee  62 42 7d 48 18 3c 19     vbroadcastss zmm31,[r9+rbx]
0035f5  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
0035fb  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
003601  62 42 7d 48 18 3c 1b     vbroadcastss zmm31,[r11+rbx]
003608  62 12 7d 48 b8 d7        vfmadd231ps zmm10,zmm0,zmm31
00360e  62 12 75 48 b8 df        vfmadd231ps zmm11,zmm1,zmm31
003614  62 42 7d 48 18 3c 1c     vbroadcastss zmm31,[r12+rbx]
00361b  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
003621  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
003627  62 42 7d 48 18 7c 1d 00  vbroadcastss zmm31,[r13+rbx]
00362f  62 12 7d 48 b8 f7        vfmadd231ps zmm14,zmm0,zmm31
003635  62 12 75 48 b8 ff        vfmadd231ps zmm15,zmm1,zmm31
00363b  62 42 7d 48 18 3c 1e     vbroadcastss zmm31,[r14+rbx]
003642  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
003648  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
00364e  48 81 c6 00 02 00 00     add       rsi,0x200
003655  48 83 c3 04              add       rbx,4
003659  49 ff ca                 dec       r10
00365c  0f 85 37 ff ff ff        jne       near 0x0000000000003599
003662  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
003667  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
00366d  c5 fc 11 87 40 01 00 00  vmovups   [rdi+0x140],ymm0
003675  62 f2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm3
00367b  c5 fc 11 8f 60 01 00 00  vmovups   [rdi+0x160],ymm1
003683  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
003689  c5 fc 11 87 40 11 00 00  vmovups   [rdi+0x1140],ymm0
003691  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
003697  c5 fc 11 8f 60 11 00 00  vmovups   [rdi+0x1160],ymm1
00369f  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0036a5  c5 fc 11 87 40 21 00 00  vmovups   [rdi+0x2140],ymm0
0036ad  62 f2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm7
0036b3  c5 fc 11 8f 60 21 00 00  vmovups   [rdi+0x2160],ymm1
0036bb  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0036c1  c5 fc 11 87 40 31 00 00  vmovups   [rdi+0x3140],ymm0
0036c9  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
0036cf  c5 fc 11 8f 60 31 00 00  vmovups   [rdi+0x3160],ymm1
0036d7  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
0036dd  c5 fc 11 87 40 41 00 00  vmovups   [rdi+0x4140],ymm0
0036e5  62 d2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm11
0036eb  c5 fc 11 8f 60 41 00 00  vmovups   [rdi+0x4160],ymm1
0036f3  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
0036f9  c5 fc 11 87 40 51 00 00  vmovups   [rdi+0x5140],ymm0
003701  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
003707  c5 fc 11 8f 60 51 00 00  vmovups   [rdi+0x5160],ymm1
00370f  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
003715  c5 fc 11 87 40 61 00 00  vmovups   [rdi+0x6140],ymm0
00371d  62 d2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm15
003723  c5 fc 11 8f 60 61 00 00  vmovups   [rdi+0x6160],ymm1
00372b  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
003731  c5 fc 11 87 40 71 00 00  vmovups   [rdi+0x7140],ymm0
003739  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
00373f  c5 fc 11 8f 60 71 00 00  vmovups   [rdi+0x7160],ymm1
003747  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
00374d  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
003753  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
003759  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00375f  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
003765  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
00376b  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
003771  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
003777  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
00377d  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
003783  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
003789  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
00378f  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
003795  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
00379b  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
0037a1  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0037a7  48 8b 74 24 50           mov       rsi,[rsp+0x50]
0037ac  4c 8b 54 24 68           mov       r10,[rsp+0x68]
0037b1  48 31 db                 xor       rbx,rbx
0037b4  62 f2 7d 48 33 46 0c     vpmovzxwd zmm0,[rsi+0x180]
0037bb  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
0037c2  62 f2 7d 48 33 4e 0d     vpmovzxwd zmm1,[rsi+0x1a0]
0037c9  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
0037d0  62 62 7d 48 18 3c 19     vbroadcastss zmm31,[rcx+rbx]
0037d7  62 92 7d 48 b8 d7        vfmadd231ps zmm2,zmm0,zmm31
0037dd  62 92 75 48 b8 df        vfmadd231ps zmm3,zmm1,zmm31
0037e3  62 62 7d 48 18 3c 1a     vbroadcastss zmm31,[rdx+rbx]
0037ea  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
0037f0  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
0037f6  62 42 7d 48 18 3c 18     vbroadcastss zmm31,[r8+rbx]
0037fd  62 92 7d 48 b8 f7        vfmadd231ps zmm6,zmm0,zmm31
003803  62 92 75 48 b8 ff        vfmadd231ps zmm7,zmm1,zmm31
003809  62 42 7d 48 18 3c 19     vbroadcastss zmm31,[r9+rbx]
003810  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
003816  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
00381c  62 42 7d 48 18 3c 1b     vbroadcastss zmm31,[r11+rbx]
003823  62 12 7d 48 b8 d7        vfmadd231ps zmm10,zmm0,zmm31
003829  62 12 75 48 b8 df        vfmadd231ps zmm11,zmm1,zmm31
00382f  62 42 7d 48 18 3c 1c     vbroadcastss zmm31,[r12+rbx]
003836  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
00383c  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
003842  62 42 7d 48 18 7c 1d 00  vbroadcastss zmm31,[r13+rbx]
00384a  62 12 7d 48 b8 f7        vfmadd231ps zmm14,zmm0,zmm31
003850  62 12 75 48 b8 ff        vfmadd231ps zmm15,zmm1,zmm31
003856  62 42 7d 48 18 3c 1e     vbroadcastss zmm31,[r14+rbx]
00385d  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
003863  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
003869  48 81 c6 00 02 00 00     add       rsi,0x200
003870  48 83 c3 04              add       rbx,4
003874  49 ff ca                 dec       r10
003877  0f 85 37 ff ff ff        jne       near 0x00000000000037b4
00387d  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
003882  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
003888  c5 fc 11 87 80 01 00 00  vmovups   [rdi+0x180],ymm0
003890  62 f2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm3
003896  c5 fc 11 8f a0 01 00 00  vmovups   [rdi+0x1a0],ymm1
00389e  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
0038a4  c5 fc 11 87 80 11 00 00  vmovups   [rdi+0x1180],ymm0
0038ac  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
0038b2  c5 fc 11 8f a0 11 00 00  vmovups   [rdi+0x11a0],ymm1
0038ba  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
0038c0  c5 fc 11 87 80 21 00 00  vmovups   [rdi+0x2180],ymm0
0038c8  62 f2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm7
0038ce  c5 fc 11 8f a0 21 00 00  vmovups   [rdi+0x21a0],ymm1
0038d6  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
0038dc  c5 fc 11 87 80 31 00 00  vmovups   [rdi+0x3180],ymm0
0038e4  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
0038ea  c5 fc 11 8f a0 31 00 00  vmovups   [rdi+0x31a0],ymm1
0038f2  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
0038f8  c5 fc 11 87 80 41 00 00  vmovups   [rdi+0x4180],ymm0
003900  62 d2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm11
003906  c5 fc 11 8f a0 41 00 00  vmovups   [rdi+0x41a0],ymm1
00390e  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
003914  c5 fc 11 87 80 51 00 00  vmovups   [rdi+0x5180],ymm0
00391c  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
003922  c5 fc 11 8f a0 51 00 00  vmovups   [rdi+0x51a0],ymm1
00392a  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
003930  c5 fc 11 87 80 61 00 00  vmovups   [rdi+0x6180],ymm0
003938  62 d2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm15
00393e  c5 fc 11 8f a0 61 00 00  vmovups   [rdi+0x61a0],ymm1
003946  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
00394c  c5 fc 11 87 80 71 00 00  vmovups   [rdi+0x7180],ymm0
003954  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
00395a  c5 fc 11 8f a0 71 00 00  vmovups   [rdi+0x71a0],ymm1
003962  62 f1 6c 48 57 d2        vxorps    zmm2,zmm2,zmm2
003968  62 f1 64 48 57 db        vxorps    zmm3,zmm3,zmm3
00396e  62 f1 5c 48 57 e4        vxorps    zmm4,zmm4,zmm4
003974  62 f1 54 48 57 ed        vxorps    zmm5,zmm5,zmm5
00397a  62 f1 4c 48 57 f6        vxorps    zmm6,zmm6,zmm6
003980  62 f1 44 48 57 ff        vxorps    zmm7,zmm7,zmm7
003986  62 51 3c 48 57 c0        vxorps    zmm8,zmm8,zmm8
00398c  62 51 34 48 57 c9        vxorps    zmm9,zmm9,zmm9
003992  62 51 2c 48 57 d2        vxorps    zmm10,zmm10,zmm10
003998  62 51 24 48 57 db        vxorps    zmm11,zmm11,zmm11
00399e  62 51 1c 48 57 e4        vxorps    zmm12,zmm12,zmm12
0039a4  62 51 14 48 57 ed        vxorps    zmm13,zmm13,zmm13
0039aa  62 51 0c 48 57 f6        vxorps    zmm14,zmm14,zmm14
0039b0  62 51 04 48 57 ff        vxorps    zmm15,zmm15,zmm15
0039b6  62 a1 7c 40 57 c0        vxorps    zmm16,zmm16,zmm16
0039bc  62 a1 74 40 57 c9        vxorps    zmm17,zmm17,zmm17
0039c2  48 8b 74 24 50           mov       rsi,[rsp+0x50]
0039c7  4c 8b 54 24 68           mov       r10,[rsp+0x68]
0039cc  48 31 db                 xor       rbx,rbx
0039cf  62 f2 7d 48 33 46 0e     vpmovzxwd zmm0,[rsi+0x1c0]
0039d6  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
0039dd  62 f2 7d 48 33 4e 0f     vpmovzxwd zmm1,[rsi+0x1e0]
0039e4  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
0039eb  62 62 7d 48 18 3c 19     vbroadcastss zmm31,[rcx+rbx]
0039f2  62 92 7d 48 b8 d7        vfmadd231ps zmm2,zmm0,zmm31
0039f8  62 92 75 48 b8 df        vfmadd231ps zmm3,zmm1,zmm31
0039fe  62 62 7d 48 18 3c 1a     vbroadcastss zmm31,[rdx+rbx]
003a05  62 92 7d 48 b8 e7        vfmadd231ps zmm4,zmm0,zmm31
003a0b  62 92 75 48 b8 ef        vfmadd231ps zmm5,zmm1,zmm31
003a11  62 42 7d 48 18 3c 18     vbroadcastss zmm31,[r8+rbx]
003a18  62 92 7d 48 b8 f7        vfmadd231ps zmm6,zmm0,zmm31
003a1e  62 92 75 48 b8 ff        vfmadd231ps zmm7,zmm1,zmm31
003a24  62 42 7d 48 18 3c 19     vbroadcastss zmm31,[r9+rbx]
003a2b  62 12 7d 48 b8 c7        vfmadd231ps zmm8,zmm0,zmm31
003a31  62 12 75 48 b8 cf        vfmadd231ps zmm9,zmm1,zmm31
003a37  62 42 7d 48 18 3c 1b     vbroadcastss zmm31,[r11+rbx]
003a3e  62 12 7d 48 b8 d7        vfmadd231ps zmm10,zmm0,zmm31
003a44  62 12 75 48 b8 df        vfmadd231ps zmm11,zmm1,zmm31
003a4a  62 42 7d 48 18 3c 1c     vbroadcastss zmm31,[r12+rbx]
003a51  62 12 7d 48 b8 e7        vfmadd231ps zmm12,zmm0,zmm31
003a57  62 12 75 48 b8 ef        vfmadd231ps zmm13,zmm1,zmm31
003a5d  62 42 7d 48 18 7c 1d 00  vbroadcastss zmm31,[r13+rbx]
003a65  62 12 7d 48 b8 f7        vfmadd231ps zmm14,zmm0,zmm31
003a6b  62 12 75 48 b8 ff        vfmadd231ps zmm15,zmm1,zmm31
003a71  62 42 7d 48 18 3c 1e     vbroadcastss zmm31,[r14+rbx]
003a78  62 82 7d 48 b8 c7        vfmadd231ps zmm16,zmm0,zmm31
003a7e  62 82 75 48 b8 cf        vfmadd231ps zmm17,zmm1,zmm31
003a84  48 81 c6 00 02 00 00     add       rsi,0x200
003a8b  48 83 c3 04              add       rbx,4
003a8f  49 ff ca                 dec       r10
003a92  0f 85 37 ff ff ff        jne       near 0x00000000000039cf
003a98  48 8b 7c 24 58           mov       rdi,[rsp+0x58]
003a9d  62 f2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm2
003aa3  c5 fc 11 87 c0 01 00 00  vmovups   [rdi+0x1c0],ymm0
003aab  62 f2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm3
003ab1  c5 fc 11 8f e0 01 00 00  vmovups   [rdi+0x1e0],ymm1
003ab9  62 f2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm4
003abf  c5 fc 11 87 c0 11 00 00  vmovups   [rdi+0x11c0],ymm0
003ac7  62 f2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm5
003acd  c5 fc 11 8f e0 11 00 00  vmovups   [rdi+0x11e0],ymm1
003ad5  62 f2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm6
003adb  c5 fc 11 87 c0 21 00 00  vmovups   [rdi+0x21c0],ymm0
003ae3  62 f2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm7
003ae9  c5 fc 11 8f e0 21 00 00  vmovups   [rdi+0x21e0],ymm1
003af1  62 d2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm8
003af7  c5 fc 11 87 c0 31 00 00  vmovups   [rdi+0x31c0],ymm0
003aff  62 d2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm9
003b05  c5 fc 11 8f e0 31 00 00  vmovups   [rdi+0x31e0],ymm1
003b0d  62 d2 7e 48 72 c2        vcvtneps2bf16 ymm0,zmm10
003b13  c5 fc 11 87 c0 41 00 00  vmovups   [rdi+0x41c0],ymm0
003b1b  62 d2 7e 48 72 cb        vcvtneps2bf16 ymm1,zmm11
003b21  c5 fc 11 8f e0 41 00 00  vmovups   [rdi+0x41e0],ymm1
003b29  62 d2 7e 48 72 c4        vcvtneps2bf16 ymm0,zmm12
003b2f  c5 fc 11 87 c0 51 00 00  vmovups   [rdi+0x51c0],ymm0
003b37  62 d2 7e 48 72 cd        vcvtneps2bf16 ymm1,zmm13
003b3d  c5 fc 11 8f e0 51 00 00  vmovups   [rdi+0x51e0],ymm1
003b45  62 d2 7e 48 72 c6        vcvtneps2bf16 ymm0,zmm14
003b4b  c5 fc 11 87 c0 61 00 00  vmovups   [rdi+0x61c0],ymm0
003b53  62 d2 7e 48 72 cf        vcvtneps2bf16 ymm1,zmm15
003b59  c5 fc 11 8f e0 61 00 00  vmovups   [rdi+0x61e0],ymm1
003b61  62 b2 7e 48 72 c0        vcvtneps2bf16 ymm0,zmm16
003b67  c5 fc 11 87 c0 71 00 00  vmovups   [rdi+0x71c0],ymm0
003b6f  62 b2 7e 48 72 c9        vcvtneps2bf16 ymm1,zmm17
003b75  c5 fc 11 8f e0 71 00 00  vmovups   [rdi+0x71e0],ymm1
003b7d  48 8d 65 d8              lea       rsp,[rbp-0x28]
003b81  41 5f                    pop       r15
003b83  41 5e                    pop       r14
003b85  41 5d                    pop       r13
003b87  41 5c                    pop       r12
003b89  5b                       pop       rbx
003b8a  5d                       pop       rbp
003b8b  c5 f8 77                 vzeroupper
003b8e  c3                       ret
