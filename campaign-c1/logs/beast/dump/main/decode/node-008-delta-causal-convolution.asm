; node 8: delta-causal-convolution (layer 0), kernel 8 at image offset 0x9ad3a, 1367 bytes, 384 tasks, up to 12 participants

000000  53                       push      rbx
000001  55                       push      rbp
000002  41 54                    push      r12
000004  41 55                    push      r13
000006  41 56                    push      r14
000008  48 83 ec 10              sub       rsp,0x10
00000c  48 89 fb                 mov       rbx,rdi
00000f  48 89 f5                 mov       rbp,rsi
000012  48 89 34 24              mov       [rsp],rsi
000016  48 8b 43 18              mov       rax,[rbx+0x18]
00001a  4c 8b 30                 mov       r14,[rax]
00001d  4c 6b e5 40              imul      r12,rbp,0x40
000021  4c 03 23                 add       r12,[rbx]
000024  4c 69 ed 00 01 00 00     imul      r13,rbp,0x100
00002b  4c 03 6b 10              add       r13,[rbx+0x10]
00002f  48 69 ed 80 00 00 00     imul      rbp,0x80
000036  48 03 6b 08              add       rbp,[rbx+8]
00003a  4d 85 f6                 test      r14,r14
00003d  74 39                    je        short 0x0000000000000078
00003f  4c 89 e7                 mov       rdi,r12
000042  48 89 ee                 mov       rsi,rbp
000045  4c 89 ea                 mov       rdx,r13
000048  4c 8b 43 20              mov       r8,[rbx+0x20]
00004c  48 81 3c 24 80 01 00 00  cmp       qword [rsp],0x180
000054  73 0c                    jae       short 0x0000000000000062
000056  b9 01 00 00 00           mov       ecx,1
00005b  e8 25 00 00 00           call      0x0000000000000085
000060  eb 0a                    jmp       short 0x000000000000006c
000062  b9 10 00 00 00           mov       ecx,0x10
000067  e8 25 03 00 00           call      0x0000000000000391
00006c  49 81 c4 00 60 00 00     add       r12,0x6000
000073  49 ff ce                 dec       r14
000076  75 c7                    jne       short 0x000000000000003f
000078  48 83 c4 10              add       rsp,0x10
00007c  41 5e                    pop       r14
00007e  41 5d                    pop       r13
000080  41 5c                    pop       r12
000082  5d                       pop       rbp
000083  5b                       pop       rbx
000084  c3                       ret
000085  b8 4f ac ae c2           mov       eax,0xc2aeac4f
00008a  62 62 7d 48 7c f8        vpbroadcastd zmm31,eax
000090  b8 3b aa b8 3f           mov       eax,0x3fb8aa3b
000095  62 62 7d 48 7c f0        vpbroadcastd zmm30,eax
00009b  b8 52 79 1e 3c           mov       eax,0x3c1e7952
0000a0  62 62 7d 48 7c e8        vpbroadcastd zmm29,eax
0000a6  b8 47 58 63 3d           mov       eax,0x3d635847
0000ab  62 62 7d 48 7c e0        vpbroadcastd zmm28,eax
0000b1  b8 f0 fd 75 3e           mov       eax,0x3e75fdf0
0000b6  62 62 7d 48 7c d8        vpbroadcastd zmm27,eax
0000bc  b8 18 72 31 3f           mov       eax,0x3f317218
0000c1  62 62 7d 48 7c d0        vpbroadcastd zmm26,eax
0000c7  b8 00 00 80 3f           mov       eax,0x3f800000
0000cc  62 62 7d 48 7c c8        vpbroadcastd zmm25,eax
0000d2  b8 00 00 80 3f           mov       eax,0x3f800000
0000d7  62 62 7d 48 7c c0        vpbroadcastd zmm24,eax
0000dd  b8 00 00 b0 42           mov       eax,0x42b00000
0000e2  62 e2 7d 48 7c f8        vpbroadcastd zmm23,eax
0000e8  48 8d 05 22 02 00 00     lea       rax,[rel 0x311]
0000ef  62 e1 7e 48 6f 30        vmovdqu32 zmm22,[rax]
0000f5  48 8d 05 55 02 00 00     lea       rax,[rel 0x351]
0000fc  62 e1 7e 48 6f 28        vmovdqu32 zmm21,[rax]
000102  b8 88 88 00 00           mov       eax,0x8888
000107  c5 f8 92 c8              kmovw     k1,eax
00010b  62 e1 7c 48 10 27        vmovups   zmm20,[rdi]
000111  62 f1 7c 48 10 02        vmovups   zmm0,[rdx]
000117  62 f1 7c 48 10 4a 01     vmovups   zmm1,[rdx+0x40]
00011e  62 f1 7c 48 10 52 02     vmovups   zmm2,[rdx+0x80]
000125  62 f1 7c 48 10 5a 03     vmovups   zmm3,[rdx+0xc0]
00012c  62 f3 75 48 03 e0 01     valignd   zmm4,zmm1,zmm0,1
000133  62 f3 6d 48 03 e9 01     valignd   zmm5,zmm2,zmm1,1
00013a  62 f3 65 48 03 f2 01     valignd   zmm6,zmm3,zmm2,1
000141  62 f3 65 48 03 fb 01     valignd   zmm7,zmm3,zmm3,1
000148  62 b2 4d 41 16 e4        vpermps   zmm4{k1},zmm22,zmm20
00014e  62 33 5d 40 03 c4 04     valignd   zmm8,zmm20,zmm20,4
000155  62 d2 4d 41 16 e8        vpermps   zmm5{k1},zmm22,zmm8
00015b  62 33 5d 40 03 c4 08     valignd   zmm8,zmm20,zmm20,8
000162  62 d2 4d 41 16 f0        vpermps   zmm6{k1},zmm22,zmm8
000168  62 33 5d 40 03 c4 0c     valignd   zmm8,zmm20,zmm20,0xc
00016f  62 d2 4d 41 16 f8        vpermps   zmm7{k1},zmm22,zmm8
000175  62 f1 7c 48 11 22        vmovups   [rdx],zmm4
00017b  62 f1 7c 48 11 6a 01     vmovups   [rdx+0x40],zmm5
000182  62 f1 7c 48 11 72 02     vmovups   [rdx+0x80],zmm6
000189  62 f1 7c 48 11 7a 03     vmovups   [rdx+0xc0],zmm7
000190  62 f1 ff 48 6f 06        vmovdqu16 zmm0,[rsi]
000196  62 f1 ff 48 6f 4e 01     vmovdqu16 zmm1,[rsi+0x40]
00019d  62 f2 7d 48 33 d0        vpmovzxwd zmm2,ymm0
0001a3  62 f3 fd 48 3b c3 01     vextracti64x4 ymm3,zmm0,1
0001aa  62 f2 7d 48 33 db        vpmovzxwd zmm3,ymm3
0001b0  62 f2 7d 48 33 c1        vpmovzxwd zmm0,ymm1
0001b6  62 f3 fd 48 3b c9 01     vextracti64x4 ymm1,zmm1,1
0001bd  62 f2 7d 48 33 c9        vpmovzxwd zmm1,ymm1
0001c3  62 f1 6d 48 72 f2 10     vpslld    zmm2,zmm2,0x10
0001ca  62 f1 65 48 72 f3 10     vpslld    zmm3,zmm3,0x10
0001d1  62 f1 7d 48 72 f0 10     vpslld    zmm0,zmm0,0x10
0001d8  62 f1 75 48 72 f1 10     vpslld    zmm1,zmm1,0x10
0001df  62 f1 6c 48 59 d4        vmulps    zmm2,zmm2,zmm4
0001e5  62 f3 6d 48 03 e2 01     valignd   zmm4,zmm2,zmm2,1
0001ec  62 f1 6c 48 58 d4        vaddps    zmm2,zmm2,zmm4
0001f2  62 f3 6d 48 03 e2 02     valignd   zmm4,zmm2,zmm2,2
0001f9  62 f1 6c 48 58 d4        vaddps    zmm2,zmm2,zmm4
0001ff  62 f1 64 48 59 dd        vmulps    zmm3,zmm3,zmm5
000205  62 f3 65 48 03 eb 01     valignd   zmm5,zmm3,zmm3,1
00020c  62 f1 64 48 58 dd        vaddps    zmm3,zmm3,zmm5
000212  62 f3 65 48 03 eb 02     valignd   zmm5,zmm3,zmm3,2
000219  62 f1 64 48 58 dd        vaddps    zmm3,zmm3,zmm5
00021f  62 f1 7c 48 59 c6        vmulps    zmm0,zmm0,zmm6
000225  62 f3 7d 48 03 f0 01     valignd   zmm6,zmm0,zmm0,1
00022c  62 f1 7c 48 58 c6        vaddps    zmm0,zmm0,zmm6
000232  62 f3 7d 48 03 f0 02     valignd   zmm6,zmm0,zmm0,2
000239  62 f1 7c 48 58 c6        vaddps    zmm0,zmm0,zmm6
00023f  62 f1 74 48 59 cf        vmulps    zmm1,zmm1,zmm7
000245  62 f3 75 48 03 f9 01     valignd   zmm7,zmm1,zmm1,1
00024c  62 f1 74 48 58 cf        vaddps    zmm1,zmm1,zmm7
000252  62 f3 75 48 03 f9 02     valignd   zmm7,zmm1,zmm1,2
000259  62 f1 74 48 58 cf        vaddps    zmm1,zmm1,zmm7
00025f  62 e1 7c 48 28 d2        vmovaps   zmm18,zmm2
000265  62 e2 55 40 7f d3        vpermt2ps zmm18,zmm21,zmm3
00026b  62 e1 7c 48 28 c8        vmovaps   zmm17,zmm0
000271  62 e2 55 40 7f c9        vpermt2ps zmm17,zmm21,zmm1
000277  62 a3 ed 40 3a d1 01     vinserti64x4 zmm18,zmm18,ymm17,1
00027e  62 a1 64 40 57 db        vxorps    zmm19,zmm19,zmm19
000284  62 a1 64 40 5c da        vsubps    zmm19,zmm19,zmm18
00028a  62 a1 64 40 5d df        vminps    zmm19,zmm19,zmm23
000290  62 81 64 40 5f df        vmaxps    zmm19,zmm19,zmm31
000296  62 11 64 40 59 c6        vmulps    zmm8,zmm19,zmm30
00029c  62 53 7d 48 08 c8 00     vrndscaleps zmm9,zmm8,0
0002a3  62 51 3c 48 5c c1        vsubps    zmm8,zmm8,zmm9
0002a9  62 11 7c 48 28 d5        vmovaps   zmm10,zmm29
0002af  62 12 3d 48 a8 d4        vfmadd213ps zmm10,zmm8,zmm28
0002b5  62 12 3d 48 a8 d3        vfmadd213ps zmm10,zmm8,zmm27
0002bb  62 12 3d 48 a8 d2        vfmadd213ps zmm10,zmm8,zmm26
0002c1  62 12 3d 48 a8 d1        vfmadd213ps zmm10,zmm8,zmm25
0002c7  62 51 7d 48 5b c9        vcvtps2dq zmm9,zmm9
0002cd  62 d1 35 48 72 f1 17     vpslld    zmm9,zmm9,0x17
0002d4  62 11 35 48 fe c8        vpaddd    zmm9,zmm9,zmm24
0002da  62 c1 2c 48 59 d9        vmulps    zmm19,zmm10,zmm9
0002e0  62 81 64 40 58 d8        vaddps    zmm19,zmm19,zmm24
0002e6  62 a1 6c 40 5e db        vdivps    zmm19,zmm18,zmm19
0002ec  62 e1 7c 48 11 1f        vmovups   [rdi],zmm19
0002f2  48 83 c7 40              add       rdi,0x40
0002f6  48 81 c6 80 00 00 00     add       rsi,0x80
0002fd  48 81 c2 00 01 00 00     add       rdx,0x100
000304  48 ff c9                 dec       rcx
000307  0f 85 fe fd ff ff        jne       near 0x000000000000010b
00030d  c5 f8 77                 vzeroupper
000310  c3                       ret
000311  00 00                    add       [rax],al
000313  00 00                    add       [rax],al
000315  00 00                    add       [rax],al
000317  00 00                    add       [rax],al
000319  00 00                    add       [rax],al
00031b  00 00                    add       [rax],al
00031d  00 00                    add       [rax],al
00031f  00 00                    add       [rax],al
000321  00 00                    add       [rax],al
000323  00 00                    add       [rax],al
000325  00 00                    add       [rax],al
000327  00 00                    add       [rax],al
000329  00 00                    add       [rax],al
00032b  00 00                    add       [rax],al
00032d  01 00                    add       [rax],eax
00032f  00 00                    add       [rax],al
000331  00 00                    add       [rax],al
000333  00 00                    add       [rax],al
000335  00 00                    add       [rax],al
000337  00 00                    add       [rax],al
000339  00 00                    add       [rax],al
00033b  00 00                    add       [rax],al
00033d  02 00                    add       al,[rax]
00033f  00 00                    add       [rax],al
000341  00 00                    add       [rax],al
000343  00 00                    add       [rax],al
000345  00 00                    add       [rax],al
000347  00 00                    add       [rax],al
000349  00 00                    add       [rax],al
00034b  00 00                    add       [rax],al
00034d  03 00                    add       eax,[rax]
00034f  00 00                    add       [rax],al
000351  00 00                    add       [rax],al
000353  00 00                    add       [rax],al
000355  04 00                    add       al,0
000357  00 00                    add       [rax],al
000359  08 00                    or        [rax],al
00035b  00 00                    add       [rax],al
00035d  0c 00                    or        al,0
00035f  00 00                    add       [rax],al
000361  10 00                    adc       [rax],al
000363  00 00                    add       [rax],al
000365  14 00                    adc       al,0
000367  00 00                    add       [rax],al
000369  18 00                    sbb       [rax],al
00036b  00 00                    add       [rax],al
00036d  1c 00                    sbb       al,0
00036f  00 00                    add       [rax],al
000371  00 00                    add       [rax],al
000373  00 00                    add       [rax],al
000375  00 00                    add       [rax],al
000377  00 00                    add       [rax],al
000379  00 00                    add       [rax],al
00037b  00 00                    add       [rax],al
00037d  00 00                    add       [rax],al
00037f  00 00                    add       [rax],al
000381  00 00                    add       [rax],al
000383  00 00                    add       [rax],al
000385  00 00                    add       [rax],al
000387  00 00                    add       [rax],al
000389  00 00                    add       [rax],al
00038b  00 00                    add       [rax],al
00038d  00 00                    add       [rax],al
00038f  00 00                    add       [rax],al
000391  53                       push      rbx
000392  55                       push      rbp
000393  41 54                    push      r12
000395  41 55                    push      r13
000397  41 56                    push      r14
000399  48 83 ec 10              sub       rsp,0x10
00039d  48 89 fb                 mov       rbx,rdi
0003a0  48 89 f5                 mov       rbp,rsi
0003a3  49 89 d4                 mov       r12,rdx
0003a6  49 89 cd                 mov       r13,rcx
0003a9  4d 89 c6                 mov       r14,r8
0003ac  4d 85 ed                 test      r13,r13
0003af  0f 84 88 00 00 00        je        near 0x000000000000043d
0003b5  31 c9                    xor       ecx,ecx
0003b7  41 8b 44 8c 04           mov       eax,[r12+rcx*4+4]
0003bc  41 89 04 8c              mov       [r12+rcx*4],eax
0003c0  48 ff c1                 inc       rcx
0003c3  48 83 f9 03              cmp       rcx,3
0003c7  72 ee                    jb        short 0x00000000000003b7
0003c9  8b 03                    mov       eax,[rbx]
0003cb  41 89 44 24 0c           mov       [r12+0xc],eax
0003d0  31 c9                    xor       ecx,ecx
0003d2  0f 57 c0                 xorps     xmm0,xmm0
0003d5  0f b7 44 4d 00           movzx     eax,word [rbp+rcx*2]
0003da  c1 e0 10                 shl       eax,0x10
0003dd  66 0f 6e c8              movd      xmm1,eax
0003e1  f3 41 0f 59 0c 8c        mulss     xmm1,[r12+rcx*4]
0003e7  f3 0f 58 c1              addss     xmm0,xmm1
0003eb  48 ff c1                 inc       rcx
0003ee  48 83 f9 04              cmp       rcx,4
0003f2  72 e1                    jb        short 0x00000000000003d5
0003f4  66 0f 7e 04 24           movd      [rsp],xmm0
0003f9  66 0f 7e c0              movd      eax,xmm0
0003fd  35 00 00 00 80           xor       eax,0x80000000
000402  66 0f 6e c0              movd      xmm0,eax
000406  4c 89 f7                 mov       rdi,r14
000409  e8 3c 00 00 00           call      0x000000000000044a
00040e  b8 00 00 80 3f           mov       eax,0x3f800000
000413  66 0f 6e c8              movd      xmm1,eax
000417  f3 0f 58 c1              addss     xmm0,xmm1
00041b  66 0f 6e 0c 24           movd      xmm1,[rsp]
000420  f3 0f 5e c8              divss     xmm1,xmm0
000424  66 0f 7e 0b              movd      [rbx],xmm1
000428  48 83 c3 04              add       rbx,4
00042c  48 83 c5 08              add       rbp,8
000430  49 83 c4 10              add       r12,0x10
000434  49 ff cd                 dec       r13
000437  0f 85 78 ff ff ff        jne       near 0x00000000000003b5
00043d  48 83 c4 10              add       rsp,0x10
000441  41 5e                    pop       r14
000443  41 5d                    pop       r13
000445  41 5c                    pop       r12
000447  5d                       pop       rbp
000448  5b                       pop       rbx
000449  c3                       ret
00044a  66 0f 7e c2              movd      edx,xmm0
00044e  89 d0                    mov       eax,edx
000450  25 ff ff ff 7f           and       eax,0x7fffffff
000455  3d 00 00 b0 42           cmp       eax,0x42b00000
00045a  0f 83 a8 00 00 00        jae       near 0x0000000000000508
000460  f3 0f 5a d0              cvtss2sd  xmm2,xmm0
000464  49 bb fe 82 2b 65 47 15 47 40 mov       r11,0x40471547652b82fe
00046e  66 49 0f 6e cb           movq      xmm1,r11
000473  49 bb 00 00 00 00 00 00 38 43 mov       r11,0x4338000000000000
00047d  66 49 0f 6e db           movq      xmm3,r11
000482  49 bb 00 00 00 00 00 00 f0 3f mov       r11,0x3ff0000000000000
00048c  66 49 0f 6e e3           movq      xmm4,r11
000491  66 0f 28 c1              movapd    xmm0,xmm1
000495  c4 e2 e1 99 c2           vfmadd132sd xmm0,xmm3,xmm2
00049a  66 48 0f 7e c0           movq      rax,xmm0
00049f  f2 0f 5c c3              subsd     xmm0,xmm3
0004a3  48 89 c1                 mov       rcx,rax
0004a6  48 c1 e0 2f              shl       rax,0x2f
0004aa  83 e1 1f                 and       ecx,0x1f
0004ad  c4 e2 f9 9b ca           vfmsub132sd xmm1,xmm0,xmm2
0004b2  48 03 04 cf              add       rax,[rdi+rcx*8]
0004b6  66 48 0f 6e e8           movq      xmm5,rax
0004bb  49 bb 94 23 91 4b f8 6a bc 3e mov       r11,0x3ebc6af84b912394
0004c5  66 49 0f 6e c3           movq      xmm0,r11
0004ca  49 bb f3 c4 fa 50 ce bf 2e 3f mov       r11,0x3f2ebfce50fac4f3
0004d4  66 49 0f 6e f3           movq      xmm6,r11
0004d9  c4 e2 f1 a9 c6           vfmadd213sd xmm0,xmm1,xmm6
0004de  66 0f 28 d1              movapd    xmm2,xmm1
0004e2  f2 0f 59 d1              mulsd     xmm2,xmm1
0004e6  49 bb d6 52 0c ff 42 2e 96 3f mov       r11,0x3f962e42ff0c52d6
0004f0  66 49 0f 6e f3           movq      xmm6,r11
0004f5  c4 e2 d9 99 ce           vfmadd132sd xmm1,xmm4,xmm6
0004fa  c4 e2 f1 99 c2           vfmadd132sd xmm0,xmm1,xmm2
0004ff  f2 0f 59 c5              mulsd     xmm0,xmm5
000503  f2 0f 5a c0              cvtsd2ss  xmm0,xmm0
000507  c3                       ret
000508  81 fa 00 00 80 ff        cmp       edx,0xff800000
00050e  74 43                    je        short 0x0000000000000553
000510  3d 00 00 80 7f           cmp       eax,0x7f800000
000515  73 2d                    jae       short 0x0000000000000544
000517  49 bb 18 72 b1 42 00 00 00 00 mov       r11,0x42b17218
000521  66 49 0f 6e cb           movq      xmm1,r11
000526  0f 2e c1                 ucomiss   xmm0,xmm1
000529  77 1e                    ja        short 0x0000000000000549
00052b  49 bb b5 f1 cf c2 00 00 00 00 mov       r11,0xc2cff1b5
000535  66 49 0f 6e cb           movq      xmm1,r11
00053a  0f 2e c1                 ucomiss   xmm0,xmm1
00053d  72 14                    jb        short 0x0000000000000553
00053f  e9 1c ff ff ff           jmp       0x0000000000000460
000544  f3 0f 58 c0              addss     xmm0,xmm0
000548  c3                       ret
000549  b8 00 00 80 7f           mov       eax,0x7f800000
00054e  66 0f 6e c0              movd      xmm0,eax
000552  c3                       ret
000553  0f 57 c0                 xorps     xmm0,xmm0
000556  c3                       ret
