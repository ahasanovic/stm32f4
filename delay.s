	.syntax unified
	.cpu cortex-m4
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu fpv4-sp-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"delay.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	getD1
	.thumb
	.thumb_func
	.type	getD1, %function
getD1:
.LFB110:
	.file 1 "delay.c"
	.loc 1 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 22 0
	ldr	r3, .L2
	ldr	r0, [r3]
	.loc 1 23 0
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
	.cfi_endproc
.LFE110:
	.size	getD1, .-getD1
	.align	2
	.global	getD5
	.thumb
	.thumb_func
	.type	getD5, %function
getD5:
.LFB111:
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 27 0
	ldr	r3, .L5
	ldr	r0, [r3, #4]
	.loc 1 28 0
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.cfi_endproc
.LFE111:
	.size	getD5, .-getD5
	.align	2
	.global	getD2
	.thumb
	.thumb_func
	.type	getD2, %function
getD2:
.LFB112:
	.loc 1 31 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 32 0
	ldr	r3, .L8
	ldr	r0, [r3, #8]
	.loc 1 33 0
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.cfi_endproc
.LFE112:
	.size	getD2, .-getD2
	.align	2
	.global	getD3
	.thumb
	.thumb_func
	.type	getD3, %function
getD3:
.LFB113:
	.loc 1 36 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 37 0
	ldr	r3, .L11
	ldr	r0, [r3, #12]
	.loc 1 38 0
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.cfi_endproc
.LFE113:
	.size	getD3, .-getD3
	.align	2
	.global	getD4
	.thumb
	.thumb_func
	.type	getD4, %function
getD4:
.LFB114:
	.loc 1 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 42 0
	ldr	r3, .L14
	ldr	r0, [r3, #16]
	.loc 1 43 0
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.cfi_endproc
.LFE114:
	.size	getD4, .-getD4
	.align	2
	.global	getD6
	.thumb
	.thumb_func
	.type	getD6, %function
getD6:
.LFB115:
	.loc 1 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 47 0
	ldr	r3, .L17
	ldr	r0, [r3, #20]
	.loc 1 48 0
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.cfi_endproc
.LFE115:
	.size	getD6, .-getD6
	.align	2
	.global	setB1
	.thumb
	.thumb_func
	.type	setB1, %function
setB1:
.LFB116:
	.loc 1 51 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 52 0
	ldr	r3, .L20
	str	r0, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	PERIOD
	.cfi_endproc
.LFE116:
	.size	setB1, .-setB1
	.align	2
	.global	setB2
	.thumb
	.thumb_func
	.type	setB2, %function
setB2:
.LFB117:
	.loc 1 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1:
	.loc 1 57 0
	ldr	r3, .L23
	str	r0, [r3, #4]
	bx	lr
.L24:
	.align	2
.L23:
	.word	PERIOD
	.cfi_endproc
.LFE117:
	.size	setB2, .-setB2
	.align	2
	.global	setB3
	.thumb
	.thumb_func
	.type	setB3, %function
setB3:
.LFB118:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 62 0
	ldr	r3, .L26
	str	r0, [r3, #8]
	bx	lr
.L27:
	.align	2
.L26:
	.word	PERIOD
	.cfi_endproc
.LFE118:
	.size	setB3, .-setB3
	.align	2
	.global	setB4
	.thumb
	.thumb_func
	.type	setB4, %function
setB4:
.LFB119:
	.loc 1 66 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3:
	.loc 1 67 0
	ldr	r3, .L29
	str	r0, [r3, #12]
	bx	lr
.L30:
	.align	2
.L29:
	.word	PERIOD
	.cfi_endproc
.LFE119:
	.size	setB4, .-setB4
	.align	2
	.global	setP_APA
	.thumb
	.thumb_func
	.type	setP_APA, %function
setP_APA:
.LFB120:
	.loc 1 70 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 71 0
	ldr	r3, .L32
	str	r0, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	PERIOD_APA
	.cfi_endproc
.LFE120:
	.size	setP_APA, .-setP_APA
	.align	2
	.global	setP_WS
	.thumb
	.thumb_func
	.type	setP_WS, %function
setP_WS:
.LFB121:
	.loc 1 75 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5:
	.loc 1 76 0
	ldr	r3, .L35
	str	r0, [r3]
	bx	lr
.L36:
	.align	2
.L35:
	.word	PERIOD_WS
	.cfi_endproc
.LFE121:
	.size	setP_WS, .-setP_WS
	.align	2
	.global	getB1
	.thumb
	.thumb_func
	.type	getB1, %function
getB1:
.LFB122:
	.loc 1 80 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 81 0
	ldr	r3, .L38
	ldr	r0, [r3]
	.loc 1 82 0
	bx	lr
.L39:
	.align	2
.L38:
	.word	PERIOD
	.cfi_endproc
.LFE122:
	.size	getB1, .-getB1
	.align	2
	.global	getB2
	.thumb
	.thumb_func
	.type	getB2, %function
getB2:
.LFB123:
	.loc 1 85 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 86 0
	ldr	r3, .L41
	ldr	r0, [r3, #4]
	.loc 1 87 0
	bx	lr
.L42:
	.align	2
.L41:
	.word	PERIOD
	.cfi_endproc
.LFE123:
	.size	getB2, .-getB2
	.align	2
	.global	getB3
	.thumb
	.thumb_func
	.type	getB3, %function
getB3:
.LFB124:
	.loc 1 90 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 91 0
	ldr	r3, .L44
	ldr	r0, [r3, #8]
	.loc 1 92 0
	bx	lr
.L45:
	.align	2
.L44:
	.word	PERIOD
	.cfi_endproc
.LFE124:
	.size	getB3, .-getB3
	.align	2
	.global	getB4
	.thumb
	.thumb_func
	.type	getB4, %function
getB4:
.LFB125:
	.loc 1 95 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 96 0
	ldr	r3, .L47
	ldr	r0, [r3, #12]
	.loc 1 97 0
	bx	lr
.L48:
	.align	2
.L47:
	.word	PERIOD
	.cfi_endproc
.LFE125:
	.size	getB4, .-getB4
	.align	2
	.global	getP_APA
	.thumb
	.thumb_func
	.type	getP_APA, %function
getP_APA:
.LFB126:
	.loc 1 100 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 101 0
	ldr	r3, .L50
	ldr	r0, [r3]
	.loc 1 102 0
	bx	lr
.L51:
	.align	2
.L50:
	.word	PERIOD_APA
	.cfi_endproc
.LFE126:
	.size	getP_APA, .-getP_APA
	.align	2
	.global	getP_WS
	.thumb
	.thumb_func
	.type	getP_WS, %function
getP_WS:
.LFB127:
	.loc 1 105 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 106 0
	ldr	r3, .L53
	ldr	r0, [r3]
	.loc 1 107 0
	bx	lr
.L54:
	.align	2
.L53:
	.word	PERIOD_WS
	.cfi_endproc
.LFE127:
	.size	getP_WS, .-getP_WS
	.align	2
	.global	setD1
	.thumb
	.thumb_func
	.type	setD1, %function
setD1:
.LFB128:
	.loc 1 111 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL6:
	.loc 1 112 0
	ldr	r2, .L56
	str	r0, [r2]
	.loc 1 113 0
	mov	r0, r3
.LVL7:
	bx	lr
.L57:
	.align	2
.L56:
	.word	.LANCHOR0
	.cfi_endproc
.LFE128:
	.size	setD1, .-setD1
	.align	2
	.global	setD2
	.thumb
	.thumb_func
	.type	setD2, %function
setD2:
.LFB129:
	.loc 1 116 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
	.loc 1 117 0
	ldr	r2, .L59
	str	r0, [r2, #8]
	.loc 1 118 0
	mov	r0, r3
.LVL9:
	bx	lr
.L60:
	.align	2
.L59:
	.word	.LANCHOR0
	.cfi_endproc
.LFE129:
	.size	setD2, .-setD2
	.align	2
	.global	setD3
	.thumb
	.thumb_func
	.type	setD3, %function
setD3:
.LFB130:
	.loc 1 121 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL10:
	.loc 1 122 0
	ldr	r2, .L62
	str	r0, [r2, #12]
	.loc 1 123 0
	mov	r0, r3
.LVL11:
	bx	lr
.L63:
	.align	2
.L62:
	.word	.LANCHOR0
	.cfi_endproc
.LFE130:
	.size	setD3, .-setD3
	.align	2
	.global	setD4
	.thumb
	.thumb_func
	.type	setD4, %function
setD4:
.LFB131:
	.loc 1 126 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL12:
	.loc 1 127 0
	ldr	r2, .L65
	str	r0, [r2, #16]
	.loc 1 128 0
	mov	r0, r3
.LVL13:
	bx	lr
.L66:
	.align	2
.L65:
	.word	.LANCHOR0
	.cfi_endproc
.LFE131:
	.size	setD4, .-setD4
	.align	2
	.global	setD5
	.thumb
	.thumb_func
	.type	setD5, %function
setD5:
.LFB132:
	.loc 1 130 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL14:
	.loc 1 131 0
	ldr	r2, .L68
	str	r0, [r2, #4]
	.loc 1 132 0
	mov	r0, r3
.LVL15:
	bx	lr
.L69:
	.align	2
.L68:
	.word	.LANCHOR0
	.cfi_endproc
.LFE132:
	.size	setD5, .-setD5
	.align	2
	.global	setD6
	.thumb
	.thumb_func
	.type	setD6, %function
setD6:
.LFB133:
	.loc 1 135 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL16:
	.loc 1 136 0
	ldr	r2, .L71
	str	r0, [r2, #20]
	.loc 1 137 0
	mov	r0, r3
.LVL17:
	bx	lr
.L72:
	.align	2
.L71:
	.word	.LANCHOR0
	.cfi_endproc
.LFE133:
	.size	setD6, .-setD6
	.align	2
	.global	delay_ms
	.thumb
	.thumb_func
	.type	delay_ms, %function
delay_ms:
.LFB134:
	.loc 1 141 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL18:
	.loc 1 143 0
	ldr	r1, .L84
	.loc 1 144 0
	ldr	r2, .L84+4
	.loc 1 143 0
	ldr	r3, [r1, #64]
	.loc 1 141 0
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 143 0
	orr	r3, r3, #64
	.loc 1 144 0
	movs	r6, #83
	.loc 1 146 0
	mov	r5, #1000
	.loc 1 147 0
	movs	r4, #132
	.loc 1 143 0
	str	r3, [r1, #64]
	.loc 1 144 0
	strh	r6, [r2, #40]	@ movhi
	.loc 1 146 0
	str	r5, [r2, #44]
	.loc 1 147 0
	strh	r4, [r2]	@ movhi
	.loc 1 149 0
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 150 0
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 154 0
	mov	r1, r2
	.loc 1 151 0
	cbz	r0, .L77
.L75:
	.loc 1 154 0 discriminator 1
	ldrh	r3, [r2, #16]
	lsls	r3, r3, #31
	bpl	.L75
.LVL19:
	.loc 1 156 0
	ldrh	r3, [r1, #16]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 151 0
	subs	r0, r0, #1
.LVL20:
	.loc 1 156 0
	strh	r3, [r1, #16]	@ movhi
	.loc 1 151 0
	bne	.L75
.L77:
	.loc 1 159 0
	ldr	r1, .L84+4
	.loc 1 160 0
	ldr	r2, .L84
	.loc 1 159 0
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 160 0
	ldr	r3, [r2, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 161 0
	pop	{r4, r5, r6}
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L85:
	.align	2
.L84:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE134:
	.size	delay_ms, .-delay_ms
	.align	2
	.global	delay_us
	.thumb
	.thumb_func
	.type	delay_us, %function
delay_us:
.LFB135:
	.loc 1 164 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL21:
	.loc 1 166 0
	ldr	r1, .L96
	.loc 1 167 0
	ldr	r2, .L96+4
	.loc 1 166 0
	ldr	r3, [r1, #64]
	.loc 1 164 0
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 166 0
	orr	r3, r3, #64
	.loc 1 167 0
	movs	r6, #0
	.loc 1 169 0
	movs	r5, #84
	.loc 1 170 0
	movs	r4, #132
	.loc 1 166 0
	str	r3, [r1, #64]
	.loc 1 167 0
	strh	r6, [r2, #40]	@ movhi
	.loc 1 169 0
	str	r5, [r2, #44]
	.loc 1 170 0
	strh	r4, [r2]	@ movhi
	.loc 1 173 0
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 174 0
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	.loc 1 177 0
	mov	r1, r2
	.loc 1 175 0
	cbz	r0, .L90
.L88:
	.loc 1 177 0 discriminator 1
	ldrh	r3, [r2, #16]
	lsls	r3, r3, #31
	bpl	.L88
.LVL22:
	.loc 1 179 0
	ldrh	r3, [r1, #16]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 175 0
	subs	r0, r0, #1
.LVL23:
	.loc 1 179 0
	strh	r3, [r1, #16]	@ movhi
	.loc 1 175 0
	bne	.L88
.L90:
	.loc 1 182 0
	ldr	r1, .L96+4
	.loc 1 183 0
	ldr	r2, .L96
	.loc 1 182 0
	ldrh	r3, [r1]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	.loc 1 183 0
	ldr	r3, [r2, #64]
	bic	r3, r3, #64
	str	r3, [r2, #64]
	.loc 1 184 0
	pop	{r4, r5, r6}
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L97:
	.align	2
.L96:
	.word	1073887232
	.word	1073747968
	.cfi_endproc
.LFE135:
	.size	delay_us, .-delay_us
	.align	2
	.global	initSTOPWATCH
	.thumb
	.thumb_func
	.type	initSTOPWATCH, %function
initSTOPWATCH:
.LFB136:
	.loc 1 187 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 188 0
	ldr	r0, .L100
	.loc 1 189 0
	ldr	r3, .L100+4
	.loc 1 188 0
	ldr	r2, [r0, #64]
	.loc 1 189 0
	movs	r6, #83
	.loc 1 191 0
	mov	r5, #-1
	.loc 1 192 0
	movs	r4, #132
	.loc 1 194 0
	movs	r1, #0
	.loc 1 188 0
	orr	r2, r2, #8
	str	r2, [r0, #64]
	.loc 1 189 0
	strh	r6, [r3, #40]	@ movhi
	.loc 1 191 0
	str	r5, [r3, #44]
	.loc 1 192 0
	strh	r4, [r3]	@ movhi
	.loc 1 194 0
	strh	r1, [r3, #4]	@ movhi
	.loc 1 197 0
	pop	{r4, r5, r6}
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 195 0
	str	r1, [r3, #36]
	.loc 1 197 0
	bx	lr
.L101:
	.align	2
.L100:
	.word	1073887232
	.word	1073744896
	.cfi_endproc
.LFE136:
	.size	initSTOPWATCH, .-initSTOPWATCH
	.align	2
	.global	startSTOPWATCH
	.thumb
	.thumb_func
	.type	startSTOPWATCH, %function
startSTOPWATCH:
.LFB137:
	.loc 1 200 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 201 0
	ldr	r2, .L103
	ldrh	r3, [r2, #20]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2, #20]	@ movhi
	.loc 1 202 0
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r2]	@ movhi
	bx	lr
.L104:
	.align	2
.L103:
	.word	1073744896
	.cfi_endproc
.LFE137:
	.size	startSTOPWATCH, .-startSTOPWATCH
	.align	2
	.global	stopSTOPWATCH
	.thumb
	.thumb_func
	.type	stopSTOPWATCH, %function
stopSTOPWATCH:
.LFB138:
	.loc 1 206 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 209 0
	ldr	r2, .L106
	ldr	r0, [r2, #36]
.LVL24:
	.loc 1 210 0
	ldrh	r3, [r2]
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	.loc 1 212 0
	bx	lr
.L107:
	.align	2
.L106:
	.word	1073744896
	.cfi_endproc
.LFE138:
	.size	stopSTOPWATCH, .-stopSTOPWATCH
	.align	2
	.global	disableSYSTIMER12
	.thumb
	.thumb_func
	.type	disableSYSTIMER12, %function
disableSYSTIMER12:
.LFB139:
	.loc 1 215 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 216 0
	ldr	r2, .L109
.LBB54:
.LBB55:
	.loc 1 112 0
	ldr	r1, .L109+4
.LBE55:
.LBE54:
	.loc 1 216 0
	ldr	r3, [r2, #64]
.LBB58:
.LBB56:
	.loc 1 112 0
	movs	r0, #0
.LBE56:
.LBE58:
	.loc 1 216 0
	bic	r3, r3, #64
	str	r3, [r2, #64]
.LVL25:
.LBB59:
.LBB57:
	.loc 1 112 0
	str	r0, [r1]
	bx	lr
.L110:
	.align	2
.L109:
	.word	1073887232
	.word	.LANCHOR0
.LBE57:
.LBE59:
	.cfi_endproc
.LFE139:
	.size	disableSYSTIMER12, .-disableSYSTIMER12
	.align	2
	.global	disableSYSTIMER3
	.thumb
	.thumb_func
	.type	disableSYSTIMER3, %function
disableSYSTIMER3:
.LFB140:
	.loc 1 221 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 222 0
	ldr	r2, .L112
.LBB60:
.LBB61:
	.loc 1 117 0
	ldr	r1, .L112+4
.LBE61:
.LBE60:
	.loc 1 222 0
	ldr	r3, [r2, #64]
.LBB64:
.LBB62:
	.loc 1 117 0
	movs	r0, #0
.LBE62:
.LBE64:
	.loc 1 222 0
	bic	r3, r3, #2
	str	r3, [r2, #64]
.LVL26:
.LBB65:
.LBB63:
	.loc 1 117 0
	str	r0, [r1, #8]
	bx	lr
.L113:
	.align	2
.L112:
	.word	1073887232
	.word	.LANCHOR0
.LBE63:
.LBE65:
	.cfi_endproc
.LFE140:
	.size	disableSYSTIMER3, .-disableSYSTIMER3
	.align	2
	.global	disableSYSTIMER2
	.thumb
	.thumb_func
	.type	disableSYSTIMER2, %function
disableSYSTIMER2:
.LFB141:
	.loc 1 227 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 228 0
	ldr	r2, .L115
.LBB66:
.LBB67:
	.loc 1 122 0
	ldr	r1, .L115+4
.LBE67:
.LBE66:
	.loc 1 228 0
	ldr	r3, [r2, #64]
.LBB70:
.LBB68:
	.loc 1 122 0
	movs	r0, #0
.LBE68:
.LBE70:
	.loc 1 228 0
	bic	r3, r3, #1
	str	r3, [r2, #64]
.LVL27:
.LBB71:
.LBB69:
	.loc 1 122 0
	str	r0, [r1, #12]
	bx	lr
.L116:
	.align	2
.L115:
	.word	1073887232
	.word	.LANCHOR0
.LBE69:
.LBE71:
	.cfi_endproc
.LFE141:
	.size	disableSYSTIMER2, .-disableSYSTIMER2
	.align	2
	.global	disableSYSTIMER5
	.thumb
	.thumb_func
	.type	disableSYSTIMER5, %function
disableSYSTIMER5:
.LFB142:
	.loc 1 233 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 234 0
	ldr	r2, .L118
.LBB72:
.LBB73:
	.loc 1 127 0
	ldr	r1, .L118+4
.LBE73:
.LBE72:
	.loc 1 234 0
	ldr	r3, [r2, #64]
.LBB76:
.LBB74:
	.loc 1 127 0
	movs	r0, #0
.LBE74:
.LBE76:
	.loc 1 234 0
	bic	r3, r3, #8
	str	r3, [r2, #64]
.LVL28:
.LBB77:
.LBB75:
	.loc 1 127 0
	str	r0, [r1, #16]
	bx	lr
.L119:
	.align	2
.L118:
	.word	1073887232
	.word	.LANCHOR0
.LBE75:
.LBE77:
	.cfi_endproc
.LFE142:
	.size	disableSYSTIMER5, .-disableSYSTIMER5
	.align	2
	.global	initSYSTIMER
	.thumb
	.thumb_func
	.type	initSYSTIMER, %function
initSYSTIMER:
.LFB143:
	.loc 1 238 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 239 0
	ldr	r1, .L122
.LBB78:
.LBB79:
	.file 2 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.loc 2 1162 0
	ldr	r2, .L122+4
.LBE79:
.LBE78:
	.loc 1 239 0
	ldr	r3, [r1, #64]
	.loc 1 365 0
	ldr	r0, .L122+8
	.loc 1 238 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 239 0
	orr	r3, r3, #64
	.loc 1 241 0
	ldr	lr, .L122+28
	.loc 1 239 0
	str	r3, [r1, #64]
	.loc 1 241 0
	ldrh	ip, [lr]
	.loc 1 276 0
	ldr	r7, .L122+12
	.loc 1 312 0
	ldr	r6, .L122+16
	.loc 1 330 0
	ldr	r5, .L122+20
	.loc 1 348 0
	ldr	r4, .L122+24
	.loc 1 241 0
	uxth	ip, ip
	.loc 1 247 0
	movs	r3, #0
	.loc 1 242 0
	mov	r10, #83
	.loc 1 244 0
	mov	r9, #1000
	.loc 1 245 0
	mov	r8, #132
	.loc 1 241 0
	orr	ip, ip, #1
	strh	ip, [lr]	@ movhi
	.loc 1 242 0
	strh	r10, [lr, #40]	@ movhi
	.loc 1 244 0
	str	r9, [lr, #44]
	.loc 1 245 0
	strh	r8, [lr]	@ movhi
	.loc 1 247 0
	strh	r3, [lr, #4]	@ movhi
	.loc 1 248 0
	str	r3, [lr, #36]
	.loc 1 249 0
	ldrh	fp, [lr, #20]
	uxth	fp, fp
	orr	fp, fp, #1
	.loc 1 250 0
	mov	ip, #1
	.loc 1 249 0
	strh	fp, [lr, #20]	@ movhi
.LBB81:
.LBB82:
	.loc 2 1075 0
	mov	fp, #2048
.LBE82:
.LBE81:
	.loc 1 250 0
	strh	ip, [lr, #12]	@ movhi
.LVL29:
.LBB84:
.LBB80:
	.loc 2 1162 0
	strb	r3, [r2, #811]
.LVL30:
.LBE80:
.LBE84:
.LBB85:
.LBB83:
	.loc 2 1075 0
	str	fp, [r2, #4]
.LBE83:
.LBE85:
	.loc 1 254 0
	ldrh	fp, [lr]
	uxth	fp, fp
	orr	fp, fp, ip
	strh	fp, [lr]	@ movhi
	.loc 1 274 0
	ldr	lr, [r1, #64]
	orr	lr, lr, #2
	str	lr, [r1, #64]
	.loc 1 276 0
	ldrh	lr, [r7]
	uxth	lr, lr
	orr	lr, lr, ip
	strh	lr, [r7]	@ movhi
	.loc 1 277 0
	strh	r10, [r7, #40]	@ movhi
	.loc 1 279 0
	str	r9, [r7, #44]
	.loc 1 280 0
	strh	r8, [r7]	@ movhi
	.loc 1 282 0
	strh	r3, [r7, #4]	@ movhi
	.loc 1 283 0
	str	r3, [r7, #36]
	.loc 1 284 0
	ldrh	lr, [r7, #20]
	uxth	lr, lr
	orr	lr, lr, ip
.LBB86:
.LBB87:
	.loc 2 1075 0
	mov	fp, #536870912
.LBE87:
.LBE86:
	.loc 1 284 0
	strh	lr, [r7, #20]	@ movhi
	.loc 1 285 0
	strh	ip, [r7, #12]	@ movhi
.LVL31:
.LBB89:
.LBB90:
	.loc 2 1162 0
	strb	r3, [r2, #797]
.LVL32:
.LBE90:
.LBE89:
.LBB91:
.LBB88:
	.loc 2 1075 0
	str	fp, [r2]
.LBE88:
.LBE91:
	.loc 1 289 0
	ldrh	lr, [r7]
	uxth	lr, lr
	orr	lr, lr, ip
	strh	lr, [r7]	@ movhi
	.loc 1 292 0
	ldr	lr, [r1, #64]
	.loc 1 294 0
	mov	r7, #1073741824
	.loc 1 292 0
	orr	lr, lr, ip
	str	lr, [r1, #64]
	.loc 1 294 0
	ldrh	lr, [r7]
	uxth	lr, lr
	orr	lr, lr, ip
	strh	lr, [r7]	@ movhi
	.loc 1 295 0
	strh	r10, [r7, #40]	@ movhi
	.loc 1 297 0
	str	r9, [r7, #44]
	.loc 1 298 0
	strh	r8, [r7]	@ movhi
	.loc 1 300 0
	strh	r3, [r7, #4]	@ movhi
	.loc 1 301 0
	str	r3, [r7, #36]
	.loc 1 302 0
	ldrh	lr, [r7, #20]
	uxth	lr, lr
	orr	lr, lr, ip
.LBB92:
.LBB93:
	.loc 2 1075 0
	mov	fp, #268435456
.LBE93:
.LBE92:
	.loc 1 302 0
	strh	lr, [r7, #20]	@ movhi
	.loc 1 303 0
	strh	ip, [r7, #12]	@ movhi
.LVL33:
.LBB95:
.LBB96:
	.loc 2 1162 0
	strb	r3, [r2, #796]
.LVL34:
.LBE96:
.LBE95:
.LBB97:
.LBB94:
	.loc 2 1075 0
	str	fp, [r2]
.LBE94:
.LBE97:
	.loc 1 307 0
	ldrh	lr, [r7]
	uxth	lr, lr
	orr	lr, lr, ip
	strh	lr, [r7]	@ movhi
	.loc 1 310 0
	ldr	r7, [r1, #64]
	orr	r7, r7, #8
	str	r7, [r1, #64]
	.loc 1 312 0
	ldrh	r7, [r6]
	uxth	r7, r7
	orr	r7, r7, ip
	strh	r7, [r6]	@ movhi
	.loc 1 313 0
	strh	r10, [r6, #40]	@ movhi
	.loc 1 315 0
	str	r9, [r6, #44]
	.loc 1 316 0
	strh	r8, [r6]	@ movhi
	.loc 1 318 0
	strh	r3, [r6, #4]	@ movhi
	.loc 1 319 0
	str	r3, [r6, #36]
	.loc 1 320 0
	ldrh	r7, [r6, #20]
	uxth	r7, r7
	orr	r7, r7, ip
.LBB98:
.LBB99:
	.loc 2 1075 0
	mov	lr, #262144
.LBE99:
.LBE98:
	.loc 1 320 0
	strh	r7, [r6, #20]	@ movhi
	.loc 1 321 0
	strh	ip, [r6, #12]	@ movhi
.LVL35:
.LBB101:
.LBB102:
	.loc 2 1162 0
	strb	r3, [r2, #818]
.LVL36:
.LBE102:
.LBE101:
.LBB103:
.LBB100:
	.loc 2 1075 0
	str	lr, [r2, #4]
.LBE100:
.LBE103:
	.loc 1 325 0
	ldrh	r7, [r6]
	uxth	r7, r7
	orr	r7, r7, ip
	strh	r7, [r6]	@ movhi
	.loc 1 328 0
	ldr	r6, [r1, #64]
	orr	r6, r6, #128
	str	r6, [r1, #64]
	.loc 1 330 0
	ldrh	r6, [r5]
	uxth	r6, r6
	orr	r6, r6, ip
	strh	r6, [r5]	@ movhi
	.loc 1 331 0
	strh	r10, [r5, #40]	@ movhi
	.loc 1 333 0
	str	r9, [r5, #44]
	.loc 1 334 0
	strh	r8, [r5]	@ movhi
	.loc 1 336 0
	strh	r3, [r5, #4]	@ movhi
	.loc 1 337 0
	str	r3, [r5, #36]
	.loc 1 338 0
	ldrh	r6, [r5, #20]
	uxth	r6, r6
	orr	r6, r6, ip
.LBB104:
.LBB105:
	.loc 2 1075 0
	mov	r7, #4096
.LBE105:
.LBE104:
	.loc 1 338 0
	strh	r6, [r5, #20]	@ movhi
	.loc 1 339 0
	strh	ip, [r5, #12]	@ movhi
.LVL37:
.LBB107:
.LBB108:
	.loc 2 1162 0
	strb	r3, [r2, #812]
.LVL38:
.LBE108:
.LBE107:
.LBB109:
.LBB106:
	.loc 2 1075 0
	str	r7, [r2, #4]
.LBE106:
.LBE109:
	.loc 1 343 0
	ldrh	r6, [r5]
	uxth	r6, r6
	orr	r6, r6, ip
	strh	r6, [r5]	@ movhi
	.loc 1 346 0
	ldr	r5, [r1, #68]
	orr	r5, r5, #131072
	str	r5, [r1, #68]
	.loc 1 348 0
	ldrh	r5, [r4]
	uxth	r5, r5
	orr	r5, r5, ip
	strh	r5, [r4]	@ movhi
	.loc 1 349 0
	strh	r10, [r4, #40]	@ movhi
	.loc 1 351 0
	str	r9, [r4, #44]
	.loc 1 352 0
	strh	r8, [r4]	@ movhi
	.loc 1 354 0
	strh	r3, [r4, #4]	@ movhi
	.loc 1 355 0
	str	r3, [r4, #36]
	.loc 1 356 0
	ldrh	r5, [r4, #20]
	uxth	r5, r5
	orr	r5, r5, ip
.LBB110:
.LBB111:
	.loc 2 1075 0
	mov	r6, #33554432
.LBE111:
.LBE110:
	.loc 1 356 0
	strh	r5, [r4, #20]	@ movhi
	.loc 1 357 0
	strh	ip, [r4, #12]	@ movhi
.LVL39:
.LBB113:
.LBB114:
	.loc 2 1162 0
	strb	r3, [r2, #793]
.LVL40:
.LBE114:
.LBE113:
.LBB115:
.LBB112:
	.loc 2 1075 0
	str	r6, [r2]
.LBE112:
.LBE115:
	.loc 1 361 0
	ldrh	r5, [r4]
	uxth	r5, r5
	orr	r5, r5, ip
	strh	r5, [r4]	@ movhi
	.loc 1 363 0
	ldr	r4, [r1, #64]
	orr	r4, r4, #256
	str	r4, [r1, #64]
	.loc 1 365 0
	ldrh	r1, [r0]
	uxth	r1, r1
	orr	r1, r1, ip
	strh	r1, [r0]	@ movhi
	.loc 1 366 0
	strh	r10, [r0, #40]	@ movhi
	.loc 1 368 0
	str	r9, [r0, #44]
	.loc 1 369 0
	strh	r8, [r0]	@ movhi
	.loc 1 371 0
	strh	r3, [r0, #4]	@ movhi
	.loc 1 372 0
	str	r3, [r0, #36]
	.loc 1 373 0
	ldrh	r1, [r0, #20]
	uxth	r1, r1
	orr	r1, r1, ip
.LBB116:
.LBB117:
	.loc 2 1075 0
	mov	r4, #8192
.LBE117:
.LBE116:
	.loc 1 373 0
	strh	r1, [r0, #20]	@ movhi
	.loc 1 374 0
	strh	ip, [r0, #12]	@ movhi
.LVL41:
.LBB119:
.LBB120:
	.loc 2 1162 0
	strb	r3, [r2, #813]
.LVL42:
.LBE120:
.LBE119:
.LBB121:
.LBB118:
	.loc 2 1075 0
	str	r4, [r2, #4]
.LBE118:
.LBE121:
	.loc 1 378 0
	ldrh	r3, [r0]
	uxth	r3, r3
	orr	r3, r3, ip
	strh	r3, [r0]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L123:
	.align	2
.L122:
	.word	1073887232
	.word	-536813312
	.word	1073750016
	.word	1073742848
	.word	1073744896
	.word	1073748992
	.word	1073824768
	.word	1073747968
	.cfi_endproc
.LFE143:
	.size	initSYSTIMER, .-initSYSTIMER
	.align	2
	.global	getSYSTIMER
	.thumb
	.thumb_func
	.type	getSYSTIMER, %function
getSYSTIMER:
.LFB144:
	.loc 1 383 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 384 0
	mov	r3, #1073741824
	ldr	r0, [r3, #36]
.LVL43:
	.loc 1 386 0
	bx	lr
	.cfi_endproc
.LFE144:
	.size	getSYSTIMER, .-getSYSTIMER
	.align	2
	.global	chk4TimeoutSYSTIMER
	.thumb
	.thumb_func
	.type	chk4TimeoutSYSTIMER, %function
chk4TimeoutSYSTIMER:
.LFB145:
	.loc 1 389 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL44:
	.loc 1 390 0
	mov	r3, #1073741824
	ldr	r3, [r3, #36]
.LVL45:
	.loc 1 391 0
	cmp	r3, r0
	bcc	.L126
	.loc 1 393 0
	add	r0, r0, r1
.LVL46:
	.loc 1 394 0
	cmp	r3, r0
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
	bx	lr
.LVL47:
.L126:
.LBB122:
	.loc 1 400 0
	mvns	r0, r0
.LVL48:
	.loc 1 401 0
	add	r0, r0, r3
.LVL49:
.LBE122:
	.loc 1 394 0
	cmp	r1, r0
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	.loc 1 406 0
	bx	lr
	.cfi_endproc
.LFE145:
	.size	chk4TimeoutSYSTIMER, .-chk4TimeoutSYSTIMER
	.align	2
	.global	initSYSTIM
	.thumb
	.thumb_func
	.type	initSYSTIM, %function
initSYSTIM:
.LFB146:
	.loc 1 409 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 410 0
	ldr	r4, .L130
	.loc 1 411 0
	ldr	r3, .L130+4
	.loc 1 410 0
	ldr	r2, [r4, #64]
.LBB123:
.LBB124:
	.loc 2 1162 0
	ldr	r0, .L130+8
.LBE124:
.LBE123:
	.loc 1 416 0
	movs	r1, #0
	.loc 1 410 0
	orr	r2, r2, #32
	.loc 1 411 0
	movs	r7, #83
	.loc 1 413 0
	mov	r6, #1000
	.loc 1 414 0
	movs	r5, #132
	.loc 1 410 0
	str	r2, [r4, #64]
	.loc 1 411 0
	strh	r7, [r3, #40]	@ movhi
	.loc 1 413 0
	str	r6, [r3, #44]
	.loc 1 414 0
	strh	r5, [r3]	@ movhi
	.loc 1 416 0
	strh	r1, [r3, #4]	@ movhi
	.loc 1 417 0
	str	r1, [r3, #36]
	.loc 1 418 0
	ldrh	r2, [r3, #20]
	uxth	r2, r2
	.loc 1 419 0
	movs	r5, #1
	.loc 1 418 0
	orr	r2, r2, #1
.LBB126:
.LBB127:
	.loc 2 1075 0
	mov	r4, #8388608
.LBE127:
.LBE126:
	.loc 1 418 0
	strh	r2, [r3, #20]	@ movhi
	.loc 1 419 0
	strh	r5, [r3, #12]	@ movhi
.LVL50:
.LBB129:
.LBB125:
	.loc 2 1162 0
	strb	r1, [r0, #823]
.LVL51:
.LBE125:
.LBE129:
.LBB130:
.LBB128:
	.loc 2 1075 0
	str	r4, [r0, #4]
.LBE128:
.LBE130:
	.loc 1 423 0
	ldrh	r2, [r3]
	uxth	r2, r2
	orrs	r2, r2, r5
	strh	r2, [r3]	@ movhi
	.loc 1 424 0
	pop	{r4, r5, r6, r7}
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L131:
	.align	2
.L130:
	.word	1073887232
	.word	1073746944
	.word	-536813312
	.cfi_endproc
.LFE146:
	.size	initSYSTIM, .-initSYSTIM
	.align	2
	.global	TIM8_UP_TIM13_IRQHandler
	.thumb
	.thumb_func
	.type	TIM8_UP_TIM13_IRQHandler, %function
TIM8_UP_TIM13_IRQHandler:
.LFB147:
	.loc 1 427 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 428 0
	ldr	r3, .L140
	ldrh	r2, [r3, #16]
	lsls	r2, r2, #31
	bpl	.L132
.LBB131:
.LBB132:
	.loc 1 27 0
	ldr	r2, .L140+4
	ldr	r1, [r2, #4]
.LBE132:
.LBE131:
	.loc 1 428 0
	cbz	r1, .L132
	.loc 1 430 0
	ldr	r1, [r2, #24]
	.loc 1 431 0
	movs	r0, #0
	.loc 1 430 0
	adds	r1, r1, #1
	str	r1, [r2, #24]
	.loc 1 431 0
	strh	r0, [r3, #16]	@ movhi
.L132:
	bx	lr
.L141:
	.align	2
.L140:
	.word	1073748992
	.word	.LANCHOR0
	.cfi_endproc
.LFE147:
	.size	TIM8_UP_TIM13_IRQHandler, .-TIM8_UP_TIM13_IRQHandler
	.align	2
	.global	TIM8_TRG_COM_TIM14_IRQHandler
	.thumb
	.thumb_func
	.type	TIM8_TRG_COM_TIM14_IRQHandler, %function
TIM8_TRG_COM_TIM14_IRQHandler:
.LFB148:
	.loc 1 436 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 437 0
	ldr	r3, .L150
	ldrh	r2, [r3, #16]
	lsls	r2, r2, #31
	bpl	.L142
.LBB133:
.LBB134:
	.loc 1 47 0
	ldr	r2, .L150+4
	ldr	r1, [r2, #20]
.LBE134:
.LBE133:
	.loc 1 437 0
	cbz	r1, .L142
	.loc 1 439 0
	ldr	r1, [r2, #28]
	.loc 1 440 0
	movs	r0, #0
	.loc 1 439 0
	adds	r1, r1, #1
	str	r1, [r2, #28]
	.loc 1 440 0
	strh	r0, [r3, #16]	@ movhi
.L142:
	bx	lr
.L151:
	.align	2
.L150:
	.word	1073750016
	.word	.LANCHOR0
	.cfi_endproc
.LFE148:
	.size	TIM8_TRG_COM_TIM14_IRQHandler, .-TIM8_TRG_COM_TIM14_IRQHandler
	.align	2
	.global	TIM8_BRK_TIM12_IRQHandler
	.thumb
	.thumb_func
	.type	TIM8_BRK_TIM12_IRQHandler, %function
TIM8_BRK_TIM12_IRQHandler:
.LFB149:
	.loc 1 445 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 446 0
	ldr	r3, .L160
	ldrh	r2, [r3, #16]
	lsls	r2, r2, #31
	bpl	.L152
.LBB135:
.LBB136:
	.loc 1 22 0
	ldr	r2, .L160+4
	ldr	r1, [r2]
.LBE136:
.LBE135:
	.loc 1 446 0
	cbz	r1, .L152
	.loc 1 448 0
	ldr	r1, [r2, #32]
	.loc 1 449 0
	movs	r0, #0
	.loc 1 448 0
	adds	r1, r1, #1
	str	r1, [r2, #32]
	.loc 1 449 0
	strh	r0, [r3, #16]	@ movhi
.L152:
	bx	lr
.L161:
	.align	2
.L160:
	.word	1073747968
	.word	.LANCHOR0
	.cfi_endproc
.LFE149:
	.size	TIM8_BRK_TIM12_IRQHandler, .-TIM8_BRK_TIM12_IRQHandler
	.align	2
	.global	TIM3_IRQHandler
	.thumb
	.thumb_func
	.type	TIM3_IRQHandler, %function
TIM3_IRQHandler:
.LFB150:
	.loc 1 454 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 455 0
	ldr	r3, .L170
	ldrh	r2, [r3, #16]
	lsls	r2, r2, #31
	bpl	.L162
.LBB137:
.LBB138:
	.loc 1 32 0
	ldr	r2, .L170+4
	ldr	r1, [r2, #8]
.LBE138:
.LBE137:
	.loc 1 455 0
	cbz	r1, .L162
	.loc 1 457 0
	ldr	r1, [r2, #36]
	.loc 1 458 0
	movs	r0, #0
	.loc 1 457 0
	adds	r1, r1, #1
	str	r1, [r2, #36]
	.loc 1 458 0
	strh	r0, [r3, #16]	@ movhi
.L162:
	bx	lr
.L171:
	.align	2
.L170:
	.word	1073742848
	.word	.LANCHOR0
	.cfi_endproc
.LFE150:
	.size	TIM3_IRQHandler, .-TIM3_IRQHandler
	.align	2
	.global	TIM2_IRQHandler
	.thumb
	.thumb_func
	.type	TIM2_IRQHandler, %function
TIM2_IRQHandler:
.LFB151:
	.loc 1 463 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 464 0
	mov	r3, #1073741824
	ldrh	r2, [r3, #16]
	lsls	r2, r2, #31
	bpl	.L172
.LBB139:
.LBB140:
	.loc 1 37 0
	ldr	r2, .L180
	ldr	r1, [r2, #12]
.LBE140:
.LBE139:
	.loc 1 464 0
	cbz	r1, .L172
	.loc 1 466 0
	ldr	r1, [r2, #40]
	.loc 1 467 0
	movs	r0, #0
	.loc 1 466 0
	adds	r1, r1, #1
	str	r1, [r2, #40]
	.loc 1 467 0
	strh	r0, [r3, #16]	@ movhi
.L172:
	bx	lr
.L181:
	.align	2
.L180:
	.word	.LANCHOR0
	.cfi_endproc
.LFE151:
	.size	TIM2_IRQHandler, .-TIM2_IRQHandler
	.align	2
	.global	TIM5_IRQHandler
	.thumb
	.thumb_func
	.type	TIM5_IRQHandler, %function
TIM5_IRQHandler:
.LFB152:
	.loc 1 472 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 473 0
	ldr	r3, .L190
	ldrh	r2, [r3, #16]
	lsls	r2, r2, #31
	bpl	.L182
.LBB141:
.LBB142:
	.loc 1 42 0
	ldr	r2, .L190+4
	ldr	r1, [r2, #16]
.LBE142:
.LBE141:
	.loc 1 473 0
	cbz	r1, .L182
	.loc 1 475 0
	ldr	r1, [r2, #44]
	.loc 1 476 0
	movs	r0, #0
	.loc 1 475 0
	adds	r1, r1, #1
	str	r1, [r2, #44]
	.loc 1 476 0
	strh	r0, [r3, #16]	@ movhi
.L182:
	bx	lr
.L191:
	.align	2
.L190:
	.word	1073744896
	.word	.LANCHOR0
	.cfi_endproc
.LFE152:
	.size	TIM5_IRQHandler, .-TIM5_IRQHandler
	.align	2
	.global	TIM4_IRQHandler
	.thumb
	.thumb_func
	.type	TIM4_IRQHandler, %function
TIM4_IRQHandler:
.LFB153:
	.loc 1 481 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 482 0
	ldr	r3, .L197
	ldrh	r2, [r3, #16]
	lsls	r2, r2, #31
	bpl	.L192
	.loc 1 484 0
	ldr	r1, .L197+4
	ldr	r2, [r1, #48]
	.loc 1 485 0
	movs	r0, #0
	.loc 1 484 0
	adds	r2, r2, #1
	str	r2, [r1, #48]
	.loc 1 485 0
	strh	r0, [r3, #16]	@ movhi
.L192:
	bx	lr
.L198:
	.align	2
.L197:
	.word	1073743872
	.word	.LANCHOR0
	.cfi_endproc
.LFE153:
	.size	TIM4_IRQHandler, .-TIM4_IRQHandler
	.align	2
	.global	getSYSTIM12
	.thumb
	.thumb_func
	.type	getSYSTIM12, %function
getSYSTIM12:
.LFB154:
	.loc 1 491 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 492 0
	ldr	r3, .L200
	ldr	r0, [r3, #32]
	.loc 1 493 0
	bx	lr
.L201:
	.align	2
.L200:
	.word	.LANCHOR0
	.cfi_endproc
.LFE154:
	.size	getSYSTIM12, .-getSYSTIM12
	.align	2
	.global	getSYSTIM13
	.thumb
	.thumb_func
	.type	getSYSTIM13, %function
getSYSTIM13:
.LFB155:
	.loc 1 497 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 498 0
	ldr	r3, .L203
	ldr	r0, [r3, #24]
	.loc 1 499 0
	bx	lr
.L204:
	.align	2
.L203:
	.word	.LANCHOR0
	.cfi_endproc
.LFE155:
	.size	getSYSTIM13, .-getSYSTIM13
	.align	2
	.global	getSYSTIM3
	.thumb
	.thumb_func
	.type	getSYSTIM3, %function
getSYSTIM3:
.LFB156:
	.loc 1 502 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 503 0
	ldr	r3, .L206
	ldr	r0, [r3, #36]
	.loc 1 504 0
	bx	lr
.L207:
	.align	2
.L206:
	.word	.LANCHOR0
	.cfi_endproc
.LFE156:
	.size	getSYSTIM3, .-getSYSTIM3
	.align	2
	.global	getSYSTIM14
	.thumb
	.thumb_func
	.type	getSYSTIM14, %function
getSYSTIM14:
.LFB157:
	.loc 1 507 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 508 0
	ldr	r3, .L209
	ldr	r0, [r3, #28]
	.loc 1 509 0
	bx	lr
.L210:
	.align	2
.L209:
	.word	.LANCHOR0
	.cfi_endproc
.LFE157:
	.size	getSYSTIM14, .-getSYSTIM14
	.align	2
	.global	getSYSTIM2
	.thumb
	.thumb_func
	.type	getSYSTIM2, %function
getSYSTIM2:
.LFB158:
	.loc 1 512 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 513 0
	ldr	r3, .L212
	ldr	r0, [r3, #40]
	.loc 1 514 0
	bx	lr
.L213:
	.align	2
.L212:
	.word	.LANCHOR0
	.cfi_endproc
.LFE158:
	.size	getSYSTIM2, .-getSYSTIM2
	.align	2
	.global	getSYSTIM5
	.thumb
	.thumb_func
	.type	getSYSTIM5, %function
getSYSTIM5:
.LFB159:
	.loc 1 517 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 518 0
	ldr	r3, .L215
	ldr	r0, [r3, #44]
	.loc 1 519 0
	bx	lr
.L216:
	.align	2
.L215:
	.word	.LANCHOR0
	.cfi_endproc
.LFE159:
	.size	getSYSTIM5, .-getSYSTIM5
	.align	2
	.global	getSYSTIM4
	.thumb
	.thumb_func
	.type	getSYSTIM4, %function
getSYSTIM4:
.LFB160:
	.loc 1 522 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 523 0
	ldr	r3, .L218
	ldr	r0, [r3, #48]
	.loc 1 524 0
	bx	lr
.L219:
	.align	2
.L218:
	.word	.LANCHOR0
	.cfi_endproc
.LFE160:
	.size	getSYSTIM4, .-getSYSTIM4
	.align	2
	.global	chk4TimeoutSYSTIM
	.thumb
	.thumb_func
	.type	chk4TimeoutSYSTIM, %function
chk4TimeoutSYSTIM:
.LFB161:
	.loc 1 527 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL52:
	.loc 1 530 0
	cmp	r2, #1
	beq	.L229
	.loc 1 532 0
	cmp	r2, #2
	beq	.L230
	.loc 1 534 0
	cmp	r2, #3
	bne	.L224
	.loc 1 535 0
	ldr	r3, .L232
	ldr	r3, [r3, #40]
.LVL53:
.L225:
	.loc 1 542 0
	cmp	r3, r0
	bcc	.L227
.L231:
	.loc 1 544 0
	add	r0, r0, r1
.LVL54:
	.loc 1 545 0
	cmp	r3, r0
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
	bx	lr
.LVL55:
.L230:
	.loc 1 533 0
	ldr	r3, .L232
	ldr	r3, [r3, #36]
.LVL56:
	.loc 1 542 0
	cmp	r3, r0
	bcs	.L231
.L227:
.LVL57:
.LBB143:
	.loc 1 551 0
	mvns	r0, r0
.LVL58:
	.loc 1 552 0
	add	r0, r0, r3
.LVL59:
.LBE143:
	.loc 1 545 0
	cmp	r1, r0
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	.loc 1 557 0
	bx	lr
.LVL60:
.L229:
	.loc 1 531 0
	ldr	r3, .L232
	ldr	r3, [r3, #32]
.LVL61:
	b	.L225
.LVL62:
.L224:
	.loc 1 536 0
	cmp	r2, #4
	bne	.L226
	.loc 1 537 0
	ldr	r3, .L232
	ldr	r3, [r3, #44]
.LVL63:
	b	.L225
.LVL64:
.L226:
	.loc 1 538 0
	cmp	r2, #5
	bne	.L222
	.loc 1 539 0
	ldr	r3, .L232
	ldr	r3, [r3, #24]
.LVL65:
	b	.L225
.LVL66:
.L222:
	.loc 1 540 0
	cmp	r2, #6
	.loc 1 541 0
	itt	eq
	ldreq	r3, .L232
	ldreq	r3, [r3, #28]
.LVL67:
	b	.L225
.L233:
	.align	2
.L232:
	.word	.LANCHOR0
	.cfi_endproc
.LFE161:
	.size	chk4TimeoutSYSTIM, .-chk4TimeoutSYSTIM
	.global	D6
	.global	D5
	.global	D4
	.global	D3
	.global	D2
	.comm	PERIOD_WS,4,4
	.comm	PERIOD_APA,4,4
	.comm	PERIOD,12,4
	.global	D1
	.global	g_tim13_val
	.global	g_tim14_val
	.global	g_tim4_val
	.global	g_tim5_val
	.global	g_tim2_val
	.global	g_tim3_val
	.global	g_tim12_val
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	D1, %object
	.size	D1, 4
D1:
	.space	4
	.type	D5, %object
	.size	D5, 4
D5:
	.space	4
	.type	D2, %object
	.size	D2, 4
D2:
	.space	4
	.type	D3, %object
	.size	D3, 4
D3:
	.space	4
	.type	D4, %object
	.size	D4, 4
D4:
	.space	4
	.type	D6, %object
	.size	D6, 4
D6:
	.space	4
	.type	g_tim13_val, %object
	.size	g_tim13_val, 4
g_tim13_val:
	.space	4
	.type	g_tim14_val, %object
	.size	g_tim14_val, 4
g_tim14_val:
	.space	4
	.type	g_tim12_val, %object
	.size	g_tim12_val, 4
g_tim12_val:
	.space	4
	.type	g_tim3_val, %object
	.size	g_tim3_val, 4
g_tim3_val:
	.space	4
	.type	g_tim2_val, %object
	.size	g_tim2_val, 4
g_tim2_val:
	.space	4
	.type	g_tim5_val, %object
	.size	g_tim5_val, 4
g_tim5_val:
	.space	4
	.type	g_tim4_val, %object
	.size	g_tim4_val, 4
g_tim4_val:
	.space	4
	.text
.Letext0:
	.file 3 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 4 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x13b9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF251
	.byte	0x1
	.4byte	.LASF252
	.4byte	.LASF253
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF184
	.byte	0x1
	.byte	0x3
	.byte	0x91
	.4byte	0x260
	.uleb128 0x3
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x3
	.4byte	.LASF1
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF2
	.sleb128 -11
	.uleb128 0x3
	.4byte	.LASF3
	.sleb128 -10
	.uleb128 0x3
	.4byte	.LASF4
	.sleb128 -5
	.uleb128 0x3
	.4byte	.LASF5
	.sleb128 -4
	.uleb128 0x3
	.4byte	.LASF6
	.sleb128 -2
	.uleb128 0x3
	.4byte	.LASF7
	.sleb128 -1
	.uleb128 0x3
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF9
	.sleb128 1
	.uleb128 0x3
	.4byte	.LASF10
	.sleb128 2
	.uleb128 0x3
	.4byte	.LASF11
	.sleb128 3
	.uleb128 0x3
	.4byte	.LASF12
	.sleb128 4
	.uleb128 0x3
	.4byte	.LASF13
	.sleb128 5
	.uleb128 0x3
	.4byte	.LASF14
	.sleb128 6
	.uleb128 0x3
	.4byte	.LASF15
	.sleb128 7
	.uleb128 0x3
	.4byte	.LASF16
	.sleb128 8
	.uleb128 0x3
	.4byte	.LASF17
	.sleb128 9
	.uleb128 0x3
	.4byte	.LASF18
	.sleb128 10
	.uleb128 0x3
	.4byte	.LASF19
	.sleb128 11
	.uleb128 0x3
	.4byte	.LASF20
	.sleb128 12
	.uleb128 0x3
	.4byte	.LASF21
	.sleb128 13
	.uleb128 0x3
	.4byte	.LASF22
	.sleb128 14
	.uleb128 0x3
	.4byte	.LASF23
	.sleb128 15
	.uleb128 0x3
	.4byte	.LASF24
	.sleb128 16
	.uleb128 0x3
	.4byte	.LASF25
	.sleb128 17
	.uleb128 0x3
	.4byte	.LASF26
	.sleb128 18
	.uleb128 0x3
	.4byte	.LASF27
	.sleb128 19
	.uleb128 0x3
	.4byte	.LASF28
	.sleb128 20
	.uleb128 0x3
	.4byte	.LASF29
	.sleb128 21
	.uleb128 0x3
	.4byte	.LASF30
	.sleb128 22
	.uleb128 0x3
	.4byte	.LASF31
	.sleb128 23
	.uleb128 0x3
	.4byte	.LASF32
	.sleb128 24
	.uleb128 0x3
	.4byte	.LASF33
	.sleb128 25
	.uleb128 0x3
	.4byte	.LASF34
	.sleb128 26
	.uleb128 0x3
	.4byte	.LASF35
	.sleb128 27
	.uleb128 0x3
	.4byte	.LASF36
	.sleb128 28
	.uleb128 0x3
	.4byte	.LASF37
	.sleb128 29
	.uleb128 0x3
	.4byte	.LASF38
	.sleb128 30
	.uleb128 0x3
	.4byte	.LASF39
	.sleb128 31
	.uleb128 0x3
	.4byte	.LASF40
	.sleb128 32
	.uleb128 0x3
	.4byte	.LASF41
	.sleb128 33
	.uleb128 0x3
	.4byte	.LASF42
	.sleb128 34
	.uleb128 0x3
	.4byte	.LASF43
	.sleb128 35
	.uleb128 0x3
	.4byte	.LASF44
	.sleb128 36
	.uleb128 0x3
	.4byte	.LASF45
	.sleb128 37
	.uleb128 0x3
	.4byte	.LASF46
	.sleb128 38
	.uleb128 0x3
	.4byte	.LASF47
	.sleb128 39
	.uleb128 0x3
	.4byte	.LASF48
	.sleb128 40
	.uleb128 0x3
	.4byte	.LASF49
	.sleb128 41
	.uleb128 0x3
	.4byte	.LASF50
	.sleb128 42
	.uleb128 0x3
	.4byte	.LASF51
	.sleb128 43
	.uleb128 0x3
	.4byte	.LASF52
	.sleb128 44
	.uleb128 0x3
	.4byte	.LASF53
	.sleb128 45
	.uleb128 0x3
	.4byte	.LASF54
	.sleb128 46
	.uleb128 0x3
	.4byte	.LASF55
	.sleb128 47
	.uleb128 0x3
	.4byte	.LASF56
	.sleb128 48
	.uleb128 0x3
	.4byte	.LASF57
	.sleb128 49
	.uleb128 0x3
	.4byte	.LASF58
	.sleb128 50
	.uleb128 0x3
	.4byte	.LASF59
	.sleb128 51
	.uleb128 0x3
	.4byte	.LASF60
	.sleb128 52
	.uleb128 0x3
	.4byte	.LASF61
	.sleb128 53
	.uleb128 0x3
	.4byte	.LASF62
	.sleb128 54
	.uleb128 0x3
	.4byte	.LASF63
	.sleb128 55
	.uleb128 0x3
	.4byte	.LASF64
	.sleb128 56
	.uleb128 0x3
	.4byte	.LASF65
	.sleb128 57
	.uleb128 0x3
	.4byte	.LASF66
	.sleb128 58
	.uleb128 0x3
	.4byte	.LASF67
	.sleb128 59
	.uleb128 0x3
	.4byte	.LASF68
	.sleb128 60
	.uleb128 0x3
	.4byte	.LASF69
	.sleb128 61
	.uleb128 0x3
	.4byte	.LASF70
	.sleb128 62
	.uleb128 0x3
	.4byte	.LASF71
	.sleb128 63
	.uleb128 0x3
	.4byte	.LASF72
	.sleb128 64
	.uleb128 0x3
	.4byte	.LASF73
	.sleb128 65
	.uleb128 0x3
	.4byte	.LASF74
	.sleb128 66
	.uleb128 0x3
	.4byte	.LASF75
	.sleb128 67
	.uleb128 0x3
	.4byte	.LASF76
	.sleb128 68
	.uleb128 0x3
	.4byte	.LASF77
	.sleb128 69
	.uleb128 0x3
	.4byte	.LASF78
	.sleb128 70
	.uleb128 0x3
	.4byte	.LASF79
	.sleb128 71
	.uleb128 0x3
	.4byte	.LASF80
	.sleb128 72
	.uleb128 0x3
	.4byte	.LASF81
	.sleb128 73
	.uleb128 0x3
	.4byte	.LASF82
	.sleb128 74
	.uleb128 0x3
	.4byte	.LASF83
	.sleb128 75
	.uleb128 0x3
	.4byte	.LASF84
	.sleb128 76
	.uleb128 0x3
	.4byte	.LASF85
	.sleb128 77
	.uleb128 0x3
	.4byte	.LASF86
	.sleb128 78
	.uleb128 0x3
	.4byte	.LASF87
	.sleb128 79
	.uleb128 0x3
	.4byte	.LASF88
	.sleb128 80
	.uleb128 0x3
	.4byte	.LASF89
	.sleb128 81
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x3
	.byte	0xef
	.4byte	0x25
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF92
	.uleb128 0x4
	.4byte	.LASF91
	.byte	0x4
	.byte	0x1d
	.4byte	0x27d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF94
	.uleb128 0x4
	.4byte	.LASF95
	.byte	0x4
	.byte	0x2b
	.4byte	0x296
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF96
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x4
	.byte	0x3f
	.4byte	0x2a8
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF98
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0x4
	.byte	0x41
	.4byte	0x2ba
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF100
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF101
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF102
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x5
	.byte	0x15
	.4byte	0x272
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0x5
	.byte	0x21
	.4byte	0x28b
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x5
	.byte	0x2c
	.4byte	0x29d
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x5
	.byte	0x2d
	.4byte	0x2af
	.uleb128 0x7
	.2byte	0xe04
	.byte	0x2
	.2byte	0x130
	.4byte	0x3c5
	.uleb128 0x8
	.4byte	.LASF108
	.byte	0x2
	.2byte	0x132
	.4byte	0x3dc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x133
	.4byte	0x3e1
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF110
	.byte	0x2
	.2byte	0x134
	.4byte	0x3f1
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0x2
	.2byte	0x135
	.4byte	0x3e1
	.byte	0xa0
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x136
	.4byte	0x3f6
	.2byte	0x100
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x137
	.4byte	0x3e1
	.2byte	0x120
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x138
	.4byte	0x3fb
	.2byte	0x180
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x2
	.2byte	0x139
	.4byte	0x3e1
	.2byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x2
	.2byte	0x13a
	.4byte	0x400
	.2byte	0x200
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x2
	.2byte	0x13b
	.4byte	0x405
	.2byte	0x220
	.uleb128 0xa
	.ascii	"IP\000"
	.byte	0x2
	.2byte	0x13c
	.4byte	0x425
	.2byte	0x300
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x2
	.2byte	0x13d
	.4byte	0x42a
	.2byte	0x3f0
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x2
	.2byte	0x13e
	.4byte	0x43b
	.2byte	0xe00
	.byte	0
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x3d5
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF120
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x3f1
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xd
	.4byte	0x3c5
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x415
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x37
	.byte	0
	.uleb128 0xb
	.4byte	0x2dd
	.4byte	0x425
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0xef
	.byte	0
	.uleb128 0xd
	.4byte	0x415
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x43b
	.uleb128 0xe
	.4byte	0x3d5
	.2byte	0x283
	.byte	0
	.uleb128 0xd
	.4byte	0x2fe
	.uleb128 0xf
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x13f
	.4byte	0x309
	.uleb128 0x10
	.byte	0x8c
	.byte	0x2
	.2byte	0x150
	.4byte	0x567
	.uleb128 0x8
	.4byte	.LASF122
	.byte	0x2
	.2byte	0x152
	.4byte	0x567
	.byte	0
	.uleb128 0x8
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x153
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x154
	.4byte	0x43b
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x155
	.4byte	0x43b
	.byte	0xc
	.uleb128 0x11
	.ascii	"SCR\000"
	.byte	0x2
	.2byte	0x156
	.4byte	0x43b
	.byte	0x10
	.uleb128 0x11
	.ascii	"CCR\000"
	.byte	0x2
	.2byte	0x157
	.4byte	0x43b
	.byte	0x14
	.uleb128 0x11
	.ascii	"SHP\000"
	.byte	0x2
	.2byte	0x158
	.4byte	0x57c
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x159
	.4byte	0x43b
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x15a
	.4byte	0x43b
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x15b
	.4byte	0x43b
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x2
	.2byte	0x15c
	.4byte	0x43b
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF130
	.byte	0x2
	.2byte	0x15d
	.4byte	0x43b
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x15e
	.4byte	0x43b
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF132
	.byte	0x2
	.2byte	0x15f
	.4byte	0x43b
	.byte	0x3c
	.uleb128 0x11
	.ascii	"PFR\000"
	.byte	0x2
	.2byte	0x160
	.4byte	0x591
	.byte	0x40
	.uleb128 0x11
	.ascii	"DFR\000"
	.byte	0x2
	.2byte	0x161
	.4byte	0x567
	.byte	0x48
	.uleb128 0x11
	.ascii	"ADR\000"
	.byte	0x2
	.2byte	0x162
	.4byte	0x567
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF133
	.byte	0x2
	.2byte	0x163
	.4byte	0x5ab
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF134
	.byte	0x2
	.2byte	0x164
	.4byte	0x5c5
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x2
	.2byte	0x165
	.4byte	0x5b5
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x2
	.2byte	0x166
	.4byte	0x43b
	.byte	0x88
	.byte	0
	.uleb128 0x12
	.4byte	0x43b
	.uleb128 0xb
	.4byte	0x2dd
	.4byte	0x57c
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.4byte	0x56c
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x591
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.4byte	0x596
	.uleb128 0xd
	.4byte	0x581
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x5ab
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	0x5b0
	.uleb128 0xd
	.4byte	0x59b
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x5c5
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	0x5ca
	.uleb128 0xd
	.4byte	0x5b5
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x2
	.2byte	0x167
	.4byte	0x44c
	.uleb128 0xd
	.4byte	0x2e8
	.uleb128 0xd
	.4byte	0x2f3
	.uleb128 0x10
	.byte	0x88
	.byte	0x3
	.2byte	0x2dd
	.4byte	0x774
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x2df
	.4byte	0x43b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x2e0
	.4byte	0x43b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x2e1
	.4byte	0x43b
	.byte	0x8
	.uleb128 0x11
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x2e2
	.4byte	0x43b
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x2e3
	.4byte	0x43b
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x2e4
	.4byte	0x43b
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x2e5
	.4byte	0x43b
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x2e6
	.4byte	0x2fe
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x2e7
	.4byte	0x43b
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x2e8
	.4byte	0x43b
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x2e9
	.4byte	0x581
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x2ea
	.4byte	0x43b
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x2eb
	.4byte	0x43b
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x2ec
	.4byte	0x43b
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x2ed
	.4byte	0x2fe
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x2ee
	.4byte	0x43b
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x2ef
	.4byte	0x43b
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x2f0
	.4byte	0x581
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x2f1
	.4byte	0x43b
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x2f2
	.4byte	0x43b
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x2f3
	.4byte	0x43b
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x2f4
	.4byte	0x2fe
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x2f5
	.4byte	0x43b
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x2f6
	.4byte	0x43b
	.byte	0x64
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x2f7
	.4byte	0x581
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x2f8
	.4byte	0x43b
	.byte	0x70
	.uleb128 0x11
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x2f9
	.4byte	0x43b
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x2fa
	.4byte	0x581
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x2fb
	.4byte	0x43b
	.byte	0x80
	.uleb128 0x8
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x2fc
	.4byte	0x43b
	.byte	0x84
	.byte	0
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x2fd
	.4byte	0x5e5
	.uleb128 0x10
	.byte	0x54
	.byte	0x3
	.2byte	0x369
	.4byte	0x95c
	.uleb128 0x11
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x36b
	.4byte	0x5db
	.byte	0
	.uleb128 0x8
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x36c
	.4byte	0x2e8
	.byte	0x2
	.uleb128 0x11
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x36d
	.4byte	0x5db
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x36e
	.4byte	0x2e8
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x36f
	.4byte	0x5db
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x370
	.4byte	0x2e8
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x371
	.4byte	0x5db
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x372
	.4byte	0x2e8
	.byte	0xe
	.uleb128 0x11
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x373
	.4byte	0x5db
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x374
	.4byte	0x2e8
	.byte	0x12
	.uleb128 0x11
	.ascii	"EGR\000"
	.byte	0x3
	.2byte	0x375
	.4byte	0x5db
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x376
	.4byte	0x2e8
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x377
	.4byte	0x5db
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x378
	.4byte	0x2e8
	.byte	0x1a
	.uleb128 0x8
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x379
	.4byte	0x5db
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x37a
	.4byte	0x2e8
	.byte	0x1e
	.uleb128 0x8
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x37b
	.4byte	0x5db
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x37c
	.4byte	0x2e8
	.byte	0x22
	.uleb128 0x11
	.ascii	"CNT\000"
	.byte	0x3
	.2byte	0x37d
	.4byte	0x43b
	.byte	0x24
	.uleb128 0x11
	.ascii	"PSC\000"
	.byte	0x3
	.2byte	0x37e
	.4byte	0x5db
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF167
	.byte	0x3
	.2byte	0x37f
	.4byte	0x2e8
	.byte	0x2a
	.uleb128 0x11
	.ascii	"ARR\000"
	.byte	0x3
	.2byte	0x380
	.4byte	0x43b
	.byte	0x2c
	.uleb128 0x11
	.ascii	"RCR\000"
	.byte	0x3
	.2byte	0x381
	.4byte	0x5db
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x382
	.4byte	0x2e8
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x383
	.4byte	0x43b
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF170
	.byte	0x3
	.2byte	0x384
	.4byte	0x43b
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF171
	.byte	0x3
	.2byte	0x385
	.4byte	0x43b
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF172
	.byte	0x3
	.2byte	0x386
	.4byte	0x43b
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x387
	.4byte	0x5db
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x388
	.4byte	0x2e8
	.byte	0x46
	.uleb128 0x11
	.ascii	"DCR\000"
	.byte	0x3
	.2byte	0x389
	.4byte	0x5db
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x38a
	.4byte	0x2e8
	.byte	0x4a
	.uleb128 0x8
	.4byte	.LASF176
	.byte	0x3
	.2byte	0x38b
	.4byte	0x5db
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF177
	.byte	0x3
	.2byte	0x38c
	.4byte	0x2e8
	.byte	0x4e
	.uleb128 0x11
	.ascii	"OR\000"
	.byte	0x3
	.2byte	0x38d
	.4byte	0x5db
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF178
	.byte	0x3
	.2byte	0x38e
	.4byte	0x2e8
	.byte	0x52
	.byte	0
	.uleb128 0xf
	.4byte	.LASF179
	.byte	0x3
	.2byte	0x38f
	.4byte	0x780
	.uleb128 0x13
	.4byte	.LASF180
	.byte	0x1
	.byte	0x6e
	.4byte	0x2fe
	.byte	0x1
	.4byte	0x982
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0x1
	.byte	0x6e
	.4byte	0x2fe
	.byte	0
	.uleb128 0x13
	.4byte	.LASF181
	.byte	0x1
	.byte	0x73
	.4byte	0x2fe
	.byte	0x1
	.4byte	0x99c
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0x1
	.byte	0x73
	.4byte	0x2fe
	.byte	0
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0x1
	.byte	0x78
	.4byte	0x2fe
	.byte	0x1
	.4byte	0x9b6
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0x1
	.byte	0x78
	.4byte	0x2fe
	.byte	0
	.uleb128 0x13
	.4byte	.LASF183
	.byte	0x1
	.byte	0x7d
	.4byte	0x2fe
	.byte	0x1
	.4byte	0x9d0
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0x2fe
	.byte	0
	.uleb128 0x15
	.4byte	.LASF186
	.byte	0x2
	.2byte	0x485
	.byte	0x3
	.4byte	0x9f6
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x2
	.2byte	0x485
	.4byte	0x260
	.uleb128 0x16
	.4byte	.LASF185
	.byte	0x2
	.2byte	0x485
	.4byte	0x2fe
	.byte	0
	.uleb128 0x15
	.4byte	.LASF187
	.byte	0x2
	.2byte	0x430
	.byte	0x3
	.4byte	0xa10
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x2
	.2byte	0x430
	.4byte	0x260
	.byte	0
	.uleb128 0x17
	.4byte	.LASF188
	.byte	0x1
	.byte	0x19
	.4byte	0x2fe
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF189
	.byte	0x1
	.byte	0x2d
	.4byte	0x2fe
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0x1
	.byte	0x14
	.4byte	0x2fe
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF191
	.byte	0x1
	.byte	0x1e
	.4byte	0x2fe
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF192
	.byte	0x1
	.byte	0x23
	.4byte	0x2fe
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF193
	.byte	0x1
	.byte	0x28
	.4byte	0x2fe
	.byte	0x1
	.uleb128 0x18
	.4byte	0xa28
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	0xa10
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	0xa34
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	0xa40
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	0xa4c
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	0xa1c
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF194
	.byte	0x1
	.byte	0x32
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad4
	.uleb128 0x1a
	.ascii	"b1\000"
	.byte	0x1
	.byte	0x32
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	.LASF195
	.byte	0x1
	.byte	0x37
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf6
	.uleb128 0x1a
	.ascii	"b2\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	.LASF196
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb18
	.uleb128 0x1a
	.ascii	"b3\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	.LASF197
	.byte	0x1
	.byte	0x41
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3a
	.uleb128 0x1a
	.ascii	"b4\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	.LASF198
	.byte	0x1
	.byte	0x45
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5c
	.uleb128 0x1a
	.ascii	"b5\000"
	.byte	0x1
	.byte	0x45
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	.LASF199
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7e
	.uleb128 0x1a
	.ascii	"b6\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x1
	.byte	0x4f
	.4byte	0x2fe
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0x1
	.byte	0x54
	.4byte	0x2fe
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0x1
	.byte	0x59
	.4byte	0x2fe
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF203
	.byte	0x1
	.byte	0x5e
	.4byte	0x2fe
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0x1
	.byte	0x63
	.4byte	0x2fe
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF205
	.byte	0x1
	.byte	0x68
	.4byte	0x2fe
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	0x968
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc19
	.uleb128 0x1d
	.4byte	0x978
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1c
	.4byte	0x982
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc36
	.uleb128 0x1d
	.4byte	0x992
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1c
	.4byte	0x99c
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc53
	.uleb128 0x1d
	.4byte	0x9ac
	.4byte	.LLST2
	.byte	0
	.uleb128 0x1c
	.4byte	0x9b6
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc70
	.uleb128 0x1d
	.4byte	0x9c6
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF206
	.byte	0x1
	.byte	0x81
	.4byte	0x2fe
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc97
	.uleb128 0x1f
	.ascii	"a\000"
	.byte	0x1
	.byte	0x81
	.4byte	0x2fe
	.4byte	.LLST4
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF207
	.byte	0x1
	.byte	0x86
	.4byte	0x2fe
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbe
	.uleb128 0x1f
	.ascii	"a\000"
	.byte	0x1
	.byte	0x86
	.4byte	0x2fe
	.4byte	.LLST5
	.byte	0
	.uleb128 0x19
	.4byte	.LASF208
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce2
	.uleb128 0x1f
	.ascii	"ms\000"
	.byte	0x1
	.byte	0x8c
	.4byte	0x2fe
	.4byte	.LLST6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF209
	.byte	0x1
	.byte	0xa3
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd06
	.uleb128 0x1f
	.ascii	"us\000"
	.byte	0x1
	.byte	0xa3
	.4byte	0x2fe
	.4byte	.LLST7
	.byte	0
	.uleb128 0x20
	.4byte	.LASF210
	.byte	0x1
	.byte	0xba
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0x1
	.byte	0xc7
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF212
	.byte	0x1
	.byte	0xcd
	.4byte	0x2fe
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4f
	.uleb128 0x21
	.4byte	.LASF219
	.byte	0x1
	.byte	0xcf
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x22
	.4byte	.LASF213
	.byte	0x1
	.byte	0xd6
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7b
	.uleb128 0x23
	.4byte	0x968
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd9
	.uleb128 0x24
	.4byte	0x978
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF214
	.byte	0x1
	.byte	0xdc
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda7
	.uleb128 0x23
	.4byte	0x982
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xdf
	.uleb128 0x24
	.4byte	0x992
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF215
	.byte	0x1
	.byte	0xe2
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd3
	.uleb128 0x23
	.4byte	0x99c
	.4byte	.LBB66
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xe5
	.uleb128 0x24
	.4byte	0x9ac
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF216
	.byte	0x1
	.byte	0xe8
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdff
	.uleb128 0x23
	.4byte	0x9b6
	.4byte	.LBB72
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xeb
	.uleb128 0x24
	.4byte	0x9c6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF217
	.byte	0x1
	.byte	0xed
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb3
	.uleb128 0x25
	.4byte	0x9d0
	.4byte	.LBB78
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0xfc
	.4byte	0xe34
	.uleb128 0x24
	.4byte	0x9e9
	.byte	0
	.uleb128 0x24
	.4byte	0x9dd
	.byte	0x2b
	.byte	0
	.uleb128 0x25
	.4byte	0x9f6
	.4byte	.LBB81
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0xfd
	.4byte	0xe4e
	.uleb128 0x24
	.4byte	0xa03
	.byte	0x2b
	.byte	0
	.uleb128 0x26
	.4byte	0x9f6
	.4byte	.LBB86
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.2byte	0x120
	.4byte	0xe69
	.uleb128 0x24
	.4byte	0xa03
	.byte	0x1d
	.byte	0
	.uleb128 0x27
	.4byte	0x9d0
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.byte	0x1
	.2byte	0x11f
	.4byte	0xe8a
	.uleb128 0x24
	.4byte	0x9e9
	.byte	0
	.uleb128 0x24
	.4byte	0x9dd
	.byte	0x1d
	.byte	0
	.uleb128 0x26
	.4byte	0x9f6
	.4byte	.LBB92
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x132
	.4byte	0xea5
	.uleb128 0x24
	.4byte	0xa03
	.byte	0x1c
	.byte	0
	.uleb128 0x27
	.4byte	0x9d0
	.4byte	.LBB95
	.4byte	.LBE95-.LBB95
	.byte	0x1
	.2byte	0x131
	.4byte	0xec6
	.uleb128 0x24
	.4byte	0x9e9
	.byte	0
	.uleb128 0x24
	.4byte	0x9dd
	.byte	0x1c
	.byte	0
	.uleb128 0x26
	.4byte	0x9f6
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x144
	.4byte	0xee1
	.uleb128 0x24
	.4byte	0xa03
	.byte	0x32
	.byte	0
	.uleb128 0x27
	.4byte	0x9d0
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0x1
	.2byte	0x143
	.4byte	0xf02
	.uleb128 0x24
	.4byte	0x9e9
	.byte	0
	.uleb128 0x24
	.4byte	0x9dd
	.byte	0x32
	.byte	0
	.uleb128 0x26
	.4byte	0x9f6
	.4byte	.LBB104
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.2byte	0x156
	.4byte	0xf1d
	.uleb128 0x24
	.4byte	0xa03
	.byte	0x2c
	.byte	0
	.uleb128 0x27
	.4byte	0x9d0
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.byte	0x1
	.2byte	0x155
	.4byte	0xf3e
	.uleb128 0x24
	.4byte	0x9e9
	.byte	0
	.uleb128 0x24
	.4byte	0x9dd
	.byte	0x2c
	.byte	0
	.uleb128 0x26
	.4byte	0x9f6
	.4byte	.LBB110
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.2byte	0x168
	.4byte	0xf59
	.uleb128 0x24
	.4byte	0xa03
	.byte	0x19
	.byte	0
	.uleb128 0x27
	.4byte	0x9d0
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.byte	0x1
	.2byte	0x167
	.4byte	0xf7a
	.uleb128 0x24
	.4byte	0x9e9
	.byte	0
	.uleb128 0x24
	.4byte	0x9dd
	.byte	0x19
	.byte	0
	.uleb128 0x26
	.4byte	0x9f6
	.4byte	.LBB116
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.2byte	0x179
	.4byte	0xf95
	.uleb128 0x24
	.4byte	0xa03
	.byte	0x2d
	.byte	0
	.uleb128 0x28
	.4byte	0x9d0
	.4byte	.LBB119
	.4byte	.LBE119-.LBB119
	.byte	0x1
	.2byte	0x178
	.uleb128 0x24
	.4byte	0x9e9
	.byte	0
	.uleb128 0x24
	.4byte	0x9dd
	.byte	0x2d
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x17e
	.4byte	0x2fe
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfdc
	.uleb128 0x2a
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x180
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x29
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x184
	.4byte	0x2dd
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103d
	.uleb128 0x2b
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x184
	.4byte	0x2fe
	.4byte	.LLST8
	.uleb128 0x2c
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x184
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x186
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.uleb128 0x2e
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x190
	.4byte	0x2fe
	.4byte	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x198
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x108c
	.uleb128 0x26
	.4byte	0x9d0
	.4byte	.LBB123
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x1074
	.uleb128 0x24
	.4byte	0x9e9
	.byte	0
	.uleb128 0x24
	.4byte	0x9dd
	.byte	0x37
	.byte	0
	.uleb128 0x30
	.4byte	0x9f6
	.4byte	.LBB126
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.2byte	0x1a6
	.uleb128 0x24
	.4byte	0xa03
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x1aa
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b3
	.uleb128 0x31
	.4byte	0xa10
	.4byte	.LBB131
	.4byte	.LBE131-.LBB131
	.byte	0x1
	.2byte	0x1ac
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x1b3
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10da
	.uleb128 0x31
	.4byte	0xa1c
	.4byte	.LBB133
	.4byte	.LBE133-.LBB133
	.byte	0x1
	.2byte	0x1b5
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x1bc
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1101
	.uleb128 0x31
	.4byte	0xa28
	.4byte	.LBB135
	.4byte	.LBE135-.LBB135
	.byte	0x1
	.2byte	0x1be
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x1c5
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1128
	.uleb128 0x31
	.4byte	0xa34
	.4byte	.LBB137
	.4byte	.LBE137-.LBB137
	.byte	0x1
	.2byte	0x1c7
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x1ce
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114f
	.uleb128 0x31
	.4byte	0xa40
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.byte	0x1
	.2byte	0x1d0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1d7
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1176
	.uleb128 0x31
	.4byte	0xa4c
	.4byte	.LBB141
	.4byte	.LBE141-.LBB141
	.byte	0x1
	.2byte	0x1d9
	.byte	0
	.uleb128 0x32
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1e0
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x2fe
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x2fe
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x2fe
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x2fe
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x2fe
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x204
	.4byte	0x2fe
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x209
	.4byte	0x2fe
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x20e
	.4byte	0x2dd
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1291
	.uleb128 0x2b
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x20e
	.4byte	0x2fe
	.4byte	.LLST10
	.uleb128 0x2c
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x20e
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x34
	.ascii	"l\000"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x2fe
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x211
	.4byte	0x2fe
	.4byte	.LLST11
	.uleb128 0x2d
	.4byte	.LBB143
	.4byte	.LBE143-.LBB143
	.uleb128 0x2e
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x227
	.4byte	0x2fe
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF240
	.byte	0x2
	.2byte	0x51b
	.4byte	0x5e0
	.uleb128 0x36
	.4byte	.LASF241
	.byte	0x1
	.byte	0x3
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim12_val
	.uleb128 0x36
	.4byte	.LASF242
	.byte	0x1
	.byte	0x4
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim3_val
	.uleb128 0x36
	.4byte	.LASF243
	.byte	0x1
	.byte	0x5
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim2_val
	.uleb128 0x36
	.4byte	.LASF244
	.byte	0x1
	.byte	0x6
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim5_val
	.uleb128 0x36
	.4byte	.LASF245
	.byte	0x1
	.byte	0x7
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim4_val
	.uleb128 0x36
	.4byte	.LASF246
	.byte	0x1
	.byte	0x8
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim14_val
	.uleb128 0x36
	.4byte	.LASF247
	.byte	0x1
	.byte	0x9
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	g_tim13_val
	.uleb128 0x37
	.ascii	"D1\000"
	.byte	0x1
	.byte	0xa
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	D1
	.uleb128 0xb
	.4byte	0x2fe
	.4byte	0x1334
	.uleb128 0xc
	.4byte	0x3d5
	.byte	0x2
	.byte	0
	.uleb128 0x36
	.4byte	.LASF248
	.byte	0x1
	.byte	0xb
	.4byte	0x1345
	.uleb128 0x5
	.byte	0x3
	.4byte	PERIOD
	.uleb128 0xd
	.4byte	0x1324
	.uleb128 0x36
	.4byte	.LASF249
	.byte	0x1
	.byte	0xc
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	PERIOD_APA
	.uleb128 0x36
	.4byte	.LASF250
	.byte	0x1
	.byte	0xd
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	PERIOD_WS
	.uleb128 0x37
	.ascii	"D2\000"
	.byte	0x1
	.byte	0xe
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	D2
	.uleb128 0x37
	.ascii	"D3\000"
	.byte	0x1
	.byte	0xf
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	D3
	.uleb128 0x37
	.ascii	"D4\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	D4
	.uleb128 0x37
	.ascii	"D5\000"
	.byte	0x1
	.byte	0x11
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	D5
	.uleb128 0x37
	.ascii	"D6\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x43b
	.uleb128 0x5
	.byte	0x3
	.4byte	D6
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE128-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	D1
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE129-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	D2
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE130-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	D3
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE131-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	D4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE132-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	D5
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE133-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	D6
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE134-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE135-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE145-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE145-.Ltext0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE161-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE161-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB123-.Ltext0
	.4byte	.LBE123-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF88:
	.ascii	"HASH_RNG_IRQn\000"
.LASF148:
	.ascii	"APB1ENR\000"
.LASF135:
	.ascii	"CPACR\000"
.LASF162:
	.ascii	"CCMR1\000"
.LASF154:
	.ascii	"APB2LPENR\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF143:
	.ascii	"APB2RSTR\000"
.LASF30:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF70:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF186:
	.ascii	"NVIC_SetPriority\000"
.LASF103:
	.ascii	"unsigned int\000"
.LASF224:
	.ascii	"initSYSTIM\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF129:
	.ascii	"DFSR\000"
.LASF226:
	.ascii	"TIM8_TRG_COM_TIM14_IRQHandler\000"
.LASF155:
	.ascii	"BDCR\000"
.LASF97:
	.ascii	"__int32_t\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
.LASF12:
	.ascii	"FLASH_IRQn\000"
.LASF241:
	.ascii	"g_tim12_val\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF133:
	.ascii	"MMFR\000"
.LASF250:
	.ascii	"PERIOD_WS\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF242:
	.ascii	"g_tim3_val\000"
.LASF151:
	.ascii	"AHB2LPENR\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF50:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF60:
	.ascii	"UART4_IRQn\000"
.LASF13:
	.ascii	"RCC_IRQn\000"
.LASF248:
	.ascii	"PERIOD\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF179:
	.ascii	"TIM_TypeDef\000"
.LASF92:
	.ascii	"signed char\000"
.LASF244:
	.ascii	"g_tim5_val\000"
.LASF165:
	.ascii	"CCER\000"
.LASF107:
	.ascii	"uint32_t\000"
.LASF217:
	.ascii	"initSYSTIMER\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF173:
	.ascii	"BDTR\000"
.LASF108:
	.ascii	"ISER\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF145:
	.ascii	"AHB1ENR\000"
.LASF169:
	.ascii	"CCR1\000"
.LASF157:
	.ascii	"SSCGR\000"
.LASF171:
	.ascii	"CCR3\000"
.LASF111:
	.ascii	"RSERVED1\000"
.LASF218:
	.ascii	"getSYSTIMER\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF163:
	.ascii	"CCMR2\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF211:
	.ascii	"startSTOPWATCH\000"
.LASF243:
	.ascii	"g_tim2_val\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF215:
	.ascii	"disableSYSTIMER2\000"
.LASF214:
	.ascii	"disableSYSTIMER3\000"
.LASF187:
	.ascii	"NVIC_EnableIRQ\000"
.LASF216:
	.ascii	"disableSYSTIMER5\000"
.LASF102:
	.ascii	"long long unsigned int\000"
.LASF164:
	.ascii	"RESERVED7\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF228:
	.ascii	"TIM3_IRQHandler\000"
.LASF205:
	.ascii	"getP_WS\000"
.LASF95:
	.ascii	"__uint16_t\000"
.LASF21:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF74:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF219:
	.ascii	"time\000"
.LASF225:
	.ascii	"TIM8_UP_TIM13_IRQHandler\000"
.LASF141:
	.ascii	"AHB3RSTR\000"
.LASF210:
	.ascii	"initSTOPWATCH\000"
.LASF90:
	.ascii	"IRQn_Type\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF122:
	.ascii	"CPUID\000"
.LASF159:
	.ascii	"RCC_TypeDef\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF131:
	.ascii	"BFAR\000"
.LASF11:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
.LASF132:
	.ascii	"AFSR\000"
.LASF161:
	.ascii	"DIER\000"
.LASF213:
	.ascii	"disableSYSTIMER12\000"
.LASF198:
	.ascii	"setP_APA\000"
.LASF147:
	.ascii	"AHB3ENR\000"
.LASF16:
	.ascii	"EXTI2_IRQn\000"
.LASF142:
	.ascii	"APB1RSTR\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF128:
	.ascii	"HFSR\000"
.LASF59:
	.ascii	"SPI3_IRQn\000"
.LASF246:
	.ascii	"g_tim14_val\000"
.LASF125:
	.ascii	"AIRCR\000"
.LASF194:
	.ascii	"setB1\000"
.LASF195:
	.ascii	"setB2\000"
.LASF196:
	.ascii	"setB3\000"
.LASF197:
	.ascii	"setB4\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF23:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF104:
	.ascii	"uint8_t\000"
.LASF170:
	.ascii	"CCR2\000"
.LASF172:
	.ascii	"CCR4\000"
.LASF160:
	.ascii	"SMCR\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF204:
	.ascii	"getP_APA\000"
.LASF101:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"WWDG_IRQn\000"
.LASF126:
	.ascii	"SHCSR\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF153:
	.ascii	"APB1LPENR\000"
.LASF68:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF127:
	.ascii	"CFSR\000"
.LASF203:
	.ascii	"getB4\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF251:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF236:
	.ascii	"getSYSTIM2\000"
.LASF234:
	.ascii	"getSYSTIM3\000"
.LASF238:
	.ascii	"getSYSTIM4\000"
.LASF237:
	.ascii	"getSYSTIM5\000"
.LASF180:
	.ascii	"setD1\000"
.LASF181:
	.ascii	"setD2\000"
.LASF182:
	.ascii	"setD3\000"
.LASF18:
	.ascii	"EXTI4_IRQn\000"
.LASF206:
	.ascii	"setD5\000"
.LASF207:
	.ascii	"setD6\000"
.LASF208:
	.ascii	"delay_ms\000"
.LASF223:
	.ascii	"utmp32\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF253:
	.ascii	"/home/damir/msut/STM32F407/examples/msut_zadaca2_ha"
	.ascii	"mzic_damir_hasanovic_azra\000"
.LASF114:
	.ascii	"ICPR\000"
.LASF231:
	.ascii	"TIM4_IRQHandler\000"
.LASF149:
	.ascii	"APB2ENR\000"
.LASF58:
	.ascii	"TIM5_IRQn\000"
.LASF249:
	.ascii	"PERIOD_APA\000"
.LASF150:
	.ascii	"AHB1LPENR\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF221:
	.ascii	"btime\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF105:
	.ascii	"uint16_t\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF184:
	.ascii	"IRQn\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF140:
	.ascii	"AHB2RSTR\000"
.LASF119:
	.ascii	"STIR\000"
.LASF130:
	.ascii	"MMFAR\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF109:
	.ascii	"RESERVED0\000"
.LASF144:
	.ascii	"RESERVED1\000"
.LASF113:
	.ascii	"RESERVED2\000"
.LASF115:
	.ascii	"RESERVED3\000"
.LASF117:
	.ascii	"RESERVED4\000"
.LASF118:
	.ascii	"RESERVED5\000"
.LASF156:
	.ascii	"RESERVED6\000"
.LASF94:
	.ascii	"short int\000"
.LASF166:
	.ascii	"RESERVED8\000"
.LASF167:
	.ascii	"RESERVED9\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF98:
	.ascii	"long int\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF176:
	.ascii	"DMAR\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF240:
	.ascii	"ITM_RxBuffer\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF185:
	.ascii	"priority\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF200:
	.ascii	"getB1\000"
.LASF201:
	.ascii	"getB2\000"
.LASF202:
	.ascii	"getB3\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF239:
	.ascii	"chk4TimeoutSYSTIM\000"
.LASF138:
	.ascii	"CFGR\000"
.LASF220:
	.ascii	"chk4TimeoutSYSTIMER\000"
.LASF56:
	.ascii	"FSMC_IRQn\000"
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF121:
	.ascii	"NVIC_Type\000"
.LASF136:
	.ascii	"SCB_Type\000"
.LASF62:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF137:
	.ascii	"PLLCFGR\000"
.LASF124:
	.ascii	"VTOR\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF79:
	.ascii	"USART6_IRQn\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF190:
	.ascii	"getD1\000"
.LASF152:
	.ascii	"AHB3LPENR\000"
.LASF120:
	.ascii	"sizetype\000"
.LASF123:
	.ascii	"ICSR\000"
.LASF183:
	.ascii	"setD4\000"
.LASF100:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF146:
	.ascii	"AHB2ENR\000"
.LASF106:
	.ascii	"int32_t\000"
.LASF245:
	.ascii	"g_tim4_val\000"
.LASF252:
	.ascii	"delay.c\000"
.LASF84:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF158:
	.ascii	"PLLI2SCFGR\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF93:
	.ascii	"unsigned char\000"
.LASF227:
	.ascii	"TIM8_BRK_TIM12_IRQHandler\000"
.LASF99:
	.ascii	"__uint32_t\000"
.LASF247:
	.ascii	"g_tim13_val\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF233:
	.ascii	"getSYSTIM13\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF191:
	.ascii	"getD2\000"
.LASF192:
	.ascii	"getD3\000"
.LASF193:
	.ascii	"getD4\000"
.LASF188:
	.ascii	"getD5\000"
.LASF189:
	.ascii	"getD6\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF168:
	.ascii	"RESERVED10\000"
.LASF174:
	.ascii	"RESERVED11\000"
.LASF175:
	.ascii	"RESERVED12\000"
.LASF177:
	.ascii	"RESERVED13\000"
.LASF178:
	.ascii	"RESERVED14\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF110:
	.ascii	"ICER\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF116:
	.ascii	"IABR\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF232:
	.ascii	"getSYSTIM12\000"
.LASF91:
	.ascii	"__uint8_t\000"
.LASF235:
	.ascii	"getSYSTIM14\000"
.LASF209:
	.ascii	"delay_us\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF222:
	.ascii	"period\000"
.LASF96:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"EXTI3_IRQn\000"
.LASF230:
	.ascii	"TIM5_IRQHandler\000"
.LASF199:
	.ascii	"setP_WS\000"
.LASF229:
	.ascii	"TIM2_IRQHandler\000"
.LASF112:
	.ascii	"ISPR\000"
.LASF134:
	.ascii	"ISAR\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF212:
	.ascii	"stopSTOPWATCH\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF139:
	.ascii	"AHB1RSTR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
