; node 0: block-begin (layer -), kernel 0 at image offset 0x94e6d, 6742 bytes, 1 tasks, up to 1 participants

000000  4c 8b 47 08              mov       r8,[rdi+8]
000004  4c 8b 4f 18              mov       r9,[rdi+0x18]
000008  4d 39 c8                 cmp       r8,r9
00000b  4d 0f 42 c1              cmovb     r8,r9
00000f  4d 29 c8                 sub       r8,r9
000012  48 b8 00 01 00 00 00 00 00 00 mov       rax,0x100
00001c  49 39 c0                 cmp       r8,rax
00001f  4c 0f 47 c0              cmova     r8,rax
000023  4c 89 47 20              mov       [rdi+0x20],r8
000027  48 8b 07                 mov       rax,[rdi]
00002a  4a 8d 04 88              lea       rax,[rax+r9*4]
00002e  48 89 47 28              mov       [rdi+0x28],rax
000032  4d 01 c1                 add       r9,r8
000035  4c 3b 4f 08              cmp       r9,[rdi+8]
000039  41 0f 93 c3              setae     r11b
00003d  45 0f b6 db              movzx     r11d,r11b
000041  4c 89 5f 30              mov       [rdi+0x30],r11
000045  48 8b 77 38              mov       rsi,[rdi+0x38]
000049  4c 89 c0                 mov       rax,r8
00004c  48 89 06                 mov       [rsi],rax
00004f  4c 89 c0                 mov       rax,r8
000052  48 89 46 08              mov       [rsi+8],rax
000056  49 8d 40 07              lea       rax,[r8+7]
00005a  48 c1 e8 03              shr       rax,3
00005e  48 89 46 10              mov       [rsi+0x10],rax
000062  49 8d 40 07              lea       rax,[r8+7]
000066  48 c1 e8 03              shr       rax,3
00006a  48 89 46 18              mov       [rsi+0x18],rax
00006e  4c 89 c0                 mov       rax,r8
000071  48 89 46 20              mov       [rsi+0x20],rax
000075  49 8d 40 07              lea       rax,[r8+7]
000079  48 c1 e8 03              shr       rax,3
00007d  48 69 c0 80 00 00 00     imul      rax,0x80
000084  48 89 46 28              mov       [rsi+0x28],rax
000088  49 8d 40 07              lea       rax,[r8+7]
00008c  48 c1 e8 03              shr       rax,3
000090  48 6b c0 2b              imul      rax,0x2b
000094  48 89 46 30              mov       [rsi+0x30],rax
000098  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00009f  48 c1 e8 08              shr       rax,8
0000a3  48 69 c0 80 01 00 00     imul      rax,0x180
0000aa  48 89 46 38              mov       [rsi+0x38],rax
0000ae  4c 89 c0                 mov       rax,r8
0000b1  48 6b c0 10              imul      rax,0x10
0000b5  48 89 46 40              mov       [rsi+0x40],rax
0000b9  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0000c0  48 c1 e8 08              shr       rax,8
0000c4  48 6b c0 10              imul      rax,0x10
0000c8  48 89 46 48              mov       [rsi+0x48],rax
0000cc  4c 89 c0                 mov       rax,r8
0000cf  48 6b c0 10              imul      rax,0x10
0000d3  48 89 46 50              mov       [rsi+0x50],rax
0000d7  49 8d 40 07              lea       rax,[r8+7]
0000db  48 c1 e8 03              shr       rax,3
0000df  48 6b c0 16              imul      rax,0x16
0000e3  48 89 46 58              mov       [rsi+0x58],rax
0000e7  4c 89 c0                 mov       rax,r8
0000ea  48 89 46 60              mov       [rsi+0x60],rax
0000ee  4c 89 c0                 mov       rax,r8
0000f1  48 89 46 68              mov       [rsi+0x68],rax
0000f5  49 8d 40 07              lea       rax,[r8+7]
0000f9  48 c1 e8 03              shr       rax,3
0000fd  48 6b c0 4b              imul      rax,0x4b
000101  48 89 46 70              mov       [rsi+0x70],rax
000105  49 8d 40 07              lea       rax,[r8+7]
000109  48 c1 e8 03              shr       rax,3
00010d  48 6b c0 4b              imul      rax,0x4b
000111  48 89 46 78              mov       [rsi+0x78],rax
000115  4c 89 c0                 mov       rax,r8
000118  48 89 86 80 00 00 00     mov       [rsi+0x80],rax
00011f  49 8d 40 07              lea       rax,[r8+7]
000123  48 c1 e8 03              shr       rax,3
000127  48 6b c0 16              imul      rax,0x16
00012b  48 89 86 88 00 00 00     mov       [rsi+0x88],rax
000132  4c 89 c0                 mov       rax,r8
000135  48 89 86 90 00 00 00     mov       [rsi+0x90],rax
00013c  4c 89 c0                 mov       rax,r8
00013f  48 89 86 98 00 00 00     mov       [rsi+0x98],rax
000146  49 8d 40 07              lea       rax,[r8+7]
00014a  48 c1 e8 03              shr       rax,3
00014e  48 89 86 a0 00 00 00     mov       [rsi+0xa0],rax
000155  49 8d 40 07              lea       rax,[r8+7]
000159  48 c1 e8 03              shr       rax,3
00015d  48 89 86 a8 00 00 00     mov       [rsi+0xa8],rax
000164  4c 89 c0                 mov       rax,r8
000167  48 89 86 b0 00 00 00     mov       [rsi+0xb0],rax
00016e  49 8d 40 07              lea       rax,[r8+7]
000172  48 c1 e8 03              shr       rax,3
000176  48 69 c0 80 00 00 00     imul      rax,0x80
00017d  48 89 86 b8 00 00 00     mov       [rsi+0xb8],rax
000184  49 8d 40 07              lea       rax,[r8+7]
000188  48 c1 e8 03              shr       rax,3
00018c  48 6b c0 2b              imul      rax,0x2b
000190  48 89 86 c0 00 00 00     mov       [rsi+0xc0],rax
000197  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00019e  48 c1 e8 08              shr       rax,8
0001a2  48 69 c0 80 01 00 00     imul      rax,0x180
0001a9  48 89 86 c8 00 00 00     mov       [rsi+0xc8],rax
0001b0  4c 89 c0                 mov       rax,r8
0001b3  48 6b c0 10              imul      rax,0x10
0001b7  48 89 86 d0 00 00 00     mov       [rsi+0xd0],rax
0001be  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0001c5  48 c1 e8 08              shr       rax,8
0001c9  48 6b c0 10              imul      rax,0x10
0001cd  48 89 86 d8 00 00 00     mov       [rsi+0xd8],rax
0001d4  4c 89 c0                 mov       rax,r8
0001d7  48 6b c0 10              imul      rax,0x10
0001db  48 89 86 e0 00 00 00     mov       [rsi+0xe0],rax
0001e2  49 8d 40 07              lea       rax,[r8+7]
0001e6  48 c1 e8 03              shr       rax,3
0001ea  48 6b c0 16              imul      rax,0x16
0001ee  48 89 86 e8 00 00 00     mov       [rsi+0xe8],rax
0001f5  4c 89 c0                 mov       rax,r8
0001f8  48 89 86 f0 00 00 00     mov       [rsi+0xf0],rax
0001ff  4c 89 c0                 mov       rax,r8
000202  48 89 86 f8 00 00 00     mov       [rsi+0xf8],rax
000209  49 8d 40 07              lea       rax,[r8+7]
00020d  48 c1 e8 03              shr       rax,3
000211  48 6b c0 4b              imul      rax,0x4b
000215  48 89 86 00 01 00 00     mov       [rsi+0x100],rax
00021c  49 8d 40 07              lea       rax,[r8+7]
000220  48 c1 e8 03              shr       rax,3
000224  48 6b c0 4b              imul      rax,0x4b
000228  48 89 86 08 01 00 00     mov       [rsi+0x108],rax
00022f  4c 89 c0                 mov       rax,r8
000232  48 89 86 10 01 00 00     mov       [rsi+0x110],rax
000239  49 8d 40 07              lea       rax,[r8+7]
00023d  48 c1 e8 03              shr       rax,3
000241  48 6b c0 16              imul      rax,0x16
000245  48 89 86 18 01 00 00     mov       [rsi+0x118],rax
00024c  4c 89 c0                 mov       rax,r8
00024f  48 89 86 20 01 00 00     mov       [rsi+0x120],rax
000256  4c 89 c0                 mov       rax,r8
000259  48 89 86 28 01 00 00     mov       [rsi+0x128],rax
000260  49 8d 40 07              lea       rax,[r8+7]
000264  48 c1 e8 03              shr       rax,3
000268  48 89 86 30 01 00 00     mov       [rsi+0x130],rax
00026f  49 8d 40 07              lea       rax,[r8+7]
000273  48 c1 e8 03              shr       rax,3
000277  48 89 86 38 01 00 00     mov       [rsi+0x138],rax
00027e  4c 89 c0                 mov       rax,r8
000281  48 89 86 40 01 00 00     mov       [rsi+0x140],rax
000288  49 8d 40 07              lea       rax,[r8+7]
00028c  48 c1 e8 03              shr       rax,3
000290  48 69 c0 80 00 00 00     imul      rax,0x80
000297  48 89 86 48 01 00 00     mov       [rsi+0x148],rax
00029e  49 8d 40 07              lea       rax,[r8+7]
0002a2  48 c1 e8 03              shr       rax,3
0002a6  48 6b c0 2b              imul      rax,0x2b
0002aa  48 89 86 50 01 00 00     mov       [rsi+0x150],rax
0002b1  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0002b8  48 c1 e8 08              shr       rax,8
0002bc  48 69 c0 80 01 00 00     imul      rax,0x180
0002c3  48 89 86 58 01 00 00     mov       [rsi+0x158],rax
0002ca  4c 89 c0                 mov       rax,r8
0002cd  48 6b c0 10              imul      rax,0x10
0002d1  48 89 86 60 01 00 00     mov       [rsi+0x160],rax
0002d8  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0002df  48 c1 e8 08              shr       rax,8
0002e3  48 6b c0 10              imul      rax,0x10
0002e7  48 89 86 68 01 00 00     mov       [rsi+0x168],rax
0002ee  4c 89 c0                 mov       rax,r8
0002f1  48 6b c0 10              imul      rax,0x10
0002f5  48 89 86 70 01 00 00     mov       [rsi+0x170],rax
0002fc  49 8d 40 07              lea       rax,[r8+7]
000300  48 c1 e8 03              shr       rax,3
000304  48 6b c0 16              imul      rax,0x16
000308  48 89 86 78 01 00 00     mov       [rsi+0x178],rax
00030f  4c 89 c0                 mov       rax,r8
000312  48 89 86 80 01 00 00     mov       [rsi+0x180],rax
000319  4c 89 c0                 mov       rax,r8
00031c  48 89 86 88 01 00 00     mov       [rsi+0x188],rax
000323  49 8d 40 07              lea       rax,[r8+7]
000327  48 c1 e8 03              shr       rax,3
00032b  48 6b c0 4b              imul      rax,0x4b
00032f  48 89 86 90 01 00 00     mov       [rsi+0x190],rax
000336  49 8d 40 07              lea       rax,[r8+7]
00033a  48 c1 e8 03              shr       rax,3
00033e  48 6b c0 4b              imul      rax,0x4b
000342  48 89 86 98 01 00 00     mov       [rsi+0x198],rax
000349  4c 89 c0                 mov       rax,r8
00034c  48 89 86 a0 01 00 00     mov       [rsi+0x1a0],rax
000353  49 8d 40 07              lea       rax,[r8+7]
000357  48 c1 e8 03              shr       rax,3
00035b  48 6b c0 16              imul      rax,0x16
00035f  48 89 86 a8 01 00 00     mov       [rsi+0x1a8],rax
000366  4c 89 c0                 mov       rax,r8
000369  48 89 86 b0 01 00 00     mov       [rsi+0x1b0],rax
000370  4c 89 c0                 mov       rax,r8
000373  48 89 86 b8 01 00 00     mov       [rsi+0x1b8],rax
00037a  49 8d 40 07              lea       rax,[r8+7]
00037e  48 c1 e8 03              shr       rax,3
000382  48 6b c0 56              imul      rax,0x56
000386  48 89 86 c0 01 00 00     mov       [rsi+0x1c0],rax
00038d  49 8d 40 07              lea       rax,[r8+7]
000391  48 c1 e8 03              shr       rax,3
000395  48 6b c0 0b              imul      rax,0xb
000399  48 89 86 c8 01 00 00     mov       [rsi+0x1c8],rax
0003a0  49 8d 40 07              lea       rax,[r8+7]
0003a4  48 c1 e8 03              shr       rax,3
0003a8  48 6b c0 0b              imul      rax,0xb
0003ac  48 89 86 d0 01 00 00     mov       [rsi+0x1d0],rax
0003b3  4c 89 c0                 mov       rax,r8
0003b6  48 89 86 d8 01 00 00     mov       [rsi+0x1d8],rax
0003bd  4c 89 c0                 mov       rax,r8
0003c0  48 89 86 e0 01 00 00     mov       [rsi+0x1e0],rax
0003c7  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0003ce  48 c1 e8 08              shr       rax,8
0003d2  48 6b c0 02              imul      rax,2
0003d6  48 89 86 e8 01 00 00     mov       [rsi+0x1e8],rax
0003dd  49 8d 40 07              lea       rax,[r8+7]
0003e1  48 c1 e8 03              shr       rax,3
0003e5  48 6b c0 08              imul      rax,8
0003e9  48 89 86 f0 01 00 00     mov       [rsi+0x1f0],rax
0003f0  4c 89 c0                 mov       rax,r8
0003f3  48 89 86 f8 01 00 00     mov       [rsi+0x1f8],rax
0003fa  49 8d 40 07              lea       rax,[r8+7]
0003fe  48 c1 e8 03              shr       rax,3
000402  48 6b c0 16              imul      rax,0x16
000406  48 89 86 00 02 00 00     mov       [rsi+0x200],rax
00040d  4c 89 c0                 mov       rax,r8
000410  48 89 86 08 02 00 00     mov       [rsi+0x208],rax
000417  4c 89 c0                 mov       rax,r8
00041a  48 89 86 10 02 00 00     mov       [rsi+0x210],rax
000421  49 8d 40 07              lea       rax,[r8+7]
000425  48 c1 e8 03              shr       rax,3
000429  48 6b c0 4b              imul      rax,0x4b
00042d  48 89 86 18 02 00 00     mov       [rsi+0x218],rax
000434  49 8d 40 07              lea       rax,[r8+7]
000438  48 c1 e8 03              shr       rax,3
00043c  48 6b c0 4b              imul      rax,0x4b
000440  48 89 86 20 02 00 00     mov       [rsi+0x220],rax
000447  4c 89 c0                 mov       rax,r8
00044a  48 89 86 28 02 00 00     mov       [rsi+0x228],rax
000451  49 8d 40 07              lea       rax,[r8+7]
000455  48 c1 e8 03              shr       rax,3
000459  48 6b c0 16              imul      rax,0x16
00045d  48 89 86 30 02 00 00     mov       [rsi+0x230],rax
000464  4c 89 c0                 mov       rax,r8
000467  48 89 86 38 02 00 00     mov       [rsi+0x238],rax
00046e  4c 89 c0                 mov       rax,r8
000471  48 89 86 40 02 00 00     mov       [rsi+0x240],rax
000478  49 8d 40 07              lea       rax,[r8+7]
00047c  48 c1 e8 03              shr       rax,3
000480  48 89 86 48 02 00 00     mov       [rsi+0x248],rax
000487  49 8d 40 07              lea       rax,[r8+7]
00048b  48 c1 e8 03              shr       rax,3
00048f  48 89 86 50 02 00 00     mov       [rsi+0x250],rax
000496  4c 89 c0                 mov       rax,r8
000499  48 89 86 58 02 00 00     mov       [rsi+0x258],rax
0004a0  49 8d 40 07              lea       rax,[r8+7]
0004a4  48 c1 e8 03              shr       rax,3
0004a8  48 69 c0 80 00 00 00     imul      rax,0x80
0004af  48 89 86 60 02 00 00     mov       [rsi+0x260],rax
0004b6  49 8d 40 07              lea       rax,[r8+7]
0004ba  48 c1 e8 03              shr       rax,3
0004be  48 6b c0 2b              imul      rax,0x2b
0004c2  48 89 86 68 02 00 00     mov       [rsi+0x268],rax
0004c9  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0004d0  48 c1 e8 08              shr       rax,8
0004d4  48 69 c0 80 01 00 00     imul      rax,0x180
0004db  48 89 86 70 02 00 00     mov       [rsi+0x270],rax
0004e2  4c 89 c0                 mov       rax,r8
0004e5  48 6b c0 10              imul      rax,0x10
0004e9  48 89 86 78 02 00 00     mov       [rsi+0x278],rax
0004f0  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0004f7  48 c1 e8 08              shr       rax,8
0004fb  48 6b c0 10              imul      rax,0x10
0004ff  48 89 86 80 02 00 00     mov       [rsi+0x280],rax
000506  4c 89 c0                 mov       rax,r8
000509  48 6b c0 10              imul      rax,0x10
00050d  48 89 86 88 02 00 00     mov       [rsi+0x288],rax
000514  49 8d 40 07              lea       rax,[r8+7]
000518  48 c1 e8 03              shr       rax,3
00051c  48 6b c0 16              imul      rax,0x16
000520  48 89 86 90 02 00 00     mov       [rsi+0x290],rax
000527  4c 89 c0                 mov       rax,r8
00052a  48 89 86 98 02 00 00     mov       [rsi+0x298],rax
000531  4c 89 c0                 mov       rax,r8
000534  48 89 86 a0 02 00 00     mov       [rsi+0x2a0],rax
00053b  49 8d 40 07              lea       rax,[r8+7]
00053f  48 c1 e8 03              shr       rax,3
000543  48 6b c0 4b              imul      rax,0x4b
000547  48 89 86 a8 02 00 00     mov       [rsi+0x2a8],rax
00054e  49 8d 40 07              lea       rax,[r8+7]
000552  48 c1 e8 03              shr       rax,3
000556  48 6b c0 4b              imul      rax,0x4b
00055a  48 89 86 b0 02 00 00     mov       [rsi+0x2b0],rax
000561  4c 89 c0                 mov       rax,r8
000564  48 89 86 b8 02 00 00     mov       [rsi+0x2b8],rax
00056b  49 8d 40 07              lea       rax,[r8+7]
00056f  48 c1 e8 03              shr       rax,3
000573  48 6b c0 16              imul      rax,0x16
000577  48 89 86 c0 02 00 00     mov       [rsi+0x2c0],rax
00057e  4c 89 c0                 mov       rax,r8
000581  48 89 86 c8 02 00 00     mov       [rsi+0x2c8],rax
000588  4c 89 c0                 mov       rax,r8
00058b  48 89 86 d0 02 00 00     mov       [rsi+0x2d0],rax
000592  49 8d 40 07              lea       rax,[r8+7]
000596  48 c1 e8 03              shr       rax,3
00059a  48 89 86 d8 02 00 00     mov       [rsi+0x2d8],rax
0005a1  49 8d 40 07              lea       rax,[r8+7]
0005a5  48 c1 e8 03              shr       rax,3
0005a9  48 89 86 e0 02 00 00     mov       [rsi+0x2e0],rax
0005b0  4c 89 c0                 mov       rax,r8
0005b3  48 89 86 e8 02 00 00     mov       [rsi+0x2e8],rax
0005ba  49 8d 40 07              lea       rax,[r8+7]
0005be  48 c1 e8 03              shr       rax,3
0005c2  48 69 c0 80 00 00 00     imul      rax,0x80
0005c9  48 89 86 f0 02 00 00     mov       [rsi+0x2f0],rax
0005d0  49 8d 40 07              lea       rax,[r8+7]
0005d4  48 c1 e8 03              shr       rax,3
0005d8  48 6b c0 2b              imul      rax,0x2b
0005dc  48 89 86 f8 02 00 00     mov       [rsi+0x2f8],rax
0005e3  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0005ea  48 c1 e8 08              shr       rax,8
0005ee  48 69 c0 80 01 00 00     imul      rax,0x180
0005f5  48 89 86 00 03 00 00     mov       [rsi+0x300],rax
0005fc  4c 89 c0                 mov       rax,r8
0005ff  48 6b c0 10              imul      rax,0x10
000603  48 89 86 08 03 00 00     mov       [rsi+0x308],rax
00060a  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000611  48 c1 e8 08              shr       rax,8
000615  48 6b c0 10              imul      rax,0x10
000619  48 89 86 10 03 00 00     mov       [rsi+0x310],rax
000620  4c 89 c0                 mov       rax,r8
000623  48 6b c0 10              imul      rax,0x10
000627  48 89 86 18 03 00 00     mov       [rsi+0x318],rax
00062e  49 8d 40 07              lea       rax,[r8+7]
000632  48 c1 e8 03              shr       rax,3
000636  48 6b c0 16              imul      rax,0x16
00063a  48 89 86 20 03 00 00     mov       [rsi+0x320],rax
000641  4c 89 c0                 mov       rax,r8
000644  48 89 86 28 03 00 00     mov       [rsi+0x328],rax
00064b  4c 89 c0                 mov       rax,r8
00064e  48 89 86 30 03 00 00     mov       [rsi+0x330],rax
000655  49 8d 40 07              lea       rax,[r8+7]
000659  48 c1 e8 03              shr       rax,3
00065d  48 6b c0 4b              imul      rax,0x4b
000661  48 89 86 38 03 00 00     mov       [rsi+0x338],rax
000668  49 8d 40 07              lea       rax,[r8+7]
00066c  48 c1 e8 03              shr       rax,3
000670  48 6b c0 4b              imul      rax,0x4b
000674  48 89 86 40 03 00 00     mov       [rsi+0x340],rax
00067b  4c 89 c0                 mov       rax,r8
00067e  48 89 86 48 03 00 00     mov       [rsi+0x348],rax
000685  49 8d 40 07              lea       rax,[r8+7]
000689  48 c1 e8 03              shr       rax,3
00068d  48 6b c0 16              imul      rax,0x16
000691  48 89 86 50 03 00 00     mov       [rsi+0x350],rax
000698  4c 89 c0                 mov       rax,r8
00069b  48 89 86 58 03 00 00     mov       [rsi+0x358],rax
0006a2  4c 89 c0                 mov       rax,r8
0006a5  48 89 86 60 03 00 00     mov       [rsi+0x360],rax
0006ac  49 8d 40 07              lea       rax,[r8+7]
0006b0  48 c1 e8 03              shr       rax,3
0006b4  48 89 86 68 03 00 00     mov       [rsi+0x368],rax
0006bb  49 8d 40 07              lea       rax,[r8+7]
0006bf  48 c1 e8 03              shr       rax,3
0006c3  48 89 86 70 03 00 00     mov       [rsi+0x370],rax
0006ca  4c 89 c0                 mov       rax,r8
0006cd  48 89 86 78 03 00 00     mov       [rsi+0x378],rax
0006d4  49 8d 40 07              lea       rax,[r8+7]
0006d8  48 c1 e8 03              shr       rax,3
0006dc  48 69 c0 80 00 00 00     imul      rax,0x80
0006e3  48 89 86 80 03 00 00     mov       [rsi+0x380],rax
0006ea  49 8d 40 07              lea       rax,[r8+7]
0006ee  48 c1 e8 03              shr       rax,3
0006f2  48 6b c0 2b              imul      rax,0x2b
0006f6  48 89 86 88 03 00 00     mov       [rsi+0x388],rax
0006fd  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000704  48 c1 e8 08              shr       rax,8
000708  48 69 c0 80 01 00 00     imul      rax,0x180
00070f  48 89 86 90 03 00 00     mov       [rsi+0x390],rax
000716  4c 89 c0                 mov       rax,r8
000719  48 6b c0 10              imul      rax,0x10
00071d  48 89 86 98 03 00 00     mov       [rsi+0x398],rax
000724  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00072b  48 c1 e8 08              shr       rax,8
00072f  48 6b c0 10              imul      rax,0x10
000733  48 89 86 a0 03 00 00     mov       [rsi+0x3a0],rax
00073a  4c 89 c0                 mov       rax,r8
00073d  48 6b c0 10              imul      rax,0x10
000741  48 89 86 a8 03 00 00     mov       [rsi+0x3a8],rax
000748  49 8d 40 07              lea       rax,[r8+7]
00074c  48 c1 e8 03              shr       rax,3
000750  48 6b c0 16              imul      rax,0x16
000754  48 89 86 b0 03 00 00     mov       [rsi+0x3b0],rax
00075b  4c 89 c0                 mov       rax,r8
00075e  48 89 86 b8 03 00 00     mov       [rsi+0x3b8],rax
000765  4c 89 c0                 mov       rax,r8
000768  48 89 86 c0 03 00 00     mov       [rsi+0x3c0],rax
00076f  49 8d 40 07              lea       rax,[r8+7]
000773  48 c1 e8 03              shr       rax,3
000777  48 6b c0 4b              imul      rax,0x4b
00077b  48 89 86 c8 03 00 00     mov       [rsi+0x3c8],rax
000782  49 8d 40 07              lea       rax,[r8+7]
000786  48 c1 e8 03              shr       rax,3
00078a  48 6b c0 4b              imul      rax,0x4b
00078e  48 89 86 d0 03 00 00     mov       [rsi+0x3d0],rax
000795  4c 89 c0                 mov       rax,r8
000798  48 89 86 d8 03 00 00     mov       [rsi+0x3d8],rax
00079f  49 8d 40 07              lea       rax,[r8+7]
0007a3  48 c1 e8 03              shr       rax,3
0007a7  48 6b c0 16              imul      rax,0x16
0007ab  48 89 86 e0 03 00 00     mov       [rsi+0x3e0],rax
0007b2  4c 89 c0                 mov       rax,r8
0007b5  48 89 86 e8 03 00 00     mov       [rsi+0x3e8],rax
0007bc  4c 89 c0                 mov       rax,r8
0007bf  48 89 86 f0 03 00 00     mov       [rsi+0x3f0],rax
0007c6  49 8d 40 07              lea       rax,[r8+7]
0007ca  48 c1 e8 03              shr       rax,3
0007ce  48 6b c0 56              imul      rax,0x56
0007d2  48 89 86 f8 03 00 00     mov       [rsi+0x3f8],rax
0007d9  49 8d 40 07              lea       rax,[r8+7]
0007dd  48 c1 e8 03              shr       rax,3
0007e1  48 6b c0 0b              imul      rax,0xb
0007e5  48 89 86 00 04 00 00     mov       [rsi+0x400],rax
0007ec  49 8d 40 07              lea       rax,[r8+7]
0007f0  48 c1 e8 03              shr       rax,3
0007f4  48 6b c0 0b              imul      rax,0xb
0007f8  48 89 86 08 04 00 00     mov       [rsi+0x408],rax
0007ff  4c 89 c0                 mov       rax,r8
000802  48 89 86 10 04 00 00     mov       [rsi+0x410],rax
000809  4c 89 c0                 mov       rax,r8
00080c  48 89 86 18 04 00 00     mov       [rsi+0x418],rax
000813  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00081a  48 c1 e8 08              shr       rax,8
00081e  48 6b c0 02              imul      rax,2
000822  48 89 86 20 04 00 00     mov       [rsi+0x420],rax
000829  49 8d 40 07              lea       rax,[r8+7]
00082d  48 c1 e8 03              shr       rax,3
000831  48 6b c0 08              imul      rax,8
000835  48 89 86 28 04 00 00     mov       [rsi+0x428],rax
00083c  4c 89 c0                 mov       rax,r8
00083f  48 89 86 30 04 00 00     mov       [rsi+0x430],rax
000846  49 8d 40 07              lea       rax,[r8+7]
00084a  48 c1 e8 03              shr       rax,3
00084e  48 6b c0 16              imul      rax,0x16
000852  48 89 86 38 04 00 00     mov       [rsi+0x438],rax
000859  4c 89 c0                 mov       rax,r8
00085c  48 89 86 40 04 00 00     mov       [rsi+0x440],rax
000863  4c 89 c0                 mov       rax,r8
000866  48 89 86 48 04 00 00     mov       [rsi+0x448],rax
00086d  49 8d 40 07              lea       rax,[r8+7]
000871  48 c1 e8 03              shr       rax,3
000875  48 6b c0 4b              imul      rax,0x4b
000879  48 89 86 50 04 00 00     mov       [rsi+0x450],rax
000880  49 8d 40 07              lea       rax,[r8+7]
000884  48 c1 e8 03              shr       rax,3
000888  48 6b c0 4b              imul      rax,0x4b
00088c  48 89 86 58 04 00 00     mov       [rsi+0x458],rax
000893  4c 89 c0                 mov       rax,r8
000896  48 89 86 60 04 00 00     mov       [rsi+0x460],rax
00089d  49 8d 40 07              lea       rax,[r8+7]
0008a1  48 c1 e8 03              shr       rax,3
0008a5  48 6b c0 16              imul      rax,0x16
0008a9  48 89 86 68 04 00 00     mov       [rsi+0x468],rax
0008b0  4c 89 c0                 mov       rax,r8
0008b3  48 89 86 70 04 00 00     mov       [rsi+0x470],rax
0008ba  4c 89 c0                 mov       rax,r8
0008bd  48 89 86 78 04 00 00     mov       [rsi+0x478],rax
0008c4  49 8d 40 07              lea       rax,[r8+7]
0008c8  48 c1 e8 03              shr       rax,3
0008cc  48 89 86 80 04 00 00     mov       [rsi+0x480],rax
0008d3  49 8d 40 07              lea       rax,[r8+7]
0008d7  48 c1 e8 03              shr       rax,3
0008db  48 89 86 88 04 00 00     mov       [rsi+0x488],rax
0008e2  4c 89 c0                 mov       rax,r8
0008e5  48 89 86 90 04 00 00     mov       [rsi+0x490],rax
0008ec  49 8d 40 07              lea       rax,[r8+7]
0008f0  48 c1 e8 03              shr       rax,3
0008f4  48 69 c0 80 00 00 00     imul      rax,0x80
0008fb  48 89 86 98 04 00 00     mov       [rsi+0x498],rax
000902  49 8d 40 07              lea       rax,[r8+7]
000906  48 c1 e8 03              shr       rax,3
00090a  48 6b c0 2b              imul      rax,0x2b
00090e  48 89 86 a0 04 00 00     mov       [rsi+0x4a0],rax
000915  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00091c  48 c1 e8 08              shr       rax,8
000920  48 69 c0 80 01 00 00     imul      rax,0x180
000927  48 89 86 a8 04 00 00     mov       [rsi+0x4a8],rax
00092e  4c 89 c0                 mov       rax,r8
000931  48 6b c0 10              imul      rax,0x10
000935  48 89 86 b0 04 00 00     mov       [rsi+0x4b0],rax
00093c  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000943  48 c1 e8 08              shr       rax,8
000947  48 6b c0 10              imul      rax,0x10
00094b  48 89 86 b8 04 00 00     mov       [rsi+0x4b8],rax
000952  4c 89 c0                 mov       rax,r8
000955  48 6b c0 10              imul      rax,0x10
000959  48 89 86 c0 04 00 00     mov       [rsi+0x4c0],rax
000960  49 8d 40 07              lea       rax,[r8+7]
000964  48 c1 e8 03              shr       rax,3
000968  48 6b c0 16              imul      rax,0x16
00096c  48 89 86 c8 04 00 00     mov       [rsi+0x4c8],rax
000973  4c 89 c0                 mov       rax,r8
000976  48 89 86 d0 04 00 00     mov       [rsi+0x4d0],rax
00097d  4c 89 c0                 mov       rax,r8
000980  48 89 86 d8 04 00 00     mov       [rsi+0x4d8],rax
000987  49 8d 40 07              lea       rax,[r8+7]
00098b  48 c1 e8 03              shr       rax,3
00098f  48 6b c0 4b              imul      rax,0x4b
000993  48 89 86 e0 04 00 00     mov       [rsi+0x4e0],rax
00099a  49 8d 40 07              lea       rax,[r8+7]
00099e  48 c1 e8 03              shr       rax,3
0009a2  48 6b c0 4b              imul      rax,0x4b
0009a6  48 89 86 e8 04 00 00     mov       [rsi+0x4e8],rax
0009ad  4c 89 c0                 mov       rax,r8
0009b0  48 89 86 f0 04 00 00     mov       [rsi+0x4f0],rax
0009b7  49 8d 40 07              lea       rax,[r8+7]
0009bb  48 c1 e8 03              shr       rax,3
0009bf  48 6b c0 16              imul      rax,0x16
0009c3  48 89 86 f8 04 00 00     mov       [rsi+0x4f8],rax
0009ca  4c 89 c0                 mov       rax,r8
0009cd  48 89 86 00 05 00 00     mov       [rsi+0x500],rax
0009d4  4c 89 c0                 mov       rax,r8
0009d7  48 89 86 08 05 00 00     mov       [rsi+0x508],rax
0009de  49 8d 40 07              lea       rax,[r8+7]
0009e2  48 c1 e8 03              shr       rax,3
0009e6  48 89 86 10 05 00 00     mov       [rsi+0x510],rax
0009ed  49 8d 40 07              lea       rax,[r8+7]
0009f1  48 c1 e8 03              shr       rax,3
0009f5  48 89 86 18 05 00 00     mov       [rsi+0x518],rax
0009fc  4c 89 c0                 mov       rax,r8
0009ff  48 89 86 20 05 00 00     mov       [rsi+0x520],rax
000a06  49 8d 40 07              lea       rax,[r8+7]
000a0a  48 c1 e8 03              shr       rax,3
000a0e  48 69 c0 80 00 00 00     imul      rax,0x80
000a15  48 89 86 28 05 00 00     mov       [rsi+0x528],rax
000a1c  49 8d 40 07              lea       rax,[r8+7]
000a20  48 c1 e8 03              shr       rax,3
000a24  48 6b c0 2b              imul      rax,0x2b
000a28  48 89 86 30 05 00 00     mov       [rsi+0x530],rax
000a2f  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000a36  48 c1 e8 08              shr       rax,8
000a3a  48 69 c0 80 01 00 00     imul      rax,0x180
000a41  48 89 86 38 05 00 00     mov       [rsi+0x538],rax
000a48  4c 89 c0                 mov       rax,r8
000a4b  48 6b c0 10              imul      rax,0x10
000a4f  48 89 86 40 05 00 00     mov       [rsi+0x540],rax
000a56  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000a5d  48 c1 e8 08              shr       rax,8
000a61  48 6b c0 10              imul      rax,0x10
000a65  48 89 86 48 05 00 00     mov       [rsi+0x548],rax
000a6c  4c 89 c0                 mov       rax,r8
000a6f  48 6b c0 10              imul      rax,0x10
000a73  48 89 86 50 05 00 00     mov       [rsi+0x550],rax
000a7a  49 8d 40 07              lea       rax,[r8+7]
000a7e  48 c1 e8 03              shr       rax,3
000a82  48 6b c0 16              imul      rax,0x16
000a86  48 89 86 58 05 00 00     mov       [rsi+0x558],rax
000a8d  4c 89 c0                 mov       rax,r8
000a90  48 89 86 60 05 00 00     mov       [rsi+0x560],rax
000a97  4c 89 c0                 mov       rax,r8
000a9a  48 89 86 68 05 00 00     mov       [rsi+0x568],rax
000aa1  49 8d 40 07              lea       rax,[r8+7]
000aa5  48 c1 e8 03              shr       rax,3
000aa9  48 6b c0 4b              imul      rax,0x4b
000aad  48 89 86 70 05 00 00     mov       [rsi+0x570],rax
000ab4  49 8d 40 07              lea       rax,[r8+7]
000ab8  48 c1 e8 03              shr       rax,3
000abc  48 6b c0 4b              imul      rax,0x4b
000ac0  48 89 86 78 05 00 00     mov       [rsi+0x578],rax
000ac7  4c 89 c0                 mov       rax,r8
000aca  48 89 86 80 05 00 00     mov       [rsi+0x580],rax
000ad1  49 8d 40 07              lea       rax,[r8+7]
000ad5  48 c1 e8 03              shr       rax,3
000ad9  48 6b c0 16              imul      rax,0x16
000add  48 89 86 88 05 00 00     mov       [rsi+0x588],rax
000ae4  4c 89 c0                 mov       rax,r8
000ae7  48 89 86 90 05 00 00     mov       [rsi+0x590],rax
000aee  4c 89 c0                 mov       rax,r8
000af1  48 89 86 98 05 00 00     mov       [rsi+0x598],rax
000af8  49 8d 40 07              lea       rax,[r8+7]
000afc  48 c1 e8 03              shr       rax,3
000b00  48 89 86 a0 05 00 00     mov       [rsi+0x5a0],rax
000b07  49 8d 40 07              lea       rax,[r8+7]
000b0b  48 c1 e8 03              shr       rax,3
000b0f  48 89 86 a8 05 00 00     mov       [rsi+0x5a8],rax
000b16  4c 89 c0                 mov       rax,r8
000b19  48 89 86 b0 05 00 00     mov       [rsi+0x5b0],rax
000b20  49 8d 40 07              lea       rax,[r8+7]
000b24  48 c1 e8 03              shr       rax,3
000b28  48 69 c0 80 00 00 00     imul      rax,0x80
000b2f  48 89 86 b8 05 00 00     mov       [rsi+0x5b8],rax
000b36  49 8d 40 07              lea       rax,[r8+7]
000b3a  48 c1 e8 03              shr       rax,3
000b3e  48 6b c0 2b              imul      rax,0x2b
000b42  48 89 86 c0 05 00 00     mov       [rsi+0x5c0],rax
000b49  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000b50  48 c1 e8 08              shr       rax,8
000b54  48 69 c0 80 01 00 00     imul      rax,0x180
000b5b  48 89 86 c8 05 00 00     mov       [rsi+0x5c8],rax
000b62  4c 89 c0                 mov       rax,r8
000b65  48 6b c0 10              imul      rax,0x10
000b69  48 89 86 d0 05 00 00     mov       [rsi+0x5d0],rax
000b70  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000b77  48 c1 e8 08              shr       rax,8
000b7b  48 6b c0 10              imul      rax,0x10
000b7f  48 89 86 d8 05 00 00     mov       [rsi+0x5d8],rax
000b86  4c 89 c0                 mov       rax,r8
000b89  48 6b c0 10              imul      rax,0x10
000b8d  48 89 86 e0 05 00 00     mov       [rsi+0x5e0],rax
000b94  49 8d 40 07              lea       rax,[r8+7]
000b98  48 c1 e8 03              shr       rax,3
000b9c  48 6b c0 16              imul      rax,0x16
000ba0  48 89 86 e8 05 00 00     mov       [rsi+0x5e8],rax
000ba7  4c 89 c0                 mov       rax,r8
000baa  48 89 86 f0 05 00 00     mov       [rsi+0x5f0],rax
000bb1  4c 89 c0                 mov       rax,r8
000bb4  48 89 86 f8 05 00 00     mov       [rsi+0x5f8],rax
000bbb  49 8d 40 07              lea       rax,[r8+7]
000bbf  48 c1 e8 03              shr       rax,3
000bc3  48 6b c0 4b              imul      rax,0x4b
000bc7  48 89 86 00 06 00 00     mov       [rsi+0x600],rax
000bce  49 8d 40 07              lea       rax,[r8+7]
000bd2  48 c1 e8 03              shr       rax,3
000bd6  48 6b c0 4b              imul      rax,0x4b
000bda  48 89 86 08 06 00 00     mov       [rsi+0x608],rax
000be1  4c 89 c0                 mov       rax,r8
000be4  48 89 86 10 06 00 00     mov       [rsi+0x610],rax
000beb  49 8d 40 07              lea       rax,[r8+7]
000bef  48 c1 e8 03              shr       rax,3
000bf3  48 6b c0 16              imul      rax,0x16
000bf7  48 89 86 18 06 00 00     mov       [rsi+0x618],rax
000bfe  4c 89 c0                 mov       rax,r8
000c01  48 89 86 20 06 00 00     mov       [rsi+0x620],rax
000c08  4c 89 c0                 mov       rax,r8
000c0b  48 89 86 28 06 00 00     mov       [rsi+0x628],rax
000c12  49 8d 40 07              lea       rax,[r8+7]
000c16  48 c1 e8 03              shr       rax,3
000c1a  48 6b c0 56              imul      rax,0x56
000c1e  48 89 86 30 06 00 00     mov       [rsi+0x630],rax
000c25  49 8d 40 07              lea       rax,[r8+7]
000c29  48 c1 e8 03              shr       rax,3
000c2d  48 6b c0 0b              imul      rax,0xb
000c31  48 89 86 38 06 00 00     mov       [rsi+0x638],rax
000c38  49 8d 40 07              lea       rax,[r8+7]
000c3c  48 c1 e8 03              shr       rax,3
000c40  48 6b c0 0b              imul      rax,0xb
000c44  48 89 86 40 06 00 00     mov       [rsi+0x640],rax
000c4b  4c 89 c0                 mov       rax,r8
000c4e  48 89 86 48 06 00 00     mov       [rsi+0x648],rax
000c55  4c 89 c0                 mov       rax,r8
000c58  48 89 86 50 06 00 00     mov       [rsi+0x650],rax
000c5f  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000c66  48 c1 e8 08              shr       rax,8
000c6a  48 6b c0 02              imul      rax,2
000c6e  48 89 86 58 06 00 00     mov       [rsi+0x658],rax
000c75  49 8d 40 07              lea       rax,[r8+7]
000c79  48 c1 e8 03              shr       rax,3
000c7d  48 6b c0 08              imul      rax,8
000c81  48 89 86 60 06 00 00     mov       [rsi+0x660],rax
000c88  4c 89 c0                 mov       rax,r8
000c8b  48 89 86 68 06 00 00     mov       [rsi+0x668],rax
000c92  49 8d 40 07              lea       rax,[r8+7]
000c96  48 c1 e8 03              shr       rax,3
000c9a  48 6b c0 16              imul      rax,0x16
000c9e  48 89 86 70 06 00 00     mov       [rsi+0x670],rax
000ca5  4c 89 c0                 mov       rax,r8
000ca8  48 89 86 78 06 00 00     mov       [rsi+0x678],rax
000caf  4c 89 c0                 mov       rax,r8
000cb2  48 89 86 80 06 00 00     mov       [rsi+0x680],rax
000cb9  49 8d 40 07              lea       rax,[r8+7]
000cbd  48 c1 e8 03              shr       rax,3
000cc1  48 6b c0 4b              imul      rax,0x4b
000cc5  48 89 86 88 06 00 00     mov       [rsi+0x688],rax
000ccc  49 8d 40 07              lea       rax,[r8+7]
000cd0  48 c1 e8 03              shr       rax,3
000cd4  48 6b c0 4b              imul      rax,0x4b
000cd8  48 89 86 90 06 00 00     mov       [rsi+0x690],rax
000cdf  4c 89 c0                 mov       rax,r8
000ce2  48 89 86 98 06 00 00     mov       [rsi+0x698],rax
000ce9  49 8d 40 07              lea       rax,[r8+7]
000ced  48 c1 e8 03              shr       rax,3
000cf1  48 6b c0 16              imul      rax,0x16
000cf5  48 89 86 a0 06 00 00     mov       [rsi+0x6a0],rax
000cfc  4c 89 c0                 mov       rax,r8
000cff  48 89 86 a8 06 00 00     mov       [rsi+0x6a8],rax
000d06  4c 89 c0                 mov       rax,r8
000d09  48 89 86 b0 06 00 00     mov       [rsi+0x6b0],rax
000d10  49 8d 40 07              lea       rax,[r8+7]
000d14  48 c1 e8 03              shr       rax,3
000d18  48 89 86 b8 06 00 00     mov       [rsi+0x6b8],rax
000d1f  49 8d 40 07              lea       rax,[r8+7]
000d23  48 c1 e8 03              shr       rax,3
000d27  48 89 86 c0 06 00 00     mov       [rsi+0x6c0],rax
000d2e  4c 89 c0                 mov       rax,r8
000d31  48 89 86 c8 06 00 00     mov       [rsi+0x6c8],rax
000d38  49 8d 40 07              lea       rax,[r8+7]
000d3c  48 c1 e8 03              shr       rax,3
000d40  48 69 c0 80 00 00 00     imul      rax,0x80
000d47  48 89 86 d0 06 00 00     mov       [rsi+0x6d0],rax
000d4e  49 8d 40 07              lea       rax,[r8+7]
000d52  48 c1 e8 03              shr       rax,3
000d56  48 6b c0 2b              imul      rax,0x2b
000d5a  48 89 86 d8 06 00 00     mov       [rsi+0x6d8],rax
000d61  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000d68  48 c1 e8 08              shr       rax,8
000d6c  48 69 c0 80 01 00 00     imul      rax,0x180
000d73  48 89 86 e0 06 00 00     mov       [rsi+0x6e0],rax
000d7a  4c 89 c0                 mov       rax,r8
000d7d  48 6b c0 10              imul      rax,0x10
000d81  48 89 86 e8 06 00 00     mov       [rsi+0x6e8],rax
000d88  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000d8f  48 c1 e8 08              shr       rax,8
000d93  48 6b c0 10              imul      rax,0x10
000d97  48 89 86 f0 06 00 00     mov       [rsi+0x6f0],rax
000d9e  4c 89 c0                 mov       rax,r8
000da1  48 6b c0 10              imul      rax,0x10
000da5  48 89 86 f8 06 00 00     mov       [rsi+0x6f8],rax
000dac  49 8d 40 07              lea       rax,[r8+7]
000db0  48 c1 e8 03              shr       rax,3
000db4  48 6b c0 16              imul      rax,0x16
000db8  48 89 86 00 07 00 00     mov       [rsi+0x700],rax
000dbf  4c 89 c0                 mov       rax,r8
000dc2  48 89 86 08 07 00 00     mov       [rsi+0x708],rax
000dc9  4c 89 c0                 mov       rax,r8
000dcc  48 89 86 10 07 00 00     mov       [rsi+0x710],rax
000dd3  49 8d 40 07              lea       rax,[r8+7]
000dd7  48 c1 e8 03              shr       rax,3
000ddb  48 6b c0 4b              imul      rax,0x4b
000ddf  48 89 86 18 07 00 00     mov       [rsi+0x718],rax
000de6  49 8d 40 07              lea       rax,[r8+7]
000dea  48 c1 e8 03              shr       rax,3
000dee  48 6b c0 4b              imul      rax,0x4b
000df2  48 89 86 20 07 00 00     mov       [rsi+0x720],rax
000df9  4c 89 c0                 mov       rax,r8
000dfc  48 89 86 28 07 00 00     mov       [rsi+0x728],rax
000e03  49 8d 40 07              lea       rax,[r8+7]
000e07  48 c1 e8 03              shr       rax,3
000e0b  48 6b c0 16              imul      rax,0x16
000e0f  48 89 86 30 07 00 00     mov       [rsi+0x730],rax
000e16  4c 89 c0                 mov       rax,r8
000e19  48 89 86 38 07 00 00     mov       [rsi+0x738],rax
000e20  4c 89 c0                 mov       rax,r8
000e23  48 89 86 40 07 00 00     mov       [rsi+0x740],rax
000e2a  49 8d 40 07              lea       rax,[r8+7]
000e2e  48 c1 e8 03              shr       rax,3
000e32  48 89 86 48 07 00 00     mov       [rsi+0x748],rax
000e39  49 8d 40 07              lea       rax,[r8+7]
000e3d  48 c1 e8 03              shr       rax,3
000e41  48 89 86 50 07 00 00     mov       [rsi+0x750],rax
000e48  4c 89 c0                 mov       rax,r8
000e4b  48 89 86 58 07 00 00     mov       [rsi+0x758],rax
000e52  49 8d 40 07              lea       rax,[r8+7]
000e56  48 c1 e8 03              shr       rax,3
000e5a  48 69 c0 80 00 00 00     imul      rax,0x80
000e61  48 89 86 60 07 00 00     mov       [rsi+0x760],rax
000e68  49 8d 40 07              lea       rax,[r8+7]
000e6c  48 c1 e8 03              shr       rax,3
000e70  48 6b c0 2b              imul      rax,0x2b
000e74  48 89 86 68 07 00 00     mov       [rsi+0x768],rax
000e7b  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000e82  48 c1 e8 08              shr       rax,8
000e86  48 69 c0 80 01 00 00     imul      rax,0x180
000e8d  48 89 86 70 07 00 00     mov       [rsi+0x770],rax
000e94  4c 89 c0                 mov       rax,r8
000e97  48 6b c0 10              imul      rax,0x10
000e9b  48 89 86 78 07 00 00     mov       [rsi+0x778],rax
000ea2  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000ea9  48 c1 e8 08              shr       rax,8
000ead  48 6b c0 10              imul      rax,0x10
000eb1  48 89 86 80 07 00 00     mov       [rsi+0x780],rax
000eb8  4c 89 c0                 mov       rax,r8
000ebb  48 6b c0 10              imul      rax,0x10
000ebf  48 89 86 88 07 00 00     mov       [rsi+0x788],rax
000ec6  49 8d 40 07              lea       rax,[r8+7]
000eca  48 c1 e8 03              shr       rax,3
000ece  48 6b c0 16              imul      rax,0x16
000ed2  48 89 86 90 07 00 00     mov       [rsi+0x790],rax
000ed9  4c 89 c0                 mov       rax,r8
000edc  48 89 86 98 07 00 00     mov       [rsi+0x798],rax
000ee3  4c 89 c0                 mov       rax,r8
000ee6  48 89 86 a0 07 00 00     mov       [rsi+0x7a0],rax
000eed  49 8d 40 07              lea       rax,[r8+7]
000ef1  48 c1 e8 03              shr       rax,3
000ef5  48 6b c0 4b              imul      rax,0x4b
000ef9  48 89 86 a8 07 00 00     mov       [rsi+0x7a8],rax
000f00  49 8d 40 07              lea       rax,[r8+7]
000f04  48 c1 e8 03              shr       rax,3
000f08  48 6b c0 4b              imul      rax,0x4b
000f0c  48 89 86 b0 07 00 00     mov       [rsi+0x7b0],rax
000f13  4c 89 c0                 mov       rax,r8
000f16  48 89 86 b8 07 00 00     mov       [rsi+0x7b8],rax
000f1d  49 8d 40 07              lea       rax,[r8+7]
000f21  48 c1 e8 03              shr       rax,3
000f25  48 6b c0 16              imul      rax,0x16
000f29  48 89 86 c0 07 00 00     mov       [rsi+0x7c0],rax
000f30  4c 89 c0                 mov       rax,r8
000f33  48 89 86 c8 07 00 00     mov       [rsi+0x7c8],rax
000f3a  4c 89 c0                 mov       rax,r8
000f3d  48 89 86 d0 07 00 00     mov       [rsi+0x7d0],rax
000f44  49 8d 40 07              lea       rax,[r8+7]
000f48  48 c1 e8 03              shr       rax,3
000f4c  48 89 86 d8 07 00 00     mov       [rsi+0x7d8],rax
000f53  49 8d 40 07              lea       rax,[r8+7]
000f57  48 c1 e8 03              shr       rax,3
000f5b  48 89 86 e0 07 00 00     mov       [rsi+0x7e0],rax
000f62  4c 89 c0                 mov       rax,r8
000f65  48 89 86 e8 07 00 00     mov       [rsi+0x7e8],rax
000f6c  49 8d 40 07              lea       rax,[r8+7]
000f70  48 c1 e8 03              shr       rax,3
000f74  48 69 c0 80 00 00 00     imul      rax,0x80
000f7b  48 89 86 f0 07 00 00     mov       [rsi+0x7f0],rax
000f82  49 8d 40 07              lea       rax,[r8+7]
000f86  48 c1 e8 03              shr       rax,3
000f8a  48 6b c0 2b              imul      rax,0x2b
000f8e  48 89 86 f8 07 00 00     mov       [rsi+0x7f8],rax
000f95  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000f9c  48 c1 e8 08              shr       rax,8
000fa0  48 69 c0 80 01 00 00     imul      rax,0x180
000fa7  48 89 86 00 08 00 00     mov       [rsi+0x800],rax
000fae  4c 89 c0                 mov       rax,r8
000fb1  48 6b c0 10              imul      rax,0x10
000fb5  48 89 86 08 08 00 00     mov       [rsi+0x808],rax
000fbc  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
000fc3  48 c1 e8 08              shr       rax,8
000fc7  48 6b c0 10              imul      rax,0x10
000fcb  48 89 86 10 08 00 00     mov       [rsi+0x810],rax
000fd2  4c 89 c0                 mov       rax,r8
000fd5  48 6b c0 10              imul      rax,0x10
000fd9  48 89 86 18 08 00 00     mov       [rsi+0x818],rax
000fe0  49 8d 40 07              lea       rax,[r8+7]
000fe4  48 c1 e8 03              shr       rax,3
000fe8  48 6b c0 16              imul      rax,0x16
000fec  48 89 86 20 08 00 00     mov       [rsi+0x820],rax
000ff3  4c 89 c0                 mov       rax,r8
000ff6  48 89 86 28 08 00 00     mov       [rsi+0x828],rax
000ffd  4c 89 c0                 mov       rax,r8
001000  48 89 86 30 08 00 00     mov       [rsi+0x830],rax
001007  49 8d 40 07              lea       rax,[r8+7]
00100b  48 c1 e8 03              shr       rax,3
00100f  48 6b c0 4b              imul      rax,0x4b
001013  48 89 86 38 08 00 00     mov       [rsi+0x838],rax
00101a  49 8d 40 07              lea       rax,[r8+7]
00101e  48 c1 e8 03              shr       rax,3
001022  48 6b c0 4b              imul      rax,0x4b
001026  48 89 86 40 08 00 00     mov       [rsi+0x840],rax
00102d  4c 89 c0                 mov       rax,r8
001030  48 89 86 48 08 00 00     mov       [rsi+0x848],rax
001037  49 8d 40 07              lea       rax,[r8+7]
00103b  48 c1 e8 03              shr       rax,3
00103f  48 6b c0 16              imul      rax,0x16
001043  48 89 86 50 08 00 00     mov       [rsi+0x850],rax
00104a  4c 89 c0                 mov       rax,r8
00104d  48 89 86 58 08 00 00     mov       [rsi+0x858],rax
001054  4c 89 c0                 mov       rax,r8
001057  48 89 86 60 08 00 00     mov       [rsi+0x860],rax
00105e  49 8d 40 07              lea       rax,[r8+7]
001062  48 c1 e8 03              shr       rax,3
001066  48 6b c0 56              imul      rax,0x56
00106a  48 89 86 68 08 00 00     mov       [rsi+0x868],rax
001071  49 8d 40 07              lea       rax,[r8+7]
001075  48 c1 e8 03              shr       rax,3
001079  48 6b c0 0b              imul      rax,0xb
00107d  48 89 86 70 08 00 00     mov       [rsi+0x870],rax
001084  49 8d 40 07              lea       rax,[r8+7]
001088  48 c1 e8 03              shr       rax,3
00108c  48 6b c0 0b              imul      rax,0xb
001090  48 89 86 78 08 00 00     mov       [rsi+0x878],rax
001097  4c 89 c0                 mov       rax,r8
00109a  48 89 86 80 08 00 00     mov       [rsi+0x880],rax
0010a1  4c 89 c0                 mov       rax,r8
0010a4  48 89 86 88 08 00 00     mov       [rsi+0x888],rax
0010ab  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0010b2  48 c1 e8 08              shr       rax,8
0010b6  48 6b c0 02              imul      rax,2
0010ba  48 89 86 90 08 00 00     mov       [rsi+0x890],rax
0010c1  49 8d 40 07              lea       rax,[r8+7]
0010c5  48 c1 e8 03              shr       rax,3
0010c9  48 6b c0 08              imul      rax,8
0010cd  48 89 86 98 08 00 00     mov       [rsi+0x898],rax
0010d4  4c 89 c0                 mov       rax,r8
0010d7  48 89 86 a0 08 00 00     mov       [rsi+0x8a0],rax
0010de  49 8d 40 07              lea       rax,[r8+7]
0010e2  48 c1 e8 03              shr       rax,3
0010e6  48 6b c0 16              imul      rax,0x16
0010ea  48 89 86 a8 08 00 00     mov       [rsi+0x8a8],rax
0010f1  4c 89 c0                 mov       rax,r8
0010f4  48 89 86 b0 08 00 00     mov       [rsi+0x8b0],rax
0010fb  4c 89 c0                 mov       rax,r8
0010fe  48 89 86 b8 08 00 00     mov       [rsi+0x8b8],rax
001105  49 8d 40 07              lea       rax,[r8+7]
001109  48 c1 e8 03              shr       rax,3
00110d  48 6b c0 4b              imul      rax,0x4b
001111  48 89 86 c0 08 00 00     mov       [rsi+0x8c0],rax
001118  49 8d 40 07              lea       rax,[r8+7]
00111c  48 c1 e8 03              shr       rax,3
001120  48 6b c0 4b              imul      rax,0x4b
001124  48 89 86 c8 08 00 00     mov       [rsi+0x8c8],rax
00112b  4c 89 c0                 mov       rax,r8
00112e  48 89 86 d0 08 00 00     mov       [rsi+0x8d0],rax
001135  49 8d 40 07              lea       rax,[r8+7]
001139  48 c1 e8 03              shr       rax,3
00113d  48 6b c0 16              imul      rax,0x16
001141  48 89 86 d8 08 00 00     mov       [rsi+0x8d8],rax
001148  4c 89 c0                 mov       rax,r8
00114b  48 89 86 e0 08 00 00     mov       [rsi+0x8e0],rax
001152  4c 89 c0                 mov       rax,r8
001155  48 89 86 e8 08 00 00     mov       [rsi+0x8e8],rax
00115c  49 8d 40 07              lea       rax,[r8+7]
001160  48 c1 e8 03              shr       rax,3
001164  48 89 86 f0 08 00 00     mov       [rsi+0x8f0],rax
00116b  49 8d 40 07              lea       rax,[r8+7]
00116f  48 c1 e8 03              shr       rax,3
001173  48 89 86 f8 08 00 00     mov       [rsi+0x8f8],rax
00117a  4c 89 c0                 mov       rax,r8
00117d  48 89 86 00 09 00 00     mov       [rsi+0x900],rax
001184  49 8d 40 07              lea       rax,[r8+7]
001188  48 c1 e8 03              shr       rax,3
00118c  48 69 c0 80 00 00 00     imul      rax,0x80
001193  48 89 86 08 09 00 00     mov       [rsi+0x908],rax
00119a  49 8d 40 07              lea       rax,[r8+7]
00119e  48 c1 e8 03              shr       rax,3
0011a2  48 6b c0 2b              imul      rax,0x2b
0011a6  48 89 86 10 09 00 00     mov       [rsi+0x910],rax
0011ad  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0011b4  48 c1 e8 08              shr       rax,8
0011b8  48 69 c0 80 01 00 00     imul      rax,0x180
0011bf  48 89 86 18 09 00 00     mov       [rsi+0x918],rax
0011c6  4c 89 c0                 mov       rax,r8
0011c9  48 6b c0 10              imul      rax,0x10
0011cd  48 89 86 20 09 00 00     mov       [rsi+0x920],rax
0011d4  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0011db  48 c1 e8 08              shr       rax,8
0011df  48 6b c0 10              imul      rax,0x10
0011e3  48 89 86 28 09 00 00     mov       [rsi+0x928],rax
0011ea  4c 89 c0                 mov       rax,r8
0011ed  48 6b c0 10              imul      rax,0x10
0011f1  48 89 86 30 09 00 00     mov       [rsi+0x930],rax
0011f8  49 8d 40 07              lea       rax,[r8+7]
0011fc  48 c1 e8 03              shr       rax,3
001200  48 6b c0 16              imul      rax,0x16
001204  48 89 86 38 09 00 00     mov       [rsi+0x938],rax
00120b  4c 89 c0                 mov       rax,r8
00120e  48 89 86 40 09 00 00     mov       [rsi+0x940],rax
001215  4c 89 c0                 mov       rax,r8
001218  48 89 86 48 09 00 00     mov       [rsi+0x948],rax
00121f  49 8d 40 07              lea       rax,[r8+7]
001223  48 c1 e8 03              shr       rax,3
001227  48 6b c0 4b              imul      rax,0x4b
00122b  48 89 86 50 09 00 00     mov       [rsi+0x950],rax
001232  49 8d 40 07              lea       rax,[r8+7]
001236  48 c1 e8 03              shr       rax,3
00123a  48 6b c0 4b              imul      rax,0x4b
00123e  48 89 86 58 09 00 00     mov       [rsi+0x958],rax
001245  4c 89 c0                 mov       rax,r8
001248  48 89 86 60 09 00 00     mov       [rsi+0x960],rax
00124f  49 8d 40 07              lea       rax,[r8+7]
001253  48 c1 e8 03              shr       rax,3
001257  48 6b c0 16              imul      rax,0x16
00125b  48 89 86 68 09 00 00     mov       [rsi+0x968],rax
001262  4c 89 c0                 mov       rax,r8
001265  48 89 86 70 09 00 00     mov       [rsi+0x970],rax
00126c  4c 89 c0                 mov       rax,r8
00126f  48 89 86 78 09 00 00     mov       [rsi+0x978],rax
001276  49 8d 40 07              lea       rax,[r8+7]
00127a  48 c1 e8 03              shr       rax,3
00127e  48 89 86 80 09 00 00     mov       [rsi+0x980],rax
001285  49 8d 40 07              lea       rax,[r8+7]
001289  48 c1 e8 03              shr       rax,3
00128d  48 89 86 88 09 00 00     mov       [rsi+0x988],rax
001294  4c 89 c0                 mov       rax,r8
001297  48 89 86 90 09 00 00     mov       [rsi+0x990],rax
00129e  49 8d 40 07              lea       rax,[r8+7]
0012a2  48 c1 e8 03              shr       rax,3
0012a6  48 69 c0 80 00 00 00     imul      rax,0x80
0012ad  48 89 86 98 09 00 00     mov       [rsi+0x998],rax
0012b4  49 8d 40 07              lea       rax,[r8+7]
0012b8  48 c1 e8 03              shr       rax,3
0012bc  48 6b c0 2b              imul      rax,0x2b
0012c0  48 89 86 a0 09 00 00     mov       [rsi+0x9a0],rax
0012c7  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0012ce  48 c1 e8 08              shr       rax,8
0012d2  48 69 c0 80 01 00 00     imul      rax,0x180
0012d9  48 89 86 a8 09 00 00     mov       [rsi+0x9a8],rax
0012e0  4c 89 c0                 mov       rax,r8
0012e3  48 6b c0 10              imul      rax,0x10
0012e7  48 89 86 b0 09 00 00     mov       [rsi+0x9b0],rax
0012ee  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0012f5  48 c1 e8 08              shr       rax,8
0012f9  48 6b c0 10              imul      rax,0x10
0012fd  48 89 86 b8 09 00 00     mov       [rsi+0x9b8],rax
001304  4c 89 c0                 mov       rax,r8
001307  48 6b c0 10              imul      rax,0x10
00130b  48 89 86 c0 09 00 00     mov       [rsi+0x9c0],rax
001312  49 8d 40 07              lea       rax,[r8+7]
001316  48 c1 e8 03              shr       rax,3
00131a  48 6b c0 16              imul      rax,0x16
00131e  48 89 86 c8 09 00 00     mov       [rsi+0x9c8],rax
001325  4c 89 c0                 mov       rax,r8
001328  48 89 86 d0 09 00 00     mov       [rsi+0x9d0],rax
00132f  4c 89 c0                 mov       rax,r8
001332  48 89 86 d8 09 00 00     mov       [rsi+0x9d8],rax
001339  49 8d 40 07              lea       rax,[r8+7]
00133d  48 c1 e8 03              shr       rax,3
001341  48 6b c0 4b              imul      rax,0x4b
001345  48 89 86 e0 09 00 00     mov       [rsi+0x9e0],rax
00134c  49 8d 40 07              lea       rax,[r8+7]
001350  48 c1 e8 03              shr       rax,3
001354  48 6b c0 4b              imul      rax,0x4b
001358  48 89 86 e8 09 00 00     mov       [rsi+0x9e8],rax
00135f  4c 89 c0                 mov       rax,r8
001362  48 89 86 f0 09 00 00     mov       [rsi+0x9f0],rax
001369  49 8d 40 07              lea       rax,[r8+7]
00136d  48 c1 e8 03              shr       rax,3
001371  48 6b c0 16              imul      rax,0x16
001375  48 89 86 f8 09 00 00     mov       [rsi+0x9f8],rax
00137c  4c 89 c0                 mov       rax,r8
00137f  48 89 86 00 0a 00 00     mov       [rsi+0xa00],rax
001386  4c 89 c0                 mov       rax,r8
001389  48 89 86 08 0a 00 00     mov       [rsi+0xa08],rax
001390  49 8d 40 07              lea       rax,[r8+7]
001394  48 c1 e8 03              shr       rax,3
001398  48 89 86 10 0a 00 00     mov       [rsi+0xa10],rax
00139f  49 8d 40 07              lea       rax,[r8+7]
0013a3  48 c1 e8 03              shr       rax,3
0013a7  48 89 86 18 0a 00 00     mov       [rsi+0xa18],rax
0013ae  4c 89 c0                 mov       rax,r8
0013b1  48 89 86 20 0a 00 00     mov       [rsi+0xa20],rax
0013b8  49 8d 40 07              lea       rax,[r8+7]
0013bc  48 c1 e8 03              shr       rax,3
0013c0  48 69 c0 80 00 00 00     imul      rax,0x80
0013c7  48 89 86 28 0a 00 00     mov       [rsi+0xa28],rax
0013ce  49 8d 40 07              lea       rax,[r8+7]
0013d2  48 c1 e8 03              shr       rax,3
0013d6  48 6b c0 2b              imul      rax,0x2b
0013da  48 89 86 30 0a 00 00     mov       [rsi+0xa30],rax
0013e1  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0013e8  48 c1 e8 08              shr       rax,8
0013ec  48 69 c0 80 01 00 00     imul      rax,0x180
0013f3  48 89 86 38 0a 00 00     mov       [rsi+0xa38],rax
0013fa  4c 89 c0                 mov       rax,r8
0013fd  48 6b c0 10              imul      rax,0x10
001401  48 89 86 40 0a 00 00     mov       [rsi+0xa40],rax
001408  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00140f  48 c1 e8 08              shr       rax,8
001413  48 6b c0 10              imul      rax,0x10
001417  48 89 86 48 0a 00 00     mov       [rsi+0xa48],rax
00141e  4c 89 c0                 mov       rax,r8
001421  48 6b c0 10              imul      rax,0x10
001425  48 89 86 50 0a 00 00     mov       [rsi+0xa50],rax
00142c  49 8d 40 07              lea       rax,[r8+7]
001430  48 c1 e8 03              shr       rax,3
001434  48 6b c0 16              imul      rax,0x16
001438  48 89 86 58 0a 00 00     mov       [rsi+0xa58],rax
00143f  4c 89 c0                 mov       rax,r8
001442  48 89 86 60 0a 00 00     mov       [rsi+0xa60],rax
001449  4c 89 c0                 mov       rax,r8
00144c  48 89 86 68 0a 00 00     mov       [rsi+0xa68],rax
001453  49 8d 40 07              lea       rax,[r8+7]
001457  48 c1 e8 03              shr       rax,3
00145b  48 6b c0 4b              imul      rax,0x4b
00145f  48 89 86 70 0a 00 00     mov       [rsi+0xa70],rax
001466  49 8d 40 07              lea       rax,[r8+7]
00146a  48 c1 e8 03              shr       rax,3
00146e  48 6b c0 4b              imul      rax,0x4b
001472  48 89 86 78 0a 00 00     mov       [rsi+0xa78],rax
001479  4c 89 c0                 mov       rax,r8
00147c  48 89 86 80 0a 00 00     mov       [rsi+0xa80],rax
001483  49 8d 40 07              lea       rax,[r8+7]
001487  48 c1 e8 03              shr       rax,3
00148b  48 6b c0 16              imul      rax,0x16
00148f  48 89 86 88 0a 00 00     mov       [rsi+0xa88],rax
001496  4c 89 c0                 mov       rax,r8
001499  48 89 86 90 0a 00 00     mov       [rsi+0xa90],rax
0014a0  4c 89 c0                 mov       rax,r8
0014a3  48 89 86 98 0a 00 00     mov       [rsi+0xa98],rax
0014aa  49 8d 40 07              lea       rax,[r8+7]
0014ae  48 c1 e8 03              shr       rax,3
0014b2  48 6b c0 56              imul      rax,0x56
0014b6  48 89 86 a0 0a 00 00     mov       [rsi+0xaa0],rax
0014bd  49 8d 40 07              lea       rax,[r8+7]
0014c1  48 c1 e8 03              shr       rax,3
0014c5  48 6b c0 0b              imul      rax,0xb
0014c9  48 89 86 a8 0a 00 00     mov       [rsi+0xaa8],rax
0014d0  49 8d 40 07              lea       rax,[r8+7]
0014d4  48 c1 e8 03              shr       rax,3
0014d8  48 6b c0 0b              imul      rax,0xb
0014dc  48 89 86 b0 0a 00 00     mov       [rsi+0xab0],rax
0014e3  4c 89 c0                 mov       rax,r8
0014e6  48 89 86 b8 0a 00 00     mov       [rsi+0xab8],rax
0014ed  4c 89 c0                 mov       rax,r8
0014f0  48 89 86 c0 0a 00 00     mov       [rsi+0xac0],rax
0014f7  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0014fe  48 c1 e8 08              shr       rax,8
001502  48 6b c0 02              imul      rax,2
001506  48 89 86 c8 0a 00 00     mov       [rsi+0xac8],rax
00150d  49 8d 40 07              lea       rax,[r8+7]
001511  48 c1 e8 03              shr       rax,3
001515  48 6b c0 08              imul      rax,8
001519  48 89 86 d0 0a 00 00     mov       [rsi+0xad0],rax
001520  4c 89 c0                 mov       rax,r8
001523  48 89 86 d8 0a 00 00     mov       [rsi+0xad8],rax
00152a  49 8d 40 07              lea       rax,[r8+7]
00152e  48 c1 e8 03              shr       rax,3
001532  48 6b c0 16              imul      rax,0x16
001536  48 89 86 e0 0a 00 00     mov       [rsi+0xae0],rax
00153d  4c 89 c0                 mov       rax,r8
001540  48 89 86 e8 0a 00 00     mov       [rsi+0xae8],rax
001547  4c 89 c0                 mov       rax,r8
00154a  48 89 86 f0 0a 00 00     mov       [rsi+0xaf0],rax
001551  49 8d 40 07              lea       rax,[r8+7]
001555  48 c1 e8 03              shr       rax,3
001559  48 6b c0 4b              imul      rax,0x4b
00155d  48 89 86 f8 0a 00 00     mov       [rsi+0xaf8],rax
001564  49 8d 40 07              lea       rax,[r8+7]
001568  48 c1 e8 03              shr       rax,3
00156c  48 6b c0 4b              imul      rax,0x4b
001570  48 89 86 00 0b 00 00     mov       [rsi+0xb00],rax
001577  4c 89 c0                 mov       rax,r8
00157a  48 89 86 08 0b 00 00     mov       [rsi+0xb08],rax
001581  49 8d 40 07              lea       rax,[r8+7]
001585  48 c1 e8 03              shr       rax,3
001589  48 6b c0 16              imul      rax,0x16
00158d  48 89 86 10 0b 00 00     mov       [rsi+0xb10],rax
001594  4c 89 c0                 mov       rax,r8
001597  48 89 86 18 0b 00 00     mov       [rsi+0xb18],rax
00159e  4c 89 c0                 mov       rax,r8
0015a1  48 89 86 20 0b 00 00     mov       [rsi+0xb20],rax
0015a8  49 8d 40 07              lea       rax,[r8+7]
0015ac  48 c1 e8 03              shr       rax,3
0015b0  48 89 86 28 0b 00 00     mov       [rsi+0xb28],rax
0015b7  49 8d 40 07              lea       rax,[r8+7]
0015bb  48 c1 e8 03              shr       rax,3
0015bf  48 89 86 30 0b 00 00     mov       [rsi+0xb30],rax
0015c6  4c 89 c0                 mov       rax,r8
0015c9  48 89 86 38 0b 00 00     mov       [rsi+0xb38],rax
0015d0  49 8d 40 07              lea       rax,[r8+7]
0015d4  48 c1 e8 03              shr       rax,3
0015d8  48 69 c0 80 00 00 00     imul      rax,0x80
0015df  48 89 86 40 0b 00 00     mov       [rsi+0xb40],rax
0015e6  49 8d 40 07              lea       rax,[r8+7]
0015ea  48 c1 e8 03              shr       rax,3
0015ee  48 6b c0 2b              imul      rax,0x2b
0015f2  48 89 86 48 0b 00 00     mov       [rsi+0xb48],rax
0015f9  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
001600  48 c1 e8 08              shr       rax,8
001604  48 69 c0 80 01 00 00     imul      rax,0x180
00160b  48 89 86 50 0b 00 00     mov       [rsi+0xb50],rax
001612  4c 89 c0                 mov       rax,r8
001615  48 6b c0 10              imul      rax,0x10
001619  48 89 86 58 0b 00 00     mov       [rsi+0xb58],rax
001620  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
001627  48 c1 e8 08              shr       rax,8
00162b  48 6b c0 10              imul      rax,0x10
00162f  48 89 86 60 0b 00 00     mov       [rsi+0xb60],rax
001636  4c 89 c0                 mov       rax,r8
001639  48 6b c0 10              imul      rax,0x10
00163d  48 89 86 68 0b 00 00     mov       [rsi+0xb68],rax
001644  49 8d 40 07              lea       rax,[r8+7]
001648  48 c1 e8 03              shr       rax,3
00164c  48 6b c0 16              imul      rax,0x16
001650  48 89 86 70 0b 00 00     mov       [rsi+0xb70],rax
001657  4c 89 c0                 mov       rax,r8
00165a  48 89 86 78 0b 00 00     mov       [rsi+0xb78],rax
001661  4c 89 c0                 mov       rax,r8
001664  48 89 86 80 0b 00 00     mov       [rsi+0xb80],rax
00166b  49 8d 40 07              lea       rax,[r8+7]
00166f  48 c1 e8 03              shr       rax,3
001673  48 6b c0 4b              imul      rax,0x4b
001677  48 89 86 88 0b 00 00     mov       [rsi+0xb88],rax
00167e  49 8d 40 07              lea       rax,[r8+7]
001682  48 c1 e8 03              shr       rax,3
001686  48 6b c0 4b              imul      rax,0x4b
00168a  48 89 86 90 0b 00 00     mov       [rsi+0xb90],rax
001691  4c 89 c0                 mov       rax,r8
001694  48 89 86 98 0b 00 00     mov       [rsi+0xb98],rax
00169b  49 8d 40 07              lea       rax,[r8+7]
00169f  48 c1 e8 03              shr       rax,3
0016a3  48 6b c0 16              imul      rax,0x16
0016a7  48 89 86 a0 0b 00 00     mov       [rsi+0xba0],rax
0016ae  4c 89 c0                 mov       rax,r8
0016b1  48 89 86 a8 0b 00 00     mov       [rsi+0xba8],rax
0016b8  4c 89 c0                 mov       rax,r8
0016bb  48 89 86 b0 0b 00 00     mov       [rsi+0xbb0],rax
0016c2  49 8d 40 07              lea       rax,[r8+7]
0016c6  48 c1 e8 03              shr       rax,3
0016ca  48 89 86 b8 0b 00 00     mov       [rsi+0xbb8],rax
0016d1  49 8d 40 07              lea       rax,[r8+7]
0016d5  48 c1 e8 03              shr       rax,3
0016d9  48 89 86 c0 0b 00 00     mov       [rsi+0xbc0],rax
0016e0  4c 89 c0                 mov       rax,r8
0016e3  48 89 86 c8 0b 00 00     mov       [rsi+0xbc8],rax
0016ea  49 8d 40 07              lea       rax,[r8+7]
0016ee  48 c1 e8 03              shr       rax,3
0016f2  48 69 c0 80 00 00 00     imul      rax,0x80
0016f9  48 89 86 d0 0b 00 00     mov       [rsi+0xbd0],rax
001700  49 8d 40 07              lea       rax,[r8+7]
001704  48 c1 e8 03              shr       rax,3
001708  48 6b c0 2b              imul      rax,0x2b
00170c  48 89 86 d8 0b 00 00     mov       [rsi+0xbd8],rax
001713  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00171a  48 c1 e8 08              shr       rax,8
00171e  48 69 c0 80 01 00 00     imul      rax,0x180
001725  48 89 86 e0 0b 00 00     mov       [rsi+0xbe0],rax
00172c  4c 89 c0                 mov       rax,r8
00172f  48 6b c0 10              imul      rax,0x10
001733  48 89 86 e8 0b 00 00     mov       [rsi+0xbe8],rax
00173a  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
001741  48 c1 e8 08              shr       rax,8
001745  48 6b c0 10              imul      rax,0x10
001749  48 89 86 f0 0b 00 00     mov       [rsi+0xbf0],rax
001750  4c 89 c0                 mov       rax,r8
001753  48 6b c0 10              imul      rax,0x10
001757  48 89 86 f8 0b 00 00     mov       [rsi+0xbf8],rax
00175e  49 8d 40 07              lea       rax,[r8+7]
001762  48 c1 e8 03              shr       rax,3
001766  48 6b c0 16              imul      rax,0x16
00176a  48 89 86 00 0c 00 00     mov       [rsi+0xc00],rax
001771  4c 89 c0                 mov       rax,r8
001774  48 89 86 08 0c 00 00     mov       [rsi+0xc08],rax
00177b  4c 89 c0                 mov       rax,r8
00177e  48 89 86 10 0c 00 00     mov       [rsi+0xc10],rax
001785  49 8d 40 07              lea       rax,[r8+7]
001789  48 c1 e8 03              shr       rax,3
00178d  48 6b c0 4b              imul      rax,0x4b
001791  48 89 86 18 0c 00 00     mov       [rsi+0xc18],rax
001798  49 8d 40 07              lea       rax,[r8+7]
00179c  48 c1 e8 03              shr       rax,3
0017a0  48 6b c0 4b              imul      rax,0x4b
0017a4  48 89 86 20 0c 00 00     mov       [rsi+0xc20],rax
0017ab  4c 89 c0                 mov       rax,r8
0017ae  48 89 86 28 0c 00 00     mov       [rsi+0xc28],rax
0017b5  49 8d 40 07              lea       rax,[r8+7]
0017b9  48 c1 e8 03              shr       rax,3
0017bd  48 6b c0 16              imul      rax,0x16
0017c1  48 89 86 30 0c 00 00     mov       [rsi+0xc30],rax
0017c8  4c 89 c0                 mov       rax,r8
0017cb  48 89 86 38 0c 00 00     mov       [rsi+0xc38],rax
0017d2  4c 89 c0                 mov       rax,r8
0017d5  48 89 86 40 0c 00 00     mov       [rsi+0xc40],rax
0017dc  49 8d 40 07              lea       rax,[r8+7]
0017e0  48 c1 e8 03              shr       rax,3
0017e4  48 89 86 48 0c 00 00     mov       [rsi+0xc48],rax
0017eb  49 8d 40 07              lea       rax,[r8+7]
0017ef  48 c1 e8 03              shr       rax,3
0017f3  48 89 86 50 0c 00 00     mov       [rsi+0xc50],rax
0017fa  4c 89 c0                 mov       rax,r8
0017fd  48 89 86 58 0c 00 00     mov       [rsi+0xc58],rax
001804  49 8d 40 07              lea       rax,[r8+7]
001808  48 c1 e8 03              shr       rax,3
00180c  48 69 c0 80 00 00 00     imul      rax,0x80
001813  48 89 86 60 0c 00 00     mov       [rsi+0xc60],rax
00181a  49 8d 40 07              lea       rax,[r8+7]
00181e  48 c1 e8 03              shr       rax,3
001822  48 6b c0 2b              imul      rax,0x2b
001826  48 89 86 68 0c 00 00     mov       [rsi+0xc68],rax
00182d  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
001834  48 c1 e8 08              shr       rax,8
001838  48 69 c0 80 01 00 00     imul      rax,0x180
00183f  48 89 86 70 0c 00 00     mov       [rsi+0xc70],rax
001846  4c 89 c0                 mov       rax,r8
001849  48 6b c0 10              imul      rax,0x10
00184d  48 89 86 78 0c 00 00     mov       [rsi+0xc78],rax
001854  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00185b  48 c1 e8 08              shr       rax,8
00185f  48 6b c0 10              imul      rax,0x10
001863  48 89 86 80 0c 00 00     mov       [rsi+0xc80],rax
00186a  4c 89 c0                 mov       rax,r8
00186d  48 6b c0 10              imul      rax,0x10
001871  48 89 86 88 0c 00 00     mov       [rsi+0xc88],rax
001878  49 8d 40 07              lea       rax,[r8+7]
00187c  48 c1 e8 03              shr       rax,3
001880  48 6b c0 16              imul      rax,0x16
001884  48 89 86 90 0c 00 00     mov       [rsi+0xc90],rax
00188b  4c 89 c0                 mov       rax,r8
00188e  48 89 86 98 0c 00 00     mov       [rsi+0xc98],rax
001895  4c 89 c0                 mov       rax,r8
001898  48 89 86 a0 0c 00 00     mov       [rsi+0xca0],rax
00189f  49 8d 40 07              lea       rax,[r8+7]
0018a3  48 c1 e8 03              shr       rax,3
0018a7  48 6b c0 4b              imul      rax,0x4b
0018ab  48 89 86 a8 0c 00 00     mov       [rsi+0xca8],rax
0018b2  49 8d 40 07              lea       rax,[r8+7]
0018b6  48 c1 e8 03              shr       rax,3
0018ba  48 6b c0 4b              imul      rax,0x4b
0018be  48 89 86 b0 0c 00 00     mov       [rsi+0xcb0],rax
0018c5  4c 89 c0                 mov       rax,r8
0018c8  48 89 86 b8 0c 00 00     mov       [rsi+0xcb8],rax
0018cf  49 8d 40 07              lea       rax,[r8+7]
0018d3  48 c1 e8 03              shr       rax,3
0018d7  48 6b c0 16              imul      rax,0x16
0018db  48 89 86 c0 0c 00 00     mov       [rsi+0xcc0],rax
0018e2  4c 89 c0                 mov       rax,r8
0018e5  48 89 86 c8 0c 00 00     mov       [rsi+0xcc8],rax
0018ec  4c 89 c0                 mov       rax,r8
0018ef  48 89 86 d0 0c 00 00     mov       [rsi+0xcd0],rax
0018f6  49 8d 40 07              lea       rax,[r8+7]
0018fa  48 c1 e8 03              shr       rax,3
0018fe  48 6b c0 56              imul      rax,0x56
001902  48 89 86 d8 0c 00 00     mov       [rsi+0xcd8],rax
001909  49 8d 40 07              lea       rax,[r8+7]
00190d  48 c1 e8 03              shr       rax,3
001911  48 6b c0 0b              imul      rax,0xb
001915  48 89 86 e0 0c 00 00     mov       [rsi+0xce0],rax
00191c  49 8d 40 07              lea       rax,[r8+7]
001920  48 c1 e8 03              shr       rax,3
001924  48 6b c0 0b              imul      rax,0xb
001928  48 89 86 e8 0c 00 00     mov       [rsi+0xce8],rax
00192f  4c 89 c0                 mov       rax,r8
001932  48 89 86 f0 0c 00 00     mov       [rsi+0xcf0],rax
001939  4c 89 c0                 mov       rax,r8
00193c  48 89 86 f8 0c 00 00     mov       [rsi+0xcf8],rax
001943  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
00194a  48 c1 e8 08              shr       rax,8
00194e  48 6b c0 02              imul      rax,2
001952  48 89 86 00 0d 00 00     mov       [rsi+0xd00],rax
001959  49 8d 40 07              lea       rax,[r8+7]
00195d  48 c1 e8 03              shr       rax,3
001961  48 6b c0 08              imul      rax,8
001965  48 89 86 08 0d 00 00     mov       [rsi+0xd08],rax
00196c  4c 89 c0                 mov       rax,r8
00196f  48 89 86 10 0d 00 00     mov       [rsi+0xd10],rax
001976  49 8d 40 07              lea       rax,[r8+7]
00197a  48 c1 e8 03              shr       rax,3
00197e  48 6b c0 16              imul      rax,0x16
001982  48 89 86 18 0d 00 00     mov       [rsi+0xd18],rax
001989  4c 89 c0                 mov       rax,r8
00198c  48 89 86 20 0d 00 00     mov       [rsi+0xd20],rax
001993  4c 89 c0                 mov       rax,r8
001996  48 89 86 28 0d 00 00     mov       [rsi+0xd28],rax
00199d  49 8d 40 07              lea       rax,[r8+7]
0019a1  48 c1 e8 03              shr       rax,3
0019a5  48 6b c0 4b              imul      rax,0x4b
0019a9  48 89 86 30 0d 00 00     mov       [rsi+0xd30],rax
0019b0  49 8d 40 07              lea       rax,[r8+7]
0019b4  48 c1 e8 03              shr       rax,3
0019b8  48 6b c0 4b              imul      rax,0x4b
0019bc  48 89 86 38 0d 00 00     mov       [rsi+0xd38],rax
0019c3  4c 89 c0                 mov       rax,r8
0019c6  48 89 86 40 0d 00 00     mov       [rsi+0xd40],rax
0019cd  49 8d 40 07              lea       rax,[r8+7]
0019d1  48 c1 e8 03              shr       rax,3
0019d5  48 6b c0 16              imul      rax,0x16
0019d9  48 89 86 48 0d 00 00     mov       [rsi+0xd48],rax
0019e0  4c 89 c0                 mov       rax,r8
0019e3  48 89 86 50 0d 00 00     mov       [rsi+0xd50],rax
0019ea  31 c0                    xor       eax,eax
0019ec  4d 85 db                 test      r11,r11
0019ef  74 0b                    je        short 0x00000000000019fc
0019f1  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
0019f8  48 c1 e8 08              shr       rax,8
0019fc  48 89 86 58 0d 00 00     mov       [rsi+0xd58],rax
001a03  31 c0                    xor       eax,eax
001a05  4d 85 db                 test      r11,r11
001a08  74 0b                    je        short 0x0000000000001a15
001a0a  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
001a11  48 c1 e8 08              shr       rax,8
001a15  48 89 86 60 0d 00 00     mov       [rsi+0xd60],rax
001a1c  31 c0                    xor       eax,eax
001a1e  4d 85 db                 test      r11,r11
001a21  74 12                    je        short 0x0000000000001a35
001a23  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
001a2a  48 c1 e8 08              shr       rax,8
001a2e  48 69 c0 36 14 00 00     imul      rax,0x1436
001a35  48 89 86 68 0d 00 00     mov       [rsi+0xd68],rax
001a3c  31 c0                    xor       eax,eax
001a3e  4d 85 db                 test      r11,r11
001a41  74 0b                    je        short 0x0000000000001a4e
001a43  49 8d 80 ff 00 00 00     lea       rax,[r8+0xff]
001a4a  48 c1 e8 08              shr       rax,8
001a4e  48 89 86 70 0d 00 00     mov       [rsi+0xd70],rax
001a55  c3                       ret
