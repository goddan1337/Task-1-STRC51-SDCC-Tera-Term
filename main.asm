;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.3 Fri May 10 15:03:18 2019

;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _do_the_stuff
	.globl _print_the_stuff
	.globl _dec_to_int
	.globl _oct_to_int
	.globl _hex_to_int
	.globl _power
	.globl _putchar
	.globl _getchar
	.globl _dec_to_int_PARM_2
	.globl _oct_to_int_PARM_2
	.globl _hex_to_int_PARM_2
	.globl _power_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks 
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_power_PARM_2::
	.ds 2
_hex_to_int_PARM_2::
	.ds 2
_hex_to_int_hex_1_1::
	.ds 3
_hex_to_int_result_1_1::
	.ds 2
_oct_to_int_PARM_2::
	.ds 2
_oct_to_int_oct_1_1::
	.ds 3
_oct_to_int_result_1_1::
	.ds 2
_dec_to_int_PARM_2::
	.ds 2
_dec_to_int_dec_1_1::
	.ds 3
_dec_to_int_result_1_1::
	.ds 2
_print_the_stuff_array_1_1::
	.ds 4
_do_the_stuff_num2_1_1::
	.ds 2
_do_the_stuff_number_1_1::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area CSEG    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
__sdcc_gsinit_startup:
	mov	sp,#__start__stack - 1
	lcall	__sdcc_external_startup
	mov	a,dpl
	jz	__sdcc_init_data
	ljmp	__sdcc_program_startup
__sdcc_init_data:
;	_mcs51_genXINIT() start
	mov	a,#l_XINIT
	orl	a,#l_XINIT>>8
	jz	00003$
	mov	a,#s_XINIT
	add	a,#l_XINIT
	mov	r1,a
	mov	a,#s_XINIT>>8
	addc	a,#l_XINIT>>8
	mov	r2,a
	mov	dptr,#s_XINIT
	mov	r0,#s_XISEG
	mov	p2,#(s_XISEG >> 8)
00001$:	clr	a
	movc	a,@a+dptr
	movx	@r0,a
	inc	dptr
	inc	r0
	cjne	r0,#0,00002$
	inc	p2
00002$:	mov	a,dpl
	cjne	a,ar1,00001$
	mov	a,dph
	cjne	a,ar2,00001$
	mov	p2,#0xFF
00003$:
;	_mcs51_genXINIT() end
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;------------------------------------------------------------
;main.c:3: char getchar() {
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;main.c:5: while(RI == 0);
00101$:
;     genNot
	mov	c,_RI
	cpl	c
	clr	a
	rlc	a
;     genIfx
;       Peephole 105   removed redundant mov
	mov  r2,a
;     genIfxJump
;       Peephole 109   removed ljmp by inverse jump logic
	jnz  00101$
00108$:
;main.c:6: RI = 0;
;     genAssign
	clr	_RI
;main.c:7: znak = SBUF;
;     genAssign
	mov	dpl,_SBUF
;main.c:9: return znak;
;     genRet
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;------------------------------------------------------------
;main.c:12: void putchar(char znak) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;     genReceive
	mov	_SBUF,dpl
;main.c:14: while(TI==0);
00101$:
;     genNot
	mov	c,_TI
	cpl	c
	clr	a
	rlc	a
;     genIfx
;       Peephole 105   removed redundant mov
	mov  r2,a
;     genIfxJump
;       Peephole 109   removed ljmp by inverse jump logic
	jnz  00101$
00108$:
;main.c:15: TI=0;
;     genAssign
	clr	_TI
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'power'
;------------------------------------------------------------
;p                         Allocated to in memory with name '_power_PARM_2'
;n                         Allocated to registers r2 r3 
;i                         Allocated to registers 
;------------------------------------------------------------
;main.c:18: int power(int n, int p){
;	-----------------------------------------
;	 function power
;	-----------------------------------------
_power:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
;main.c:21: if (p == 0) return 1;
;     genCmpEq
	mov	a,_power_PARM_2
	jnz	00112$
	mov	a,(_power_PARM_2 + 1)
;       Peephole 162   removed sjmp by inverse jump logic
	jz   00113$
00112$:
;       Peephole 132   changed ljmp to sjmp
	sjmp 00111$
00113$:
;     genRet
;       Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0x00)<<8) + 0x01)
;main.c:23: for(i = 1; i < p; ++i)
;       Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00111$:
;     genAssign
	mov	r4,#0x01
	mov	r5,#0x00
