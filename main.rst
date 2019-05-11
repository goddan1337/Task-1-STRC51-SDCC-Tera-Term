                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.3.3 Fri May 10 15:03:18 2019
                              4 
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _main
                             12 	.globl _do_the_stuff
                             13 	.globl _print_the_stuff
                             14 	.globl _dec_to_int
                             15 	.globl _oct_to_int
                             16 	.globl _hex_to_int
                             17 	.globl _power
                             18 	.globl _putchar
                             19 	.globl _getchar
                             20 	.globl _dec_to_int_PARM_2
                             21 	.globl _oct_to_int_PARM_2
                             22 	.globl _hex_to_int_PARM_2
                             23 	.globl _power_PARM_2
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                    0080     27 _P0	=	0x0080
                    0081     28 _SP	=	0x0081
                    0082     29 _DPL	=	0x0082
                    0083     30 _DPH	=	0x0083
                    0087     31 _PCON	=	0x0087
                    0088     32 _TCON	=	0x0088
                    0089     33 _TMOD	=	0x0089
                    008A     34 _TL0	=	0x008a
                    008B     35 _TL1	=	0x008b
                    008C     36 _TH0	=	0x008c
                    008D     37 _TH1	=	0x008d
                    0090     38 _P1	=	0x0090
                    0098     39 _SCON	=	0x0098
                    0099     40 _SBUF	=	0x0099
                    00A0     41 _P2	=	0x00a0
                    00A8     42 _IE	=	0x00a8
                    00B0     43 _P3	=	0x00b0
                    00B8     44 _IP	=	0x00b8
                    00D0     45 _PSW	=	0x00d0
                    00E0     46 _ACC	=	0x00e0
                    00F0     47 _B	=	0x00f0
                             48 ;--------------------------------------------------------
                             49 ; special function bits 
                             50 ;--------------------------------------------------------
                    0080     51 _P0_0	=	0x0080
                    0081     52 _P0_1	=	0x0081
                    0082     53 _P0_2	=	0x0082
                    0083     54 _P0_3	=	0x0083
                    0084     55 _P0_4	=	0x0084
                    0085     56 _P0_5	=	0x0085
                    0086     57 _P0_6	=	0x0086
                    0087     58 _P0_7	=	0x0087
                    0088     59 _IT0	=	0x0088
                    0089     60 _IE0	=	0x0089
                    008A     61 _IT1	=	0x008a
                    008B     62 _IE1	=	0x008b
                    008C     63 _TR0	=	0x008c
                    008D     64 _TF0	=	0x008d
                    008E     65 _TR1	=	0x008e
                    008F     66 _TF1	=	0x008f
                    0090     67 _P1_0	=	0x0090
                    0091     68 _P1_1	=	0x0091
                    0092     69 _P1_2	=	0x0092
                    0093     70 _P1_3	=	0x0093
                    0094     71 _P1_4	=	0x0094
                    0095     72 _P1_5	=	0x0095
                    0096     73 _P1_6	=	0x0096
                    0097     74 _P1_7	=	0x0097
                    0098     75 _RI	=	0x0098
                    0099     76 _TI	=	0x0099
                    009A     77 _RB8	=	0x009a
                    009B     78 _TB8	=	0x009b
                    009C     79 _REN	=	0x009c
                    009D     80 _SM2	=	0x009d
                    009E     81 _SM1	=	0x009e
                    009F     82 _SM0	=	0x009f
                    00A0     83 _P2_0	=	0x00a0
                    00A1     84 _P2_1	=	0x00a1
                    00A2     85 _P2_2	=	0x00a2
                    00A3     86 _P2_3	=	0x00a3
                    00A4     87 _P2_4	=	0x00a4
                    00A5     88 _P2_5	=	0x00a5
                    00A6     89 _P2_6	=	0x00a6
                    00A7     90 _P2_7	=	0x00a7
                    00A8     91 _EX0	=	0x00a8
                    00A9     92 _ET0	=	0x00a9
                    00AA     93 _EX1	=	0x00aa
                    00AB     94 _ET1	=	0x00ab
                    00AC     95 _ES	=	0x00ac
                    00AF     96 _EA	=	0x00af
                    00B0     97 _P3_0	=	0x00b0
                    00B1     98 _P3_1	=	0x00b1
                    00B2     99 _P3_2	=	0x00b2
                    00B3    100 _P3_3	=	0x00b3
                    00B4    101 _P3_4	=	0x00b4
                    00B5    102 _P3_5	=	0x00b5
                    00B6    103 _P3_6	=	0x00b6
                    00B7    104 _P3_7	=	0x00b7
                    00B0    105 _RXD	=	0x00b0
                    00B1    106 _TXD	=	0x00b1
                    00B2    107 _INT0	=	0x00b2
                    00B3    108 _INT1	=	0x00b3
                    00B4    109 _T0	=	0x00b4
                    00B5    110 _T1	=	0x00b5
                    00B6    111 _WR	=	0x00b6
                    00B7    112 _RD	=	0x00b7
                    00B8    113 _PX0	=	0x00b8
                    00B9    114 _PT0	=	0x00b9
                    00BA    115 _PX1	=	0x00ba
                    00BB    116 _PT1	=	0x00bb
                    00BC    117 _PS	=	0x00bc
                    00D0    118 _P	=	0x00d0
                    00D1    119 _F1	=	0x00d1
                    00D2    120 _OV	=	0x00d2
                    00D3    121 _RS0	=	0x00d3
                    00D4    122 _RS1	=	0x00d4
                    00D5    123 _F0	=	0x00d5
                    00D6    124 _AC	=	0x00d6
                    00D7    125 _CY	=	0x00d7
                            126 ;--------------------------------------------------------
                            127 ; overlayable register banks 
                            128 ;--------------------------------------------------------
                            129 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     130 	.ds 8
                            131 ;--------------------------------------------------------
                            132 ; internal ram data
                            133 ;--------------------------------------------------------
                            134 	.area DSEG    (DATA)
   0008                     135 _power_PARM_2::
   0008                     136 	.ds 2
   000A                     137 _hex_to_int_PARM_2::
   000A                     138 	.ds 2
   000C                     139 _hex_to_int_hex_1_1::
   000C                     140 	.ds 3
   000F                     141 _hex_to_int_result_1_1::
   000F                     142 	.ds 2
   0011                     143 _oct_to_int_PARM_2::
   0011                     144 	.ds 2
   0013                     145 _oct_to_int_oct_1_1::
   0013                     146 	.ds 3
   0016                     147 _oct_to_int_result_1_1::
   0016                     148 	.ds 2
   0018                     149 _dec_to_int_PARM_2::
   0018                     150 	.ds 2
   001A                     151 _dec_to_int_dec_1_1::
   001A                     152 	.ds 3
   001D                     153 _dec_to_int_result_1_1::
   001D                     154 	.ds 2
   001F                     155 _print_the_stuff_array_1_1::
   001F                     156 	.ds 4
   0023                     157 _do_the_stuff_num2_1_1::
   0023                     158 	.ds 2
   0025                     159 _do_the_stuff_number_1_1::
   0025                     160 	.ds 4
                            161 ;--------------------------------------------------------
                            162 ; overlayable items in internal ram 
                            163 ;--------------------------------------------------------
                            164 	.area	OSEG    (OVR,DATA)
                            165 	.area	OSEG    (OVR,DATA)
                            166 ;--------------------------------------------------------
                            167 ; Stack segment in internal ram 
                            168 ;--------------------------------------------------------
                            169 	.area	SSEG	(DATA)
   002B                     170 __start__stack:
   002B                     171 	.ds	1
                            172 
                            173 ;--------------------------------------------------------
                            174 ; indirectly addressable internal ram data
                            175 ;--------------------------------------------------------
                            176 	.area ISEG    (DATA)
                            177 ;--------------------------------------------------------
                            178 ; bit data
                            179 ;--------------------------------------------------------
                            180 	.area BSEG    (BIT)
                            181 ;--------------------------------------------------------
                            182 ; external ram data
                            183 ;--------------------------------------------------------
                            184 	.area XSEG    (XDATA)
                            185 ;--------------------------------------------------------
                            186 ; external initialized ram data
                            187 ;--------------------------------------------------------
                            188 	.area XISEG   (XDATA)
                            189 ;--------------------------------------------------------
                            190 ; interrupt vector 
                            191 ;--------------------------------------------------------
                            192 	.area CSEG    (CODE)
   4000                     193 __interrupt_vect:
   4000 02 47 DA            194 	ljmp	__sdcc_gsinit_startup
   4003 32                  195 	reti
   4004                     196 	.ds	7
   400B 32                  197 	reti
   400C                     198 	.ds	7
   4013 32                  199 	reti
   4014                     200 	.ds	7
   401B 32                  201 	reti
   401C                     202 	.ds	7
   4023 32                  203 	reti
   4024                     204 	.ds	7
   402B 32                  205 	reti
   402C                     206 	.ds	7
                            207 ;--------------------------------------------------------
                            208 ; global & static initialisations
                            209 ;--------------------------------------------------------
                            210 	.area GSINIT  (CODE)
                            211 	.area GSFINAL (CODE)
                            212 	.area GSINIT  (CODE)
   47DA                     213 __sdcc_gsinit_startup:
   47DA 75 81 2A            214 	mov	sp,#__start__stack - 1
   47DD 12 46 90            215 	lcall	__sdcc_external_startup
   47E0 E5 82               216 	mov	a,dpl
   47E2 60 03               217 	jz	__sdcc_init_data
   47E4 02 40 33            218 	ljmp	__sdcc_program_startup
   47E7                     219 __sdcc_init_data:
                            220 ;	_mcs51_genXINIT() start
   47E7 74 00               221 	mov	a,#l_XINIT
   47E9 44 00               222 	orl	a,#l_XINIT>>8
   47EB 60 29               223 	jz	00003$
   47ED 74 19               224 	mov	a,#s_XINIT
   47EF 24 00               225 	add	a,#l_XINIT
   47F1 F9                  226 	mov	r1,a
   47F2 74 48               227 	mov	a,#s_XINIT>>8
   47F4 34 00               228 	addc	a,#l_XINIT>>8
   47F6 FA                  229 	mov	r2,a
   47F7 90 48 19            230 	mov	dptr,#s_XINIT
   47FA 78 00               231 	mov	r0,#s_XISEG
   47FC 75 A0 00            232 	mov	p2,#(s_XISEG >> 8)
   47FF E4                  233 00001$:	clr	a
   4800 93                  234 	movc	a,@a+dptr
   4801 F2                  235 	movx	@r0,a
   4802 A3                  236 	inc	dptr
   4803 08                  237 	inc	r0
   4804 B8 00 02            238 	cjne	r0,#0,00002$
   4807 05 A0               239 	inc	p2
   4809 E5 82               240 00002$:	mov	a,dpl
   480B B5 01 F1            241 	cjne	a,ar1,00001$
   480E E5 83               242 	mov	a,dph
   4810 B5 02 EC            243 	cjne	a,ar2,00001$
   4813 75 A0 FF            244 	mov	p2,#0xFF
   4816                     245 00003$:
                            246 ;	_mcs51_genXINIT() end
                            247 	.area GSFINAL (CODE)
   4816 02 40 33            248 	ljmp	__sdcc_program_startup
                            249 ;--------------------------------------------------------
                            250 ; Home
                            251 ;--------------------------------------------------------
                            252 	.area HOME    (CODE)
                            253 	.area CSEG    (CODE)
                            254 ;--------------------------------------------------------
                            255 ; code
                            256 ;--------------------------------------------------------
                            257 	.area CSEG    (CODE)
   4033                     258 __sdcc_program_startup:
   4033 12 46 58            259 	lcall	_main
                            260 ;	return from main will lock up
   4036 80 FE               261 	sjmp .
                            262 ;------------------------------------------------------------
                            263 ;Allocation info for local variables in function 'getchar'
                            264 ;------------------------------------------------------------
                            265 ;------------------------------------------------------------
                            266 ;main.c:3: char getchar() {
                            267 ;	-----------------------------------------
                            268 ;	 function getchar
                            269 ;	-----------------------------------------
   4038                     270 _getchar:
                    0002    271 	ar2 = 0x02
                    0003    272 	ar3 = 0x03
                    0004    273 	ar4 = 0x04
                    0005    274 	ar5 = 0x05
                    0006    275 	ar6 = 0x06
                    0007    276 	ar7 = 0x07
                    0000    277 	ar0 = 0x00
                    0001    278 	ar1 = 0x01
                            279 ;main.c:5: while(RI == 0);
   4038                     280 00101$:
                            281 ;     genNot
   4038 A2 98               282 	mov	c,_RI
   403A B3                  283 	cpl	c
   403B E4                  284 	clr	a
   403C 33                  285 	rlc	a
                            286 ;     genIfx
                            287 ;       Peephole 105   removed redundant mov
   403D FA                  288 	mov  r2,a
                            289 ;     genIfxJump
                            290 ;       Peephole 109   removed ljmp by inverse jump logic
   403E 70 F8               291 	jnz  00101$
   4040                     292 00108$:
                            293 ;main.c:6: RI = 0;
                            294 ;     genAssign
   4040 C2 98               295 	clr	_RI
                            296 ;main.c:7: znak = SBUF;
                            297 ;     genAssign
   4042 85 99 82            298 	mov	dpl,_SBUF
                            299 ;main.c:9: return znak;
                            300 ;     genRet
   4045                     301 00104$:
   4045 22                  302 	ret
                            303 ;------------------------------------------------------------
                            304 ;Allocation info for local variables in function 'putchar'
                            305 ;------------------------------------------------------------
                            306 ;------------------------------------------------------------
                            307 ;main.c:12: void putchar(char znak) {
                            308 ;	-----------------------------------------
                            309 ;	 function putchar
                            310 ;	-----------------------------------------
   4046                     311 _putchar:
                            312 ;     genReceive
   4046 85 82 99            313 	mov	_SBUF,dpl
                            314 ;main.c:14: while(TI==0);
   4049                     315 00101$:
                            316 ;     genNot
   4049 A2 99               317 	mov	c,_TI
   404B B3                  318 	cpl	c
   404C E4                  319 	clr	a
   404D 33                  320 	rlc	a
                            321 ;     genIfx
                            322 ;       Peephole 105   removed redundant mov
   404E FA                  323 	mov  r2,a
                            324 ;     genIfxJump
                            325 ;       Peephole 109   removed ljmp by inverse jump logic
   404F 70 F8               326 	jnz  00101$
   4051                     327 00108$:
                            328 ;main.c:15: TI=0;
                            329 ;     genAssign
   4051 C2 99               330 	clr	_TI
   4053                     331 00104$:
   4053 22                  332 	ret
                            333 ;------------------------------------------------------------
                            334 ;Allocation info for local variables in function 'power'
                            335 ;------------------------------------------------------------
                            336 ;p                         Allocated to in memory with name '_power_PARM_2'
                            337 ;n                         Allocated to registers r2 r3 
                            338 ;i                         Allocated to registers 
                            339 ;------------------------------------------------------------
                            340 ;main.c:18: int power(int n, int p){
                            341 ;	-----------------------------------------
                            342 ;	 function power
                            343 ;	-----------------------------------------
   4054                     344 _power:
                            345 ;     genReceive
   4054 AA 82               346 	mov	r2,dpl
   4056 AB 83               347 	mov	r3,dph
                            348 ;main.c:21: if (p == 0) return 1;
                            349 ;     genCmpEq
   4058 E5 08               350 	mov	a,_power_PARM_2
   405A 70 04               351 	jnz	00112$
   405C E5 09               352 	mov	a,(_power_PARM_2 + 1)
                            353 ;       Peephole 162   removed sjmp by inverse jump logic
   405E 60 02               354 	jz   00113$
   4060                     355 00112$:
                            356 ;       Peephole 132   changed ljmp to sjmp
   4060 80 05               357 	sjmp 00111$
   4062                     358 00113$:
                            359 ;     genRet
                            360 ;       Peephole 182   used 16 bit load of dptr
   4062 90 00 01            361 	mov  dptr,#(((0x00)<<8) + 0x01)
                            362 ;main.c:23: for(i = 1; i < p; ++i)
                            363 ;       Peephole 132   changed ljmp to sjmp
   4065 80 43               364 	sjmp 00107$
   4067                     365 00111$:
                            366 ;     genAssign
   4067 7C 01               367 	mov	r4,#0x01
   4069 7D 00               368 	mov	r5,#0x00
   406B                     369 00103$:
                            370 ;     genCmpLt
                            371 ;     genCmp
   406B C3                  372 	clr	c
   406C EC                  373 	mov	a,r4
   406D 95 08               374 	subb	a,_power_PARM_2
   406F ED                  375 	mov	a,r5
   4070 64 80               376 	xrl	a,#0x80
   4072 85 09 F0            377 	mov	b,(_power_PARM_2 + 1)
   4075 63 F0 80            378 	xrl	b,#0x80
   4078 95 F0               379 	subb	a,b
                            380 ;     genIfxJump
                            381 ;       Peephole 108   removed ljmp by inverse jump logic
   407A 50 2A               382 	jnc  00106$
   407C                     383 00114$:
                            384 ;main.c:25: n *= n;
                            385 ;     genAssign
   407C 8A 29               386 	mov	__mulsint_PARM_2,r2
   407E 8B 2A               387 	mov	(__mulsint_PARM_2 + 1),r3
                            388 ;     genCall
   4080 8A 82               389 	mov	dpl,r2
   4082 8B 83               390 	mov	dph,r3
   4084 C0 02               391 	push	ar2
   4086 C0 03               392 	push	ar3
   4088 C0 04               393 	push	ar4
   408A C0 05               394 	push	ar5
   408C 12 46 73            395 	lcall	__mulsint
   408F E5 82               396 	mov	a,dpl
   4091 85 83 F0            397 	mov	b,dph
   4094 D0 05               398 	pop	ar5
   4096 D0 04               399 	pop	ar4
   4098 D0 03               400 	pop	ar3
   409A D0 02               401 	pop	ar2
                            402 ;     genAssign
   409C FA                  403 	mov	r2,a
   409D AB F0               404 	mov	r3,b
                            405 ;main.c:23: for(i = 1; i < p; ++i)
                            406 ;     genPlus
                            407 ;     genPlusIncr
                            408 ;	tail increment optimized
   409F 0C                  409 	inc	r4
   40A0 BC 00 C8            410 	cjne	r4,#0x00,00103$
   40A3 0D                  411 	inc	r5
                            412 ;       Peephole 132   changed ljmp to sjmp
   40A4 80 C5               413 	sjmp 00103$
   40A6                     414 00106$:
                            415 ;main.c:27: return n;
                            416 ;     genRet
   40A6 8A 82               417 	mov	dpl,r2
   40A8 8B 83               418 	mov	dph,r3
   40AA                     419 00107$:
   40AA 22                  420 	ret
                            421 ;------------------------------------------------------------
                            422 ;Allocation info for local variables in function 'hex_to_int'
                            423 ;------------------------------------------------------------
                            424 ;size                      Allocated to in memory with name '_hex_to_int_PARM_2'
                            425 ;hex                       Allocated to in memory with name '_hex_to_int_hex_1_1'
                            426 ;result                    Allocated to in memory with name '_hex_to_int_result_1_1'
                            427 ;i                         Allocated to registers 
                            428 ;------------------------------------------------------------
                            429 ;main.c:30: int hex_to_int(char hex[], int size){
                            430 ;	-----------------------------------------
                            431 ;	 function hex_to_int
                            432 ;	-----------------------------------------
   40AB                     433 _hex_to_int:
                            434 ;     genReceive
   40AB 85 82 0C            435 	mov	_hex_to_int_hex_1_1,dpl
   40AE 85 83 0D            436 	mov	(_hex_to_int_hex_1_1 + 1),dph
   40B1 85 F0 0E            437 	mov	(_hex_to_int_hex_1_1 + 2),b
                            438 ;main.c:31: int result = 0;
                            439 ;     genAssign
   40B4 E4                  440 	clr	a
   40B5 F5 10               441 	mov	(_hex_to_int_result_1_1 + 1),a
   40B7 F5 0F               442 	mov	_hex_to_int_result_1_1,a
                            443 ;main.c:34: for(i = 0; i < size; ++i){
                            444 ;     genAssign
   40B9 7F 00               445 	mov	r7,#0x00
   40BB 78 00               446 	mov	r0,#0x00
   40BD                     447 00109$:
                            448 ;     genCmpLt
                            449 ;     genCmp
   40BD C3                  450 	clr	c
   40BE EF                  451 	mov	a,r7
   40BF 95 0A               452 	subb	a,_hex_to_int_PARM_2
   40C1 E8                  453 	mov	a,r0
   40C2 64 80               454 	xrl	a,#0x80
   40C4 85 0B F0            455 	mov	b,(_hex_to_int_PARM_2 + 1)
   40C7 63 F0 80            456 	xrl	b,#0x80
   40CA 95 F0               457 	subb	a,b
                            458 ;     genIfxJump
   40CC 40 03               459 	jc	00121$
   40CE 02 41 A4            460 	ljmp	00112$
   40D1                     461 00121$:
                            462 ;main.c:35: if (hex[i] >= 'A' && hex[i] <= 'F'){
                            463 ;     genPlus
                            464 ;       Peephole 236g
   40D1 EF                  465 	mov  a,r7
   40D2 25 0C               466 	add	a,_hex_to_int_hex_1_1
   40D4 F9                  467 	mov	r1,a
                            468 ;       Peephole 236g
   40D5 E8                  469 	mov  a,r0
   40D6 35 0D               470 	addc	a,(_hex_to_int_hex_1_1 + 1)
   40D8 FD                  471 	mov	r5,a
   40D9 AE 0E               472 	mov	r6,(_hex_to_int_hex_1_1 + 2)
                            473 ;     genPointerGet
                            474 ;     genGenPointerGet
   40DB 89 82               475 	mov	dpl,r1
   40DD 8D 83               476 	mov	dph,r5
   40DF 8E F0               477 	mov	b,r6
   40E1 12 47 3F            478 	lcall	__gptrget
                            479 ;     genCmpLt
                            480 ;     genCmp
                            481 ;       Peephole 106   removed redundant mov 
   40E4 FA                  482 	mov  r2,a
   40E5 C3                  483 	clr  c
   40E6 64 80               484 	xrl	a,#0x80
   40E8 94 C1               485 	subb	a,#0xc1
                            486 ;     genIfxJump
                            487 ;       Peephole 132   changed ljmp to sjmp
                            488 ;       Peephole 160   removed sjmp by inverse jump logic
   40EA 40 1B               489 	jc   00106$
   40EC                     490 00122$:
                            491 ;     genCmpGt
                            492 ;     genCmp
   40EC C3                  493 	clr	c
                            494 ;       Peephole 159   avoided xrl during execution
   40ED 74 C6               495 	mov  a,#(0x46 ^ 0x80)
   40EF 8A F0               496 	mov	b,r2
   40F1 63 F0 80            497 	xrl	b,#0x80
   40F4 95 F0               498 	subb	a,b
                            499 ;     genIfxJump
                            500 ;       Peephole 132   changed ljmp to sjmp
                            501 ;       Peephole 160   removed sjmp by inverse jump logic
   40F6 40 0F               502 	jc   00106$
   40F8                     503 00123$:
                            504 ;main.c:36: hex[i] -= 'A' + 10;
                            505 ;     genMinus
   40F8 EA                  506 	mov	a,r2
   40F9 24 B5               507 	add	a,#0xb5
                            508 ;     genPointerSet
                            509 ;     genGenPointerSet
                            510 ;       Peephole 191   removed redundant mov
   40FB FA                  511 	mov  r2,a
   40FC 89 82               512 	mov  dpl,r1
   40FE 8D 83               513 	mov  dph,r5
   4100 8E F0               514 	mov  b,r6
   4102 12 46 94            515 	lcall	__gptrput
                            516 ;       Peephole 132   changed ljmp to sjmp
   4105 80 32               517 	sjmp 00107$
   4107                     518 00106$:
                            519 ;main.c:38: else if (hex[i] >= '0' && hex[i] <= '9'){
                            520 ;     genPointerGet
                            521 ;     genGenPointerGet
   4107 89 82               522 	mov	dpl,r1
   4109 8D 83               523 	mov	dph,r5
   410B 8E F0               524 	mov	b,r6
   410D 12 47 3F            525 	lcall	__gptrget
                            526 ;     genCmpLt
                            527 ;     genCmp
                            528 ;       Peephole 106   removed redundant mov 
   4110 FA                  529 	mov  r2,a
   4111 C3                  530 	clr  c
   4112 64 80               531 	xrl	a,#0x80
   4114 94 B0               532 	subb	a,#0xb0
                            533 ;     genIfxJump
                            534 ;       Peephole 132   changed ljmp to sjmp
                            535 ;       Peephole 160   removed sjmp by inverse jump logic
   4116 40 1B               536 	jc   00102$
   4118                     537 00124$:
                            538 ;     genCmpGt
                            539 ;     genCmp
   4118 C3                  540 	clr	c
                            541 ;       Peephole 159   avoided xrl during execution
   4119 74 B9               542 	mov  a,#(0x39 ^ 0x80)
   411B 8A F0               543 	mov	b,r2
   411D 63 F0 80            544 	xrl	b,#0x80
   4120 95 F0               545 	subb	a,b
                            546 ;     genIfxJump
                            547 ;       Peephole 132   changed ljmp to sjmp
                            548 ;       Peephole 160   removed sjmp by inverse jump logic
   4122 40 0F               549 	jc   00102$
   4124                     550 00125$:
                            551 ;main.c:39: hex[i] -= '0';
                            552 ;     genMinus
   4124 EA                  553 	mov	a,r2
   4125 24 D0               554 	add	a,#0xd0
                            555 ;     genPointerSet
                            556 ;     genGenPointerSet
                            557 ;       Peephole 191   removed redundant mov
   4127 FA                  558 	mov  r2,a
   4128 89 82               559 	mov  dpl,r1
   412A 8D 83               560 	mov  dph,r5
   412C 8E F0               561 	mov  b,r6
   412E 12 46 94            562 	lcall	__gptrput
                            563 ;       Peephole 132   changed ljmp to sjmp
   4131 80 06               564 	sjmp 00107$
   4133                     565 00102$:
                            566 ;main.c:43: return -1;
                            567 ;     genRet
                            568 ;       Peephole 182   used 16 bit load of dptr
   4133 90 FF FF            569 	mov  dptr,#(((0xFF)<<8) + 0xFF)
   4136 02 41 AA            570 	ljmp	00113$
   4139                     571 00107$:
                            572 ;main.c:45: result += (hex[i] * power(16, size - i - 1));
                            573 ;     genPlus
                            574 ;       Peephole 236g
   4139 EF                  575 	mov  a,r7
   413A 25 0C               576 	add	a,_hex_to_int_hex_1_1
   413C FA                  577 	mov	r2,a
                            578 ;       Peephole 236g
   413D E8                  579 	mov  a,r0
   413E 35 0D               580 	addc	a,(_hex_to_int_hex_1_1 + 1)
   4140 FB                  581 	mov	r3,a
   4141 AC 0E               582 	mov	r4,(_hex_to_int_hex_1_1 + 2)
                            583 ;     genPointerGet
                            584 ;     genGenPointerGet
   4143 8A 82               585 	mov	dpl,r2
   4145 8B 83               586 	mov	dph,r3
   4147 8C F0               587 	mov	b,r4
   4149 12 47 3F            588 	lcall	__gptrget
   414C FA                  589 	mov	r2,a
                            590 ;     genMinus
   414D E5 0A               591 	mov	a,_hex_to_int_PARM_2
   414F C3                  592 	clr	c
                            593 ;       Peephole 236l
   4150 9F                  594 	subb  a,r7
   4151 FB                  595 	mov	r3,a
   4152 E5 0B               596 	mov	a,(_hex_to_int_PARM_2 + 1)
                            597 ;       Peephole 236l
   4154 98                  598 	subb  a,r0
   4155 FC                  599 	mov	r4,a
                            600 ;     genMinus
                            601 ;     genMinusDec
   4156 EB                  602 	mov	a,r3
   4157 24 FF               603 	add	a,#0xff
   4159 F5 08               604 	mov	_power_PARM_2,a
   415B EC                  605 	mov	a,r4
   415C 34 FF               606 	addc	a,#0xff
   415E F5 09               607 	mov	(_power_PARM_2 + 1),a
                            608 ;     genCall
                            609 ;       Peephole 182   used 16 bit load of dptr
   4160 90 00 10            610 	mov  dptr,#(((0x00)<<8) + 0x10)
   4163 C0 02               611 	push	ar2
   4165 C0 07               612 	push	ar7
   4167 C0 00               613 	push	ar0
   4169 12 40 54            614 	lcall	_power
   416C AB 82               615 	mov	r3,dpl
   416E AC 83               616 	mov	r4,dph
   4170 D0 00               617 	pop	ar0
   4172 D0 07               618 	pop	ar7
   4174 D0 02               619 	pop	ar2
                            620 ;     genCast
   4176 EA                  621 	mov	a,r2
   4177 33                  622 	rlc	a
   4178 95 E0               623 	subb	a,acc
   417A FD                  624 	mov	r5,a
                            625 ;     genAssign
   417B 8B 29               626 	mov	__mulsint_PARM_2,r3
   417D 8C 2A               627 	mov	(__mulsint_PARM_2 + 1),r4
                            628 ;     genCall
   417F 8A 82               629 	mov	dpl,r2
   4181 8D 83               630 	mov	dph,r5
   4183 C0 07               631 	push	ar7
   4185 C0 00               632 	push	ar0
   4187 12 46 73            633 	lcall	__mulsint
   418A AA 82               634 	mov	r2,dpl
   418C AB 83               635 	mov	r3,dph
   418E D0 00               636 	pop	ar0
   4190 D0 07               637 	pop	ar7
                            638 ;     genPlus
                            639 ;       Peephole 236g
   4192 EA                  640 	mov  a,r2
   4193 25 0F               641 	add	a,_hex_to_int_result_1_1
   4195 F5 0F               642 	mov	_hex_to_int_result_1_1,a
                            643 ;       Peephole 236g
   4197 EB                  644 	mov  a,r3
   4198 35 10               645 	addc	a,(_hex_to_int_result_1_1 + 1)
   419A F5 10               646 	mov	(_hex_to_int_result_1_1 + 1),a
                            647 ;main.c:34: for(i = 0; i < size; ++i){
                            648 ;     genPlus
                            649 ;     genPlusIncr
   419C 0F                  650 	inc	r7
   419D BF 00 01            651 	cjne	r7,#0x00,00126$
   41A0 08                  652 	inc	r0
   41A1                     653 00126$:
   41A1 02 40 BD            654 	ljmp	00109$
   41A4                     655 00112$:
                            656 ;main.c:47: return result;
                            657 ;     genRet
   41A4 85 0F 82            658 	mov	dpl,_hex_to_int_result_1_1
   41A7 85 10 83            659 	mov	dph,(_hex_to_int_result_1_1 + 1)
   41AA                     660 00113$:
   41AA 22                  661 	ret
                            662 ;------------------------------------------------------------
                            663 ;Allocation info for local variables in function 'oct_to_int'
                            664 ;------------------------------------------------------------
                            665 ;size                      Allocated to in memory with name '_oct_to_int_PARM_2'
                            666 ;oct                       Allocated to in memory with name '_oct_to_int_oct_1_1'
                            667 ;result                    Allocated to in memory with name '_oct_to_int_result_1_1'
                            668 ;i                         Allocated to registers 
                            669 ;------------------------------------------------------------
                            670 ;main.c:50: int oct_to_int(char oct[], int size){
                            671 ;	-----------------------------------------
                            672 ;	 function oct_to_int
                            673 ;	-----------------------------------------
   41AB                     674 _oct_to_int:
                            675 ;     genReceive
   41AB 85 82 13            676 	mov	_oct_to_int_oct_1_1,dpl
   41AE 85 83 14            677 	mov	(_oct_to_int_oct_1_1 + 1),dph
   41B1 85 F0 15            678 	mov	(_oct_to_int_oct_1_1 + 2),b
                            679 ;main.c:51: int result = 0;
                            680 ;     genAssign
   41B4 E4                  681 	clr	a
   41B5 F5 17               682 	mov	(_oct_to_int_result_1_1 + 1),a
   41B7 F5 16               683 	mov	_oct_to_int_result_1_1,a
                            684 ;main.c:54: for(i = 0; i < size; ++i){
                            685 ;     genAssign
   41B9 7F 00               686 	mov	r7,#0x00
   41BB 78 00               687 	mov	r0,#0x00
   41BD                     688 00105$:
                            689 ;     genCmpLt
                            690 ;     genCmp
   41BD C3                  691 	clr	c
   41BE EF                  692 	mov	a,r7
   41BF 95 11               693 	subb	a,_oct_to_int_PARM_2
   41C1 E8                  694 	mov	a,r0
   41C2 64 80               695 	xrl	a,#0x80
   41C4 85 12 F0            696 	mov	b,(_oct_to_int_PARM_2 + 1)
   41C7 63 F0 80            697 	xrl	b,#0x80
   41CA 95 F0               698 	subb	a,b
                            699 ;     genIfxJump
   41CC 40 03               700 	jc	00115$
   41CE 02 42 76            701 	ljmp	00108$
   41D1                     702 00115$:
                            703 ;main.c:55: if (oct[i] >= '0' && oct[i] <= '7'){
                            704 ;     genPlus
                            705 ;       Peephole 236g
   41D1 EF                  706 	mov  a,r7
   41D2 25 13               707 	add	a,_oct_to_int_oct_1_1
   41D4 F9                  708 	mov	r1,a
                            709 ;       Peephole 236g
   41D5 E8                  710 	mov  a,r0
   41D6 35 14               711 	addc	a,(_oct_to_int_oct_1_1 + 1)
   41D8 FD                  712 	mov	r5,a
   41D9 AE 15               713 	mov	r6,(_oct_to_int_oct_1_1 + 2)
                            714 ;     genPointerGet
                            715 ;     genGenPointerGet
   41DB 89 82               716 	mov	dpl,r1
   41DD 8D 83               717 	mov	dph,r5
   41DF 8E F0               718 	mov	b,r6
   41E1 12 47 3F            719 	lcall	__gptrget
                            720 ;     genCmpLt
                            721 ;     genCmp
                            722 ;       Peephole 106   removed redundant mov 
   41E4 FA                  723 	mov  r2,a
   41E5 C3                  724 	clr  c
   41E6 64 80               725 	xrl	a,#0x80
   41E8 94 B0               726 	subb	a,#0xb0
                            727 ;     genIfxJump
                            728 ;       Peephole 132   changed ljmp to sjmp
                            729 ;       Peephole 160   removed sjmp by inverse jump logic
   41EA 40 23               730 	jc   00102$
   41EC                     731 00116$:
                            732 ;     genCmpGt
                            733 ;     genCmp
   41EC C3                  734 	clr	c
                            735 ;       Peephole 159   avoided xrl during execution
   41ED 74 B7               736 	mov  a,#(0x37 ^ 0x80)
   41EF 8A F0               737 	mov	b,r2
   41F1 63 F0 80            738 	xrl	b,#0x80
   41F4 95 F0               739 	subb	a,b
                            740 ;     genIfxJump
                            741 ;       Peephole 132   changed ljmp to sjmp
                            742 ;       Peephole 160   removed sjmp by inverse jump logic
   41F6 40 17               743 	jc   00102$
   41F8                     744 00117$:
                            745 ;main.c:56: oct[i] -= '0';
                            746 ;     genPointerGet
                            747 ;     genGenPointerGet
   41F8 89 82               748 	mov	dpl,r1
   41FA 8D 83               749 	mov	dph,r5
   41FC 8E F0               750 	mov	b,r6
   41FE 12 47 3F            751 	lcall	__gptrget
                            752 ;     genMinus
                            753 ;       Peephole 105   removed redundant mov
                            754 ;     genPointerSet
                            755 ;     genGenPointerSet
                            756 ;       Peephole 191   removed redundant mov
                            757 ;       Peephole 215 removed some movs
   4201 24 D0               758 	add  a,#0xd0
   4203 FA                  759 	mov  r2,a
   4204 89 82               760 	mov  dpl,r1
   4206 8D 83               761 	mov  dph,r5
   4208 8E F0               762 	mov  b,r6
   420A 12 46 94            763 	lcall	__gptrput
                            764 ;       Peephole 132   changed ljmp to sjmp
   420D 80 06               765 	sjmp 00103$
   420F                     766 00102$:
                            767 ;main.c:60: return -1;
                            768 ;     genRet
                            769 ;       Peephole 182   used 16 bit load of dptr
   420F 90 FF FF            770 	mov  dptr,#(((0xFF)<<8) + 0xFF)
   4212 02 42 7C            771 	ljmp	00109$
   4215                     772 00103$:
                            773 ;main.c:62: result += (oct[i] * power(8, size - i - 1));
                            774 ;     genPointerGet
                            775 ;     genGenPointerGet
   4215 89 82               776 	mov	dpl,r1
   4217 8D 83               777 	mov	dph,r5
   4219 8E F0               778 	mov	b,r6
   421B 12 47 3F            779 	lcall	__gptrget
   421E F9                  780 	mov	r1,a
                            781 ;     genMinus
   421F E5 11               782 	mov	a,_oct_to_int_PARM_2
   4221 C3                  783 	clr	c
                            784 ;       Peephole 236l
   4222 9F                  785 	subb  a,r7
   4223 FA                  786 	mov	r2,a
   4224 E5 12               787 	mov	a,(_oct_to_int_PARM_2 + 1)
                            788 ;       Peephole 236l
   4226 98                  789 	subb  a,r0
   4227 FB                  790 	mov	r3,a
                            791 ;     genMinus
                            792 ;     genMinusDec
   4228 EA                  793 	mov	a,r2
   4229 24 FF               794 	add	a,#0xff
   422B F5 08               795 	mov	_power_PARM_2,a
   422D EB                  796 	mov	a,r3
   422E 34 FF               797 	addc	a,#0xff
   4230 F5 09               798 	mov	(_power_PARM_2 + 1),a
                            799 ;     genCall
                            800 ;       Peephole 182   used 16 bit load of dptr
   4232 90 00 08            801 	mov  dptr,#(((0x00)<<8) + 0x08)
   4235 C0 07               802 	push	ar7
   4237 C0 00               803 	push	ar0
   4239 C0 01               804 	push	ar1
   423B 12 40 54            805 	lcall	_power
   423E AA 82               806 	mov	r2,dpl
   4240 AB 83               807 	mov	r3,dph
   4242 D0 01               808 	pop	ar1
   4244 D0 00               809 	pop	ar0
   4246 D0 07               810 	pop	ar7
                            811 ;     genCast
   4248 E9                  812 	mov	a,r1
   4249 33                  813 	rlc	a
   424A 95 E0               814 	subb	a,acc
   424C FC                  815 	mov	r4,a
                            816 ;     genAssign
   424D 8A 29               817 	mov	__mulsint_PARM_2,r2
   424F 8B 2A               818 	mov	(__mulsint_PARM_2 + 1),r3
                            819 ;     genCall
   4251 89 82               820 	mov	dpl,r1
   4253 8C 83               821 	mov	dph,r4
   4255 C0 07               822 	push	ar7
   4257 C0 00               823 	push	ar0
   4259 12 46 73            824 	lcall	__mulsint
   425C AA 82               825 	mov	r2,dpl
   425E AB 83               826 	mov	r3,dph
   4260 D0 00               827 	pop	ar0
   4262 D0 07               828 	pop	ar7
                            829 ;     genPlus
                            830 ;       Peephole 236g
   4264 EA                  831 	mov  a,r2
   4265 25 16               832 	add	a,_oct_to_int_result_1_1
   4267 F5 16               833 	mov	_oct_to_int_result_1_1,a
                            834 ;       Peephole 236g
   4269 EB                  835 	mov  a,r3
   426A 35 17               836 	addc	a,(_oct_to_int_result_1_1 + 1)
   426C F5 17               837 	mov	(_oct_to_int_result_1_1 + 1),a
                            838 ;main.c:54: for(i = 0; i < size; ++i){
                            839 ;     genPlus
                            840 ;     genPlusIncr
   426E 0F                  841 	inc	r7
   426F BF 00 01            842 	cjne	r7,#0x00,00118$
   4272 08                  843 	inc	r0
   4273                     844 00118$:
   4273 02 41 BD            845 	ljmp	00105$
   4276                     846 00108$:
                            847 ;main.c:64: return result;
                            848 ;     genRet
   4276 85 16 82            849 	mov	dpl,_oct_to_int_result_1_1
   4279 85 17 83            850 	mov	dph,(_oct_to_int_result_1_1 + 1)
   427C                     851 00109$:
   427C 22                  852 	ret
                            853 ;------------------------------------------------------------
                            854 ;Allocation info for local variables in function 'dec_to_int'
                            855 ;------------------------------------------------------------
                            856 ;size                      Allocated to in memory with name '_dec_to_int_PARM_2'
                            857 ;dec                       Allocated to in memory with name '_dec_to_int_dec_1_1'
                            858 ;result                    Allocated to in memory with name '_dec_to_int_result_1_1'
                            859 ;i                         Allocated to registers 
                            860 ;------------------------------------------------------------
                            861 ;main.c:67: int dec_to_int(char dec[], int size){
                            862 ;	-----------------------------------------
                            863 ;	 function dec_to_int
                            864 ;	-----------------------------------------
   427D                     865 _dec_to_int:
                            866 ;     genReceive
   427D 85 82 1A            867 	mov	_dec_to_int_dec_1_1,dpl
   4280 85 83 1B            868 	mov	(_dec_to_int_dec_1_1 + 1),dph
   4283 85 F0 1C            869 	mov	(_dec_to_int_dec_1_1 + 2),b
                            870 ;main.c:68: int result = 0;
                            871 ;     genAssign
   4286 E4                  872 	clr	a
   4287 F5 1E               873 	mov	(_dec_to_int_result_1_1 + 1),a
   4289 F5 1D               874 	mov	_dec_to_int_result_1_1,a
                            875 ;main.c:71: for(i = 0; i < size; ++i){
                            876 ;     genAssign
   428B 7F 00               877 	mov	r7,#0x00
   428D 78 00               878 	mov	r0,#0x00
   428F                     879 00105$:
                            880 ;     genCmpLt
                            881 ;     genCmp
   428F C3                  882 	clr	c
   4290 EF                  883 	mov	a,r7
   4291 95 18               884 	subb	a,_dec_to_int_PARM_2
   4293 E8                  885 	mov	a,r0
   4294 64 80               886 	xrl	a,#0x80
   4296 85 19 F0            887 	mov	b,(_dec_to_int_PARM_2 + 1)
   4299 63 F0 80            888 	xrl	b,#0x80
   429C 95 F0               889 	subb	a,b
                            890 ;     genIfxJump
   429E 40 03               891 	jc	00115$
   42A0 02 43 48            892 	ljmp	00108$
   42A3                     893 00115$:
                            894 ;main.c:72: if (dec[i] >= '0' && dec[i] <= '9'){
                            895 ;     genPlus
                            896 ;       Peephole 236g
   42A3 EF                  897 	mov  a,r7
   42A4 25 1A               898 	add	a,_dec_to_int_dec_1_1
   42A6 F9                  899 	mov	r1,a
                            900 ;       Peephole 236g
   42A7 E8                  901 	mov  a,r0
   42A8 35 1B               902 	addc	a,(_dec_to_int_dec_1_1 + 1)
   42AA FD                  903 	mov	r5,a
   42AB AE 1C               904 	mov	r6,(_dec_to_int_dec_1_1 + 2)
                            905 ;     genPointerGet
                            906 ;     genGenPointerGet
   42AD 89 82               907 	mov	dpl,r1
   42AF 8D 83               908 	mov	dph,r5
   42B1 8E F0               909 	mov	b,r6
   42B3 12 47 3F            910 	lcall	__gptrget
                            911 ;     genCmpLt
                            912 ;     genCmp
                            913 ;       Peephole 106   removed redundant mov 
   42B6 FA                  914 	mov  r2,a
   42B7 C3                  915 	clr  c
   42B8 64 80               916 	xrl	a,#0x80
   42BA 94 B0               917 	subb	a,#0xb0
                            918 ;     genIfxJump
                            919 ;       Peephole 132   changed ljmp to sjmp
                            920 ;       Peephole 160   removed sjmp by inverse jump logic
   42BC 40 23               921 	jc   00102$
   42BE                     922 00116$:
                            923 ;     genCmpGt
                            924 ;     genCmp
   42BE C3                  925 	clr	c
                            926 ;       Peephole 159   avoided xrl during execution
   42BF 74 B9               927 	mov  a,#(0x39 ^ 0x80)
   42C1 8A F0               928 	mov	b,r2
   42C3 63 F0 80            929 	xrl	b,#0x80
   42C6 95 F0               930 	subb	a,b
                            931 ;     genIfxJump
                            932 ;       Peephole 132   changed ljmp to sjmp
                            933 ;       Peephole 160   removed sjmp by inverse jump logic
   42C8 40 17               934 	jc   00102$
   42CA                     935 00117$:
                            936 ;main.c:73: dec[i] -= '0';
                            937 ;     genPointerGet
                            938 ;     genGenPointerGet
   42CA 89 82               939 	mov	dpl,r1
   42CC 8D 83               940 	mov	dph,r5
   42CE 8E F0               941 	mov	b,r6
   42D0 12 47 3F            942 	lcall	__gptrget
                            943 ;     genMinus
                            944 ;       Peephole 105   removed redundant mov
                            945 ;     genPointerSet
                            946 ;     genGenPointerSet
                            947 ;       Peephole 191   removed redundant mov
                            948 ;       Peephole 215 removed some movs
   42D3 24 D0               949 	add  a,#0xd0
   42D5 FA                  950 	mov  r2,a
   42D6 89 82               951 	mov  dpl,r1
   42D8 8D 83               952 	mov  dph,r5
   42DA 8E F0               953 	mov  b,r6
   42DC 12 46 94            954 	lcall	__gptrput
                            955 ;       Peephole 132   changed ljmp to sjmp
   42DF 80 06               956 	sjmp 00103$
   42E1                     957 00102$:
                            958 ;main.c:77: return -1;
                            959 ;     genRet
                            960 ;       Peephole 182   used 16 bit load of dptr
   42E1 90 FF FF            961 	mov  dptr,#(((0xFF)<<8) + 0xFF)
   42E4 02 43 4E            962 	ljmp	00109$
   42E7                     963 00103$:
                            964 ;main.c:79: result += (dec[i] * power(10, size - i - 1));
                            965 ;     genPointerGet
                            966 ;     genGenPointerGet
   42E7 89 82               967 	mov	dpl,r1
   42E9 8D 83               968 	mov	dph,r5
   42EB 8E F0               969 	mov	b,r6
   42ED 12 47 3F            970 	lcall	__gptrget
   42F0 F9                  971 	mov	r1,a
                            972 ;     genMinus
   42F1 E5 18               973 	mov	a,_dec_to_int_PARM_2
   42F3 C3                  974 	clr	c
                            975 ;       Peephole 236l
   42F4 9F                  976 	subb  a,r7
   42F5 FA                  977 	mov	r2,a
   42F6 E5 19               978 	mov	a,(_dec_to_int_PARM_2 + 1)
                            979 ;       Peephole 236l
   42F8 98                  980 	subb  a,r0
   42F9 FB                  981 	mov	r3,a
                            982 ;     genMinus
                            983 ;     genMinusDec
   42FA EA                  984 	mov	a,r2
   42FB 24 FF               985 	add	a,#0xff
   42FD F5 08               986 	mov	_power_PARM_2,a
   42FF EB                  987 	mov	a,r3
   4300 34 FF               988 	addc	a,#0xff
   4302 F5 09               989 	mov	(_power_PARM_2 + 1),a
                            990 ;     genCall
                            991 ;       Peephole 182   used 16 bit load of dptr
   4304 90 00 0A            992 	mov  dptr,#(((0x00)<<8) + 0x0A)
   4307 C0 07               993 	push	ar7
   4309 C0 00               994 	push	ar0
   430B C0 01               995 	push	ar1
   430D 12 40 54            996 	lcall	_power
   4310 AA 82               997 	mov	r2,dpl
   4312 AB 83               998 	mov	r3,dph
   4314 D0 01               999 	pop	ar1
   4316 D0 00              1000 	pop	ar0
   4318 D0 07              1001 	pop	ar7
                           1002 ;     genCast
   431A E9                 1003 	mov	a,r1
   431B 33                 1004 	rlc	a
   431C 95 E0              1005 	subb	a,acc
   431E FC                 1006 	mov	r4,a
                           1007 ;     genAssign
   431F 8A 29              1008 	mov	__mulsint_PARM_2,r2
   4321 8B 2A              1009 	mov	(__mulsint_PARM_2 + 1),r3
                           1010 ;     genCall
   4323 89 82              1011 	mov	dpl,r1
   4325 8C 83              1012 	mov	dph,r4
   4327 C0 07              1013 	push	ar7
   4329 C0 00              1014 	push	ar0
   432B 12 46 73           1015 	lcall	__mulsint
   432E AA 82              1016 	mov	r2,dpl
   4330 AB 83              1017 	mov	r3,dph
   4332 D0 00              1018 	pop	ar0
   4334 D0 07              1019 	pop	ar7
                           1020 ;     genPlus
                           1021 ;       Peephole 236g
   4336 EA                 1022 	mov  a,r2
   4337 25 1D              1023 	add	a,_dec_to_int_result_1_1
   4339 F5 1D              1024 	mov	_dec_to_int_result_1_1,a
                           1025 ;       Peephole 236g
   433B EB                 1026 	mov  a,r3
   433C 35 1E              1027 	addc	a,(_dec_to_int_result_1_1 + 1)
   433E F5 1E              1028 	mov	(_dec_to_int_result_1_1 + 1),a
                           1029 ;main.c:71: for(i = 0; i < size; ++i){
                           1030 ;     genPlus
                           1031 ;     genPlusIncr
   4340 0F                 1032 	inc	r7
   4341 BF 00 01           1033 	cjne	r7,#0x00,00118$
   4344 08                 1034 	inc	r0
   4345                    1035 00118$:
   4345 02 42 8F           1036 	ljmp	00105$
   4348                    1037 00108$:
                           1038 ;main.c:81: return result;
                           1039 ;     genRet
   4348 85 1D 82           1040 	mov	dpl,_dec_to_int_result_1_1
   434B 85 1E 83           1041 	mov	dph,(_dec_to_int_result_1_1 + 1)
   434E                    1042 00109$:
   434E 22                 1043 	ret
                           1044 ;------------------------------------------------------------
                           1045 ;Allocation info for local variables in function 'print_the_stuff'
                           1046 ;------------------------------------------------------------
                           1047 ;number                    Allocated to registers r2 r3 
                           1048 ;i                         Allocated to registers 
                           1049 ;array                     Allocated to in memory with name '_print_the_stuff_array_1_1'
                           1050 ;c                         Allocated to registers r6 
                           1051 ;------------------------------------------------------------
                           1052 ;main.c:84: void print_the_stuff(int number){
                           1053 ;	-----------------------------------------
                           1054 ;	 function print_the_stuff
                           1055 ;	-----------------------------------------
   434F                    1056 _print_the_stuff:
                           1057 ;     genReceive
   434F AA 82              1058 	mov	r2,dpl
   4351 AB 83              1059 	mov	r3,dph
                           1060 ;main.c:86: char array[] = {'\0','\0','\0','\0'};
                           1061 ;     genPointerSet
                           1062 ;     genNearPointerSet
                           1063 ;     genDataPointerSet
   4353 75 1F 00           1064 	mov	_print_the_stuff_array_1_1,#0x00
                           1065 ;     genPointerSet
                           1066 ;     genNearPointerSet
                           1067 ;     genDataPointerSet
   4356 75 20 00           1068 	mov	(_print_the_stuff_array_1_1 + 0x0001),#0x00
                           1069 ;     genPointerSet
                           1070 ;     genNearPointerSet
                           1071 ;     genDataPointerSet
   4359 75 21 00           1072 	mov	(_print_the_stuff_array_1_1 + 0x0002),#0x00
                           1073 ;     genPointerSet
                           1074 ;     genNearPointerSet
                           1075 ;     genDataPointerSet
   435C 75 22 00           1076 	mov	(_print_the_stuff_array_1_1 + 0x0003),#0x00
                           1077 ;main.c:89: if (number == 0) putchar('0');
                           1078 ;     genCmpEq
                           1079 ;       Peephole 132   changed ljmp to sjmp
                           1080 ;       Peephole 198   optimized misc jump sequence
   435F BA 00 11           1081 	cjne r2,#0x00,00114$
   4362 BB 00 0E           1082 	cjne r3,#0x00,00114$
                           1083 ;00117$:
                           1084 ;       Peephole 200   removed redundant sjmp
   4365                    1085 00118$:
                           1086 ;     genCall
   4365 75 82 30           1087 	mov	dpl,#0x30
   4368 C0 02              1088 	push	ar2
   436A C0 03              1089 	push	ar3
   436C 12 40 46           1090 	lcall	_putchar
   436F D0 03              1091 	pop	ar3
   4371 D0 02              1092 	pop	ar2
                           1093 ;main.c:91: while(number > 0){
   4373                    1094 00114$:
                           1095 ;     genAssign
   4373 7C 00              1096 	mov	r4,#0x00
   4375 7D 00              1097 	mov	r5,#0x00
   4377                    1098 00103$:
                           1099 ;     genCmpGt
                           1100 ;     genCmp
   4377 C3                 1101 	clr	c
                           1102 ;       Peephole 180   changed mov to clr
   4378 E4                 1103 	clr  a
   4379 9A                 1104 	subb	a,r2
                           1105 ;       Peephole 159   avoided xrl during execution
   437A 74 80              1106 	mov  a,#(0x00 ^ 0x80)
   437C 8B F0              1107 	mov	b,r3
   437E 63 F0 80           1108 	xrl	b,#0x80
   4381 95 F0              1109 	subb	a,b
                           1110 ;     genIfxJump
   4383 40 03              1111 	jc	00119$
   4385 02 43 E6           1112 	ljmp	00116$
   4388                    1113 00119$:
                           1114 ;main.c:92: c = ( number % 10 ) + '0';
                           1115 ;     genAssign
   4388 E4                 1116 	clr	a
   4389 F5 2A              1117 	mov	(__modsint_PARM_2 + 1),a
   438B 75 29 0A           1118 	mov	__modsint_PARM_2,#0x0A
                           1119 ;     genCall
   438E 8A 82              1120 	mov	dpl,r2
   4390 8B 83              1121 	mov	dph,r3
   4392 C0 02              1122 	push	ar2
   4394 C0 03              1123 	push	ar3
   4396 C0 04              1124 	push	ar4
   4398 C0 05              1125 	push	ar5
   439A 12 47 6A           1126 	lcall	__modsint
   439D E5 82              1127 	mov	a,dpl
   439F 85 83 F0           1128 	mov	b,dph
   43A2 D0 05              1129 	pop	ar5
   43A4 D0 04              1130 	pop	ar4
   43A6 D0 03              1131 	pop	ar3
   43A8 D0 02              1132 	pop	ar2
                           1133 ;     genPlus
   43AA 24 30              1134 	add	a,#0x30
   43AC FE                 1135 	mov	r6,a
   43AD E5 F0              1136 	mov	a,b
   43AF 34 00              1137 	addc	a,#0x00
   43B1 FF                 1138 	mov	r7,a
                           1139 ;     genCast
                           1140 ;main.c:93: array[i] = c;
                           1141 ;     genPlus
                           1142 ;       Peephole 236g
   43B2 EC                 1143 	mov  a,r4
   43B3 24 1F              1144 	add	a,#_print_the_stuff_array_1_1
                           1145 ;     genPointerSet
                           1146 ;     genNearPointerSet
   43B5 A8 E0              1147 	mov	r0,acc
   43B7 A6 06              1148 	mov	@r0,ar6
                           1149 ;main.c:94: ++i;
                           1150 ;     genPlus
                           1151 ;     genPlusIncr
   43B9 0C                 1152 	inc	r4
   43BA BC 00 01           1153 	cjne	r4,#0x00,00120$
   43BD 0D                 1154 	inc	r5
   43BE                    1155 00120$:
                           1156 ;main.c:95: number /= 10;
                           1157 ;     genAssign
   43BE E4                 1158 	clr	a
   43BF F5 2A              1159 	mov	(__divsint_PARM_2 + 1),a
   43C1 75 29 0A           1160 	mov	__divsint_PARM_2,#0x0A
                           1161 ;     genCall
   43C4 8A 82              1162 	mov	dpl,r2
   43C6 8B 83              1163 	mov	dph,r3
   43C8 C0 02              1164 	push	ar2
   43CA C0 03              1165 	push	ar3
   43CC C0 04              1166 	push	ar4
   43CE C0 05              1167 	push	ar5
   43D0 12 47 A2           1168 	lcall	__divsint
   43D3 E5 82              1169 	mov	a,dpl
   43D5 85 83 F0           1170 	mov	b,dph
   43D8 D0 05              1171 	pop	ar5
   43DA D0 04              1172 	pop	ar4
   43DC D0 03              1173 	pop	ar3
   43DE D0 02              1174 	pop	ar2
                           1175 ;     genAssign
   43E0 FA                 1176 	mov	r2,a
   43E1 AB F0              1177 	mov	r3,b
   43E3 02 43 77           1178 	ljmp	00103$
                           1179 ;main.c:97: for(i = 4; i >= 0; --i)
   43E6                    1180 00116$:
                           1181 ;     genAssign
   43E6 7A 04              1182 	mov	r2,#0x04
   43E8 7B 00              1183 	mov	r3,#0x00
   43EA                    1184 00106$:
                           1185 ;     genCmpLt
                           1186 ;     genCmp
   43EA EB                 1187 	mov	a,r3
                           1188 ;     genIfxJump
                           1189 ;       Peephole 112   removed ljmp by inverse jump logic
   43EB 20 E7 18           1190 	jb   acc.7,00109$
   43EE                    1191 00121$:
                           1192 ;main.c:99: putchar(array[i]);
                           1193 ;     genPlus
                           1194 ;       Peephole 236g
   43EE EA                 1195 	mov  a,r2
   43EF 24 1F              1196 	add	a,#_print_the_stuff_array_1_1
   43F1 F8                 1197 	mov	r0,a
                           1198 ;     genPointerGet
                           1199 ;     genNearPointerGet
   43F2 86 82              1200 	mov	dpl,@r0
                           1201 ;     genCall
   43F4 C0 02              1202 	push	ar2
   43F6 C0 03              1203 	push	ar3
   43F8 12 40 46           1204 	lcall	_putchar
   43FB D0 03              1205 	pop	ar3
   43FD D0 02              1206 	pop	ar2
                           1207 ;main.c:97: for(i = 4; i >= 0; --i)
                           1208 ;     genMinus
                           1209 ;     genMinusDec
                           1210 ;	tail decrement optimized
   43FF 1A                 1211 	dec	r2
   4400 BA FF E7           1212 	cjne	r2,#0xff,00106$
   4403 1B                 1213 	dec	r3
                           1214 ;       Peephole 132   changed ljmp to sjmp
   4404 80 E4              1215 	sjmp 00106$
   4406                    1216 00109$:
                           1217 ;main.c:101: putchar('\n');
                           1218 ;     genCall
   4406 75 82 0A           1219 	mov	dpl,#0x0A
   4409 12 40 46           1220 	lcall	_putchar
   440C                    1221 00110$:
   440C 22                 1222 	ret
                           1223 ;------------------------------------------------------------
                           1224 ;Allocation info for local variables in function 'do_the_stuff'
                           1225 ;------------------------------------------------------------
                           1226 ;i                         Allocated to registers 
                           1227 ;j                         Allocated to registers 
                           1228 ;num1                      Allocated to registers r2 r3 
                           1229 ;num2                      Allocated to in memory with name '_do_the_stuff_num2_1_1'
                           1230 ;num3                      Allocated to registers r4 r5 
                           1231 ;result                    Allocated to registers r2 r3 
                           1232 ;c                         Allocated to registers r6 
                           1233 ;number                    Allocated to in memory with name '_do_the_stuff_number_1_1'
                           1234 ;------------------------------------------------------------
                           1235 ;main.c:104: void do_the_stuff(){
                           1236 ;	-----------------------------------------
                           1237 ;	 function do_the_stuff
                           1238 ;	-----------------------------------------
   440D                    1239 _do_the_stuff:
                           1240 ;main.c:112: char number[] = { '\0','\0','\0','\0' };
                           1241 ;     genPointerSet
                           1242 ;     genNearPointerSet
                           1243 ;     genDataPointerSet
   440D 75 25 00           1244 	mov	_do_the_stuff_number_1_1,#0x00
                           1245 ;     genPointerSet
                           1246 ;     genNearPointerSet
                           1247 ;     genDataPointerSet
   4410 75 26 00           1248 	mov	(_do_the_stuff_number_1_1 + 0x0001),#0x00
                           1249 ;     genPointerSet
                           1250 ;     genNearPointerSet
                           1251 ;     genDataPointerSet
   4413 75 27 00           1252 	mov	(_do_the_stuff_number_1_1 + 0x0002),#0x00
                           1253 ;     genPointerSet
                           1254 ;     genNearPointerSet
                           1255 ;     genDataPointerSet
   4416 75 28 00           1256 	mov	(_do_the_stuff_number_1_1 + 0x0003),#0x00
                           1257 ;main.c:114: for(i = 0; i < 4; ++i)
                           1258 ;     genAssign
   4419 7A 00              1259 	mov	r2,#0x00
   441B 7B 00              1260 	mov	r3,#0x00
                           1261 ;     genAssign
   441D 7C 00              1262 	mov	r4,#0x00
   441F 7D 00              1263 	mov	r5,#0x00
   4421                    1264 00103$:
                           1265 ;     genCmpLt
                           1266 ;     genCmp
   4421 C3                 1267 	clr	c
   4422 EC                 1268 	mov	a,r4
   4423 94 04              1269 	subb	a,#0x04
   4425 ED                 1270 	mov	a,r5
   4426 64 80              1271 	xrl	a,#0x80
   4428 94 80              1272 	subb	a,#0x80
                           1273 ;     genIfxJump
                           1274 ;       Peephole 108   removed ljmp by inverse jump logic
   442A 50 47              1275 	jnc  00106$
   442C                    1276 00130$:
                           1277 ;main.c:116: c = getchar();
                           1278 ;     genCall
   442C C0 02              1279 	push	ar2
   442E C0 03              1280 	push	ar3
   4430 C0 04              1281 	push	ar4
   4432 C0 05              1282 	push	ar5
   4434 12 40 38           1283 	lcall	_getchar
   4437 E5 82              1284 	mov	a,dpl
   4439 D0 05              1285 	pop	ar5
   443B D0 04              1286 	pop	ar4
   443D D0 03              1287 	pop	ar3
   443F D0 02              1288 	pop	ar2
                           1289 ;     genAssign
   4441 FE                 1290 	mov	r6,a
                           1291 ;main.c:117: if (c == ' ') break;
                           1292 ;     genCmpEq
   4442 BE 20 02           1293 	cjne	r6,#0x20,00131$
                           1294 ;       Peephole 132   changed ljmp to sjmp
   4445 80 2C              1295 	sjmp 00106$
   4447                    1296 00131$:
                           1297 ;main.c:118: number[i] = c;
                           1298 ;     genPlus
                           1299 ;       Peephole 236g
   4447 EC                 1300 	mov  a,r4
   4448 24 25              1301 	add	a,#_do_the_stuff_number_1_1
                           1302 ;     genPointerSet
                           1303 ;     genNearPointerSet
   444A A8 E0              1304 	mov	r0,acc
   444C A6 06              1305 	mov	@r0,ar6
                           1306 ;main.c:119: putchar(number[i]);
                           1307 ;     genCall
   444E 8E 82              1308 	mov	dpl,r6
   4450 C0 02              1309 	push	ar2
   4452 C0 03              1310 	push	ar3
   4454 C0 04              1311 	push	ar4
   4456 C0 05              1312 	push	ar5
   4458 C0 06              1313 	push	ar6
   445A 12 40 46           1314 	lcall	_putchar
   445D D0 06              1315 	pop	ar6
   445F D0 05              1316 	pop	ar5
   4461 D0 04              1317 	pop	ar4
   4463 D0 03              1318 	pop	ar3
   4465 D0 02              1319 	pop	ar2
                           1320 ;main.c:120: ++j;
                           1321 ;     genPlus
                           1322 ;     genPlusIncr
   4467 0A                 1323 	inc	r2
   4468 BA 00 01           1324 	cjne	r2,#0x00,00132$
   446B 0B                 1325 	inc	r3
   446C                    1326 00132$:
                           1327 ;main.c:114: for(i = 0; i < 4; ++i)
                           1328 ;     genPlus
                           1329 ;     genPlusIncr
   446C 0C                 1330 	inc	r4
   446D BC 00 01           1331 	cjne	r4,#0x00,00133$
   4470 0D                 1332 	inc	r5
   4471                    1333 00133$:
                           1334 ;       Peephole 132   changed ljmp to sjmp
   4471 80 AE              1335 	sjmp 00103$
   4473                    1336 00106$:
                           1337 ;main.c:123: num1 = hex_to_int(number, j);
                           1338 ;     genAssign
   4473 8A 0A              1339 	mov	_hex_to_int_PARM_2,r2
   4475 8B 0B              1340 	mov	(_hex_to_int_PARM_2 + 1),r3
                           1341 ;     genCall
                           1342 ;       Peephole 182a use 16 bit load of DPTR
   4477 90 00 25           1343 	mov dptr,#_do_the_stuff_number_1_1
   447A 75 F0 00           1344 	mov	b,#0x00
   447D C0 06              1345 	push	ar6
   447F 12 40 AB           1346 	lcall	_hex_to_int
   4482 E5 82              1347 	mov	a,dpl
   4484 85 83 F0           1348 	mov	b,dph
   4487 D0 06              1349 	pop	ar6
                           1350 ;     genAssign
   4489 FA                 1351 	mov	r2,a
   448A AB F0              1352 	mov	r3,b
                           1353 ;main.c:125: print_the_stuff(num1);
                           1354 ;     genCall
   448C 8A 82              1355 	mov	dpl,r2
   448E 8B 83              1356 	mov	dph,r3
   4490 C0 02              1357 	push	ar2
   4492 C0 03              1358 	push	ar3
   4494 C0 06              1359 	push	ar6
   4496 12 43 4F           1360 	lcall	_print_the_stuff
   4499 D0 06              1361 	pop	ar6
   449B D0 03              1362 	pop	ar3
   449D D0 02              1363 	pop	ar2
                           1364 ;main.c:127: putchar(' ');
                           1365 ;     genCall
   449F 75 82 20           1366 	mov	dpl,#0x20
   44A2 C0 02              1367 	push	ar2
   44A4 C0 03              1368 	push	ar3
   44A6 C0 06              1369 	push	ar6
   44A8 12 40 46           1370 	lcall	_putchar
   44AB D0 06              1371 	pop	ar6
   44AD D0 03              1372 	pop	ar3
   44AF D0 02              1373 	pop	ar2
                           1374 ;main.c:130: for(i = 0; i < 4; ++i)
                           1375 ;     genAssign
   44B1 7C 00              1376 	mov	r4,#0x00
   44B3 7D 00              1377 	mov	r5,#0x00
                           1378 ;     genAssign
   44B5 7F 00              1379 	mov	r7,#0x00
   44B7 78 00              1380 	mov	r0,#0x00
   44B9                    1381 00109$:
                           1382 ;     genCmpLt
                           1383 ;     genCmp
   44B9 C3                 1384 	clr	c
   44BA EF                 1385 	mov	a,r7
   44BB 94 04              1386 	subb	a,#0x04
   44BD E8                 1387 	mov	a,r0
   44BE 64 80              1388 	xrl	a,#0x80
   44C0 94 80              1389 	subb	a,#0x80
                           1390 ;     genIfxJump
   44C2 40 03              1391 	jc	00134$
   44C4 02 45 23           1392 	ljmp	00112$
   44C7                    1393 00134$:
                           1394 ;main.c:132: c = getchar();
                           1395 ;     genCall
   44C7 C0 02              1396 	push	ar2
   44C9 C0 03              1397 	push	ar3
   44CB C0 04              1398 	push	ar4
   44CD C0 05              1399 	push	ar5
   44CF C0 06              1400 	push	ar6
   44D1 C0 07              1401 	push	ar7
   44D3 C0 00              1402 	push	ar0
   44D5 12 40 38           1403 	lcall	_getchar
   44D8 E5 82              1404 	mov	a,dpl
   44DA D0 00              1405 	pop	ar0
   44DC D0 07              1406 	pop	ar7
   44DE D0 06              1407 	pop	ar6
   44E0 D0 05              1408 	pop	ar5
   44E2 D0 04              1409 	pop	ar4
   44E4 D0 03              1410 	pop	ar3
   44E6 D0 02              1411 	pop	ar2
                           1412 ;     genAssign
   44E8 FE                 1413 	mov	r6,a
                           1414 ;main.c:133: if (c == ' ') break;
                           1415 ;     genCmpEq
   44E9 BE 20 02           1416 	cjne	r6,#0x20,00135$
                           1417 ;       Peephole 132   changed ljmp to sjmp
   44EC 80 35              1418 	sjmp 00112$
   44EE                    1419 00135$:
                           1420 ;main.c:134: number[i] = c;
                           1421 ;     genPlus
                           1422 ;       Peephole 236g
   44EE EF                 1423 	mov  a,r7
   44EF 24 25              1424 	add	a,#_do_the_stuff_number_1_1
                           1425 ;     genPointerSet
                           1426 ;     genNearPointerSet
   44F1 A9 E0              1427 	mov	r1,acc
   44F3 A7 06              1428 	mov	@r1,ar6
                           1429 ;main.c:135: putchar(number[i]);
                           1430 ;     genCall
   44F5 8E 82              1431 	mov	dpl,r6
   44F7 C0 02              1432 	push	ar2
   44F9 C0 03              1433 	push	ar3
   44FB C0 04              1434 	push	ar4
   44FD C0 05              1435 	push	ar5
   44FF C0 06              1436 	push	ar6
   4501 C0 07              1437 	push	ar7
   4503 C0 00              1438 	push	ar0
   4505 12 40 46           1439 	lcall	_putchar
   4508 D0 00              1440 	pop	ar0
   450A D0 07              1441 	pop	ar7
   450C D0 06              1442 	pop	ar6
   450E D0 05              1443 	pop	ar5
   4510 D0 04              1444 	pop	ar4
   4512 D0 03              1445 	pop	ar3
   4514 D0 02              1446 	pop	ar2
                           1447 ;main.c:136: ++j;
                           1448 ;     genPlus
                           1449 ;     genPlusIncr
   4516 0C                 1450 	inc	r4
   4517 BC 00 01           1451 	cjne	r4,#0x00,00136$
   451A 0D                 1452 	inc	r5
   451B                    1453 00136$:
                           1454 ;main.c:130: for(i = 0; i < 4; ++i)
                           1455 ;     genPlus
                           1456 ;     genPlusIncr
   451B 0F                 1457 	inc	r7
   451C BF 00 01           1458 	cjne	r7,#0x00,00137$
   451F 08                 1459 	inc	r0
   4520                    1460 00137$:
   4520 02 44 B9           1461 	ljmp	00109$
   4523                    1462 00112$:
                           1463 ;main.c:139: num2 = dec_to_int(number, j);
                           1464 ;     genAssign
   4523 8C 18              1465 	mov	_dec_to_int_PARM_2,r4
   4525 8D 19              1466 	mov	(_dec_to_int_PARM_2 + 1),r5
                           1467 ;     genCall
                           1468 ;       Peephole 182a use 16 bit load of DPTR
   4527 90 00 25           1469 	mov dptr,#_do_the_stuff_number_1_1
   452A 75 F0 00           1470 	mov	b,#0x00
   452D C0 02              1471 	push	ar2
   452F C0 03              1472 	push	ar3
   4531 C0 06              1473 	push	ar6
   4533 12 42 7D           1474 	lcall	_dec_to_int
   4536 E5 82              1475 	mov	a,dpl
   4538 85 83 F0           1476 	mov	b,dph
   453B D0 06              1477 	pop	ar6
   453D D0 03              1478 	pop	ar3
   453F D0 02              1479 	pop	ar2
                           1480 ;     genAssign
   4541 F5 23              1481 	mov	_do_the_stuff_num2_1_1,a
   4543 85 F0 24           1482 	mov	(_do_the_stuff_num2_1_1 + 1),b
                           1483 ;main.c:141: print_the_stuff(num2);
                           1484 ;     genCall
   4546 85 23 82           1485 	mov	dpl,_do_the_stuff_num2_1_1
   4549 85 24 83           1486 	mov	dph,(_do_the_stuff_num2_1_1 + 1)
   454C C0 02              1487 	push	ar2
   454E C0 03              1488 	push	ar3
   4550 C0 06              1489 	push	ar6
   4552 12 43 4F           1490 	lcall	_print_the_stuff
   4555 D0 06              1491 	pop	ar6
   4557 D0 03              1492 	pop	ar3
   4559 D0 02              1493 	pop	ar2
                           1494 ;main.c:143: putchar(' ');
                           1495 ;     genCall
   455B 75 82 20           1496 	mov	dpl,#0x20
   455E C0 02              1497 	push	ar2
   4560 C0 03              1498 	push	ar3
   4562 C0 06              1499 	push	ar6
   4564 12 40 46           1500 	lcall	_putchar
   4567 D0 06              1501 	pop	ar6
   4569 D0 03              1502 	pop	ar3
   456B D0 02              1503 	pop	ar2
                           1504 ;main.c:146: for(i = 0; i < 4; ++i)
                           1505 ;     genAssign
   456D 7F 00              1506 	mov	r7,#0x00
   456F 78 00              1507 	mov	r0,#0x00
                           1508 ;     genAssign
   4571 79 00              1509 	mov	r1,#0x00
   4573 7C 00              1510 	mov	r4,#0x00
   4575                    1511 00115$:
                           1512 ;     genCmpLt
                           1513 ;     genCmp
   4575 C3                 1514 	clr	c
   4576 E9                 1515 	mov	a,r1
   4577 94 04              1516 	subb	a,#0x04
   4579 EC                 1517 	mov	a,r4
   457A 64 80              1518 	xrl	a,#0x80
   457C 94 80              1519 	subb	a,#0x80
                           1520 ;     genIfxJump
   457E 40 03              1521 	jc	00138$
   4580 02 45 E3           1522 	ljmp	00118$
   4583                    1523 00138$:
                           1524 ;main.c:148: c = getchar();
                           1525 ;     genCall
   4583 C0 02              1526 	push	ar2
   4585 C0 03              1527 	push	ar3
   4587 C0 04              1528 	push	ar4
   4589 C0 06              1529 	push	ar6
   458B C0 07              1530 	push	ar7
   458D C0 00              1531 	push	ar0
   458F C0 01              1532 	push	ar1
   4591 12 40 38           1533 	lcall	_getchar
   4594 E5 82              1534 	mov	a,dpl
   4596 D0 01              1535 	pop	ar1
   4598 D0 00              1536 	pop	ar0
   459A D0 07              1537 	pop	ar7
   459C D0 06              1538 	pop	ar6
   459E D0 04              1539 	pop	ar4
   45A0 D0 03              1540 	pop	ar3
   45A2 D0 02              1541 	pop	ar2
                           1542 ;     genAssign
   45A4 FE                 1543 	mov	r6,a
                           1544 ;main.c:149: if (c == 'l') break;
                           1545 ;     genCmpEq
   45A5 BE 6C 02           1546 	cjne	r6,#0x6C,00139$
                           1547 ;       Peephole 132   changed ljmp to sjmp
   45A8 80 39              1548 	sjmp 00118$
   45AA                    1549 00139$:
                           1550 ;main.c:150: number[i] = c;
                           1551 ;     genPlus
                           1552 ;       Peephole 236g
   45AA E9                 1553 	mov  a,r1
   45AB 24 25              1554 	add	a,#_do_the_stuff_number_1_1
                           1555 ;     genPointerSet
                           1556 ;     genNearPointerSet
   45AD C0 00              1557 	push	ar0
   45AF A8 E0              1558 	mov	r0,acc
   45B1 A6 06              1559 	mov	@r0,ar6
   45B3 D0 00              1560 	pop	ar0
                           1561 ;main.c:151: putchar(number[i]);
                           1562 ;     genCall
   45B5 8E 82              1563 	mov	dpl,r6
   45B7 C0 02              1564 	push	ar2
   45B9 C0 03              1565 	push	ar3
   45BB C0 04              1566 	push	ar4
   45BD C0 06              1567 	push	ar6
   45BF C0 07              1568 	push	ar7
   45C1 C0 00              1569 	push	ar0
   45C3 C0 01              1570 	push	ar1
   45C5 12 40 46           1571 	lcall	_putchar
   45C8 D0 01              1572 	pop	ar1
   45CA D0 00              1573 	pop	ar0
   45CC D0 07              1574 	pop	ar7
   45CE D0 06              1575 	pop	ar6
   45D0 D0 04              1576 	pop	ar4
   45D2 D0 03              1577 	pop	ar3
   45D4 D0 02              1578 	pop	ar2
                           1579 ;main.c:152: ++j;
                           1580 ;     genPlus
                           1581 ;     genPlusIncr
   45D6 0F                 1582 	inc	r7
   45D7 BF 00 01           1583 	cjne	r7,#0x00,00140$
   45DA 08                 1584 	inc	r0
   45DB                    1585 00140$:
                           1586 ;main.c:146: for(i = 0; i < 4; ++i)
                           1587 ;     genPlus
                           1588 ;     genPlusIncr
   45DB 09                 1589 	inc	r1
   45DC B9 00 01           1590 	cjne	r1,#0x00,00141$
   45DF 0C                 1591 	inc	r4
   45E0                    1592 00141$:
   45E0 02 45 75           1593 	ljmp	00115$
   45E3                    1594 00118$:
                           1595 ;main.c:155: num3 = oct_to_int(number, j);
                           1596 ;     genAssign
   45E3 8F 11              1597 	mov	_oct_to_int_PARM_2,r7
   45E5 88 12              1598 	mov	(_oct_to_int_PARM_2 + 1),r0
                           1599 ;     genCall
                           1600 ;       Peephole 182a use 16 bit load of DPTR
   45E7 90 00 25           1601 	mov dptr,#_do_the_stuff_number_1_1
   45EA 75 F0 00           1602 	mov	b,#0x00
   45ED C0 02              1603 	push	ar2
   45EF C0 03              1604 	push	ar3
   45F1 12 41 AB           1605 	lcall	_oct_to_int
   45F4 E5 82              1606 	mov	a,dpl
   45F6 85 83 F0           1607 	mov	b,dph
   45F9 D0 03              1608 	pop	ar3
   45FB D0 02              1609 	pop	ar2
                           1610 ;     genAssign
   45FD FC                 1611 	mov	r4,a
   45FE AD F0              1612 	mov	r5,b
                           1613 ;main.c:157: print_the_stuff(num3);
                           1614 ;     genCall
   4600 8C 82              1615 	mov	dpl,r4
   4602 8D 83              1616 	mov	dph,r5
   4604 C0 02              1617 	push	ar2
   4606 C0 03              1618 	push	ar3
   4608 C0 04              1619 	push	ar4
   460A C0 05              1620 	push	ar5
   460C 12 43 4F           1621 	lcall	_print_the_stuff
   460F D0 05              1622 	pop	ar5
   4611 D0 04              1623 	pop	ar4
   4613 D0 03              1624 	pop	ar3
   4615 D0 02              1625 	pop	ar2
                           1626 ;main.c:159: putchar('\n');
                           1627 ;     genCall
   4617 75 82 0A           1628 	mov	dpl,#0x0A
   461A C0 02              1629 	push	ar2
   461C C0 03              1630 	push	ar3
   461E C0 04              1631 	push	ar4
   4620 C0 05              1632 	push	ar5
   4622 12 40 46           1633 	lcall	_putchar
   4625 D0 05              1634 	pop	ar5
   4627 D0 04              1635 	pop	ar4
   4629 D0 03              1636 	pop	ar3
   462B D0 02              1637 	pop	ar2
                           1638 ;main.c:162: result = num1 / num2;
                           1639 ;     genAssign
   462D 85 23 29           1640 	mov	__divsint_PARM_2,_do_the_stuff_num2_1_1
   4630 85 24 2A           1641 	mov	(__divsint_PARM_2 + 1),(_do_the_stuff_num2_1_1 + 1)
                           1642 ;     genCall
   4633 8A 82              1643 	mov	dpl,r2
   4635 8B 83              1644 	mov	dph,r3
   4637 C0 04              1645 	push	ar4
   4639 C0 05              1646 	push	ar5
   463B 12 47 A2           1647 	lcall	__divsint
   463E E5 82              1648 	mov	a,dpl
   4640 85 83 F0           1649 	mov	b,dph
   4643 D0 05              1650 	pop	ar5
   4645 D0 04              1651 	pop	ar4
                           1652 ;     genAssign
   4647 FA                 1653 	mov	r2,a
   4648 AB F0              1654 	mov	r3,b
                           1655 ;main.c:163: result |= num3;
                           1656 ;     genOr
   464A EC                 1657 	mov	a,r4
   464B 42 02              1658 	orl	ar2,a
   464D ED                 1659 	mov	a,r5
   464E 42 03              1660 	orl	ar3,a
                           1661 ;main.c:164: print_the_stuff(result);
                           1662 ;     genCall
   4650 8A 82              1663 	mov	dpl,r2
   4652 8B 83              1664 	mov	dph,r3
   4654 12 43 4F           1665 	lcall	_print_the_stuff
   4657                    1666 00119$:
   4657 22                 1667 	ret
                           1668 ;------------------------------------------------------------
                           1669 ;Allocation info for local variables in function 'main'
                           1670 ;------------------------------------------------------------
                           1671 ;------------------------------------------------------------
                           1672 ;main.c:167: void main(void){
                           1673 ;	-----------------------------------------
                           1674 ;	 function main
                           1675 ;	-----------------------------------------
   4658                    1676 _main:
                           1677 ;main.c:168: SCON = 0x50;
                           1678 ;     genAssign
   4658 75 98 50           1679 	mov	_SCON,#0x50
                           1680 ;main.c:169: TMOD &=	0x0F;
                           1681 ;     genAnd
   465B 53 89 0F           1682 	anl	_TMOD,#0x0F
                           1683 ;main.c:170: TMOD |=	0x20;
                           1684 ;     genOr
   465E 43 89 20           1685 	orl	_TMOD,#0x20
                           1686 ;main.c:171: TH1 = TL1 = 253;
                           1687 ;     genAssign
   4661 75 8B FD           1688 	mov	_TL1,#0xFD
                           1689 ;     genAssign
   4664 75 8D FD           1690 	mov	_TH1,#0xFD
                           1691 ;main.c:172: TCON =	0x40;
                           1692 ;     genAssign
   4667 75 88 40           1693 	mov	_TCON,#0x40
                           1694 ;main.c:173: PCON = 0x80;
                           1695 ;     genAssign
   466A 75 87 80           1696 	mov	_PCON,#0x80
                           1697 ;main.c:179: while(1){
   466D                    1698 00102$:
                           1699 ;main.c:180: do_the_stuff();
                           1700 ;     genCall
   466D 12 44 0D           1701 	lcall	_do_the_stuff
                           1702 ;       Peephole 132   changed ljmp to sjmp
   4670 80 FB              1703 	sjmp 00102$
   4672                    1704 00104$:
   4672 22                 1705 	ret
                           1706 	.area CSEG    (CODE)
                           1707 	.area XINIT   (CODE)
