; node 0: block-begin (layer -), kernel 0 at image offset 0x94e6d, 6374 bytes, 1 tasks, up to 1 participants

000000  4c 8b 47 08              mov       r8,[rdi+8]
000004  4c 8b 4f 18              mov       r9,[rdi+0x18]
000008  4d 39 c8                 cmp       r8,r9
00000b  4d 0f 42 c1              cmovb     r8,r9
00000f  4d 29 c8                 sub       r8,r9
000012  48 b8 01 00 00 00 00 00 00 00 mov       rax,1
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
000098  4c 89 c0                 mov       rax,r8
00009b  48 69 c0 80 01 00 00     imul      rax,0x180
0000a2  48 89 46 38              mov       [rsi+0x38],rax
0000a6  4c 89 c0                 mov       rax,r8
0000a9  48 6b c0 10              imul      rax,0x10
0000ad  48 89 46 40              mov       [rsi+0x40],rax
0000b1  4c 89 c0                 mov       rax,r8
0000b4  48 6b c0 10              imul      rax,0x10
0000b8  48 89 46 48              mov       [rsi+0x48],rax
0000bc  4c 89 c0                 mov       rax,r8
0000bf  48 6b c0 10              imul      rax,0x10
0000c3  48 89 46 50              mov       [rsi+0x50],rax
0000c7  49 8d 40 07              lea       rax,[r8+7]
0000cb  48 c1 e8 03              shr       rax,3
0000cf  48 6b c0 16              imul      rax,0x16
0000d3  48 89 46 58              mov       [rsi+0x58],rax
0000d7  4c 89 c0                 mov       rax,r8
0000da  48 89 46 60              mov       [rsi+0x60],rax
0000de  4c 89 c0                 mov       rax,r8
0000e1  48 89 46 68              mov       [rsi+0x68],rax
0000e5  49 8d 40 07              lea       rax,[r8+7]
0000e9  48 c1 e8 03              shr       rax,3
0000ed  48 6b c0 4b              imul      rax,0x4b
0000f1  48 89 46 70              mov       [rsi+0x70],rax
0000f5  49 8d 40 07              lea       rax,[r8+7]
0000f9  48 c1 e8 03              shr       rax,3
0000fd  48 6b c0 4b              imul      rax,0x4b
000101  48 89 46 78              mov       [rsi+0x78],rax
000105  4c 89 c0                 mov       rax,r8
000108  48 89 86 80 00 00 00     mov       [rsi+0x80],rax
00010f  49 8d 40 07              lea       rax,[r8+7]
000113  48 c1 e8 03              shr       rax,3
000117  48 6b c0 16              imul      rax,0x16
00011b  48 89 86 88 00 00 00     mov       [rsi+0x88],rax
000122  4c 89 c0                 mov       rax,r8
000125  48 89 86 90 00 00 00     mov       [rsi+0x90],rax
00012c  4c 89 c0                 mov       rax,r8
00012f  48 89 86 98 00 00 00     mov       [rsi+0x98],rax
000136  49 8d 40 07              lea       rax,[r8+7]
00013a  48 c1 e8 03              shr       rax,3
00013e  48 89 86 a0 00 00 00     mov       [rsi+0xa0],rax
000145  49 8d 40 07              lea       rax,[r8+7]
000149  48 c1 e8 03              shr       rax,3
00014d  48 89 86 a8 00 00 00     mov       [rsi+0xa8],rax
000154  4c 89 c0                 mov       rax,r8
000157  48 89 86 b0 00 00 00     mov       [rsi+0xb0],rax
00015e  49 8d 40 07              lea       rax,[r8+7]
000162  48 c1 e8 03              shr       rax,3
000166  48 69 c0 80 00 00 00     imul      rax,0x80
00016d  48 89 86 b8 00 00 00     mov       [rsi+0xb8],rax
000174  49 8d 40 07              lea       rax,[r8+7]
000178  48 c1 e8 03              shr       rax,3
00017c  48 6b c0 2b              imul      rax,0x2b
000180  48 89 86 c0 00 00 00     mov       [rsi+0xc0],rax
000187  4c 89 c0                 mov       rax,r8
00018a  48 69 c0 80 01 00 00     imul      rax,0x180
000191  48 89 86 c8 00 00 00     mov       [rsi+0xc8],rax
000198  4c 89 c0                 mov       rax,r8
00019b  48 6b c0 10              imul      rax,0x10
00019f  48 89 86 d0 00 00 00     mov       [rsi+0xd0],rax
0001a6  4c 89 c0                 mov       rax,r8
0001a9  48 6b c0 10              imul      rax,0x10
0001ad  48 89 86 d8 00 00 00     mov       [rsi+0xd8],rax
0001b4  4c 89 c0                 mov       rax,r8
0001b7  48 6b c0 10              imul      rax,0x10
0001bb  48 89 86 e0 00 00 00     mov       [rsi+0xe0],rax
0001c2  49 8d 40 07              lea       rax,[r8+7]
0001c6  48 c1 e8 03              shr       rax,3
0001ca  48 6b c0 16              imul      rax,0x16
0001ce  48 89 86 e8 00 00 00     mov       [rsi+0xe8],rax
0001d5  4c 89 c0                 mov       rax,r8
0001d8  48 89 86 f0 00 00 00     mov       [rsi+0xf0],rax
0001df  4c 89 c0                 mov       rax,r8
0001e2  48 89 86 f8 00 00 00     mov       [rsi+0xf8],rax
0001e9  49 8d 40 07              lea       rax,[r8+7]
0001ed  48 c1 e8 03              shr       rax,3
0001f1  48 6b c0 4b              imul      rax,0x4b
0001f5  48 89 86 00 01 00 00     mov       [rsi+0x100],rax
0001fc  49 8d 40 07              lea       rax,[r8+7]
000200  48 c1 e8 03              shr       rax,3
000204  48 6b c0 4b              imul      rax,0x4b
000208  48 89 86 08 01 00 00     mov       [rsi+0x108],rax
00020f  4c 89 c0                 mov       rax,r8
000212  48 89 86 10 01 00 00     mov       [rsi+0x110],rax
000219  49 8d 40 07              lea       rax,[r8+7]
00021d  48 c1 e8 03              shr       rax,3
000221  48 6b c0 16              imul      rax,0x16
000225  48 89 86 18 01 00 00     mov       [rsi+0x118],rax
00022c  4c 89 c0                 mov       rax,r8
00022f  48 89 86 20 01 00 00     mov       [rsi+0x120],rax
000236  4c 89 c0                 mov       rax,r8
000239  48 89 86 28 01 00 00     mov       [rsi+0x128],rax
000240  49 8d 40 07              lea       rax,[r8+7]
000244  48 c1 e8 03              shr       rax,3
000248  48 89 86 30 01 00 00     mov       [rsi+0x130],rax
00024f  49 8d 40 07              lea       rax,[r8+7]
000253  48 c1 e8 03              shr       rax,3
000257  48 89 86 38 01 00 00     mov       [rsi+0x138],rax
00025e  4c 89 c0                 mov       rax,r8
000261  48 89 86 40 01 00 00     mov       [rsi+0x140],rax
000268  49 8d 40 07              lea       rax,[r8+7]
00026c  48 c1 e8 03              shr       rax,3
000270  48 69 c0 80 00 00 00     imul      rax,0x80
000277  48 89 86 48 01 00 00     mov       [rsi+0x148],rax
00027e  49 8d 40 07              lea       rax,[r8+7]
000282  48 c1 e8 03              shr       rax,3
000286  48 6b c0 2b              imul      rax,0x2b
00028a  48 89 86 50 01 00 00     mov       [rsi+0x150],rax
000291  4c 89 c0                 mov       rax,r8
000294  48 69 c0 80 01 00 00     imul      rax,0x180
00029b  48 89 86 58 01 00 00     mov       [rsi+0x158],rax
0002a2  4c 89 c0                 mov       rax,r8
0002a5  48 6b c0 10              imul      rax,0x10
0002a9  48 89 86 60 01 00 00     mov       [rsi+0x160],rax
0002b0  4c 89 c0                 mov       rax,r8
0002b3  48 6b c0 10              imul      rax,0x10
0002b7  48 89 86 68 01 00 00     mov       [rsi+0x168],rax
0002be  4c 89 c0                 mov       rax,r8
0002c1  48 6b c0 10              imul      rax,0x10
0002c5  48 89 86 70 01 00 00     mov       [rsi+0x170],rax
0002cc  49 8d 40 07              lea       rax,[r8+7]
0002d0  48 c1 e8 03              shr       rax,3
0002d4  48 6b c0 16              imul      rax,0x16
0002d8  48 89 86 78 01 00 00     mov       [rsi+0x178],rax
0002df  4c 89 c0                 mov       rax,r8
0002e2  48 89 86 80 01 00 00     mov       [rsi+0x180],rax
0002e9  4c 89 c0                 mov       rax,r8
0002ec  48 89 86 88 01 00 00     mov       [rsi+0x188],rax
0002f3  49 8d 40 07              lea       rax,[r8+7]
0002f7  48 c1 e8 03              shr       rax,3
0002fb  48 6b c0 4b              imul      rax,0x4b
0002ff  48 89 86 90 01 00 00     mov       [rsi+0x190],rax
000306  49 8d 40 07              lea       rax,[r8+7]
00030a  48 c1 e8 03              shr       rax,3
00030e  48 6b c0 4b              imul      rax,0x4b
000312  48 89 86 98 01 00 00     mov       [rsi+0x198],rax
000319  4c 89 c0                 mov       rax,r8
00031c  48 89 86 a0 01 00 00     mov       [rsi+0x1a0],rax
000323  49 8d 40 07              lea       rax,[r8+7]
000327  48 c1 e8 03              shr       rax,3
00032b  48 6b c0 16              imul      rax,0x16
00032f  48 89 86 a8 01 00 00     mov       [rsi+0x1a8],rax
000336  4c 89 c0                 mov       rax,r8
000339  48 89 86 b0 01 00 00     mov       [rsi+0x1b0],rax
000340  4c 89 c0                 mov       rax,r8
000343  48 89 86 b8 01 00 00     mov       [rsi+0x1b8],rax
00034a  49 8d 40 07              lea       rax,[r8+7]
00034e  48 c1 e8 03              shr       rax,3
000352  48 6b c0 56              imul      rax,0x56
000356  48 89 86 c0 01 00 00     mov       [rsi+0x1c0],rax
00035d  49 8d 40 07              lea       rax,[r8+7]
000361  48 c1 e8 03              shr       rax,3
000365  48 6b c0 0b              imul      rax,0xb
000369  48 89 86 c8 01 00 00     mov       [rsi+0x1c8],rax
000370  49 8d 40 07              lea       rax,[r8+7]
000374  48 c1 e8 03              shr       rax,3
000378  48 6b c0 0b              imul      rax,0xb
00037c  48 89 86 d0 01 00 00     mov       [rsi+0x1d0],rax
000383  4c 89 c0                 mov       rax,r8
000386  48 89 86 d8 01 00 00     mov       [rsi+0x1d8],rax
00038d  4c 89 c0                 mov       rax,r8
000390  48 89 86 e0 01 00 00     mov       [rsi+0x1e0],rax
000397  4c 89 c0                 mov       rax,r8
00039a  48 6b c0 02              imul      rax,2
00039e  48 89 86 e8 01 00 00     mov       [rsi+0x1e8],rax
0003a5  49 8d 40 07              lea       rax,[r8+7]
0003a9  48 c1 e8 03              shr       rax,3
0003ad  48 6b c0 08              imul      rax,8
0003b1  48 89 86 f0 01 00 00     mov       [rsi+0x1f0],rax
0003b8  4c 89 c0                 mov       rax,r8
0003bb  48 89 86 f8 01 00 00     mov       [rsi+0x1f8],rax
0003c2  49 8d 40 07              lea       rax,[r8+7]
0003c6  48 c1 e8 03              shr       rax,3
0003ca  48 6b c0 16              imul      rax,0x16
0003ce  48 89 86 00 02 00 00     mov       [rsi+0x200],rax
0003d5  4c 89 c0                 mov       rax,r8
0003d8  48 89 86 08 02 00 00     mov       [rsi+0x208],rax
0003df  4c 89 c0                 mov       rax,r8
0003e2  48 89 86 10 02 00 00     mov       [rsi+0x210],rax
0003e9  49 8d 40 07              lea       rax,[r8+7]
0003ed  48 c1 e8 03              shr       rax,3
0003f1  48 6b c0 4b              imul      rax,0x4b
0003f5  48 89 86 18 02 00 00     mov       [rsi+0x218],rax
0003fc  49 8d 40 07              lea       rax,[r8+7]
000400  48 c1 e8 03              shr       rax,3
000404  48 6b c0 4b              imul      rax,0x4b
000408  48 89 86 20 02 00 00     mov       [rsi+0x220],rax
00040f  4c 89 c0                 mov       rax,r8
000412  48 89 86 28 02 00 00     mov       [rsi+0x228],rax
000419  49 8d 40 07              lea       rax,[r8+7]
00041d  48 c1 e8 03              shr       rax,3
000421  48 6b c0 16              imul      rax,0x16
000425  48 89 86 30 02 00 00     mov       [rsi+0x230],rax
00042c  4c 89 c0                 mov       rax,r8
00042f  48 89 86 38 02 00 00     mov       [rsi+0x238],rax
000436  4c 89 c0                 mov       rax,r8
000439  48 89 86 40 02 00 00     mov       [rsi+0x240],rax
000440  49 8d 40 07              lea       rax,[r8+7]
000444  48 c1 e8 03              shr       rax,3
000448  48 89 86 48 02 00 00     mov       [rsi+0x248],rax
00044f  49 8d 40 07              lea       rax,[r8+7]
000453  48 c1 e8 03              shr       rax,3
000457  48 89 86 50 02 00 00     mov       [rsi+0x250],rax
00045e  4c 89 c0                 mov       rax,r8
000461  48 89 86 58 02 00 00     mov       [rsi+0x258],rax
000468  49 8d 40 07              lea       rax,[r8+7]
00046c  48 c1 e8 03              shr       rax,3
000470  48 69 c0 80 00 00 00     imul      rax,0x80
000477  48 89 86 60 02 00 00     mov       [rsi+0x260],rax
00047e  49 8d 40 07              lea       rax,[r8+7]
000482  48 c1 e8 03              shr       rax,3
000486  48 6b c0 2b              imul      rax,0x2b
00048a  48 89 86 68 02 00 00     mov       [rsi+0x268],rax
000491  4c 89 c0                 mov       rax,r8
000494  48 69 c0 80 01 00 00     imul      rax,0x180
00049b  48 89 86 70 02 00 00     mov       [rsi+0x270],rax
0004a2  4c 89 c0                 mov       rax,r8
0004a5  48 6b c0 10              imul      rax,0x10
0004a9  48 89 86 78 02 00 00     mov       [rsi+0x278],rax
0004b0  4c 89 c0                 mov       rax,r8
0004b3  48 6b c0 10              imul      rax,0x10
0004b7  48 89 86 80 02 00 00     mov       [rsi+0x280],rax
0004be  4c 89 c0                 mov       rax,r8
0004c1  48 6b c0 10              imul      rax,0x10
0004c5  48 89 86 88 02 00 00     mov       [rsi+0x288],rax
0004cc  49 8d 40 07              lea       rax,[r8+7]
0004d0  48 c1 e8 03              shr       rax,3
0004d4  48 6b c0 16              imul      rax,0x16
0004d8  48 89 86 90 02 00 00     mov       [rsi+0x290],rax
0004df  4c 89 c0                 mov       rax,r8
0004e2  48 89 86 98 02 00 00     mov       [rsi+0x298],rax
0004e9  4c 89 c0                 mov       rax,r8
0004ec  48 89 86 a0 02 00 00     mov       [rsi+0x2a0],rax
0004f3  49 8d 40 07              lea       rax,[r8+7]
0004f7  48 c1 e8 03              shr       rax,3
0004fb  48 6b c0 4b              imul      rax,0x4b
0004ff  48 89 86 a8 02 00 00     mov       [rsi+0x2a8],rax
000506  49 8d 40 07              lea       rax,[r8+7]
00050a  48 c1 e8 03              shr       rax,3
00050e  48 6b c0 4b              imul      rax,0x4b
000512  48 89 86 b0 02 00 00     mov       [rsi+0x2b0],rax
000519  4c 89 c0                 mov       rax,r8
00051c  48 89 86 b8 02 00 00     mov       [rsi+0x2b8],rax
000523  49 8d 40 07              lea       rax,[r8+7]
000527  48 c1 e8 03              shr       rax,3
00052b  48 6b c0 16              imul      rax,0x16
00052f  48 89 86 c0 02 00 00     mov       [rsi+0x2c0],rax
000536  4c 89 c0                 mov       rax,r8
000539  48 89 86 c8 02 00 00     mov       [rsi+0x2c8],rax
000540  4c 89 c0                 mov       rax,r8
000543  48 89 86 d0 02 00 00     mov       [rsi+0x2d0],rax
00054a  49 8d 40 07              lea       rax,[r8+7]
00054e  48 c1 e8 03              shr       rax,3
000552  48 89 86 d8 02 00 00     mov       [rsi+0x2d8],rax
000559  49 8d 40 07              lea       rax,[r8+7]
00055d  48 c1 e8 03              shr       rax,3
000561  48 89 86 e0 02 00 00     mov       [rsi+0x2e0],rax
000568  4c 89 c0                 mov       rax,r8
00056b  48 89 86 e8 02 00 00     mov       [rsi+0x2e8],rax
000572  49 8d 40 07              lea       rax,[r8+7]
000576  48 c1 e8 03              shr       rax,3
00057a  48 69 c0 80 00 00 00     imul      rax,0x80
000581  48 89 86 f0 02 00 00     mov       [rsi+0x2f0],rax
000588  49 8d 40 07              lea       rax,[r8+7]
00058c  48 c1 e8 03              shr       rax,3
000590  48 6b c0 2b              imul      rax,0x2b
000594  48 89 86 f8 02 00 00     mov       [rsi+0x2f8],rax
00059b  4c 89 c0                 mov       rax,r8
00059e  48 69 c0 80 01 00 00     imul      rax,0x180
0005a5  48 89 86 00 03 00 00     mov       [rsi+0x300],rax
0005ac  4c 89 c0                 mov       rax,r8
0005af  48 6b c0 10              imul      rax,0x10
0005b3  48 89 86 08 03 00 00     mov       [rsi+0x308],rax
0005ba  4c 89 c0                 mov       rax,r8
0005bd  48 6b c0 10              imul      rax,0x10
0005c1  48 89 86 10 03 00 00     mov       [rsi+0x310],rax
0005c8  4c 89 c0                 mov       rax,r8
0005cb  48 6b c0 10              imul      rax,0x10
0005cf  48 89 86 18 03 00 00     mov       [rsi+0x318],rax
0005d6  49 8d 40 07              lea       rax,[r8+7]
0005da  48 c1 e8 03              shr       rax,3
0005de  48 6b c0 16              imul      rax,0x16
0005e2  48 89 86 20 03 00 00     mov       [rsi+0x320],rax
0005e9  4c 89 c0                 mov       rax,r8
0005ec  48 89 86 28 03 00 00     mov       [rsi+0x328],rax
0005f3  4c 89 c0                 mov       rax,r8
0005f6  48 89 86 30 03 00 00     mov       [rsi+0x330],rax
0005fd  49 8d 40 07              lea       rax,[r8+7]
000601  48 c1 e8 03              shr       rax,3
000605  48 6b c0 4b              imul      rax,0x4b
000609  48 89 86 38 03 00 00     mov       [rsi+0x338],rax
000610  49 8d 40 07              lea       rax,[r8+7]
000614  48 c1 e8 03              shr       rax,3
000618  48 6b c0 4b              imul      rax,0x4b
00061c  48 89 86 40 03 00 00     mov       [rsi+0x340],rax
000623  4c 89 c0                 mov       rax,r8
000626  48 89 86 48 03 00 00     mov       [rsi+0x348],rax
00062d  49 8d 40 07              lea       rax,[r8+7]
000631  48 c1 e8 03              shr       rax,3
000635  48 6b c0 16              imul      rax,0x16
000639  48 89 86 50 03 00 00     mov       [rsi+0x350],rax
000640  4c 89 c0                 mov       rax,r8
000643  48 89 86 58 03 00 00     mov       [rsi+0x358],rax
00064a  4c 89 c0                 mov       rax,r8
00064d  48 89 86 60 03 00 00     mov       [rsi+0x360],rax
000654  49 8d 40 07              lea       rax,[r8+7]
000658  48 c1 e8 03              shr       rax,3
00065c  48 89 86 68 03 00 00     mov       [rsi+0x368],rax
000663  49 8d 40 07              lea       rax,[r8+7]
000667  48 c1 e8 03              shr       rax,3
00066b  48 89 86 70 03 00 00     mov       [rsi+0x370],rax
000672  4c 89 c0                 mov       rax,r8
000675  48 89 86 78 03 00 00     mov       [rsi+0x378],rax
00067c  49 8d 40 07              lea       rax,[r8+7]
000680  48 c1 e8 03              shr       rax,3
000684  48 69 c0 80 00 00 00     imul      rax,0x80
00068b  48 89 86 80 03 00 00     mov       [rsi+0x380],rax
000692  49 8d 40 07              lea       rax,[r8+7]
000696  48 c1 e8 03              shr       rax,3
00069a  48 6b c0 2b              imul      rax,0x2b
00069e  48 89 86 88 03 00 00     mov       [rsi+0x388],rax
0006a5  4c 89 c0                 mov       rax,r8
0006a8  48 69 c0 80 01 00 00     imul      rax,0x180
0006af  48 89 86 90 03 00 00     mov       [rsi+0x390],rax
0006b6  4c 89 c0                 mov       rax,r8
0006b9  48 6b c0 10              imul      rax,0x10
0006bd  48 89 86 98 03 00 00     mov       [rsi+0x398],rax
0006c4  4c 89 c0                 mov       rax,r8
0006c7  48 6b c0 10              imul      rax,0x10
0006cb  48 89 86 a0 03 00 00     mov       [rsi+0x3a0],rax
0006d2  4c 89 c0                 mov       rax,r8
0006d5  48 6b c0 10              imul      rax,0x10
0006d9  48 89 86 a8 03 00 00     mov       [rsi+0x3a8],rax
0006e0  49 8d 40 07              lea       rax,[r8+7]
0006e4  48 c1 e8 03              shr       rax,3
0006e8  48 6b c0 16              imul      rax,0x16
0006ec  48 89 86 b0 03 00 00     mov       [rsi+0x3b0],rax
0006f3  4c 89 c0                 mov       rax,r8
0006f6  48 89 86 b8 03 00 00     mov       [rsi+0x3b8],rax
0006fd  4c 89 c0                 mov       rax,r8
000700  48 89 86 c0 03 00 00     mov       [rsi+0x3c0],rax
000707  49 8d 40 07              lea       rax,[r8+7]
00070b  48 c1 e8 03              shr       rax,3
00070f  48 6b c0 4b              imul      rax,0x4b
000713  48 89 86 c8 03 00 00     mov       [rsi+0x3c8],rax
00071a  49 8d 40 07              lea       rax,[r8+7]
00071e  48 c1 e8 03              shr       rax,3
000722  48 6b c0 4b              imul      rax,0x4b
000726  48 89 86 d0 03 00 00     mov       [rsi+0x3d0],rax
00072d  4c 89 c0                 mov       rax,r8
000730  48 89 86 d8 03 00 00     mov       [rsi+0x3d8],rax
000737  49 8d 40 07              lea       rax,[r8+7]
00073b  48 c1 e8 03              shr       rax,3
00073f  48 6b c0 16              imul      rax,0x16
000743  48 89 86 e0 03 00 00     mov       [rsi+0x3e0],rax
00074a  4c 89 c0                 mov       rax,r8
00074d  48 89 86 e8 03 00 00     mov       [rsi+0x3e8],rax
000754  4c 89 c0                 mov       rax,r8
000757  48 89 86 f0 03 00 00     mov       [rsi+0x3f0],rax
00075e  49 8d 40 07              lea       rax,[r8+7]
000762  48 c1 e8 03              shr       rax,3
000766  48 6b c0 56              imul      rax,0x56
00076a  48 89 86 f8 03 00 00     mov       [rsi+0x3f8],rax
000771  49 8d 40 07              lea       rax,[r8+7]
000775  48 c1 e8 03              shr       rax,3
000779  48 6b c0 0b              imul      rax,0xb
00077d  48 89 86 00 04 00 00     mov       [rsi+0x400],rax
000784  49 8d 40 07              lea       rax,[r8+7]
000788  48 c1 e8 03              shr       rax,3
00078c  48 6b c0 0b              imul      rax,0xb
000790  48 89 86 08 04 00 00     mov       [rsi+0x408],rax
000797  4c 89 c0                 mov       rax,r8
00079a  48 89 86 10 04 00 00     mov       [rsi+0x410],rax
0007a1  4c 89 c0                 mov       rax,r8
0007a4  48 89 86 18 04 00 00     mov       [rsi+0x418],rax
0007ab  4c 89 c0                 mov       rax,r8
0007ae  48 6b c0 02              imul      rax,2
0007b2  48 89 86 20 04 00 00     mov       [rsi+0x420],rax
0007b9  49 8d 40 07              lea       rax,[r8+7]
0007bd  48 c1 e8 03              shr       rax,3
0007c1  48 6b c0 08              imul      rax,8
0007c5  48 89 86 28 04 00 00     mov       [rsi+0x428],rax
0007cc  4c 89 c0                 mov       rax,r8
0007cf  48 89 86 30 04 00 00     mov       [rsi+0x430],rax
0007d6  49 8d 40 07              lea       rax,[r8+7]
0007da  48 c1 e8 03              shr       rax,3
0007de  48 6b c0 16              imul      rax,0x16
0007e2  48 89 86 38 04 00 00     mov       [rsi+0x438],rax
0007e9  4c 89 c0                 mov       rax,r8
0007ec  48 89 86 40 04 00 00     mov       [rsi+0x440],rax
0007f3  4c 89 c0                 mov       rax,r8
0007f6  48 89 86 48 04 00 00     mov       [rsi+0x448],rax
0007fd  49 8d 40 07              lea       rax,[r8+7]
000801  48 c1 e8 03              shr       rax,3
000805  48 6b c0 4b              imul      rax,0x4b
000809  48 89 86 50 04 00 00     mov       [rsi+0x450],rax
000810  49 8d 40 07              lea       rax,[r8+7]
000814  48 c1 e8 03              shr       rax,3
000818  48 6b c0 4b              imul      rax,0x4b
00081c  48 89 86 58 04 00 00     mov       [rsi+0x458],rax
000823  4c 89 c0                 mov       rax,r8
000826  48 89 86 60 04 00 00     mov       [rsi+0x460],rax
00082d  49 8d 40 07              lea       rax,[r8+7]
000831  48 c1 e8 03              shr       rax,3
000835  48 6b c0 16              imul      rax,0x16
000839  48 89 86 68 04 00 00     mov       [rsi+0x468],rax
000840  4c 89 c0                 mov       rax,r8
000843  48 89 86 70 04 00 00     mov       [rsi+0x470],rax
00084a  4c 89 c0                 mov       rax,r8
00084d  48 89 86 78 04 00 00     mov       [rsi+0x478],rax
000854  49 8d 40 07              lea       rax,[r8+7]
000858  48 c1 e8 03              shr       rax,3
00085c  48 89 86 80 04 00 00     mov       [rsi+0x480],rax
000863  49 8d 40 07              lea       rax,[r8+7]
000867  48 c1 e8 03              shr       rax,3
00086b  48 89 86 88 04 00 00     mov       [rsi+0x488],rax
000872  4c 89 c0                 mov       rax,r8
000875  48 89 86 90 04 00 00     mov       [rsi+0x490],rax
00087c  49 8d 40 07              lea       rax,[r8+7]
000880  48 c1 e8 03              shr       rax,3
000884  48 69 c0 80 00 00 00     imul      rax,0x80
00088b  48 89 86 98 04 00 00     mov       [rsi+0x498],rax
000892  49 8d 40 07              lea       rax,[r8+7]
000896  48 c1 e8 03              shr       rax,3
00089a  48 6b c0 2b              imul      rax,0x2b
00089e  48 89 86 a0 04 00 00     mov       [rsi+0x4a0],rax
0008a5  4c 89 c0                 mov       rax,r8
0008a8  48 69 c0 80 01 00 00     imul      rax,0x180
0008af  48 89 86 a8 04 00 00     mov       [rsi+0x4a8],rax
0008b6  4c 89 c0                 mov       rax,r8
0008b9  48 6b c0 10              imul      rax,0x10
0008bd  48 89 86 b0 04 00 00     mov       [rsi+0x4b0],rax
0008c4  4c 89 c0                 mov       rax,r8
0008c7  48 6b c0 10              imul      rax,0x10
0008cb  48 89 86 b8 04 00 00     mov       [rsi+0x4b8],rax
0008d2  4c 89 c0                 mov       rax,r8
0008d5  48 6b c0 10              imul      rax,0x10
0008d9  48 89 86 c0 04 00 00     mov       [rsi+0x4c0],rax
0008e0  49 8d 40 07              lea       rax,[r8+7]
0008e4  48 c1 e8 03              shr       rax,3
0008e8  48 6b c0 16              imul      rax,0x16
0008ec  48 89 86 c8 04 00 00     mov       [rsi+0x4c8],rax
0008f3  4c 89 c0                 mov       rax,r8
0008f6  48 89 86 d0 04 00 00     mov       [rsi+0x4d0],rax
0008fd  4c 89 c0                 mov       rax,r8
000900  48 89 86 d8 04 00 00     mov       [rsi+0x4d8],rax
000907  49 8d 40 07              lea       rax,[r8+7]
00090b  48 c1 e8 03              shr       rax,3
00090f  48 6b c0 4b              imul      rax,0x4b
000913  48 89 86 e0 04 00 00     mov       [rsi+0x4e0],rax
00091a  49 8d 40 07              lea       rax,[r8+7]
00091e  48 c1 e8 03              shr       rax,3
000922  48 6b c0 4b              imul      rax,0x4b
000926  48 89 86 e8 04 00 00     mov       [rsi+0x4e8],rax
00092d  4c 89 c0                 mov       rax,r8
000930  48 89 86 f0 04 00 00     mov       [rsi+0x4f0],rax
000937  49 8d 40 07              lea       rax,[r8+7]
00093b  48 c1 e8 03              shr       rax,3
00093f  48 6b c0 16              imul      rax,0x16
000943  48 89 86 f8 04 00 00     mov       [rsi+0x4f8],rax
00094a  4c 89 c0                 mov       rax,r8
00094d  48 89 86 00 05 00 00     mov       [rsi+0x500],rax
000954  4c 89 c0                 mov       rax,r8
000957  48 89 86 08 05 00 00     mov       [rsi+0x508],rax
00095e  49 8d 40 07              lea       rax,[r8+7]
000962  48 c1 e8 03              shr       rax,3
000966  48 89 86 10 05 00 00     mov       [rsi+0x510],rax
00096d  49 8d 40 07              lea       rax,[r8+7]
000971  48 c1 e8 03              shr       rax,3
000975  48 89 86 18 05 00 00     mov       [rsi+0x518],rax
00097c  4c 89 c0                 mov       rax,r8
00097f  48 89 86 20 05 00 00     mov       [rsi+0x520],rax
000986  49 8d 40 07              lea       rax,[r8+7]
00098a  48 c1 e8 03              shr       rax,3
00098e  48 69 c0 80 00 00 00     imul      rax,0x80
000995  48 89 86 28 05 00 00     mov       [rsi+0x528],rax
00099c  49 8d 40 07              lea       rax,[r8+7]
0009a0  48 c1 e8 03              shr       rax,3
0009a4  48 6b c0 2b              imul      rax,0x2b
0009a8  48 89 86 30 05 00 00     mov       [rsi+0x530],rax
0009af  4c 89 c0                 mov       rax,r8
0009b2  48 69 c0 80 01 00 00     imul      rax,0x180
0009b9  48 89 86 38 05 00 00     mov       [rsi+0x538],rax
0009c0  4c 89 c0                 mov       rax,r8
0009c3  48 6b c0 10              imul      rax,0x10
0009c7  48 89 86 40 05 00 00     mov       [rsi+0x540],rax
0009ce  4c 89 c0                 mov       rax,r8
0009d1  48 6b c0 10              imul      rax,0x10
0009d5  48 89 86 48 05 00 00     mov       [rsi+0x548],rax
0009dc  4c 89 c0                 mov       rax,r8
0009df  48 6b c0 10              imul      rax,0x10
0009e3  48 89 86 50 05 00 00     mov       [rsi+0x550],rax
0009ea  49 8d 40 07              lea       rax,[r8+7]
0009ee  48 c1 e8 03              shr       rax,3
0009f2  48 6b c0 16              imul      rax,0x16
0009f6  48 89 86 58 05 00 00     mov       [rsi+0x558],rax
0009fd  4c 89 c0                 mov       rax,r8
000a00  48 89 86 60 05 00 00     mov       [rsi+0x560],rax
000a07  4c 89 c0                 mov       rax,r8
000a0a  48 89 86 68 05 00 00     mov       [rsi+0x568],rax
000a11  49 8d 40 07              lea       rax,[r8+7]
000a15  48 c1 e8 03              shr       rax,3
000a19  48 6b c0 4b              imul      rax,0x4b
000a1d  48 89 86 70 05 00 00     mov       [rsi+0x570],rax
000a24  49 8d 40 07              lea       rax,[r8+7]
000a28  48 c1 e8 03              shr       rax,3
000a2c  48 6b c0 4b              imul      rax,0x4b
000a30  48 89 86 78 05 00 00     mov       [rsi+0x578],rax
000a37  4c 89 c0                 mov       rax,r8
000a3a  48 89 86 80 05 00 00     mov       [rsi+0x580],rax
000a41  49 8d 40 07              lea       rax,[r8+7]
000a45  48 c1 e8 03              shr       rax,3
000a49  48 6b c0 16              imul      rax,0x16
000a4d  48 89 86 88 05 00 00     mov       [rsi+0x588],rax
000a54  4c 89 c0                 mov       rax,r8
000a57  48 89 86 90 05 00 00     mov       [rsi+0x590],rax
000a5e  4c 89 c0                 mov       rax,r8
000a61  48 89 86 98 05 00 00     mov       [rsi+0x598],rax
000a68  49 8d 40 07              lea       rax,[r8+7]
000a6c  48 c1 e8 03              shr       rax,3
000a70  48 89 86 a0 05 00 00     mov       [rsi+0x5a0],rax
000a77  49 8d 40 07              lea       rax,[r8+7]
000a7b  48 c1 e8 03              shr       rax,3
000a7f  48 89 86 a8 05 00 00     mov       [rsi+0x5a8],rax
000a86  4c 89 c0                 mov       rax,r8
000a89  48 89 86 b0 05 00 00     mov       [rsi+0x5b0],rax
000a90  49 8d 40 07              lea       rax,[r8+7]
000a94  48 c1 e8 03              shr       rax,3
000a98  48 69 c0 80 00 00 00     imul      rax,0x80
000a9f  48 89 86 b8 05 00 00     mov       [rsi+0x5b8],rax
000aa6  49 8d 40 07              lea       rax,[r8+7]
000aaa  48 c1 e8 03              shr       rax,3
000aae  48 6b c0 2b              imul      rax,0x2b
000ab2  48 89 86 c0 05 00 00     mov       [rsi+0x5c0],rax
000ab9  4c 89 c0                 mov       rax,r8
000abc  48 69 c0 80 01 00 00     imul      rax,0x180
000ac3  48 89 86 c8 05 00 00     mov       [rsi+0x5c8],rax
000aca  4c 89 c0                 mov       rax,r8
000acd  48 6b c0 10              imul      rax,0x10
000ad1  48 89 86 d0 05 00 00     mov       [rsi+0x5d0],rax
000ad8  4c 89 c0                 mov       rax,r8
000adb  48 6b c0 10              imul      rax,0x10
000adf  48 89 86 d8 05 00 00     mov       [rsi+0x5d8],rax
000ae6  4c 89 c0                 mov       rax,r8
000ae9  48 6b c0 10              imul      rax,0x10
000aed  48 89 86 e0 05 00 00     mov       [rsi+0x5e0],rax
000af4  49 8d 40 07              lea       rax,[r8+7]
000af8  48 c1 e8 03              shr       rax,3
000afc  48 6b c0 16              imul      rax,0x16
000b00  48 89 86 e8 05 00 00     mov       [rsi+0x5e8],rax
000b07  4c 89 c0                 mov       rax,r8
000b0a  48 89 86 f0 05 00 00     mov       [rsi+0x5f0],rax
000b11  4c 89 c0                 mov       rax,r8
000b14  48 89 86 f8 05 00 00     mov       [rsi+0x5f8],rax
000b1b  49 8d 40 07              lea       rax,[r8+7]
000b1f  48 c1 e8 03              shr       rax,3
000b23  48 6b c0 4b              imul      rax,0x4b
000b27  48 89 86 00 06 00 00     mov       [rsi+0x600],rax
000b2e  49 8d 40 07              lea       rax,[r8+7]
000b32  48 c1 e8 03              shr       rax,3
000b36  48 6b c0 4b              imul      rax,0x4b
000b3a  48 89 86 08 06 00 00     mov       [rsi+0x608],rax
000b41  4c 89 c0                 mov       rax,r8
000b44  48 89 86 10 06 00 00     mov       [rsi+0x610],rax
000b4b  49 8d 40 07              lea       rax,[r8+7]
000b4f  48 c1 e8 03              shr       rax,3
000b53  48 6b c0 16              imul      rax,0x16
000b57  48 89 86 18 06 00 00     mov       [rsi+0x618],rax
000b5e  4c 89 c0                 mov       rax,r8
000b61  48 89 86 20 06 00 00     mov       [rsi+0x620],rax
000b68  4c 89 c0                 mov       rax,r8
000b6b  48 89 86 28 06 00 00     mov       [rsi+0x628],rax
000b72  49 8d 40 07              lea       rax,[r8+7]
000b76  48 c1 e8 03              shr       rax,3
000b7a  48 6b c0 56              imul      rax,0x56
000b7e  48 89 86 30 06 00 00     mov       [rsi+0x630],rax
000b85  49 8d 40 07              lea       rax,[r8+7]
000b89  48 c1 e8 03              shr       rax,3
000b8d  48 6b c0 0b              imul      rax,0xb
000b91  48 89 86 38 06 00 00     mov       [rsi+0x638],rax
000b98  49 8d 40 07              lea       rax,[r8+7]
000b9c  48 c1 e8 03              shr       rax,3
000ba0  48 6b c0 0b              imul      rax,0xb
000ba4  48 89 86 40 06 00 00     mov       [rsi+0x640],rax
000bab  4c 89 c0                 mov       rax,r8
000bae  48 89 86 48 06 00 00     mov       [rsi+0x648],rax
000bb5  4c 89 c0                 mov       rax,r8
000bb8  48 89 86 50 06 00 00     mov       [rsi+0x650],rax
000bbf  4c 89 c0                 mov       rax,r8
000bc2  48 6b c0 02              imul      rax,2
000bc6  48 89 86 58 06 00 00     mov       [rsi+0x658],rax
000bcd  49 8d 40 07              lea       rax,[r8+7]
000bd1  48 c1 e8 03              shr       rax,3
000bd5  48 6b c0 08              imul      rax,8
000bd9  48 89 86 60 06 00 00     mov       [rsi+0x660],rax
000be0  4c 89 c0                 mov       rax,r8
000be3  48 89 86 68 06 00 00     mov       [rsi+0x668],rax
000bea  49 8d 40 07              lea       rax,[r8+7]
000bee  48 c1 e8 03              shr       rax,3
000bf2  48 6b c0 16              imul      rax,0x16
000bf6  48 89 86 70 06 00 00     mov       [rsi+0x670],rax
000bfd  4c 89 c0                 mov       rax,r8
000c00  48 89 86 78 06 00 00     mov       [rsi+0x678],rax
000c07  4c 89 c0                 mov       rax,r8
000c0a  48 89 86 80 06 00 00     mov       [rsi+0x680],rax
000c11  49 8d 40 07              lea       rax,[r8+7]
000c15  48 c1 e8 03              shr       rax,3
000c19  48 6b c0 4b              imul      rax,0x4b
000c1d  48 89 86 88 06 00 00     mov       [rsi+0x688],rax
000c24  49 8d 40 07              lea       rax,[r8+7]
000c28  48 c1 e8 03              shr       rax,3
000c2c  48 6b c0 4b              imul      rax,0x4b
000c30  48 89 86 90 06 00 00     mov       [rsi+0x690],rax
000c37  4c 89 c0                 mov       rax,r8
000c3a  48 89 86 98 06 00 00     mov       [rsi+0x698],rax
000c41  49 8d 40 07              lea       rax,[r8+7]
000c45  48 c1 e8 03              shr       rax,3
000c49  48 6b c0 16              imul      rax,0x16
000c4d  48 89 86 a0 06 00 00     mov       [rsi+0x6a0],rax
000c54  4c 89 c0                 mov       rax,r8
000c57  48 89 86 a8 06 00 00     mov       [rsi+0x6a8],rax
000c5e  4c 89 c0                 mov       rax,r8
000c61  48 89 86 b0 06 00 00     mov       [rsi+0x6b0],rax
000c68  49 8d 40 07              lea       rax,[r8+7]
000c6c  48 c1 e8 03              shr       rax,3
000c70  48 89 86 b8 06 00 00     mov       [rsi+0x6b8],rax
000c77  49 8d 40 07              lea       rax,[r8+7]
000c7b  48 c1 e8 03              shr       rax,3
000c7f  48 89 86 c0 06 00 00     mov       [rsi+0x6c0],rax
000c86  4c 89 c0                 mov       rax,r8
000c89  48 89 86 c8 06 00 00     mov       [rsi+0x6c8],rax
000c90  49 8d 40 07              lea       rax,[r8+7]
000c94  48 c1 e8 03              shr       rax,3
000c98  48 69 c0 80 00 00 00     imul      rax,0x80
000c9f  48 89 86 d0 06 00 00     mov       [rsi+0x6d0],rax
000ca6  49 8d 40 07              lea       rax,[r8+7]
000caa  48 c1 e8 03              shr       rax,3
000cae  48 6b c0 2b              imul      rax,0x2b
000cb2  48 89 86 d8 06 00 00     mov       [rsi+0x6d8],rax
000cb9  4c 89 c0                 mov       rax,r8
000cbc  48 69 c0 80 01 00 00     imul      rax,0x180
000cc3  48 89 86 e0 06 00 00     mov       [rsi+0x6e0],rax
000cca  4c 89 c0                 mov       rax,r8
000ccd  48 6b c0 10              imul      rax,0x10
000cd1  48 89 86 e8 06 00 00     mov       [rsi+0x6e8],rax
000cd8  4c 89 c0                 mov       rax,r8
000cdb  48 6b c0 10              imul      rax,0x10
000cdf  48 89 86 f0 06 00 00     mov       [rsi+0x6f0],rax
000ce6  4c 89 c0                 mov       rax,r8
000ce9  48 6b c0 10              imul      rax,0x10
000ced  48 89 86 f8 06 00 00     mov       [rsi+0x6f8],rax
000cf4  49 8d 40 07              lea       rax,[r8+7]
000cf8  48 c1 e8 03              shr       rax,3
000cfc  48 6b c0 16              imul      rax,0x16
000d00  48 89 86 00 07 00 00     mov       [rsi+0x700],rax
000d07  4c 89 c0                 mov       rax,r8
000d0a  48 89 86 08 07 00 00     mov       [rsi+0x708],rax
000d11  4c 89 c0                 mov       rax,r8
000d14  48 89 86 10 07 00 00     mov       [rsi+0x710],rax
000d1b  49 8d 40 07              lea       rax,[r8+7]
000d1f  48 c1 e8 03              shr       rax,3
000d23  48 6b c0 4b              imul      rax,0x4b
000d27  48 89 86 18 07 00 00     mov       [rsi+0x718],rax
000d2e  49 8d 40 07              lea       rax,[r8+7]
000d32  48 c1 e8 03              shr       rax,3
000d36  48 6b c0 4b              imul      rax,0x4b
000d3a  48 89 86 20 07 00 00     mov       [rsi+0x720],rax
000d41  4c 89 c0                 mov       rax,r8
000d44  48 89 86 28 07 00 00     mov       [rsi+0x728],rax
000d4b  49 8d 40 07              lea       rax,[r8+7]
000d4f  48 c1 e8 03              shr       rax,3
000d53  48 6b c0 16              imul      rax,0x16
000d57  48 89 86 30 07 00 00     mov       [rsi+0x730],rax
000d5e  4c 89 c0                 mov       rax,r8
000d61  48 89 86 38 07 00 00     mov       [rsi+0x738],rax
000d68  4c 89 c0                 mov       rax,r8
000d6b  48 89 86 40 07 00 00     mov       [rsi+0x740],rax
000d72  49 8d 40 07              lea       rax,[r8+7]
000d76  48 c1 e8 03              shr       rax,3
000d7a  48 89 86 48 07 00 00     mov       [rsi+0x748],rax
000d81  49 8d 40 07              lea       rax,[r8+7]
000d85  48 c1 e8 03              shr       rax,3
000d89  48 89 86 50 07 00 00     mov       [rsi+0x750],rax
000d90  4c 89 c0                 mov       rax,r8
000d93  48 89 86 58 07 00 00     mov       [rsi+0x758],rax
000d9a  49 8d 40 07              lea       rax,[r8+7]
000d9e  48 c1 e8 03              shr       rax,3
000da2  48 69 c0 80 00 00 00     imul      rax,0x80
000da9  48 89 86 60 07 00 00     mov       [rsi+0x760],rax
000db0  49 8d 40 07              lea       rax,[r8+7]
000db4  48 c1 e8 03              shr       rax,3
000db8  48 6b c0 2b              imul      rax,0x2b
000dbc  48 89 86 68 07 00 00     mov       [rsi+0x768],rax
000dc3  4c 89 c0                 mov       rax,r8
000dc6  48 69 c0 80 01 00 00     imul      rax,0x180
000dcd  48 89 86 70 07 00 00     mov       [rsi+0x770],rax
000dd4  4c 89 c0                 mov       rax,r8
000dd7  48 6b c0 10              imul      rax,0x10
000ddb  48 89 86 78 07 00 00     mov       [rsi+0x778],rax
000de2  4c 89 c0                 mov       rax,r8
000de5  48 6b c0 10              imul      rax,0x10
000de9  48 89 86 80 07 00 00     mov       [rsi+0x780],rax
000df0  4c 89 c0                 mov       rax,r8
000df3  48 6b c0 10              imul      rax,0x10
000df7  48 89 86 88 07 00 00     mov       [rsi+0x788],rax
000dfe  49 8d 40 07              lea       rax,[r8+7]
000e02  48 c1 e8 03              shr       rax,3
000e06  48 6b c0 16              imul      rax,0x16
000e0a  48 89 86 90 07 00 00     mov       [rsi+0x790],rax
000e11  4c 89 c0                 mov       rax,r8
000e14  48 89 86 98 07 00 00     mov       [rsi+0x798],rax
000e1b  4c 89 c0                 mov       rax,r8
000e1e  48 89 86 a0 07 00 00     mov       [rsi+0x7a0],rax
000e25  49 8d 40 07              lea       rax,[r8+7]
000e29  48 c1 e8 03              shr       rax,3
000e2d  48 6b c0 4b              imul      rax,0x4b
000e31  48 89 86 a8 07 00 00     mov       [rsi+0x7a8],rax
000e38  49 8d 40 07              lea       rax,[r8+7]
000e3c  48 c1 e8 03              shr       rax,3
000e40  48 6b c0 4b              imul      rax,0x4b
000e44  48 89 86 b0 07 00 00     mov       [rsi+0x7b0],rax
000e4b  4c 89 c0                 mov       rax,r8
000e4e  48 89 86 b8 07 00 00     mov       [rsi+0x7b8],rax
000e55  49 8d 40 07              lea       rax,[r8+7]
000e59  48 c1 e8 03              shr       rax,3
000e5d  48 6b c0 16              imul      rax,0x16
000e61  48 89 86 c0 07 00 00     mov       [rsi+0x7c0],rax
000e68  4c 89 c0                 mov       rax,r8
000e6b  48 89 86 c8 07 00 00     mov       [rsi+0x7c8],rax
000e72  4c 89 c0                 mov       rax,r8
000e75  48 89 86 d0 07 00 00     mov       [rsi+0x7d0],rax
000e7c  49 8d 40 07              lea       rax,[r8+7]
000e80  48 c1 e8 03              shr       rax,3
000e84  48 89 86 d8 07 00 00     mov       [rsi+0x7d8],rax
000e8b  49 8d 40 07              lea       rax,[r8+7]
000e8f  48 c1 e8 03              shr       rax,3
000e93  48 89 86 e0 07 00 00     mov       [rsi+0x7e0],rax
000e9a  4c 89 c0                 mov       rax,r8
000e9d  48 89 86 e8 07 00 00     mov       [rsi+0x7e8],rax
000ea4  49 8d 40 07              lea       rax,[r8+7]
000ea8  48 c1 e8 03              shr       rax,3
000eac  48 69 c0 80 00 00 00     imul      rax,0x80
000eb3  48 89 86 f0 07 00 00     mov       [rsi+0x7f0],rax
000eba  49 8d 40 07              lea       rax,[r8+7]
000ebe  48 c1 e8 03              shr       rax,3
000ec2  48 6b c0 2b              imul      rax,0x2b
000ec6  48 89 86 f8 07 00 00     mov       [rsi+0x7f8],rax
000ecd  4c 89 c0                 mov       rax,r8
000ed0  48 69 c0 80 01 00 00     imul      rax,0x180
000ed7  48 89 86 00 08 00 00     mov       [rsi+0x800],rax
000ede  4c 89 c0                 mov       rax,r8
000ee1  48 6b c0 10              imul      rax,0x10
000ee5  48 89 86 08 08 00 00     mov       [rsi+0x808],rax
000eec  4c 89 c0                 mov       rax,r8
000eef  48 6b c0 10              imul      rax,0x10
000ef3  48 89 86 10 08 00 00     mov       [rsi+0x810],rax
000efa  4c 89 c0                 mov       rax,r8
000efd  48 6b c0 10              imul      rax,0x10
000f01  48 89 86 18 08 00 00     mov       [rsi+0x818],rax
000f08  49 8d 40 07              lea       rax,[r8+7]
000f0c  48 c1 e8 03              shr       rax,3
000f10  48 6b c0 16              imul      rax,0x16
000f14  48 89 86 20 08 00 00     mov       [rsi+0x820],rax
000f1b  4c 89 c0                 mov       rax,r8
000f1e  48 89 86 28 08 00 00     mov       [rsi+0x828],rax
000f25  4c 89 c0                 mov       rax,r8
000f28  48 89 86 30 08 00 00     mov       [rsi+0x830],rax
000f2f  49 8d 40 07              lea       rax,[r8+7]
000f33  48 c1 e8 03              shr       rax,3
000f37  48 6b c0 4b              imul      rax,0x4b
000f3b  48 89 86 38 08 00 00     mov       [rsi+0x838],rax
000f42  49 8d 40 07              lea       rax,[r8+7]
000f46  48 c1 e8 03              shr       rax,3
000f4a  48 6b c0 4b              imul      rax,0x4b
000f4e  48 89 86 40 08 00 00     mov       [rsi+0x840],rax
000f55  4c 89 c0                 mov       rax,r8
000f58  48 89 86 48 08 00 00     mov       [rsi+0x848],rax
000f5f  49 8d 40 07              lea       rax,[r8+7]
000f63  48 c1 e8 03              shr       rax,3
000f67  48 6b c0 16              imul      rax,0x16
000f6b  48 89 86 50 08 00 00     mov       [rsi+0x850],rax
000f72  4c 89 c0                 mov       rax,r8
000f75  48 89 86 58 08 00 00     mov       [rsi+0x858],rax
000f7c  4c 89 c0                 mov       rax,r8
000f7f  48 89 86 60 08 00 00     mov       [rsi+0x860],rax
000f86  49 8d 40 07              lea       rax,[r8+7]
000f8a  48 c1 e8 03              shr       rax,3
000f8e  48 6b c0 56              imul      rax,0x56
000f92  48 89 86 68 08 00 00     mov       [rsi+0x868],rax
000f99  49 8d 40 07              lea       rax,[r8+7]
000f9d  48 c1 e8 03              shr       rax,3
000fa1  48 6b c0 0b              imul      rax,0xb
000fa5  48 89 86 70 08 00 00     mov       [rsi+0x870],rax
000fac  49 8d 40 07              lea       rax,[r8+7]
000fb0  48 c1 e8 03              shr       rax,3
000fb4  48 6b c0 0b              imul      rax,0xb
000fb8  48 89 86 78 08 00 00     mov       [rsi+0x878],rax
000fbf  4c 89 c0                 mov       rax,r8
000fc2  48 89 86 80 08 00 00     mov       [rsi+0x880],rax
000fc9  4c 89 c0                 mov       rax,r8
000fcc  48 89 86 88 08 00 00     mov       [rsi+0x888],rax
000fd3  4c 89 c0                 mov       rax,r8
000fd6  48 6b c0 02              imul      rax,2
000fda  48 89 86 90 08 00 00     mov       [rsi+0x890],rax
000fe1  49 8d 40 07              lea       rax,[r8+7]
000fe5  48 c1 e8 03              shr       rax,3
000fe9  48 6b c0 08              imul      rax,8
000fed  48 89 86 98 08 00 00     mov       [rsi+0x898],rax
000ff4  4c 89 c0                 mov       rax,r8
000ff7  48 89 86 a0 08 00 00     mov       [rsi+0x8a0],rax
000ffe  49 8d 40 07              lea       rax,[r8+7]
001002  48 c1 e8 03              shr       rax,3
001006  48 6b c0 16              imul      rax,0x16
00100a  48 89 86 a8 08 00 00     mov       [rsi+0x8a8],rax
001011  4c 89 c0                 mov       rax,r8
001014  48 89 86 b0 08 00 00     mov       [rsi+0x8b0],rax
00101b  4c 89 c0                 mov       rax,r8
00101e  48 89 86 b8 08 00 00     mov       [rsi+0x8b8],rax
001025  49 8d 40 07              lea       rax,[r8+7]
001029  48 c1 e8 03              shr       rax,3
00102d  48 6b c0 4b              imul      rax,0x4b
001031  48 89 86 c0 08 00 00     mov       [rsi+0x8c0],rax
001038  49 8d 40 07              lea       rax,[r8+7]
00103c  48 c1 e8 03              shr       rax,3
001040  48 6b c0 4b              imul      rax,0x4b
001044  48 89 86 c8 08 00 00     mov       [rsi+0x8c8],rax
00104b  4c 89 c0                 mov       rax,r8
00104e  48 89 86 d0 08 00 00     mov       [rsi+0x8d0],rax
001055  49 8d 40 07              lea       rax,[r8+7]
001059  48 c1 e8 03              shr       rax,3
00105d  48 6b c0 16              imul      rax,0x16
001061  48 89 86 d8 08 00 00     mov       [rsi+0x8d8],rax
001068  4c 89 c0                 mov       rax,r8
00106b  48 89 86 e0 08 00 00     mov       [rsi+0x8e0],rax
001072  4c 89 c0                 mov       rax,r8
001075  48 89 86 e8 08 00 00     mov       [rsi+0x8e8],rax
00107c  49 8d 40 07              lea       rax,[r8+7]
001080  48 c1 e8 03              shr       rax,3
001084  48 89 86 f0 08 00 00     mov       [rsi+0x8f0],rax
00108b  49 8d 40 07              lea       rax,[r8+7]
00108f  48 c1 e8 03              shr       rax,3
001093  48 89 86 f8 08 00 00     mov       [rsi+0x8f8],rax
00109a  4c 89 c0                 mov       rax,r8
00109d  48 89 86 00 09 00 00     mov       [rsi+0x900],rax
0010a4  49 8d 40 07              lea       rax,[r8+7]
0010a8  48 c1 e8 03              shr       rax,3
0010ac  48 69 c0 80 00 00 00     imul      rax,0x80
0010b3  48 89 86 08 09 00 00     mov       [rsi+0x908],rax
0010ba  49 8d 40 07              lea       rax,[r8+7]
0010be  48 c1 e8 03              shr       rax,3
0010c2  48 6b c0 2b              imul      rax,0x2b
0010c6  48 89 86 10 09 00 00     mov       [rsi+0x910],rax
0010cd  4c 89 c0                 mov       rax,r8
0010d0  48 69 c0 80 01 00 00     imul      rax,0x180
0010d7  48 89 86 18 09 00 00     mov       [rsi+0x918],rax
0010de  4c 89 c0                 mov       rax,r8
0010e1  48 6b c0 10              imul      rax,0x10
0010e5  48 89 86 20 09 00 00     mov       [rsi+0x920],rax
0010ec  4c 89 c0                 mov       rax,r8
0010ef  48 6b c0 10              imul      rax,0x10
0010f3  48 89 86 28 09 00 00     mov       [rsi+0x928],rax
0010fa  4c 89 c0                 mov       rax,r8
0010fd  48 6b c0 10              imul      rax,0x10
001101  48 89 86 30 09 00 00     mov       [rsi+0x930],rax
001108  49 8d 40 07              lea       rax,[r8+7]
00110c  48 c1 e8 03              shr       rax,3
001110  48 6b c0 16              imul      rax,0x16
001114  48 89 86 38 09 00 00     mov       [rsi+0x938],rax
00111b  4c 89 c0                 mov       rax,r8
00111e  48 89 86 40 09 00 00     mov       [rsi+0x940],rax
001125  4c 89 c0                 mov       rax,r8
001128  48 89 86 48 09 00 00     mov       [rsi+0x948],rax
00112f  49 8d 40 07              lea       rax,[r8+7]
001133  48 c1 e8 03              shr       rax,3
001137  48 6b c0 4b              imul      rax,0x4b
00113b  48 89 86 50 09 00 00     mov       [rsi+0x950],rax
001142  49 8d 40 07              lea       rax,[r8+7]
001146  48 c1 e8 03              shr       rax,3
00114a  48 6b c0 4b              imul      rax,0x4b
00114e  48 89 86 58 09 00 00     mov       [rsi+0x958],rax
001155  4c 89 c0                 mov       rax,r8
001158  48 89 86 60 09 00 00     mov       [rsi+0x960],rax
00115f  49 8d 40 07              lea       rax,[r8+7]
001163  48 c1 e8 03              shr       rax,3
001167  48 6b c0 16              imul      rax,0x16
00116b  48 89 86 68 09 00 00     mov       [rsi+0x968],rax
001172  4c 89 c0                 mov       rax,r8
001175  48 89 86 70 09 00 00     mov       [rsi+0x970],rax
00117c  4c 89 c0                 mov       rax,r8
00117f  48 89 86 78 09 00 00     mov       [rsi+0x978],rax
001186  49 8d 40 07              lea       rax,[r8+7]
00118a  48 c1 e8 03              shr       rax,3
00118e  48 89 86 80 09 00 00     mov       [rsi+0x980],rax
001195  49 8d 40 07              lea       rax,[r8+7]
001199  48 c1 e8 03              shr       rax,3
00119d  48 89 86 88 09 00 00     mov       [rsi+0x988],rax
0011a4  4c 89 c0                 mov       rax,r8
0011a7  48 89 86 90 09 00 00     mov       [rsi+0x990],rax
0011ae  49 8d 40 07              lea       rax,[r8+7]
0011b2  48 c1 e8 03              shr       rax,3
0011b6  48 69 c0 80 00 00 00     imul      rax,0x80
0011bd  48 89 86 98 09 00 00     mov       [rsi+0x998],rax
0011c4  49 8d 40 07              lea       rax,[r8+7]
0011c8  48 c1 e8 03              shr       rax,3
0011cc  48 6b c0 2b              imul      rax,0x2b
0011d0  48 89 86 a0 09 00 00     mov       [rsi+0x9a0],rax
0011d7  4c 89 c0                 mov       rax,r8
0011da  48 69 c0 80 01 00 00     imul      rax,0x180
0011e1  48 89 86 a8 09 00 00     mov       [rsi+0x9a8],rax
0011e8  4c 89 c0                 mov       rax,r8
0011eb  48 6b c0 10              imul      rax,0x10
0011ef  48 89 86 b0 09 00 00     mov       [rsi+0x9b0],rax
0011f6  4c 89 c0                 mov       rax,r8
0011f9  48 6b c0 10              imul      rax,0x10
0011fd  48 89 86 b8 09 00 00     mov       [rsi+0x9b8],rax
001204  4c 89 c0                 mov       rax,r8
001207  48 6b c0 10              imul      rax,0x10
00120b  48 89 86 c0 09 00 00     mov       [rsi+0x9c0],rax
001212  49 8d 40 07              lea       rax,[r8+7]
001216  48 c1 e8 03              shr       rax,3
00121a  48 6b c0 16              imul      rax,0x16
00121e  48 89 86 c8 09 00 00     mov       [rsi+0x9c8],rax
001225  4c 89 c0                 mov       rax,r8
001228  48 89 86 d0 09 00 00     mov       [rsi+0x9d0],rax
00122f  4c 89 c0                 mov       rax,r8
001232  48 89 86 d8 09 00 00     mov       [rsi+0x9d8],rax
001239  49 8d 40 07              lea       rax,[r8+7]
00123d  48 c1 e8 03              shr       rax,3
001241  48 6b c0 4b              imul      rax,0x4b
001245  48 89 86 e0 09 00 00     mov       [rsi+0x9e0],rax
00124c  49 8d 40 07              lea       rax,[r8+7]
001250  48 c1 e8 03              shr       rax,3
001254  48 6b c0 4b              imul      rax,0x4b
001258  48 89 86 e8 09 00 00     mov       [rsi+0x9e8],rax
00125f  4c 89 c0                 mov       rax,r8
001262  48 89 86 f0 09 00 00     mov       [rsi+0x9f0],rax
001269  49 8d 40 07              lea       rax,[r8+7]
00126d  48 c1 e8 03              shr       rax,3
001271  48 6b c0 16              imul      rax,0x16
001275  48 89 86 f8 09 00 00     mov       [rsi+0x9f8],rax
00127c  4c 89 c0                 mov       rax,r8
00127f  48 89 86 00 0a 00 00     mov       [rsi+0xa00],rax
001286  4c 89 c0                 mov       rax,r8
001289  48 89 86 08 0a 00 00     mov       [rsi+0xa08],rax
001290  49 8d 40 07              lea       rax,[r8+7]
001294  48 c1 e8 03              shr       rax,3
001298  48 89 86 10 0a 00 00     mov       [rsi+0xa10],rax
00129f  49 8d 40 07              lea       rax,[r8+7]
0012a3  48 c1 e8 03              shr       rax,3
0012a7  48 89 86 18 0a 00 00     mov       [rsi+0xa18],rax
0012ae  4c 89 c0                 mov       rax,r8
0012b1  48 89 86 20 0a 00 00     mov       [rsi+0xa20],rax
0012b8  49 8d 40 07              lea       rax,[r8+7]
0012bc  48 c1 e8 03              shr       rax,3
0012c0  48 69 c0 80 00 00 00     imul      rax,0x80
0012c7  48 89 86 28 0a 00 00     mov       [rsi+0xa28],rax
0012ce  49 8d 40 07              lea       rax,[r8+7]
0012d2  48 c1 e8 03              shr       rax,3
0012d6  48 6b c0 2b              imul      rax,0x2b
0012da  48 89 86 30 0a 00 00     mov       [rsi+0xa30],rax
0012e1  4c 89 c0                 mov       rax,r8
0012e4  48 69 c0 80 01 00 00     imul      rax,0x180
0012eb  48 89 86 38 0a 00 00     mov       [rsi+0xa38],rax
0012f2  4c 89 c0                 mov       rax,r8
0012f5  48 6b c0 10              imul      rax,0x10
0012f9  48 89 86 40 0a 00 00     mov       [rsi+0xa40],rax
001300  4c 89 c0                 mov       rax,r8
001303  48 6b c0 10              imul      rax,0x10
001307  48 89 86 48 0a 00 00     mov       [rsi+0xa48],rax
00130e  4c 89 c0                 mov       rax,r8
001311  48 6b c0 10              imul      rax,0x10
001315  48 89 86 50 0a 00 00     mov       [rsi+0xa50],rax
00131c  49 8d 40 07              lea       rax,[r8+7]
001320  48 c1 e8 03              shr       rax,3
001324  48 6b c0 16              imul      rax,0x16
001328  48 89 86 58 0a 00 00     mov       [rsi+0xa58],rax
00132f  4c 89 c0                 mov       rax,r8
001332  48 89 86 60 0a 00 00     mov       [rsi+0xa60],rax
001339  4c 89 c0                 mov       rax,r8
00133c  48 89 86 68 0a 00 00     mov       [rsi+0xa68],rax
001343  49 8d 40 07              lea       rax,[r8+7]
001347  48 c1 e8 03              shr       rax,3
00134b  48 6b c0 4b              imul      rax,0x4b
00134f  48 89 86 70 0a 00 00     mov       [rsi+0xa70],rax
001356  49 8d 40 07              lea       rax,[r8+7]
00135a  48 c1 e8 03              shr       rax,3
00135e  48 6b c0 4b              imul      rax,0x4b
001362  48 89 86 78 0a 00 00     mov       [rsi+0xa78],rax
001369  4c 89 c0                 mov       rax,r8
00136c  48 89 86 80 0a 00 00     mov       [rsi+0xa80],rax
001373  49 8d 40 07              lea       rax,[r8+7]
001377  48 c1 e8 03              shr       rax,3
00137b  48 6b c0 16              imul      rax,0x16
00137f  48 89 86 88 0a 00 00     mov       [rsi+0xa88],rax
001386  4c 89 c0                 mov       rax,r8
001389  48 89 86 90 0a 00 00     mov       [rsi+0xa90],rax
001390  4c 89 c0                 mov       rax,r8
001393  48 89 86 98 0a 00 00     mov       [rsi+0xa98],rax
00139a  49 8d 40 07              lea       rax,[r8+7]
00139e  48 c1 e8 03              shr       rax,3
0013a2  48 6b c0 56              imul      rax,0x56
0013a6  48 89 86 a0 0a 00 00     mov       [rsi+0xaa0],rax
0013ad  49 8d 40 07              lea       rax,[r8+7]
0013b1  48 c1 e8 03              shr       rax,3
0013b5  48 6b c0 0b              imul      rax,0xb
0013b9  48 89 86 a8 0a 00 00     mov       [rsi+0xaa8],rax
0013c0  49 8d 40 07              lea       rax,[r8+7]
0013c4  48 c1 e8 03              shr       rax,3
0013c8  48 6b c0 0b              imul      rax,0xb
0013cc  48 89 86 b0 0a 00 00     mov       [rsi+0xab0],rax
0013d3  4c 89 c0                 mov       rax,r8
0013d6  48 89 86 b8 0a 00 00     mov       [rsi+0xab8],rax
0013dd  4c 89 c0                 mov       rax,r8
0013e0  48 89 86 c0 0a 00 00     mov       [rsi+0xac0],rax
0013e7  4c 89 c0                 mov       rax,r8
0013ea  48 6b c0 02              imul      rax,2
0013ee  48 89 86 c8 0a 00 00     mov       [rsi+0xac8],rax
0013f5  49 8d 40 07              lea       rax,[r8+7]
0013f9  48 c1 e8 03              shr       rax,3
0013fd  48 6b c0 08              imul      rax,8
001401  48 89 86 d0 0a 00 00     mov       [rsi+0xad0],rax
001408  4c 89 c0                 mov       rax,r8
00140b  48 89 86 d8 0a 00 00     mov       [rsi+0xad8],rax
001412  49 8d 40 07              lea       rax,[r8+7]
001416  48 c1 e8 03              shr       rax,3
00141a  48 6b c0 16              imul      rax,0x16
00141e  48 89 86 e0 0a 00 00     mov       [rsi+0xae0],rax
001425  4c 89 c0                 mov       rax,r8
001428  48 89 86 e8 0a 00 00     mov       [rsi+0xae8],rax
00142f  4c 89 c0                 mov       rax,r8
001432  48 89 86 f0 0a 00 00     mov       [rsi+0xaf0],rax
001439  49 8d 40 07              lea       rax,[r8+7]
00143d  48 c1 e8 03              shr       rax,3
001441  48 6b c0 4b              imul      rax,0x4b
001445  48 89 86 f8 0a 00 00     mov       [rsi+0xaf8],rax
00144c  49 8d 40 07              lea       rax,[r8+7]
001450  48 c1 e8 03              shr       rax,3
001454  48 6b c0 4b              imul      rax,0x4b
001458  48 89 86 00 0b 00 00     mov       [rsi+0xb00],rax
00145f  4c 89 c0                 mov       rax,r8
001462  48 89 86 08 0b 00 00     mov       [rsi+0xb08],rax
001469  49 8d 40 07              lea       rax,[r8+7]
00146d  48 c1 e8 03              shr       rax,3
001471  48 6b c0 16              imul      rax,0x16
001475  48 89 86 10 0b 00 00     mov       [rsi+0xb10],rax
00147c  4c 89 c0                 mov       rax,r8
00147f  48 89 86 18 0b 00 00     mov       [rsi+0xb18],rax
001486  4c 89 c0                 mov       rax,r8
001489  48 89 86 20 0b 00 00     mov       [rsi+0xb20],rax
001490  49 8d 40 07              lea       rax,[r8+7]
001494  48 c1 e8 03              shr       rax,3
001498  48 89 86 28 0b 00 00     mov       [rsi+0xb28],rax
00149f  49 8d 40 07              lea       rax,[r8+7]
0014a3  48 c1 e8 03              shr       rax,3
0014a7  48 89 86 30 0b 00 00     mov       [rsi+0xb30],rax
0014ae  4c 89 c0                 mov       rax,r8
0014b1  48 89 86 38 0b 00 00     mov       [rsi+0xb38],rax
0014b8  49 8d 40 07              lea       rax,[r8+7]
0014bc  48 c1 e8 03              shr       rax,3
0014c0  48 69 c0 80 00 00 00     imul      rax,0x80
0014c7  48 89 86 40 0b 00 00     mov       [rsi+0xb40],rax
0014ce  49 8d 40 07              lea       rax,[r8+7]
0014d2  48 c1 e8 03              shr       rax,3
0014d6  48 6b c0 2b              imul      rax,0x2b
0014da  48 89 86 48 0b 00 00     mov       [rsi+0xb48],rax
0014e1  4c 89 c0                 mov       rax,r8
0014e4  48 69 c0 80 01 00 00     imul      rax,0x180
0014eb  48 89 86 50 0b 00 00     mov       [rsi+0xb50],rax
0014f2  4c 89 c0                 mov       rax,r8
0014f5  48 6b c0 10              imul      rax,0x10
0014f9  48 89 86 58 0b 00 00     mov       [rsi+0xb58],rax
001500  4c 89 c0                 mov       rax,r8
001503  48 6b c0 10              imul      rax,0x10
001507  48 89 86 60 0b 00 00     mov       [rsi+0xb60],rax
00150e  4c 89 c0                 mov       rax,r8
001511  48 6b c0 10              imul      rax,0x10
001515  48 89 86 68 0b 00 00     mov       [rsi+0xb68],rax
00151c  49 8d 40 07              lea       rax,[r8+7]
001520  48 c1 e8 03              shr       rax,3
001524  48 6b c0 16              imul      rax,0x16
001528  48 89 86 70 0b 00 00     mov       [rsi+0xb70],rax
00152f  4c 89 c0                 mov       rax,r8
001532  48 89 86 78 0b 00 00     mov       [rsi+0xb78],rax
001539  4c 89 c0                 mov       rax,r8
00153c  48 89 86 80 0b 00 00     mov       [rsi+0xb80],rax
001543  49 8d 40 07              lea       rax,[r8+7]
001547  48 c1 e8 03              shr       rax,3
00154b  48 6b c0 4b              imul      rax,0x4b
00154f  48 89 86 88 0b 00 00     mov       [rsi+0xb88],rax
001556  49 8d 40 07              lea       rax,[r8+7]
00155a  48 c1 e8 03              shr       rax,3
00155e  48 6b c0 4b              imul      rax,0x4b
001562  48 89 86 90 0b 00 00     mov       [rsi+0xb90],rax
001569  4c 89 c0                 mov       rax,r8
00156c  48 89 86 98 0b 00 00     mov       [rsi+0xb98],rax
001573  49 8d 40 07              lea       rax,[r8+7]
001577  48 c1 e8 03              shr       rax,3
00157b  48 6b c0 16              imul      rax,0x16
00157f  48 89 86 a0 0b 00 00     mov       [rsi+0xba0],rax
001586  4c 89 c0                 mov       rax,r8
001589  48 89 86 a8 0b 00 00     mov       [rsi+0xba8],rax
001590  4c 89 c0                 mov       rax,r8
001593  48 89 86 b0 0b 00 00     mov       [rsi+0xbb0],rax
00159a  49 8d 40 07              lea       rax,[r8+7]
00159e  48 c1 e8 03              shr       rax,3
0015a2  48 89 86 b8 0b 00 00     mov       [rsi+0xbb8],rax
0015a9  49 8d 40 07              lea       rax,[r8+7]
0015ad  48 c1 e8 03              shr       rax,3
0015b1  48 89 86 c0 0b 00 00     mov       [rsi+0xbc0],rax
0015b8  4c 89 c0                 mov       rax,r8
0015bb  48 89 86 c8 0b 00 00     mov       [rsi+0xbc8],rax
0015c2  49 8d 40 07              lea       rax,[r8+7]
0015c6  48 c1 e8 03              shr       rax,3
0015ca  48 69 c0 80 00 00 00     imul      rax,0x80
0015d1  48 89 86 d0 0b 00 00     mov       [rsi+0xbd0],rax
0015d8  49 8d 40 07              lea       rax,[r8+7]
0015dc  48 c1 e8 03              shr       rax,3
0015e0  48 6b c0 2b              imul      rax,0x2b
0015e4  48 89 86 d8 0b 00 00     mov       [rsi+0xbd8],rax
0015eb  4c 89 c0                 mov       rax,r8
0015ee  48 69 c0 80 01 00 00     imul      rax,0x180
0015f5  48 89 86 e0 0b 00 00     mov       [rsi+0xbe0],rax
0015fc  4c 89 c0                 mov       rax,r8
0015ff  48 6b c0 10              imul      rax,0x10
001603  48 89 86 e8 0b 00 00     mov       [rsi+0xbe8],rax
00160a  4c 89 c0                 mov       rax,r8
00160d  48 6b c0 10              imul      rax,0x10
001611  48 89 86 f0 0b 00 00     mov       [rsi+0xbf0],rax
001618  4c 89 c0                 mov       rax,r8
00161b  48 6b c0 10              imul      rax,0x10
00161f  48 89 86 f8 0b 00 00     mov       [rsi+0xbf8],rax
001626  49 8d 40 07              lea       rax,[r8+7]
00162a  48 c1 e8 03              shr       rax,3
00162e  48 6b c0 16              imul      rax,0x16
001632  48 89 86 00 0c 00 00     mov       [rsi+0xc00],rax
001639  4c 89 c0                 mov       rax,r8
00163c  48 89 86 08 0c 00 00     mov       [rsi+0xc08],rax
001643  4c 89 c0                 mov       rax,r8
001646  48 89 86 10 0c 00 00     mov       [rsi+0xc10],rax
00164d  49 8d 40 07              lea       rax,[r8+7]
001651  48 c1 e8 03              shr       rax,3
001655  48 6b c0 4b              imul      rax,0x4b
001659  48 89 86 18 0c 00 00     mov       [rsi+0xc18],rax
001660  49 8d 40 07              lea       rax,[r8+7]
001664  48 c1 e8 03              shr       rax,3
001668  48 6b c0 4b              imul      rax,0x4b
00166c  48 89 86 20 0c 00 00     mov       [rsi+0xc20],rax
001673  4c 89 c0                 mov       rax,r8
001676  48 89 86 28 0c 00 00     mov       [rsi+0xc28],rax
00167d  49 8d 40 07              lea       rax,[r8+7]
001681  48 c1 e8 03              shr       rax,3
001685  48 6b c0 16              imul      rax,0x16
001689  48 89 86 30 0c 00 00     mov       [rsi+0xc30],rax
001690  4c 89 c0                 mov       rax,r8
001693  48 89 86 38 0c 00 00     mov       [rsi+0xc38],rax
00169a  4c 89 c0                 mov       rax,r8
00169d  48 89 86 40 0c 00 00     mov       [rsi+0xc40],rax
0016a4  49 8d 40 07              lea       rax,[r8+7]
0016a8  48 c1 e8 03              shr       rax,3
0016ac  48 89 86 48 0c 00 00     mov       [rsi+0xc48],rax
0016b3  49 8d 40 07              lea       rax,[r8+7]
0016b7  48 c1 e8 03              shr       rax,3
0016bb  48 89 86 50 0c 00 00     mov       [rsi+0xc50],rax
0016c2  4c 89 c0                 mov       rax,r8
0016c5  48 89 86 58 0c 00 00     mov       [rsi+0xc58],rax
0016cc  49 8d 40 07              lea       rax,[r8+7]
0016d0  48 c1 e8 03              shr       rax,3
0016d4  48 69 c0 80 00 00 00     imul      rax,0x80
0016db  48 89 86 60 0c 00 00     mov       [rsi+0xc60],rax
0016e2  49 8d 40 07              lea       rax,[r8+7]
0016e6  48 c1 e8 03              shr       rax,3
0016ea  48 6b c0 2b              imul      rax,0x2b
0016ee  48 89 86 68 0c 00 00     mov       [rsi+0xc68],rax
0016f5  4c 89 c0                 mov       rax,r8
0016f8  48 69 c0 80 01 00 00     imul      rax,0x180
0016ff  48 89 86 70 0c 00 00     mov       [rsi+0xc70],rax
001706  4c 89 c0                 mov       rax,r8
001709  48 6b c0 10              imul      rax,0x10
00170d  48 89 86 78 0c 00 00     mov       [rsi+0xc78],rax
001714  4c 89 c0                 mov       rax,r8
001717  48 6b c0 10              imul      rax,0x10
00171b  48 89 86 80 0c 00 00     mov       [rsi+0xc80],rax
001722  4c 89 c0                 mov       rax,r8
001725  48 6b c0 10              imul      rax,0x10
001729  48 89 86 88 0c 00 00     mov       [rsi+0xc88],rax
001730  49 8d 40 07              lea       rax,[r8+7]
001734  48 c1 e8 03              shr       rax,3
001738  48 6b c0 16              imul      rax,0x16
00173c  48 89 86 90 0c 00 00     mov       [rsi+0xc90],rax
001743  4c 89 c0                 mov       rax,r8
001746  48 89 86 98 0c 00 00     mov       [rsi+0xc98],rax
00174d  4c 89 c0                 mov       rax,r8
001750  48 89 86 a0 0c 00 00     mov       [rsi+0xca0],rax
001757  49 8d 40 07              lea       rax,[r8+7]
00175b  48 c1 e8 03              shr       rax,3
00175f  48 6b c0 4b              imul      rax,0x4b
001763  48 89 86 a8 0c 00 00     mov       [rsi+0xca8],rax
00176a  49 8d 40 07              lea       rax,[r8+7]
00176e  48 c1 e8 03              shr       rax,3
001772  48 6b c0 4b              imul      rax,0x4b
001776  48 89 86 b0 0c 00 00     mov       [rsi+0xcb0],rax
00177d  4c 89 c0                 mov       rax,r8
001780  48 89 86 b8 0c 00 00     mov       [rsi+0xcb8],rax
001787  49 8d 40 07              lea       rax,[r8+7]
00178b  48 c1 e8 03              shr       rax,3
00178f  48 6b c0 16              imul      rax,0x16
001793  48 89 86 c0 0c 00 00     mov       [rsi+0xcc0],rax
00179a  4c 89 c0                 mov       rax,r8
00179d  48 89 86 c8 0c 00 00     mov       [rsi+0xcc8],rax
0017a4  4c 89 c0                 mov       rax,r8
0017a7  48 89 86 d0 0c 00 00     mov       [rsi+0xcd0],rax
0017ae  49 8d 40 07              lea       rax,[r8+7]
0017b2  48 c1 e8 03              shr       rax,3
0017b6  48 6b c0 56              imul      rax,0x56
0017ba  48 89 86 d8 0c 00 00     mov       [rsi+0xcd8],rax
0017c1  49 8d 40 07              lea       rax,[r8+7]
0017c5  48 c1 e8 03              shr       rax,3
0017c9  48 6b c0 0b              imul      rax,0xb
0017cd  48 89 86 e0 0c 00 00     mov       [rsi+0xce0],rax
0017d4  49 8d 40 07              lea       rax,[r8+7]
0017d8  48 c1 e8 03              shr       rax,3
0017dc  48 6b c0 0b              imul      rax,0xb
0017e0  48 89 86 e8 0c 00 00     mov       [rsi+0xce8],rax
0017e7  4c 89 c0                 mov       rax,r8
0017ea  48 89 86 f0 0c 00 00     mov       [rsi+0xcf0],rax
0017f1  4c 89 c0                 mov       rax,r8
0017f4  48 89 86 f8 0c 00 00     mov       [rsi+0xcf8],rax
0017fb  4c 89 c0                 mov       rax,r8
0017fe  48 6b c0 02              imul      rax,2
001802  48 89 86 00 0d 00 00     mov       [rsi+0xd00],rax
001809  49 8d 40 07              lea       rax,[r8+7]
00180d  48 c1 e8 03              shr       rax,3
001811  48 6b c0 08              imul      rax,8
001815  48 89 86 08 0d 00 00     mov       [rsi+0xd08],rax
00181c  4c 89 c0                 mov       rax,r8
00181f  48 89 86 10 0d 00 00     mov       [rsi+0xd10],rax
001826  49 8d 40 07              lea       rax,[r8+7]
00182a  48 c1 e8 03              shr       rax,3
00182e  48 6b c0 16              imul      rax,0x16
001832  48 89 86 18 0d 00 00     mov       [rsi+0xd18],rax
001839  4c 89 c0                 mov       rax,r8
00183c  48 89 86 20 0d 00 00     mov       [rsi+0xd20],rax
001843  4c 89 c0                 mov       rax,r8
001846  48 89 86 28 0d 00 00     mov       [rsi+0xd28],rax
00184d  49 8d 40 07              lea       rax,[r8+7]
001851  48 c1 e8 03              shr       rax,3
001855  48 6b c0 4b              imul      rax,0x4b
001859  48 89 86 30 0d 00 00     mov       [rsi+0xd30],rax
001860  49 8d 40 07              lea       rax,[r8+7]
001864  48 c1 e8 03              shr       rax,3
001868  48 6b c0 4b              imul      rax,0x4b
00186c  48 89 86 38 0d 00 00     mov       [rsi+0xd38],rax
001873  4c 89 c0                 mov       rax,r8
001876  48 89 86 40 0d 00 00     mov       [rsi+0xd40],rax
00187d  49 8d 40 07              lea       rax,[r8+7]
001881  48 c1 e8 03              shr       rax,3
001885  48 6b c0 16              imul      rax,0x16
001889  48 89 86 48 0d 00 00     mov       [rsi+0xd48],rax
001890  4c 89 c0                 mov       rax,r8
001893  48 89 86 50 0d 00 00     mov       [rsi+0xd50],rax
00189a  31 c0                    xor       eax,eax
00189c  4d 85 db                 test      r11,r11
00189f  74 03                    je        short 0x00000000000018a4
0018a1  4c 89 c0                 mov       rax,r8
0018a4  48 89 86 58 0d 00 00     mov       [rsi+0xd58],rax
0018ab  31 c0                    xor       eax,eax
0018ad  4d 85 db                 test      r11,r11
0018b0  74 03                    je        short 0x00000000000018b5
0018b2  4c 89 c0                 mov       rax,r8
0018b5  48 89 86 60 0d 00 00     mov       [rsi+0xd60],rax
0018bc  31 c0                    xor       eax,eax
0018be  4d 85 db                 test      r11,r11
0018c1  74 0a                    je        short 0x00000000000018cd
0018c3  4c 89 c0                 mov       rax,r8
0018c6  48 69 c0 36 14 00 00     imul      rax,0x1436
0018cd  48 89 86 68 0d 00 00     mov       [rsi+0xd68],rax
0018d4  31 c0                    xor       eax,eax
0018d6  4d 85 db                 test      r11,r11
0018d9  74 03                    je        short 0x00000000000018de
0018db  4c 89 c0                 mov       rax,r8
0018de  48 89 86 70 0d 00 00     mov       [rsi+0xd70],rax
0018e5  c3                       ret