00103$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	subb	a,_power_PARM_2
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_power_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
;       Peephole 108   removed ljmp by inverse jump logic
	jnc  00106$
00114$:
;main.c:25: n *= n;
;     genAssign
	mov	__mulsint_PARM_2,r2
	mov	(__mulsint_PARM_2 + 1),r3
;     genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__mulsint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;     genAssign
	mov	r2,a
	mov	r3,b
;main.c:23: for(i = 1; i < p; ++i)
;     genPlus
;     genPlusIncr
;	tail increment optimized
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
;       Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00106$:
;main.c:27: return n;
;     genRet
	mov	dpl,r2
	mov	dph,r3
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hex_to_int'
;------------------------------------------------------------
;size                      Allocated to in memory with name '_hex_to_int_PARM_2'
;hex                       Allocated to in memory with name '_hex_to_int_hex_1_1'
;result                    Allocated to in memory with name '_hex_to_int_result_1_1'
;i                         Allocated to registers 
;------------------------------------------------------------
;main.c:30: int hex_to_int(char hex[], int size){
;	-----------------------------------------
;	 function hex_to_int
;	-----------------------------------------
_hex_to_int:
;     genReceive
	mov	_hex_to_int_hex_1_1,dpl
	mov	(_hex_to_int_hex_1_1 + 1),dph
	mov	(_hex_to_int_hex_1_1 + 2),b
;main.c:31: int result = 0;
;     genAssign
	clr	a
	mov	(_hex_to_int_result_1_1 + 1),a
	mov	_hex_to_int_result_1_1,a
;main.c:34: for(i = 0; i < size; ++i){
;     genAssign
	mov	r7,#0x00
	mov	r0,#0x00
00109$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r7
	subb	a,_hex_to_int_PARM_2
	mov	a,r0
	xrl	a,#0x80
	mov	b,(_hex_to_int_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
	jc	00121$
	ljmp	00112$
00121$:
;main.c:35: if (hex[i] >= 'A' && hex[i] <= 'F'){
;     genPlus
;       Peephole 236g
	mov  a,r7
	add	a,_hex_to_int_hex_1_1
	mov	r1,a
;       Peephole 236g
	mov  a,r0
	addc	a,(_hex_to_int_hex_1_1 + 1)
	mov	r5,a
	mov	r6,(_hex_to_int_hex_1_1 + 2)
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
;     genCmpLt
;     genCmp
;       Peephole 106   removed redundant mov 
	mov  r2,a
	clr  c
	xrl	a,#0x80
	subb	a,#0xc1
;     genIfxJump
;       Peephole 132   changed ljmp to sjmp
;       Peephole 160   removed sjmp by inverse jump logic
	jc   00106$
00122$:
;     genCmpGt
;     genCmp
	clr	c
;       Peephole 159   avoided xrl during execution
	mov  a,#(0x46 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
;       Peephole 132   changed ljmp to sjmp
;       Peephole 160   removed sjmp by inverse jump logic
	jc   00106$
00123$:
;main.c:36: hex[i] -= 'A' + 10;
;     genMinus
	mov	a,r2
	add	a,#0xb5
;     genPointerSet
;     genGenPointerSet
;       Peephole 191   removed redundant mov
	mov  r2,a
	mov  dpl,r1
	mov  dph,r5
	mov  b,r6
	lcall	__gptrput
;       Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00106$:
;main.c:38: else if (hex[i] >= '0' && hex[i] <= '9'){
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
;     genCmpLt
;     genCmp
;       Peephole 106   removed redundant mov 
	mov  r2,a
	clr  c
	xrl	a,#0x80
	subb	a,#0xb0
;     genIfxJump
;       Peephole 132   changed ljmp to sjmp
;       Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00124$:
;     genCmpGt
;     genCmp
	clr	c
;       Peephole 159   avoided xrl during execution
	mov  a,#(0x39 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
;       Peephole 132   changed ljmp to sjmp
;       Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00125$:
;main.c:39: hex[i] -= '0';
;     genMinus
	mov	a,r2
	add	a,#0xd0
;     genPointerSet
;     genGenPointerSet
;       Peephole 191   removed redundant mov
	mov  r2,a
	mov  dpl,r1
	mov  dph,r5
	mov  b,r6
	lcall	__gptrput
;       Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00102$:
;main.c:43: return -1;
;     genRet
;       Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0xFF)<<8) + 0xFF)
	ljmp	00113$
00107$:
;main.c:45: result += (hex[i] * power(16, size - i - 1));
;     genPlus
;       Peephole 236g
	mov  a,r7
	add	a,_hex_to_int_hex_1_1
	mov	r2,a
;       Peephole 236g
	mov  a,r0
	addc	a,(_hex_to_int_hex_1_1 + 1)
	mov	r3,a
	mov	r4,(_hex_to_int_hex_1_1 + 2)
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;     genMinus
	mov	a,_hex_to_int_PARM_2
	clr	c
;       Peephole 236l
	subb  a,r7
	mov	r3,a
	mov	a,(_hex_to_int_PARM_2 + 1)
;       Peephole 236l
	subb  a,r0
	mov	r4,a
;     genMinus
;     genMinusDec
	mov	a,r3
	add	a,#0xff
	mov	_power_PARM_2,a
	mov	a,r4
	addc	a,#0xff
	mov	(_power_PARM_2 + 1),a
;     genCall
;       Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0x00)<<8) + 0x10)
	push	ar2
	push	ar7
	push	ar0
	lcall	_power
	mov	r3,dpl
	mov	r4,dph
	pop	ar0
	pop	ar7
	pop	ar2
