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
	.file	"spi.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	initSPI1
	.thumb
	.thumb_func
	.type	initSPI1, %function
initSPI1:
.LFB111:
	.file 1 "spi.c"
	.loc 1 50 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 61 0
	ldr	r2, .L28
	.loc 1 62 0
	ldr	r0, .L28+4
.LVL1:
	.loc 1 67 0
	ldr	r3, .L28+8
	.loc 1 73 0
	ldr	r1, .L28+12
	.loc 1 50 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 61 0
	ldr	r4, [r2, #48]
	orr	r4, r4, #2
	str	r4, [r2, #48]
	.loc 1 62 0
	ldr	r4, [r0]
	orr	r4, r4, #2688
	str	r4, [r0]
	.loc 1 63 0
	ldr	r4, [r0, #32]
	orr	r4, r4, #5570560
	orr	r4, r4, #20480
	str	r4, [r0, #32]
	.loc 1 64 0
	ldr	r4, [r0, #8]
	orr	r4, r4, #2688
	str	r4, [r0, #8]
	.loc 1 66 0
	ldr	r0, [r2, #48]
	orr	r0, r0, #16
	str	r0, [r2, #48]
	.loc 1 67 0
	ldr	r0, [r3]
	orr	r0, r0, #64
	str	r0, [r3]
	.loc 1 68 0
	ldr	r0, [r3, #4]
	bic	r0, r0, #8
	str	r0, [r3, #4]
	.loc 1 69 0
	ldr	r0, [r3, #8]
	orr	r0, r0, #128
	str	r0, [r3, #8]
	.loc 1 70 0
	ldr	r0, [r3, #20]
	orr	r0, r0, #8
	str	r0, [r3, #20]
	.loc 1 72 0
	ldr	r3, [r2, #68]
	.loc 1 73 0
	movs	r4, #4
	.loc 1 72 0
	orr	r3, r3, #4096
	str	r3, [r2, #68]
	.loc 1 73 0
	strh	r4, [r1]	@ movhi
	.loc 1 74 0
	ldrh	r3, [r1]
	uxth	r3, r3
	orr	r3, r3, #768
	strh	r3, [r1]	@ movhi
	.loc 1 75 0
	ldrh	r3, [r1]
	uxth	r3, r3
	orr	r3, r3, #24
	strh	r3, [r1]	@ movhi
	.loc 1 76 0
	ldrh	r0, [r1]
	.loc 1 50 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 1 76 0
	uxth	r0, r0
	orr	r0, r0, #64
	.loc 1 79 0
	movs	r2, #129
	.loc 1 80 0
	mov	r8, #2
	.loc 1 82 0
	mov	ip, #8
	.loc 1 83 0
	mov	lr, #16
	.loc 1 84 0
	movs	r7, #32
	.loc 1 85 0
	movs	r6, #64
	.loc 1 76 0
	strh	r0, [r1]	@ movhi
.LBB8:
.LBB9:
	.loc 1 118 0
	mov	r3, r1
.LBE9:
.LBE8:
	.loc 1 81 0
	strb	r4, [sp, #2]
.LBB13:
.LBB10:
	.loc 1 119 0
	mov	r5, r1
.LBE10:
.LBE13:
	.loc 1 79 0
	strb	r2, [sp]
	.loc 1 80 0
	strb	r8, [sp, #1]
	.loc 1 82 0
	strb	ip, [sp, #3]
	.loc 1 83 0
	strb	lr, [sp, #4]
	mov	r0, sp
	.loc 1 84 0
	strb	r7, [sp, #5]
	.loc 1 85 0
	mov	r4, sp
	strb	r6, [sp, #6]
.LVL2:
	add	r1, sp, #6
.LVL3:
.L5:
.LBB14:
.LBB11:
	.loc 1 118 0 discriminator 3
	uxth	r2, r2
.LVL4:
	strh	r2, [r3, #12]	@ movhi
.L2:
	.loc 1 119 0
	ldrh	r2, [r3, #8]
	lsls	r6, r2, #30
	bpl	.L2
.L19:
	.loc 1 120 0
	ldrh	r2, [r3, #8]
	lsls	r2, r2, #24
	bmi	.L19
.LBE11:
.LBE14:
	.loc 1 87 0
	cmp	r4, r1
.LBB15:
.LBB12:
	.loc 1 121 0
	ldrh	r2, [r5, #12]
.LVL5:
.LBE12:
.LBE15:
	.loc 1 87 0
	beq	.L12
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
.LVL6:
	b	.L5
.LVL7:
.L12:
.LBB16:
.LBB17:
	.loc 1 118 0
	ldr	r3, .L28+12
.LBE17:
.LBE16:
	mov	r4, sp
.LVL8:
.LBB21:
.LBB18:
	.loc 1 119 0
	mov	r5, r3
.LBE18:
.LBE21:
	movs	r2, #129
.L4:
.LVL9:
.LBB22:
.LBB19:
	.loc 1 118 0 discriminator 3
	uxth	r2, r2
.LVL10:
	strh	r2, [r3, #12]	@ movhi
.L6:
	.loc 1 119 0
	ldrh	r2, [r3, #8]
	lsls	r7, r2, #30
	bpl	.L6
.L18:
	.loc 1 120 0
	ldrh	r2, [r3, #8]
	lsls	r6, r2, #24
	bmi	.L18
.LBE19:
.LBE22:
	.loc 1 91 0
	cmp	r4, r1
.LBB23:
.LBB20:
	.loc 1 121 0
	ldrh	r2, [r5, #12]
.LVL11:
.LBE20:
.LBE23:
	.loc 1 91 0
	beq	.L13
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
.LVL12:
	b	.L4
.LVL13:
.L13:
.LBB24:
.LBB25:
	.loc 1 118 0
	ldr	r3, .L28+12
.LBE25:
.LBE24:
	movs	r2, #129
.LBB28:
.LBB26:
	.loc 1 119 0
	mov	r4, r3
.LVL14:
.L8:
	.loc 1 118 0 discriminator 3
	uxth	r2, r2
.LVL15:
	strh	r2, [r3, #12]	@ movhi
.L9:
	.loc 1 119 0
	ldrh	r2, [r3, #8]
	lsls	r5, r2, #30
	bpl	.L9
.L17:
	.loc 1 120 0
	ldrh	r2, [r3, #8]
	lsls	r2, r2, #24
	bmi	.L17
.LBE26:
.LBE28:
	.loc 1 95 0
	cmp	r1, r0
.LBB29:
.LBB27:
	.loc 1 121 0
	ldrh	r2, [r4, #12]
.LVL16:
.LBE27:
.LBE29:
	.loc 1 95 0
	beq	.L11
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2
.LVL17:
	b	.L8
.LVL18:
.L11:
	.loc 1 99 0
	ldr	r2, .L28+8
	ldr	r3, [r2, #20]
	bic	r3, r3, #8
	.loc 1 100 0
	mov	r0, sp
.LVL19:
	.loc 1 99 0
	str	r3, [r2, #20]
	.loc 1 100 0
	bl	setArray
.LVL20:
	.loc 1 101 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L29:
	.align	2
.L28:
	.word	1073887232
	.word	1073873920
	.word	1073876992
	.word	1073819648
	.cfi_endproc
.LFE111:
	.size	initSPI1, .-initSPI1
	.align	2
	.global	rxByteSPI1
	.thumb
	.thumb_func
	.type	rxByteSPI1, %function
rxByteSPI1:
.LFB112:
	.loc 1 103 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 106 0
	ldr	r2, .L41
	movs	r3, #0
	strh	r3, [r2, #12]	@ movhi
.L31:
	.loc 1 107 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r0, r3, #30
	bpl	.L31
	.loc 1 108 0 discriminator 1
	ldr	r2, .L41
.L38:
	ldrh	r3, [r2, #8]
	lsls	r1, r3, #31
	bpl	.L38
	.loc 1 109 0 discriminator 1
	ldr	r1, .L41
.L36:
	ldrh	r3, [r1, #8]
	ldr	r2, .L41
	lsls	r3, r3, #24
	bmi	.L36
	.loc 1 110 0
	ldrh	r0, [r2, #12]
.LVL21:
	.loc 1 113 0
	uxtb	r0, r0
	bx	lr
.L42:
	.align	2
.L41:
	.word	1073819648
	.cfi_endproc
.LFE112:
	.size	rxByteSPI1, .-rxByteSPI1
	.align	2
	.global	txByteSPI1
	.thumb
	.thumb_func
	.type	txByteSPI1, %function
txByteSPI1:
.LFB113:
	.loc 1 115 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL22:
	.loc 1 118 0
	ldr	r2, .L50
	strh	r0, [r2, #12]	@ movhi
.L44:
	.loc 1 119 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r1, r3, #30
	bpl	.L44
	.loc 1 120 0 discriminator 1
	ldr	r1, .L50
.L47:
	ldrh	r3, [r1, #8]
	ldr	r2, .L50
	lsls	r3, r3, #24
	bmi	.L47
	.loc 1 121 0
	ldrh	r0, [r2, #12]
.LVL23:
	.loc 1 123 0
	uxtb	r0, r0
	bx	lr
.L51:
	.align	2
.L50:
	.word	1073819648
	.cfi_endproc
.LFE113:
	.size	txByteSPI1, .-txByteSPI1
	.align	2
	.global	rxByteSPI2
	.thumb
	.thumb_func
	.type	rxByteSPI2, %function
rxByteSPI2:
.LFB114:
	.loc 1 125 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 128 0
	ldr	r2, .L63
	movs	r3, #0
	strh	r3, [r2, #12]	@ movhi
.L53:
	.loc 1 129 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r0, r3, #30
	bpl	.L53
	.loc 1 130 0 discriminator 1
	ldr	r2, .L63
.L60:
	ldrh	r3, [r2, #8]
	lsls	r1, r3, #31
	bpl	.L60
	.loc 1 131 0 discriminator 1
	ldr	r1, .L63
.L58:
	ldrh	r3, [r1, #8]
	ldr	r2, .L63
	lsls	r3, r3, #24
	bmi	.L58
	.loc 1 132 0
	ldrh	r0, [r2, #12]
.LVL24:
	.loc 1 135 0
	uxtb	r0, r0
	bx	lr
.L64:
	.align	2
.L63:
	.word	1073756160
	.cfi_endproc
.LFE114:
	.size	rxByteSPI2, .-rxByteSPI2
	.align	2
	.global	txByteSPI2
	.thumb
	.thumb_func
	.type	txByteSPI2, %function
txByteSPI2:
.LFB115:
	.loc 1 138 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL25:
	.loc 1 141 0
	ldr	r2, .L76
	strh	r0, [r2, #12]	@ movhi
.LVL26:
.L66:
	.loc 1 142 0 discriminator 1
	ldrh	r3, [r2, #8]
	lsls	r0, r3, #30
	bpl	.L66
	.loc 1 143 0 discriminator 1
	ldr	r2, .L76
.L73:
	ldrh	r3, [r2, #8]
	lsls	r1, r3, #31
	bpl	.L73
	.loc 1 144 0 discriminator 1
	ldr	r1, .L76
.L71:
	ldrh	r3, [r1, #8]
	ldr	r2, .L76
	lsls	r3, r3, #24
	bmi	.L71
	.loc 1 145 0
	ldrh	r0, [r2, #12]
.LVL27:
	.loc 1 148 0
	uxtb	r0, r0
	bx	lr
.L77:
	.align	2
.L76:
	.word	1073756160
	.cfi_endproc
.LFE115:
	.size	txByteSPI2, .-txByteSPI2
	.align	2
	.global	initSPI2
	.thumb
	.thumb_func
	.type	initSPI2, %function
initSPI2:
.LFB110:
	.loc 1 3 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL28:
	.loc 1 15 0
	ldr	r2, .L80
	.loc 1 16 0
	ldr	r1, .L80+4
	.loc 1 15 0
	ldr	r0, [r2, #48]
.LVL29:
	.loc 1 26 0
	ldr	r3, .L80+8
	.loc 1 15 0
	orr	r0, r0, #2
	.loc 1 3 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 15 0
	str	r0, [r2, #48]
	.loc 1 16 0
	ldr	r0, [r1]
	.loc 1 21 0
	ldr	r4, .L80+12
	.loc 1 16 0
	orr	r0, r0, #-1476395008
	str	r0, [r1]
	.loc 1 17 0
	ldr	r0, [r1, #36]
	orr	r0, r0, #1426063360
	orr	r0, r0, #5242880
	str	r0, [r1, #36]
	.loc 1 18 0
	ldr	r0, [r1, #8]
	orr	r0, r0, #-1476395008
	str	r0, [r1, #8]
	.loc 1 20 0
	ldr	r1, [r2, #48]
	orr	r1, r1, #16
	str	r1, [r2, #48]
	.loc 1 21 0
	ldr	r1, [r4]
	orr	r1, r1, #64
	str	r1, [r4]
	.loc 1 22 0
	ldr	r1, [r4, #4]
	bic	r1, r1, #8
	str	r1, [r4, #4]
	.loc 1 23 0
	ldr	r1, [r4, #8]
	orr	r1, r1, #128
	str	r1, [r4, #8]
	.loc 1 24 0
	ldr	r1, [r4, #20]
	orr	r1, r1, #8
	str	r1, [r4, #20]
	.loc 1 25 0
	ldr	r1, [r2, #64]
	.loc 1 26 0
	movs	r0, #4
	.loc 1 25 0
	orr	r1, r1, #16384
	str	r1, [r2, #64]
	.loc 1 26 0
	strh	r0, [r3]	@ movhi
	.loc 1 27 0
	ldrh	r2, [r3]
	uxth	r2, r2
	orr	r2, r2, #768
	strh	r2, [r3]	@ movhi
	.loc 1 28 0
	ldrh	r2, [r3]
	uxth	r2, r2
	orr	r2, r2, #32
	strh	r2, [r3]	@ movhi
	.loc 1 29 0
	ldrh	r2, [r3]
	uxth	r2, r2
	orr	r2, r2, #64
	strh	r2, [r3]	@ movhi
	.loc 1 30 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 32 0
	movs	r0, #0
	bl	txByteSPI2
.LVL30:
	.loc 1 33 0
	movs	r0, #0
	bl	txByteSPI2
.LVL31:
	.loc 1 34 0
	movs	r0, #0
	bl	txByteSPI2
.LVL32:
	.loc 1 35 0
	movs	r0, #0
	bl	txByteSPI2
.LVL33:
	.loc 1 37 0
	movs	r0, #255
	bl	txByteSPI2
.LVL34:
	.loc 1 38 0
	movs	r0, #0
	bl	txByteSPI2
.LVL35:
	.loc 1 39 0
	movs	r0, #0
	bl	txByteSPI2
.LVL36:
	.loc 1 40 0
	movs	r0, #0
	bl	txByteSPI2
.LVL37:
	.loc 1 42 0
	movs	r0, #255
	bl	txByteSPI2
.LVL38:
	.loc 1 43 0
	movs	r0, #255
	bl	txByteSPI2
.LVL39:
	.loc 1 44 0
	movs	r0, #255
	bl	txByteSPI2
.LVL40:
	.loc 1 45 0
	movs	r0, #255
	bl	txByteSPI2
.LVL41:
	.loc 1 46 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	pop	{r4, pc}
.L81:
	.align	2
.L80:
	.word	1073887232
	.word	1073873920
	.word	1073756160
	.word	1073876992
	.cfi_endproc
.LFE110:
	.size	initSPI2, .-initSPI2
.Letext0:
	.file 2 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6f7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x1
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
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
	.byte	0x24
	.byte	0x4
	.2byte	0x34f
	.4byte	0x413
	.uleb128 0xa
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x351
	.4byte	0xdf
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x352
	.4byte	0xa2
	.byte	0x2
	.uleb128 0xa
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x353
	.4byte	0xdf
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x354
	.4byte	0xa2
	.byte	0x6
	.uleb128 0xa
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x355
	.4byte	0xdf
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x356
	.4byte	0xa2
	.byte	0xa
	.uleb128 0xa
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x357
	.4byte	0xdf
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x358
	.4byte	0xa2
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x359
	.4byte	0xdf
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x35a
	.4byte	0xa2
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x35b
	.4byte	0xdf
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x35c
	.4byte	0xa2
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x35d
	.4byte	0xdf
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x35e
	.4byte	0xa2
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x35f
	.4byte	0xdf
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x360
	.4byte	0xa2
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x361
	.4byte	0xdf
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x362
	.4byte	0xa2
	.byte	0x22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x363
	.4byte	0x321
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x1
	.byte	0x72
	.4byte	0x97
	.byte	0x1
	.4byte	0x446
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0x72
	.4byte	0x97
	.uleb128 0xe
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x74
	.4byte	0x97
	.byte	0
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0x31
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51f
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x31
	.4byte	0xa2
	.4byte	.LLST0
	.uleb128 0x11
	.ascii	"niz\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0x51f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x56
	.4byte	0x89
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0x64
	.4byte	0x89
	.4byte	0x496
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.4byte	0x41f
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x59
	.4byte	0x4be
	.uleb128 0x16
	.4byte	0x42f
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x18
	.4byte	0x43a
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x41f
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x5d
	.4byte	0x4e6
	.uleb128 0x16
	.4byte	0x42f
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x18
	.4byte	0x43a
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x41f
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x61
	.4byte	0x50e
	.uleb128 0x16
	.4byte	0x42f
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x18
	.4byte	0x43a
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0x6ed
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x97
	.4byte	0x52f
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0x66
	.4byte	0x97
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x556
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.byte	0x68
	.4byte	0x97
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.4byte	0x41f
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57a
	.uleb128 0x16
	.4byte	0x42f
	.4byte	.LLST5
	.uleb128 0x1e
	.4byte	0x43a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7c
	.4byte	0x97
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a1
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.byte	0x7e
	.4byte	0x97
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0x89
	.4byte	0x97
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d7
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0x1
	.byte	0x89
	.4byte	0x97
	.4byte	.LLST6
	.uleb128 0x11
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x8b
	.4byte	0x97
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e1
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.byte	0x2
	.4byte	0xa2
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LVL30
	.4byte	0x5a1
	.4byte	0x60e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL31
	.4byte	0x5a1
	.4byte	0x621
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL32
	.4byte	0x5a1
	.4byte	0x634
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL33
	.4byte	0x5a1
	.4byte	0x647
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL34
	.4byte	0x5a1
	.4byte	0x65b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL35
	.4byte	0x5a1
	.4byte	0x66e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL36
	.4byte	0x5a1
	.4byte	0x681
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL37
	.4byte	0x5a1
	.4byte	0x694
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL38
	.4byte	0x5a1
	.4byte	0x6a8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL39
	.4byte	0x5a1
	.4byte	0x6bc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0x5a1
	.4byte	0x6d0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x19
	.4byte	.LVL41
	.4byte	0x5a1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x51b
	.4byte	0xe4
	.uleb128 0x21
	.4byte	.LASF73
	.byte	0x1
	.byte	0x64
	.4byte	0x89
	.uleb128 0x14
	.byte	0
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
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
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
	.uleb128 0x11
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
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
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"AHB1LPENR\000"
.LASF20:
	.ascii	"OSPEEDR\000"
.LASF32:
	.ascii	"APB1RSTR\000"
.LASF36:
	.ascii	"AHB2ENR\000"
.LASF2:
	.ascii	"short int\000"
.LASF63:
	.ascii	"rxByteSPI1\000"
.LASF64:
	.ascii	"rxByteSPI2\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF49:
	.ascii	"BDCR\000"
.LASF52:
	.ascii	"PLLI2SCFGR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF51:
	.ascii	"SSCGR\000"
.LASF56:
	.ascii	"TXCRCR\000"
.LASF38:
	.ascii	"RESERVED2\000"
.LASF44:
	.ascii	"AHB3LPENR\000"
.LASF31:
	.ascii	"RESERVED0\000"
.LASF55:
	.ascii	"RXCRCR\000"
.LASF71:
	.ascii	"/home/damir/msut/STM32F407/examples/msut_zadaca2_ha"
	.ascii	"mzic_damir_hasanovic_azra\000"
.LASF41:
	.ascii	"RESERVED3\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF39:
	.ascii	"APB1ENR\000"
.LASF19:
	.ascii	"OTYPER\000"
.LASF37:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"PUPDR\000"
.LASF7:
	.ascii	"long int\000"
.LASF53:
	.ascii	"RCC_TypeDef\000"
.LASF23:
	.ascii	"BSRRH\000"
.LASF18:
	.ascii	"MODER\000"
.LASF33:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF70:
	.ascii	"spi.c\000"
.LASF22:
	.ascii	"BSRRL\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"APB2ENR\000"
.LASF72:
	.ascii	"txByteSPI1\000"
.LASF65:
	.ascii	"txByteSPI2\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF57:
	.ascii	"I2SCFGR\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF29:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF27:
	.ascii	"CFGR\000"
.LASF26:
	.ascii	"PLLCFGR\000"
.LASF66:
	.ascii	"prescaler\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF46:
	.ascii	"APB1LPENR\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF61:
	.ascii	"SPI_TypeDef\000"
.LASF59:
	.ascii	"I2SPR\000"
.LASF62:
	.ascii	"data\000"
.LASF43:
	.ascii	"AHB2LPENR\000"
.LASF54:
	.ascii	"CRCPR\000"
.LASF73:
	.ascii	"setArray\000"
.LASF34:
	.ascii	"RESERVED1\000"
.LASF69:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF45:
	.ascii	"RESERVED4\000"
.LASF48:
	.ascii	"RESERVED5\000"
.LASF50:
	.ascii	"RESERVED6\000"
.LASF58:
	.ascii	"RESERVED7\000"
.LASF60:
	.ascii	"RESERVED8\000"
.LASF35:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF67:
	.ascii	"initSPI1\000"
.LASF68:
	.ascii	"initSPI2\000"
.LASF28:
	.ascii	"AHB1RSTR\000"
.LASF25:
	.ascii	"GPIO_TypeDef\000"
.LASF30:
	.ascii	"AHB3RSTR\000"
.LASF74:
	.ascii	"ITM_RxBuffer\000"
.LASF24:
	.ascii	"LCKR\000"
.LASF47:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
