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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	setArray
	.thumb
	.thumb_func
	.type	setArray, %function
setArray:
.LFB110:
	.file 1 "main.c"
	.loc 1 10 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	ldr	r2, .L5
	subs	r3, r0, #1
	adds	r0, r0, #6
.LVL1:
.L2:
	.loc 1 13 0 discriminator 3
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
.LVL2:
	strb	r1, [r2, #1]!
.LVL3:
	.loc 1 12 0 discriminator 3
	cmp	r3, r0
	bne	.L2
	.loc 1 14 0
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-1
	.cfi_endproc
.LFE110:
	.size	setArray, .-setArray
	.align	2
	.global	setRedArray
	.thumb
	.thumb_func
	.type	setRedArray, %function
setRedArray:
.LFB111:
	.loc 1 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	ldr	r2, .L10
	subs	r3, r0, #1
	adds	r0, r0, #6
.LVL5:
.L8:
	.loc 1 20 0 discriminator 3
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
.LVL6:
	strb	r1, [r2, #1]!
.LVL7:
	.loc 1 19 0 discriminator 3
	cmp	r3, r0
	bne	.L8
	.loc 1 22 0
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0+7
	.cfi_endproc
.LFE111:
	.size	setRedArray, .-setRedArray
	.align	2
	.global	setGreenArray
	.thumb
	.thumb_func
	.type	setGreenArray, %function
setGreenArray:
.LFB112:
	.loc 1 26 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
	ldr	r2, .L15
	subs	r3, r0, #1
	adds	r0, r0, #6
.LVL9:
.L13:
	.loc 1 29 0 discriminator 3
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
.LVL10:
	strb	r1, [r2, #1]!
.LVL11:
	.loc 1 28 0 discriminator 3
	cmp	r3, r0
	bne	.L13
	.loc 1 31 0
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0+15
	.cfi_endproc
.LFE112:
	.size	setGreenArray, .-setGreenArray
	.align	2
	.global	setBlueArray
	.thumb
	.thumb_func
	.type	setBlueArray, %function
setBlueArray:
.LFB113:
	.loc 1 35 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL12:
	ldr	r2, .L20
	subs	r3, r0, #1
	adds	r0, r0, #6
.LVL13:
.L18:
	.loc 1 38 0 discriminator 3
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
.LVL14:
	strb	r1, [r2, #1]!
.LVL15:
	.loc 1 37 0 discriminator 3
	cmp	r3, r0
	bne	.L18
	.loc 1 40 0
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR0+23
	.cfi_endproc
.LFE113:
	.size	setBlueArray, .-setBlueArray
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB114:
	.loc 1 43 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
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
	.loc 1 46 0
	movs	r0, #91
	.loc 1 43 0
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 46 0
	bl	initUSART2
.LVL16:
	.loc 1 47 0
	bl	enIrqUSART2
.LVL17:
	.loc 1 51 0
	ldr	r2, .L84
	.loc 1 52 0
	ldr	r6, .L84+4
	.loc 1 51 0
	ldr	r3, [r2, #48]
	ldr	r4, .L84+8
	.loc 1 92 0
	ldr	r5, .L84+12
	.loc 1 51 0
	orr	r3, r3, #8
	str	r3, [r2, #48]
	.loc 1 52 0
	ldr	r3, [r6]
	orr	r3, r3, #1426063360
	str	r3, [r6]
	.loc 1 53 0
	ldr	r3, [r6, #4]
	str	r3, [r6, #4]
	.loc 1 54 0
	ldr	r3, [r6, #8]
	orr	r3, r3, #-16777216
	str	r3, [r6, #8]
.LVL18:
	.loc 1 56 0
	bl	getSYSTIM14
.LVL19:
	mov	r8, r0
.LVL20:
	.loc 1 57 0
	bl	getSYSTIM12
.LVL21:
	str	r0, [sp, #8]
.LVL22:
	.loc 1 58 0
	bl	getSYSTIM13
.LVL23:
	str	r0, [sp, #4]
.LVL24:
	.loc 1 59 0
	bl	getSYSTIM3
.LVL25:
	str	r0, [sp, #12]
.LVL26:
	.loc 1 60 0
	bl	getSYSTIM2
.LVL27:
	str	r0, [sp, #16]
.LVL28:
	.loc 1 61 0
	bl	getSYSTIM5
.LVL29:
	str	r0, [sp, #20]
.LVL30:
	.loc 1 62 0
	bl	getSYSTIM4
.LVL31:
	.loc 1 55 0
	mov	r9, #1
	.loc 1 62 0
	str	r0, [sp, #24]
.LVL32:
	.loc 1 63 0
	ldr	r0, .L84+16
.LVL33:
	.loc 1 70 0
	mov	fp, r6
	.loc 1 63 0
	bl	printUSART2
.LVL34:
	add	r6, r4, #16
	.loc 1 55 0
	mov	r7, r9
	mov	r10, r9
.LVL35:
	.loc 1 68 0
	bl	getD1
.LVL36:
	cmp	r0, #0
	bne	.L78
.LVL37:
.L23:
	.loc 1 74 0
	bl	getD6
.LVL38:
	cbz	r0, .L24
	.loc 1 74 0 is_stmt 0 discriminator 1
	bl	getP_WS
.LVL39:
	movs	r2, #6
	mov	r1, r0
	mov	r0, r8
	bl	chk4TimeoutSYSTIM
.LVL40:
	cbnz	r0, .L24
	.loc 1 78 0 is_stmt 1
	ldr	r3, [r5, #20]
	.loc 1 76 0
	cmp	r10, #0
	beq	.L25
	.loc 1 78 0
	orr	r3, r3, #8
	ldr	r7, .L84+20
.LVL41:
	str	r3, [r5, #20]
.LVL42:
.L26:
	.loc 1 80 0 discriminator 3
	ldrb	r0, [r7, #1]!	@ zero_extendqisi2
.LVL43:
	bl	txByteSPI1
.LVL44:
	.loc 1 79 0 discriminator 3
	cmp	r7, r6
	bne	.L26
	ldr	r8, .L84+32
.LVL45:
	add	r7, r8, #7
.LVL46:
.L27:
	.loc 1 83 0 discriminator 3
	ldrb	r0, [r8, #1]!	@ zero_extendqisi2
.LVL47:
	bl	txByteSPI1
.LVL48:
	.loc 1 82 0 discriminator 3
	cmp	r8, r7
	bne	.L27
	ldr	r8, .L84+36
.LVL49:
	add	r7, r8, #7
.L28:
.LVL50:
	.loc 1 86 0 discriminator 3
	ldrb	r0, [r8, #1]!	@ zero_extendqisi2
.LVL51:
	bl	txByteSPI1
.LVL52:
	.loc 1 85 0 discriminator 3
	cmp	r8, r7
	bne	.L28
	.loc 1 87 0
	ldr	r3, [r5, #20]
	bic	r3, r3, #8
	str	r3, [r5, #20]
.LVL53:
	.loc 1 88 0
	mov	r10, #0
.LVL54:
.L29:
	.loc 1 105 0
	bl	getSYSTIM14
.LVL55:
	movs	r7, #7
	mov	r8, r0
.LVL56:
.L24:
	.loc 1 107 0
	bl	getD5
.LVL57:
	cmp	r0, #0
	bne	.L79
.L33:
	.loc 1 155 0
	bl	getD2
.LVL58:
	cmp	r0, #0
	bne	.L80
.L36:
	.loc 1 160 0
	bl	getD3
.LVL59:
	cmp	r0, #0
	bne	.L81
.L37:
	.loc 1 166 0
	bl	getD4
.LVL60:
	cmp	r0, #0
	bne	.L82
.L38:
	.loc 1 172 0
	bl	getD1
.LVL61:
	cbnz	r0, .L83
.L39:
	.loc 1 181 0
	bl	chkRxBuffUSART2
.LVL62:
	.loc 1 68 0
	bl	getD1
.LVL63:
	cmp	r0, #0
	beq	.L23
.L78:
	.loc 1 68 0 is_stmt 0 discriminator 1
	bl	getB1
.LVL64:
	movs	r2, #1
	mov	r1, r0
	ldr	r0, [sp, #8]
	bl	chk4TimeoutSYSTIM
.LVL65:
	cmp	r0, #0
	bne	.L23
	.loc 1 70 0 is_stmt 1
	ldr	r3, [fp, #20]
	eor	r3, r3, #4096
	str	r3, [fp, #20]
	.loc 1 71 0
	bl	getSYSTIM12
.LVL66:
	str	r0, [sp, #8]
.LVL67:
	b	.L23
.LVL68:
.L83:
	.loc 1 172 0 discriminator 1
	bl	getB1
.LVL69:
	movs	r2, #1
	mov	r1, r0
	ldr	r0, [sp, #24]
	bl	chk4TimeoutSYSTIM
.LVL70:
	cmp	r0, #0
	bne	.L39
	.loc 1 174 0
	bl	getB1
.LVL71:
	cbz	r0, .L40
	.loc 1 175 0
	ldr	r3, .L84+24
	movs	r2, #100
	str	r2, [r3, #52]
.L40:
	.loc 1 176 0
	bl	getB2
.LVL72:
	cbz	r0, .L41
	.loc 1 177 0
	ldr	r3, .L84+24
	movs	r2, #1
	str	r2, [r3, #52]
.L41:
	.loc 1 179 0
	bl	getSYSTIM4
.LVL73:
	str	r0, [sp, #24]
.LVL74:
	b	.L39
.LVL75:
.L82:
	.loc 1 166 0 discriminator 1
	bl	getB4
.LVL76:
	movs	r2, #4
	mov	r1, r0
	ldr	r0, [sp, #20]
	bl	chk4TimeoutSYSTIM
.LVL77:
	cmp	r0, #0
	bne	.L38
	.loc 1 168 0
	ldr	r3, [fp, #20]
	eor	r3, r3, #32768
	str	r3, [fp, #20]
	.loc 1 169 0
	bl	getSYSTIM5
.LVL78:
	str	r0, [sp, #20]
.LVL79:
	b	.L38
.LVL80:
.L81:
	.loc 1 160 0 discriminator 1
	bl	getB3
.LVL81:
	movs	r2, #3
	mov	r1, r0
	ldr	r0, [sp, #16]
	bl	chk4TimeoutSYSTIM
.LVL82:
	cmp	r0, #0
	bne	.L37
	.loc 1 162 0
	ldr	r3, [fp, #20]
	eor	r3, r3, #16384
	str	r3, [fp, #20]
	.loc 1 163 0
	bl	getSYSTIM2
.LVL83:
	str	r0, [sp, #16]
.LVL84:
	b	.L37
.LVL85:
.L80:
	.loc 1 155 0 discriminator 1
	bl	getB2
.LVL86:
	movs	r2, #2
	mov	r1, r0
	ldr	r0, [sp, #12]
	bl	chk4TimeoutSYSTIM
.LVL87:
	cmp	r0, #0
	bne	.L36
	.loc 1 157 0
	ldr	r3, [fp, #20]
	eor	r3, r3, #8192
	str	r3, [fp, #20]
	.loc 1 158 0
	bl	getSYSTIM3
.LVL88:
	str	r0, [sp, #12]
.LVL89:
	b	.L36
.LVL90:
.L79:
	.loc 1 107 0 discriminator 1
	bl	getP_APA
.LVL91:
	movs	r2, #5
	mov	r1, r0
	ldr	r0, [sp, #4]
	bl	chk4TimeoutSYSTIM
.LVL92:
	mov	r9, r0
	cmp	r0, #0
	bne	.L33
	.loc 1 109 0
	cmp	r7, #0
	beq	.L34
.LBB2:
	.loc 1 111 0
	bl	getBlueAPA
.LVL93:
	str	r0, [sp, #28]
.LVL94:
	.loc 1 112 0
	bl	getGreenAPA
.LVL95:
	str	r0, [sp, #4]
.LVL96:
	.loc 1 113 0
	bl	getRedAPA
.LVL97:
	.loc 1 114 0
	ldr	r3, [r5, #20]
	orr	r3, r3, #8
	str	r3, [r5, #20]
	.loc 1 113 0
	mov	r7, r0
.LVL98:
	.loc 1 115 0
	mov	r0, r9
	bl	txByteSPI2
.LVL99:
	.loc 1 116 0
	mov	r0, r9
	bl	txByteSPI2
.LVL100:
	.loc 1 117 0
	mov	r0, r9
	bl	txByteSPI2
.LVL101:
	.loc 1 118 0
	mov	r0, r9
	bl	txByteSPI2
.LVL102:
	.loc 1 120 0
	movs	r0, #255
	bl	txByteSPI2
.LVL103:
	.loc 1 121 0
	ldr	r2, [sp, #28]
	uxtb	r0, r2
	bl	txByteSPI2
.LVL104:
	.loc 1 122 0
	ldr	r1, [sp, #4]
	uxtb	r0, r1
	bl	txByteSPI2
.LVL105:
	.loc 1 123 0
	uxtb	r0, r7
	bl	txByteSPI2
.LVL106:
	.loc 1 125 0
	movs	r0, #255
	bl	txByteSPI2
.LVL107:
	.loc 1 126 0
	movs	r0, #255
	bl	txByteSPI2
.LVL108:
	.loc 1 127 0
	movs	r0, #255
	bl	txByteSPI2
.LVL109:
	.loc 1 128 0
	movs	r0, #255
	bl	txByteSPI2
.LVL110:
	.loc 1 129 0
	ldr	r3, [r5, #20]
	bic	r3, r3, #8
	.loc 1 130 0
	mov	r7, r9
.LVL111:
	.loc 1 129 0
	str	r3, [r5, #20]
.LVL112:
.L35:
.LBE2:
	.loc 1 152 0
	bl	getSYSTIM13
.LVL113:
	str	r0, [sp, #4]
.LVL114:
	b	.L33
.LVL115:
.L25:
	ldr	r7, .L84+28
.LVL116:
	.loc 1 92 0
	orr	r3, r3, #8
	str	r3, [r5, #20]
.LVL117:
	mov	r8, r7
.LVL118:
.L30:
	.loc 1 94 0 discriminator 3
	ldrb	r0, [r8, #1]!	@ zero_extendqisi2
.LVL119:
	bl	txByteSPI1
.LVL120:
	.loc 1 93 0 discriminator 3
	cmp	r8, r4
	bne	.L30
	ldr	r8, .L84+28
.LVL121:
.L31:
	.loc 1 97 0 discriminator 3
	ldrb	r0, [r8, #1]!	@ zero_extendqisi2
.LVL122:
	bl	txByteSPI1
.LVL123:
	.loc 1 96 0 discriminator 3
	cmp	r8, r4
	bne	.L31
.LVL124:
.L61:
	.loc 1 100 0 discriminator 3
	ldrb	r0, [r7, #1]!	@ zero_extendqisi2
.LVL125:
	bl	txByteSPI1
.LVL126:
	.loc 1 99 0 discriminator 3
	cmp	r7, r4
	bne	.L61
	.loc 1 101 0
	ldr	r3, [r5, #20]
	bic	r3, r3, #8
	str	r3, [r5, #20]
.LVL127:
	.loc 1 103 0
	mov	r10, #1
	b	.L29
.LVL128:
.L34:
	.loc 1 135 0
	ldr	r3, [r5, #20]
	orr	r3, r3, #8
	str	r3, [r5, #20]
	.loc 1 136 0
	bl	txByteSPI2
.LVL129:
	.loc 1 137 0
	mov	r0, r7
	bl	txByteSPI2
.LVL130:
	.loc 1 138 0
	mov	r0, r7
	bl	txByteSPI2
.LVL131:
	.loc 1 139 0
	mov	r0, r7
	bl	txByteSPI2
.LVL132:
	.loc 1 141 0
	movs	r0, #255
	bl	txByteSPI2
.LVL133:
	.loc 1 142 0
	mov	r0, r7
	bl	txByteSPI2
.LVL134:
	.loc 1 143 0
	mov	r0, r7
	bl	txByteSPI2
.LVL135:
	.loc 1 144 0
	mov	r0, r7
	bl	txByteSPI2
.LVL136:
	.loc 1 146 0
	movs	r0, #255
	bl	txByteSPI2
.LVL137:
	.loc 1 147 0
	movs	r0, #255
	bl	txByteSPI2
.LVL138:
	.loc 1 148 0
	movs	r0, #255
	bl	txByteSPI2
.LVL139:
	.loc 1 149 0
	movs	r0, #255
	bl	txByteSPI2
.LVL140:
	.loc 1 150 0
	ldr	r3, [r5, #20]
	bic	r3, r3, #8
	str	r3, [r5, #20]
	.loc 1 134 0
	movs	r7, #1
	b	.L35
.L85:
	.align	2
.L84:
	.word	1073887232
	.word	1073875968
	.word	.LANCHOR0+6
	.word	1073876992
	.word	.LC0
	.word	.LANCHOR0+15
	.word	1073743872
	.word	.LANCHOR0-1
	.word	.LANCHOR0+7
	.word	.LANCHOR0+23
	.cfi_endproc
.LFE114:
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"> \000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	array, %object
	.size	array, 7
array:
	.space	7
	.space	1
	.type	redArray, %object
	.size	redArray, 7
redArray:
	.space	7
	.space	1
	.type	greenArray, %object
	.size	greenArray, 7
greenArray:
	.space	7
	.space	1
	.type	blueArray, %object
	.size	blueArray, 7
blueArray:
	.space	7
	.text
.Letext0:
	.file 2 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "usart.h"
	.file 6 "delay.h"
	.file 7 "spi.h"
	.file 8 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd07
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x1
	.4byte	.LASF122
	.4byte	.LASF123
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1d
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x3f
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x41
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0xb8
	.4byte	0xdf
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xa2
	.uleb128 0x5
	.4byte	0xad
	.uleb128 0x8
	.byte	0x28
	.byte	0x4
	.2byte	0x28e
	.4byte	0x175
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x290
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x291
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x292
	.4byte	0xca
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x293
	.4byte	0xca
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x294
	.4byte	0xca
	.byte	0x10
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x295
	.4byte	0xca
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x296
	.4byte	0xdf
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x297
	.4byte	0xdf
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x298
	.4byte	0xca
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x299
	.4byte	0x175
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x29a
	.4byte	0xe9
	.uleb128 0x8
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x315
	.uleb128 0xa
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xca
	.byte	0x8
	.uleb128 0xa
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xca
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xca
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xca
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xca
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2e6
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xca
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xca
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xcf
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xca
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xca
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xca
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2ed
	.4byte	0xb8
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xca
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xca
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xcf
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xca
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xca
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xca
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x2f4
	.4byte	0xb8
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xca
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xca
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xcf
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xca
	.byte	0x70
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xca
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xcf
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xca
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xca
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x186
	.uleb128 0x8
	.byte	0x54
	.byte	0x4
	.2byte	0x369
	.4byte	0x4fd
	.uleb128 0xa
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x36b
	.4byte	0xdf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x36c
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xa
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x36d
	.4byte	0xdf
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x36e
	.4byte	0xa2
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x36f
	.4byte	0xdf
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x370
	.4byte	0xa2
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x371
	.4byte	0xdf
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x372
	.4byte	0xa2
	.byte	0xe
	.uleb128 0xa
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x373
	.4byte	0xdf
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x374
	.4byte	0xa2
	.byte	0x12
	.uleb128 0xa
	.ascii	"EGR\000"
	.byte	0x4
	.2byte	0x375
	.4byte	0xdf
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x376
	.4byte	0xa2
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x377
	.4byte	0xdf
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x378
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x379
	.4byte	0xdf
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x37a
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x37b
	.4byte	0xdf
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x37c
	.4byte	0xa2
	.byte	0x22
	.uleb128 0xa
	.ascii	"CNT\000"
	.byte	0x4
	.2byte	0x37d
	.4byte	0xca
	.byte	0x24
	.uleb128 0xa
	.ascii	"PSC\000"
	.byte	0x4
	.2byte	0x37e
	.4byte	0xdf
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x37f
	.4byte	0xa2
	.byte	0x2a
	.uleb128 0xa
	.ascii	"ARR\000"
	.byte	0x4
	.2byte	0x380
	.4byte	0xca
	.byte	0x2c
	.uleb128 0xa
	.ascii	"RCR\000"
	.byte	0x4
	.2byte	0x381
	.4byte	0xdf
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x382
	.4byte	0xa2
	.byte	0x32
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x383
	.4byte	0xca
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x384
	.4byte	0xca
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x385
	.4byte	0xca
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x386
	.4byte	0xca
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x387
	.4byte	0xdf
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x388
	.4byte	0xa2
	.byte	0x46
	.uleb128 0xa
	.ascii	"DCR\000"
	.byte	0x4
	.2byte	0x389
	.4byte	0xdf
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x38a
	.4byte	0xa2
	.byte	0x4a
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x38b
	.4byte	0xdf
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x38c
	.4byte	0xa2
	.byte	0x4e
	.uleb128 0xa
	.ascii	"OR\000"
	.byte	0x4
	.2byte	0x38d
	.4byte	0xdf
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x38e
	.4byte	0xa2
	.byte	0x52
	.byte	0
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x38f
	.4byte	0x321
	.uleb128 0xc
	.byte	0x4
	.4byte	0x50f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF74
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x546
	.uleb128 0xe
	.ascii	"a\000"
	.byte	0x1
	.byte	0x9
	.4byte	0x546
	.4byte	.LLST0
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb
	.4byte	0x89
	.4byte	.LLST1
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x97
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0x10
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57c
	.uleb128 0xe
	.ascii	"a\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x546
	.4byte	.LLST2
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x89
	.4byte	.LLST3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x1
	.byte	0x19
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ac
	.uleb128 0xe
	.ascii	"a\000"
	.byte	0x1
	.byte	0x19
	.4byte	0x546
	.4byte	.LLST4
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1b
	.4byte	0x89
	.4byte	.LLST5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x22
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5dc
	.uleb128 0xe
	.ascii	"a\000"
	.byte	0x1
	.byte	0x22
	.4byte	0x546
	.4byte	.LLST6
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x89
	.4byte	.LLST7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x1
	.byte	0x2a
	.4byte	0x89
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb26
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x1
	.byte	0x2c
	.4byte	0xb8
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x1
	.byte	0x2c
	.4byte	0xb8
	.4byte	.LLST9
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2c
	.4byte	0xb8
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2c
	.4byte	0xb8
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2c
	.4byte	0xb8
	.4byte	.LLST12
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x1
	.byte	0x2c
	.4byte	0xb8
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2c
	.4byte	0xb8
	.4byte	.LLST14
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x89
	.4byte	.LLST15
	.uleb128 0xf
	.ascii	"ii\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x89
	.4byte	.LLST16
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0x38
	.4byte	0x89
	.4byte	0x68a
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x804
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x1
	.byte	0x6f
	.4byte	0x97
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x1
	.byte	0x6f
	.4byte	0x89
	.4byte	0x6b7
	.uleb128 0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x1
	.byte	0x70
	.4byte	0x97
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x1
	.byte	0x70
	.4byte	0x89
	.4byte	0x6d7
	.uleb128 0x13
	.byte	0
	.uleb128 0xf
	.ascii	"red\000"
	.byte	0x1
	.byte	0x71
	.4byte	0x97
	.4byte	.LLST19
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x71
	.4byte	0x89
	.4byte	0x6f7
	.uleb128 0x13
	.byte	0
	.uleb128 0x15
	.4byte	.LVL93
	.4byte	0xb86
	.uleb128 0x15
	.4byte	.LVL95
	.4byte	0xb97
	.uleb128 0x15
	.4byte	.LVL97
	.4byte	0xba8
	.uleb128 0x16
	.4byte	.LVL99
	.4byte	0xbb9
	.4byte	0x726
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL100
	.4byte	0xbb9
	.4byte	0x73a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL101
	.4byte	0xbb9
	.4byte	0x74e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL102
	.4byte	0xbb9
	.4byte	0x762
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL103
	.4byte	0xbb9
	.4byte	0x776
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.4byte	.LVL104
	.4byte	0xbb9
	.4byte	0x78c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -44
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	.LVL105
	.4byte	0xbb9
	.4byte	0x7a3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	.LVL106
	.4byte	0xbb9
	.4byte	0x7b7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL107
	.4byte	0xbb9
	.4byte	0x7cb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.4byte	.LVL108
	.4byte	0xbb9
	.4byte	0x7df
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.4byte	.LVL109
	.4byte	0xbb9
	.4byte	0x7f3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.4byte	.LVL110
	.4byte	0xbb9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL16
	.4byte	0xbce
	.4byte	0x818
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x5b
	.byte	0
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0xbdf
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0xbe6
	.uleb128 0x15
	.4byte	.LVL21
	.4byte	0xbf7
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0xc02
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0xc0d
	.uleb128 0x15
	.4byte	.LVL27
	.4byte	0xc18
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0xc23
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0xc2e
	.uleb128 0x16
	.4byte	.LVL34
	.4byte	0xc39
	.4byte	0x877
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0xc4b
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0xc56
	.uleb128 0x15
	.4byte	.LVL39
	.4byte	0xc61
	.uleb128 0x16
	.4byte	.LVL40
	.4byte	0xc6c
	.4byte	0x8ab
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL44
	.4byte	0xc8b
	.uleb128 0x15
	.4byte	.LVL48
	.4byte	0xc8b
	.uleb128 0x15
	.4byte	.LVL52
	.4byte	0xc8b
	.uleb128 0x15
	.4byte	.LVL55
	.4byte	0xbe6
	.uleb128 0x15
	.4byte	.LVL57
	.4byte	0xca0
	.uleb128 0x15
	.4byte	.LVL58
	.4byte	0xcab
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0xcb6
	.uleb128 0x15
	.4byte	.LVL60
	.4byte	0xcc1
	.uleb128 0x15
	.4byte	.LVL61
	.4byte	0xc4b
	.uleb128 0x15
	.4byte	.LVL62
	.4byte	0xccc
	.uleb128 0x15
	.4byte	.LVL63
	.4byte	0xc4b
	.uleb128 0x15
	.4byte	.LVL64
	.4byte	0xcd3
	.uleb128 0x16
	.4byte	.LVL65
	.4byte	0xc6c
	.4byte	0x931
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL66
	.4byte	0xbf7
	.uleb128 0x15
	.4byte	.LVL69
	.4byte	0xcd3
	.uleb128 0x16
	.4byte	.LVL70
	.4byte	0xc6c
	.4byte	0x95d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL71
	.4byte	0xcd3
	.uleb128 0x15
	.4byte	.LVL72
	.4byte	0xcde
	.uleb128 0x15
	.4byte	.LVL73
	.4byte	0xc2e
	.uleb128 0x15
	.4byte	.LVL76
	.4byte	0xce9
	.uleb128 0x16
	.4byte	.LVL77
	.4byte	0xc6c
	.4byte	0x99b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL78
	.4byte	0xc23
	.uleb128 0x15
	.4byte	.LVL81
	.4byte	0xcf4
	.uleb128 0x16
	.4byte	.LVL82
	.4byte	0xc6c
	.4byte	0x9c7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL83
	.4byte	0xc18
	.uleb128 0x15
	.4byte	.LVL86
	.4byte	0xcde
	.uleb128 0x16
	.4byte	.LVL87
	.4byte	0xc6c
	.4byte	0x9f3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL88
	.4byte	0xc0d
	.uleb128 0x15
	.4byte	.LVL91
	.4byte	0xcff
	.uleb128 0x16
	.4byte	.LVL92
	.4byte	0xc6c
	.4byte	0xa20
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL113
	.4byte	0xc02
	.uleb128 0x15
	.4byte	.LVL120
	.4byte	0xc8b
	.uleb128 0x15
	.4byte	.LVL123
	.4byte	0xc8b
	.uleb128 0x15
	.4byte	.LVL126
	.4byte	0xc8b
	.uleb128 0x15
	.4byte	.LVL129
	.4byte	0xbb9
	.uleb128 0x16
	.4byte	.LVL130
	.4byte	0xbb9
	.4byte	0xa61
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL131
	.4byte	0xbb9
	.4byte	0xa75
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL132
	.4byte	0xbb9
	.4byte	0xa89
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL133
	.4byte	0xbb9
	.4byte	0xa9d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.4byte	.LVL134
	.4byte	0xbb9
	.4byte	0xab1
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL135
	.4byte	0xbb9
	.4byte	0xac5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL136
	.4byte	0xbb9
	.4byte	0xad9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL137
	.4byte	0xbb9
	.4byte	0xaed
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.4byte	.LVL138
	.4byte	0xbb9
	.4byte	0xb01
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.4byte	.LVL139
	.4byte	0xbb9
	.4byte	0xb15
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.4byte	.LVL140
	.4byte	0xbb9
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x97
	.4byte	0xb36
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.byte	0x4
	.4byte	0xb26
	.uleb128 0x5
	.byte	0x3
	.4byte	array
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x1
	.byte	0x5
	.4byte	0xb26
	.uleb128 0x5
	.byte	0x3
	.4byte	redArray
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0x6
	.4byte	0xb26
	.uleb128 0x5
	.byte	0x3
	.4byte	greenArray
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x1
	.byte	0x7
	.4byte	0xb26
	.uleb128 0x5
	.byte	0x3
	.4byte	blueArray
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x51b
	.4byte	0xe4
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x1
	.byte	0x6f
	.4byte	0x89
	.4byte	0xb97
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x1
	.byte	0x70
	.4byte	0x89
	.4byte	0xba8
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x71
	.4byte	0x89
	.4byte	0xbb9
	.uleb128 0x13
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x7
	.byte	0x20
	.4byte	0x97
	.4byte	0xbce
	.uleb128 0x1c
	.4byte	0x97
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF96
	.byte	0x5
	.byte	0x10
	.4byte	0xbdf
	.uleb128 0x1c
	.4byte	0xb8
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0x5
	.byte	0x22
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0x38
	.4byte	0x89
	.4byte	0xbf7
	.uleb128 0x13
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF97
	.byte	0x6
	.byte	0x18
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0x6
	.byte	0x1a
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF99
	.byte	0x6
	.byte	0x1b
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x6
	.byte	0x1c
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF101
	.byte	0x6
	.byte	0x1d
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x6
	.byte	0x1e
	.4byte	0xb8
	.uleb128 0x1d
	.4byte	.LASF103
	.byte	0x5
	.byte	0x12
	.4byte	0xc4b
	.uleb128 0x1c
	.4byte	0x509
	.uleb128 0x13
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x6
	.byte	0x25
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF105
	.byte	0x6
	.byte	0x2a
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF106
	.byte	0x6
	.byte	0x24
	.4byte	0xb8
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x6
	.byte	0x35
	.4byte	0x97
	.4byte	0xc8b
	.uleb128 0x1c
	.4byte	0xb8
	.uleb128 0x1c
	.4byte	0xb8
	.uleb128 0x1c
	.4byte	0xb8
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x7
	.byte	0x1e
	.4byte	0x97
	.4byte	0xca0
	.uleb128 0x1c
	.4byte	0x97
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x6
	.byte	0x29
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x6
	.byte	0x26
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x6
	.byte	0x27
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF113
	.byte	0x6
	.byte	0x28
	.4byte	0xb8
	.uleb128 0x1e
	.4byte	.LASF115
	.byte	0x5
	.byte	0x21
	.uleb128 0x1f
	.4byte	.LASF116
	.byte	0x6
	.byte	0x1f
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF117
	.byte	0x6
	.byte	0x20
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x6
	.byte	0x22
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF119
	.byte	0x6
	.byte	0x21
	.4byte	0xb8
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x6
	.byte	0x23
	.4byte	0xb8
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE110
	.2byte	0x3
	.byte	0x70
	.sleb128 -6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE110
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LFE111
	.2byte	0x3
	.byte	0x70
	.sleb128 -6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE111
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LFE112
	.2byte	0x3
	.byte	0x70
	.sleb128 -6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE112
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LFE113
	.2byte	0x3
	.byte	0x70
	.sleb128 -6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE113
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-1
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LFE114
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-1
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115
	.4byte	.LFE114
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-1
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-1
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL85
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-1
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL80
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL75
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	greenArray-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	greenArray
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	greenArray-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	redArray-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	redArray
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	redArray-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	blueArray-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	blueArray
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	blueArray-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	array-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	array
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL122
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	array-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	array
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.4byte	array-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	array-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	array
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x3
	.4byte	array-1
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL18
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL37
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LFE114
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL94
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL96
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL98
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF21:
	.ascii	"PUPDR\000"
.LASF24:
	.ascii	"LCKR\000"
.LASF81:
	.ascii	"led_timer13\000"
.LASF75:
	.ascii	"setArray\000"
.LASF79:
	.ascii	"led_timer12\000"
.LASF19:
	.ascii	"OTYPER\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF56:
	.ascii	"CCMR1\000"
.LASF57:
	.ascii	"CCMR2\000"
.LASF73:
	.ascii	"TIM_TypeDef\000"
.LASF120:
	.ascii	"getP_APA\000"
.LASF63:
	.ascii	"CCR1\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF125:
	.ascii	"ITM_RxBuffer\000"
.LASF67:
	.ascii	"BDTR\000"
.LASF42:
	.ascii	"AHB1LPENR\000"
.LASF96:
	.ascii	"initUSART2\000"
.LASF104:
	.ascii	"getD1\000"
.LASF111:
	.ascii	"getD2\000"
.LASF112:
	.ascii	"getD3\000"
.LASF0:
	.ascii	"signed char\000"
.LASF110:
	.ascii	"getD5\000"
.LASF105:
	.ascii	"getD6\000"
.LASF28:
	.ascii	"AHB1RSTR\000"
.LASF106:
	.ascii	"getP_WS\000"
.LASF62:
	.ascii	"RESERVED10\000"
.LASF68:
	.ascii	"RESERVED11\000"
.LASF69:
	.ascii	"RESERVED12\000"
.LASF77:
	.ascii	"setGreenArray\000"
.LASF72:
	.ascii	"RESERVED14\000"
.LASF7:
	.ascii	"long int\000"
.LASF33:
	.ascii	"APB2RSTR\000"
.LASF46:
	.ascii	"APB1LPENR\000"
.LASF82:
	.ascii	"led_timer3\000"
.LASF85:
	.ascii	"led_timer4\000"
.LASF84:
	.ascii	"led_timer5\000"
.LASF59:
	.ascii	"CCER\000"
.LASF10:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF26:
	.ascii	"PLLCFGR\000"
.LASF92:
	.ascii	"array\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF114:
	.ascii	"enIrqUSART2\000"
.LASF20:
	.ascii	"OSPEEDR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF78:
	.ascii	"setBlueArray\000"
.LASF88:
	.ascii	"getBlueAPA\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"MODER\000"
.LASF121:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF25:
	.ascii	"GPIO_TypeDef\000"
.LASF53:
	.ascii	"RCC_TypeDef\000"
.LASF90:
	.ascii	"getGreenAPA\000"
.LASF54:
	.ascii	"SMCR\000"
.LASF52:
	.ascii	"PLLI2SCFGR\000"
.LASF30:
	.ascii	"AHB3RSTR\000"
.LASF100:
	.ascii	"getSYSTIM2\000"
.LASF99:
	.ascii	"getSYSTIM3\000"
.LASF122:
	.ascii	"main.c\000"
.LASF101:
	.ascii	"getSYSTIM5\000"
.LASF47:
	.ascii	"APB2LPENR\000"
.LASF2:
	.ascii	"short int\000"
.LASF103:
	.ascii	"printUSART2\000"
.LASF123:
	.ascii	"/home/damir/msut/STM32F407/examples/msut_zadaca2_ha"
	.ascii	"mzic_damir_hasanovic_azra\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF97:
	.ascii	"getSYSTIM12\000"
.LASF43:
	.ascii	"AHB2LPENR\000"
.LASF32:
	.ascii	"APB1RSTR\000"
.LASF109:
	.ascii	"txByteSPI1\000"
.LASF107:
	.ascii	"txByteSPI2\000"
.LASF113:
	.ascii	"getD4\000"
.LASF31:
	.ascii	"RESERVED0\000"
.LASF34:
	.ascii	"RESERVED1\000"
.LASF38:
	.ascii	"RESERVED2\000"
.LASF41:
	.ascii	"RESERVED3\000"
.LASF45:
	.ascii	"RESERVED4\000"
.LASF48:
	.ascii	"RESERVED5\000"
.LASF50:
	.ascii	"RESERVED6\000"
.LASF60:
	.ascii	"RESERVED8\000"
.LASF61:
	.ascii	"RESERVED9\000"
.LASF91:
	.ascii	"getRedAPA\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF44:
	.ascii	"AHB3LPENR\000"
.LASF40:
	.ascii	"APB2ENR\000"
.LASF37:
	.ascii	"AHB3ENR\000"
.LASF94:
	.ascii	"greenArray\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF58:
	.ascii	"RESERVED7\000"
.LASF86:
	.ascii	"blue\000"
.LASF74:
	.ascii	"char\000"
.LASF70:
	.ascii	"DMAR\000"
.LASF29:
	.ascii	"AHB2RSTR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF95:
	.ascii	"blueArray\000"
.LASF39:
	.ascii	"APB1ENR\000"
.LASF36:
	.ascii	"AHB2ENR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF22:
	.ascii	"BSRRL\000"
.LASF51:
	.ascii	"SSCGR\000"
.LASF71:
	.ascii	"RESERVED13\000"
.LASF93:
	.ascii	"redArray\000"
.LASF64:
	.ascii	"CCR2\000"
.LASF65:
	.ascii	"CCR3\000"
.LASF66:
	.ascii	"CCR4\000"
.LASF102:
	.ascii	"getSYSTIM4\000"
.LASF116:
	.ascii	"getB1\000"
.LASF117:
	.ascii	"getB2\000"
.LASF119:
	.ascii	"getB3\000"
.LASF118:
	.ascii	"getB4\000"
.LASF89:
	.ascii	"green\000"
.LASF49:
	.ascii	"BDCR\000"
.LASF23:
	.ascii	"BSRRH\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF80:
	.ascii	"led_timer14\000"
.LASF35:
	.ascii	"AHB1ENR\000"
.LASF55:
	.ascii	"DIER\000"
.LASF76:
	.ascii	"setRedArray\000"
.LASF27:
	.ascii	"CFGR\000"
.LASF124:
	.ascii	"main\000"
.LASF108:
	.ascii	"chk4TimeoutSYSTIM\000"
.LASF98:
	.ascii	"getSYSTIM13\000"
.LASF87:
	.ascii	"getSYSTIM14\000"
.LASF115:
	.ascii	"chkRxBuffUSART2\000"
.LASF83:
	.ascii	"led_timer2\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