;     genCast
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	r5,a
;     genAssign
	mov	__mulsint_PARM_2,r3
	mov	(__mulsint_PARM_2 + 1),r4
;     genCall
	mov	dpl,r2
	mov	dph,r5
	push	ar7
	push	ar0
	lcall	__mulsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar0
	pop	ar7
;     genPlus
;       Peephole 236g
	mov  a,r2
	add	a,_hex_to_int_result_1_1
	mov	_hex_to_int_result_1_1,a
;       Peephole 236g
	mov  a,r3
	addc	a,(_hex_to_int_result_1_1 + 1)
	mov	(_hex_to_int_result_1_1 + 1),a
;main.c:34: for(i = 0; i < size; ++i){
;     genPlus
;     genPlusIncr
	inc	r7
	cjne	r7,#0x00,00126$
	inc	r0
00126$:
	ljmp	00109$
00112$:
;main.c:47: return result;
;     genRet
	mov	dpl,_hex_to_int_result_1_1
	mov	dph,(_hex_to_int_result_1_1 + 1)
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'oct_to_int'
;------------------------------------------------------------
;size                      Allocated to in memory with name '_oct_to_int_PARM_2'
;oct                       Allocated to in memory with name '_oct_to_int_oct_1_1'
;result                    Allocated to in memory with name '_oct_to_int_result_1_1'
;i                         Allocated to registers 
;------------------------------------------------------------
;main.c:50: int oct_to_int(char oct[], int size){
;	-----------------------------------------
;	 function oct_to_int
;	-----------------------------------------
_oct_to_int:
;     genReceive
	mov	_oct_to_int_oct_1_1,dpl
	mov	(_oct_to_int_oct_1_1 + 1),dph
	mov	(_oct_to_int_oct_1_1 + 2),b
;main.c:51: int result = 0;
;     genAssign
	clr	a
	mov	(_oct_to_int_result_1_1 + 1),a
	mov	_oct_to_int_result_1_1,a
;main.c:54: for(i = 0; i < size; ++i){
;     genAssign
	mov	r7,#0x00
	mov	r0,#0x00
00105$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r7
	subb	a,_oct_to_int_PARM_2
	mov	a,r0
	xrl	a,#0x80
	mov	b,(_oct_to_int_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
	jc	00115$
	ljmp	00108$
00115$:
;main.c:55: if (oct[i] >= '0' && oct[i] <= '7'){
;     genPlus
;       Peephole 236g
	mov  a,r7
	add	a,_oct_to_int_oct_1_1
	mov	r1,a
;       Peephole 236g
	mov  a,r0
	addc	a,(_oct_to_int_oct_1_1 + 1)
	mov	r5,a
	mov	r6,(_oct_to_int_oct_1_1 + 2)
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
;     genCmpLt
;     genCmp
;       Peephole 106   removed redundant mov 
	mov  r2,a
	clr  c
	xrl	a,#0x80
	subb	a,#0xb0
;     genIfxJump
;       Peephole 132   changed ljmp to sjmp
;       Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00116$:
;     genCmpGt
;     genCmp
	clr	c
;       Peephole 159   avoided xrl during execution
	mov  a,#(0x37 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
;       Peephole 132   changed ljmp to sjmp
;       Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00117$:
;main.c:56: oct[i] -= '0';
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
;     genMinus
;       Peephole 105   removed redundant mov
;     genPointerSet
;     genGenPointerSet
;       Peephole 191   removed redundant mov
;       Peephole 215 removed some movs
	add  a,#0xd0
	mov  r2,a
	mov  dpl,r1
	mov  dph,r5
	mov  b,r6
	lcall	__gptrput
;       Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;main.c:60: return -1;
;     genRet
;       Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0xFF)<<8) + 0xFF)
	ljmp	00109$
00103$:
;main.c:62: result += (oct[i] * power(8, size - i - 1));
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
;     genMinus
	mov	a,_oct_to_int_PARM_2
	clr	c
;       Peephole 236l
	subb  a,r7
	mov	r2,a
	mov	a,(_oct_to_int_PARM_2 + 1)
;       Peephole 236l
	subb  a,r0
	mov	r3,a
;     genMinus
;     genMinusDec
	mov	a,r2
	add	a,#0xff
	mov	_power_PARM_2,a
	mov	a,r3
	addc	a,#0xff
	mov	(_power_PARM_2 + 1),a
;     genCall
;       Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0x00)<<8) + 0x08)
	push	ar7
	push	ar0
	push	ar1
	lcall	_power
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar0
	pop	ar7
;     genCast
	mov	a,r1
	rlc	a
	subb	a,acc
	mov	r4,a
;     genAssign
	mov	__mulsint_PARM_2,r2
	mov	(__mulsint_PARM_2 + 1),r3
;     genCall
	mov	dpl,r1
	mov	dph,r4
	push	ar7
	push	ar0
	lcall	__mulsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar0
	pop	ar7
;     genPlus
;       Peephole 236g
	mov  a,r2
	add	a,_oct_to_int_result_1_1
	mov	_oct_to_int_result_1_1,a
;       Peephole 236g
	mov  a,r3
	addc	a,(_oct_to_int_result_1_1 + 1)
	mov	(_oct_to_int_result_1_1 + 1),a
;main.c:54: for(i = 0; i < size; ++i){
;     genPlus
;     genPlusIncr
	inc	r7
	cjne	r7,#0x00,00118$
	inc	r0
00118$:
	ljmp	00105$
00108$:
;main.c:64: return result;
;     genRet
	mov	dpl,_oct_to_int_result_1_1
	mov	dph,(_oct_to_int_result_1_1 + 1)
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_to_int'
;------------------------------------------------------------
;size                      Allocated to in memory with name '_dec_to_int_PARM_2'
;dec                       Allocated to in memory with name '_dec_to_int_dec_1_1'
;result                    Allocated to in memory with name '_dec_to_int_result_1_1'
;i                         Allocated to registers 
;------------------------------------------------------------
;main.c:67: int dec_to_int(char dec[], int size){
;	-----------------------------------------
;	 function dec_to_int
;	-----------------------------------------
_dec_to_int:
;     genReceive
	mov	_dec_to_int_dec_1_1,dpl
	mov	(_dec_to_int_dec_1_1 + 1),dph
	mov	(_dec_to_int_dec_1_1 + 2),b
;main.c:68: int result = 0;
;     genAssign
	clr	a
	mov	(_dec_to_int_result_1_1 + 1),a
	mov	_dec_to_int_result_1_1,a
;main.c:71: for(i = 0; i < size; ++i){
;     genAssign
	mov	r7,#0x00
	mov	r0,#0x00
00105$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r7
	subb	a,_dec_to_int_PARM_2
	mov	a,r0
	xrl	a,#0x80
	mov	b,(_dec_to_int_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
	jc	00115$
	ljmp	00108$
00115$:
;main.c:72: if (dec[i] >= '0' && dec[i] <= '9'){
;     genPlus
;       Peephole 236g
	mov  a,r7
	add	a,_dec_to_int_dec_1_1
	mov	r1,a
;       Peephole 236g
	mov  a,r0
	addc	a,(_dec_to_int_dec_1_1 + 1)
	mov	r5,a
	mov	r6,(_dec_to_int_dec_1_1 + 2)
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
;     genCmpLt
;     genCmp
;       Peephole 106   removed redundant mov 
	mov  r2,a
	clr  c
	xrl	a,#0x80
	subb	a,#0xb0
;     genIfxJump
;       Peephole 132   changed ljmp to sjmp
;       Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00116$:
;     genCmpGt
;     genCmp
	clr	c
;       Peephole 159   avoided xrl during execution
	mov  a,#(0x39 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
;       Peephole 132   changed ljmp to sjmp
;       Peephole 160   removed sjmp by inverse jump logic
	jc   00102$
00117$:
;main.c:73: dec[i] -= '0';
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
;     genMinus
;       Peephole 105   removed redundant mov
;     genPointerSet
;     genGenPointerSet
;       Peephole 191   removed redundant mov
;       Peephole 215 removed some movs
	add  a,#0xd0
	mov  r2,a
	mov  dpl,r1
	mov  dph,r5
	mov  b,r6
	lcall	__gptrput
;       Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;main.c:77: return -1;
;     genRet
;       Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0xFF)<<8) + 0xFF)
	ljmp	00109$
00103$:
;main.c:79: result += (dec[i] * power(10, size - i - 1));
;     genPointerGet
;     genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
;     genMinus
	mov	a,_dec_to_int_PARM_2
	clr	c
;       Peephole 236l
	subb  a,r7
	mov	r2,a
	mov	a,(_dec_to_int_PARM_2 + 1)
;       Peephole 236l
	subb  a,r0
	mov	r3,a
;     genMinus
;     genMinusDec
	mov	a,r2
	add	a,#0xff
	mov	_power_PARM_2,a
	mov	a,r3
	addc	a,#0xff
	mov	(_power_PARM_2 + 1),a
;     genCall
;       Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0x00)<<8) + 0x0A)
	push	ar7
	push	ar0
	push	ar1
	lcall	_power
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar0
	pop	ar7
;     genCast
	mov	a,r1
	rlc	a
	subb	a,acc
	mov	r4,a
;     genAssign
	mov	__mulsint_PARM_2,r2
	mov	(__mulsint_PARM_2 + 1),r3
;     genCall
	mov	dpl,r1
	mov	dph,r4
	push	ar7
	push	ar0
	lcall	__mulsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar0
	pop	ar7
;     genPlus
;       Peephole 236g
	mov  a,r2
	add	a,_dec_to_int_result_1_1
	mov	_dec_to_int_result_1_1,a
;       Peephole 236g
	mov  a,r3
	addc	a,(_dec_to_int_result_1_1 + 1)
	mov	(_dec_to_int_result_1_1 + 1),a
;main.c:71: for(i = 0; i < size; ++i){
;     genPlus
;     genPlusIncr
	inc	r7
	cjne	r7,#0x00,00118$
	inc	r0
00118$:
	ljmp	00105$
00108$:
;main.c:81: return result;
;     genRet
	mov	dpl,_dec_to_int_result_1_1
	mov	dph,(_dec_to_int_result_1_1 + 1)
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_the_stuff'
;------------------------------------------------------------
;number                    Allocated to registers r2 r3 
;i                         Allocated to registers 
;array                     Allocated to in memory with name '_print_the_stuff_array_1_1'
;c                         Allocated to registers r6 
;------------------------------------------------------------
;main.c:84: void print_the_stuff(int number){
;	-----------------------------------------
;	 function print_the_stuff
;	-----------------------------------------
_print_the_stuff:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
;main.c:86: char array[] = {'\0','\0','\0','\0'};
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	_print_the_stuff_array_1_1,#0x00
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	(_print_the_stuff_array_1_1 + 0x0001),#0x00
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	(_print_the_stuff_array_1_1 + 0x0002),#0x00
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	(_print_the_stuff_array_1_1 + 0x0003),#0x00
;main.c:89: if (number == 0) putchar('0');
;     genCmpEq
;       Peephole 132   changed ljmp to sjmp
;       Peephole 198   optimized misc jump sequence
	cjne r2,#0x00,00114$
	cjne r3,#0x00,00114$
;00117$:
;       Peephole 200   removed redundant sjmp
00118$:
;     genCall
	mov	dpl,#0x30
	push	ar2
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar2
;main.c:91: while(number > 0){
00114$:
;     genAssign
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
;     genCmpGt
;     genCmp
	clr	c
;       Peephole 180   changed mov to clr
	clr  a
	subb	a,r2
;       Peephole 159   avoided xrl during execution
	mov  a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;     genIfxJump
	jc	00119$
	ljmp	00116$
00119$:
;main.c:92: c = ( number % 10 ) + '0';
;     genAssign
	clr	a
	mov	(__modsint_PARM_2 + 1),a
	mov	__modsint_PARM_2,#0x0A
;     genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;     genPlus
	add	a,#0x30
	mov	r6,a
	mov	a,b
	addc	a,#0x00
	mov	r7,a
;     genCast
;main.c:93: array[i] = c;
;     genPlus
;       Peephole 236g
	mov  a,r4
	add	a,#_print_the_stuff_array_1_1
;     genPointerSet
;     genNearPointerSet
	mov	r0,acc
	mov	@r0,ar6
;main.c:94: ++i;
;     genPlus
;     genPlusIncr
	inc	r4
	cjne	r4,#0x00,00120$
	inc	r5
00120$:
;main.c:95: number /= 10;
;     genAssign
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	__divsint_PARM_2,#0x0A
;     genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;     genAssign
	mov	r2,a
	mov	r3,b
	ljmp	00103$
;main.c:97: for(i = 4; i >= 0; --i)
00116$:
;     genAssign
	mov	r2,#0x04
	mov	r3,#0x00
00106$:
;     genCmpLt
;     genCmp
	mov	a,r3
;     genIfxJump
;       Peephole 112   removed ljmp by inverse jump logic
	jb   acc.7,00109$
00121$:
;main.c:99: putchar(array[i]);
;     genPlus
;       Peephole 236g
	mov  a,r2
	add	a,#_print_the_stuff_array_1_1
	mov	r0,a
;     genPointerGet
;     genNearPointerGet
	mov	dpl,@r0
;     genCall
	push	ar2
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar2
;main.c:97: for(i = 4; i >= 0; --i)
;     genMinus
;     genMinusDec
;	tail decrement optimized
	dec	r2
	cjne	r2,#0xff,00106$
	dec	r3
;       Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00109$:
;main.c:101: putchar('\n');
;     genCall
	mov	dpl,#0x0A
	lcall	_putchar
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'do_the_stuff'
;------------------------------------------------------------
;i                         Allocated to registers 
;j                         Allocated to registers 
;num1                      Allocated to registers r2 r3 
;num2                      Allocated to in memory with name '_do_the_stuff_num2_1_1'
;num3                      Allocated to registers r4 r5 
;result                    Allocated to registers r2 r3 
;c                         Allocated to registers r6 
;number                    Allocated to in memory with name '_do_the_stuff_number_1_1'
;------------------------------------------------------------
;main.c:104: void do_the_stuff(){
;	-----------------------------------------
;	 function do_the_stuff
;	-----------------------------------------
_do_the_stuff:
;main.c:112: char number[] = { '\0','\0','\0','\0' };
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	_do_the_stuff_number_1_1,#0x00
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	(_do_the_stuff_number_1_1 + 0x0001),#0x00
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	(_do_the_stuff_number_1_1 + 0x0002),#0x00
;     genPointerSet
;     genNearPointerSet
;     genDataPointerSet
	mov	(_do_the_stuff_number_1_1 + 0x0003),#0x00
;main.c:114: for(i = 0; i < 4; ++i)
;     genAssign
	mov	r2,#0x00
	mov	r3,#0x00
;     genAssign
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
;       Peephole 108   removed ljmp by inverse jump logic
	jnc  00106$
00130$:
;main.c:116: c = getchar();
;     genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_getchar
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;     genAssign
	mov	r6,a
;main.c:117: if (c == ' ') break;
;     genCmpEq
	cjne	r6,#0x20,00131$
;       Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00131$:
;main.c:118: number[i] = c;
;     genPlus
;       Peephole 236g
	mov  a,r4
	add	a,#_do_the_stuff_number_1_1
;     genPointerSet
;     genNearPointerSet
	mov	r0,acc
	mov	@r0,ar6
;main.c:119: putchar(number[i]);
;     genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;main.c:120: ++j;
;     genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00132$
	inc	r3
00132$:
;main.c:114: for(i = 0; i < 4; ++i)
;     genPlus
;     genPlusIncr
	inc	r4
	cjne	r4,#0x00,00133$
	inc	r5
00133$:
;       Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00106$:
;main.c:123: num1 = hex_to_int(number, j);
;     genAssign
	mov	_hex_to_int_PARM_2,r2
	mov	(_hex_to_int_PARM_2 + 1),r3
;     genCall
;       Peephole 182a use 16 bit load of DPTR
	mov dptr,#_do_the_stuff_number_1_1
	mov	b,#0x00
	push	ar6
	lcall	_hex_to_int
	mov	a,dpl
	mov	b,dph
	pop	ar6
;     genAssign
	mov	r2,a
	mov	r3,b
;main.c:125: print_the_stuff(num1);
;     genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar6
	lcall	_print_the_stuff
	pop	ar6
	pop	ar3
	pop	ar2
;main.c:127: putchar(' ');
;     genCall
	mov	dpl,#0x20
	push	ar2
	push	ar3
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar3
	pop	ar2
;main.c:130: for(i = 0; i < 4; ++i)
;     genAssign
	mov	r4,#0x00
	mov	r5,#0x00
;     genAssign
	mov	r7,#0x00
	mov	r0,#0x00
00109$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r7
	subb	a,#0x04
	mov	a,r0
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
	jc	00134$
	ljmp	00112$
00134$:
;main.c:132: c = getchar();
;     genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_getchar
	mov	a,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;     genAssign
	mov	r6,a
;main.c:133: if (c == ' ') break;
;     genCmpEq
	cjne	r6,#0x20,00135$
;       Peephole 132   changed ljmp to sjmp
	sjmp 00112$
00135$:
;main.c:134: number[i] = c;
;     genPlus
;       Peephole 236g
	mov  a,r7
	add	a,#_do_the_stuff_number_1_1
;     genPointerSet
;     genNearPointerSet
	mov	r1,acc
	mov	@r1,ar6
;main.c:135: putchar(number[i]);
;     genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_putchar
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;main.c:136: ++j;
;     genPlus
;     genPlusIncr
	inc	r4
	cjne	r4,#0x00,00136$
	inc	r5
00136$:
;main.c:130: for(i = 0; i < 4; ++i)
;     genPlus
;     genPlusIncr
	inc	r7
	cjne	r7,#0x00,00137$
	inc	r0
00137$:
	ljmp	00109$
00112$:
;main.c:139: num2 = dec_to_int(number, j);
;     genAssign
	mov	_dec_to_int_PARM_2,r4
	mov	(_dec_to_int_PARM_2 + 1),r5
;     genCall
;       Peephole 182a use 16 bit load of DPTR
	mov dptr,#_do_the_stuff_number_1_1
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar6
	lcall	_dec_to_int
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar3
	pop	ar2
;     genAssign
	mov	_do_the_stuff_num2_1_1,a
	mov	(_do_the_stuff_num2_1_1 + 1),b
;main.c:141: print_the_stuff(num2);
;     genCall
	mov	dpl,_do_the_stuff_num2_1_1
	mov	dph,(_do_the_stuff_num2_1_1 + 1)
	push	ar2
	push	ar3
	push	ar6
	lcall	_print_the_stuff
	pop	ar6
	pop	ar3
	pop	ar2
;main.c:143: putchar(' ');
;     genCall
	mov	dpl,#0x20
	push	ar2
	push	ar3
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar3
	pop	ar2
;main.c:146: for(i = 0; i < 4; ++i)
;     genAssign
	mov	r7,#0x00
	mov	r0,#0x00
;     genAssign
	mov	r1,#0x00
	mov	r4,#0x00
00115$:
;     genCmpLt
;     genCmp
	clr	c
	mov	a,r1
	subb	a,#0x04
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
;     genIfxJump
	jc	00138$
	ljmp	00118$
00138$:
;main.c:148: c = getchar();
;     genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_getchar
	mov	a,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;     genAssign
	mov	r6,a
;main.c:149: if (c == 'l') break;
;     genCmpEq
	cjne	r6,#0x6C,00139$
;       Peephole 132   changed ljmp to sjmp
	sjmp 00118$
00139$:
;main.c:150: number[i] = c;
;     genPlus
;       Peephole 236g
	mov  a,r1
	add	a,#_do_the_stuff_number_1_1
;     genPointerSet
;     genNearPointerSet
	push	ar0
	mov	r0,acc
	mov	@r0,ar6
	pop	ar0
;main.c:151: putchar(number[i]);
;     genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_putchar
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;main.c:152: ++j;
;     genPlus
;     genPlusIncr
	inc	r7
	cjne	r7,#0x00,00140$
	inc	r0
00140$:
;main.c:146: for(i = 0; i < 4; ++i)
;     genPlus
;     genPlusIncr
	inc	r1
	cjne	r1,#0x00,00141$
	inc	r4
00141$:
	ljmp	00115$
00118$:
;main.c:155: num3 = oct_to_int(number, j);
;     genAssign
	mov	_oct_to_int_PARM_2,r7
	mov	(_oct_to_int_PARM_2 + 1),r0
;     genCall
;       Peephole 182a use 16 bit load of DPTR
	mov dptr,#_do_the_stuff_number_1_1
	mov	b,#0x00
	push	ar2
	push	ar3
	lcall	_oct_to_int
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar2
;     genAssign
	mov	r4,a
	mov	r5,b
;main.c:157: print_the_stuff(num3);
;     genCall
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_print_the_stuff
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;main.c:159: putchar('\n');
;     genCall
	mov	dpl,#0x0A
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;main.c:162: result = num1 / num2;
;     genAssign
	mov	__divsint_PARM_2,_do_the_stuff_num2_1_1
	mov	(__divsint_PARM_2 + 1),(_do_the_stuff_num2_1_1 + 1)
;     genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar4
	push	ar5
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar4
;     genAssign
	mov	r2,a
	mov	r3,b
;main.c:163: result |= num3;
;     genOr
	mov	a,r4
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
;main.c:164: print_the_stuff(result);
;     genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_print_the_stuff
00119$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;main.c:167: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;main.c:168: SCON = 0x50;
;     genAssign
	mov	_SCON,#0x50
;main.c:169: TMOD &=	0x0F;
;     genAnd
	anl	_TMOD,#0x0F
;main.c:170: TMOD |=	0x20;
;     genOr
	orl	_TMOD,#0x20
;main.c:171: TH1 = TL1 = 253;
;     genAssign
	mov	_TL1,#0xFD
;     genAssign
	mov	_TH1,#0xFD
;main.c:172: TCON =	0x40;
;     genAssign
	mov	_TCON,#0x40
;main.c:173: PCON = 0x80;
;     genAssign
	mov	_PCON,#0x80
;main.c:179: while(1){
00102$:
;main.c:180: do_the_stuff();
;     genCall
	lcall	_do_the_stuff
;       Peephole 132   changed ljmp to sjmp
	sjmp 00102$
00104$:
	ret
	.area CSEG    (CODE)
	.area XINIT   (CODE)
