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
	.file	"adc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	initADC1
	.thumb
	.thumb_func
	.type	initADC1, %function
initADC1:
.LFB143:
	.file 1 "adc.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 9 0
	ldr	r1, .L3
	.loc 1 11 0
	ldr	r2, .L3+4
	.loc 1 9 0
	ldr	r0, [r1, #48]
	.loc 1 14 0
	ldr	r3, .L3+8
	.loc 1 9 0
	orr	r0, r0, #1
	.loc 1 4 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 9 0
	str	r0, [r1, #48]
	.loc 1 10 0
	ldr	r0, [r1, #68]
	.loc 1 21 0
	ldr	r4, .L3+12
	.loc 1 10 0
	orr	r0, r0, #256
	str	r0, [r1, #68]
	.loc 1 11 0
	ldr	r1, [r2]
	orr	r1, r1, #12
	str	r1, [r2]
	.loc 1 12 0
	ldr	r1, [r2, #12]
	.loc 1 17 0
	movs	r0, #0
	.loc 1 19 0
	movs	r7, #1
	.loc 1 14 0
	mov	lr, #2048
	.loc 1 12 0
	bic	r1, r1, #12
	.loc 1 20 0
	mov	r6, #512
	.loc 1 21 0
	mov	r5, #196608
	.loc 1 12 0
	str	r1, [r2, #12]
	.loc 1 14 0
	str	lr, [r3, #4]
	.loc 1 17 0
	str	r0, [r3, #12]
	.loc 1 18 0
	str	r0, [r3, #44]
	.loc 1 19 0
	str	r7, [r3, #52]
	.loc 1 20 0
	str	r6, [r3, #8]
	.loc 1 21 0
	str	r5, [r4, #4]
	.loc 1 23 0
	ldr	r2, [r3, #8]
	orrs	r2, r2, r7
	str	r2, [r3, #8]
	pop	{r4, r5, r6, r7, pc}
.L4:
	.align	2
.L3:
	.word	1073887232
	.word	1073872896
	.word	1073815552
	.word	1073816320
	.cfi_endproc
.LFE143:
	.size	initADC1, .-initADC1
	.align	2
	.global	getADC1
	.thumb
	.thumb_func
	.type	getADC1, %function
getADC1:
.LFB144:
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 30 0
	ldr	r2, .L10
	ldr	r3, [r2, #8]
	orr	r3, r3, #1073741824
	str	r3, [r2, #8]
.L6:
	.loc 1 32 0 discriminator 1
	ldr	r3, [r2]
	ldr	r1, .L10
	lsls	r3, r3, #30
	bpl	.L6
	.loc 1 34 0
	ldr	r0, [r1, #76]
.LVL0:
	.loc 1 37 0
	uxth	r0, r0
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073815552
	.cfi_endproc
.LFE144:
	.size	getADC1, .-getADC1
	.align	2
	.global	initADC1Temp
	.thumb
	.thumb_func
	.type	initADC1Temp, %function
initADC1Temp:
.LFB145:
	.loc 1 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 45 0
	ldr	r1, .L14
	.loc 1 47 0
	ldr	r3, .L14+4
	.loc 1 45 0
	ldr	r2, [r1, #68]
	.loc 1 54 0
	ldr	r0, .L14+8
	.loc 1 40 0
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 45 0
	orr	r2, r2, #256
	.loc 1 50 0
	mov	lr, #1835008
	.loc 1 51 0
	movs	r7, #0
	.loc 1 52 0
	movs	r6, #16
	.loc 1 53 0
	mov	r5, #512
	.loc 1 54 0
	mov	r4, #196608
	.loc 1 47 0
	mov	ip, #2048
	.loc 1 45 0
	str	r2, [r1, #68]
	.loc 1 47 0
	str	ip, [r3, #4]
	.loc 1 50 0
	str	lr, [r3, #12]
	.loc 1 51 0
	str	r7, [r3, #44]
	.loc 1 52 0
	str	r6, [r3, #52]
	.loc 1 53 0
	str	r5, [r3, #8]
	.loc 1 54 0
	str	r4, [r0, #4]
	.loc 1 56 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	.loc 1 57 0
	movs	r0, #10
	.loc 1 58 0
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 57 0
	b	delay_us
.LVL1:
.L15:
	.align	2
.L14:
	.word	1073887232
	.word	1073815552
	.word	1073816320
	.cfi_endproc
.LFE145:
	.size	initADC1Temp, .-initADC1Temp
	.align	2
	.global	getADC1Temp
	.thumb
	.thumb_func
	.type	getADC1Temp, %function
getADC1Temp:
.LFB146:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 64 0
	ldr	r1, .L21
.LBB4:
.LBB5:
	.loc 1 30 0
	ldr	r2, .L21+4
.LBE5:
.LBE4:
	.loc 1 64 0
	ldr	r3, [r1, #4]
	orr	r3, r3, #8388608
	str	r3, [r1, #4]
.LBB7:
.LBB6:
	.loc 1 30 0
	ldr	r3, [r2, #8]
	orr	r3, r3, #1073741824
	str	r3, [r2, #8]
.L17:
	.loc 1 32 0
	ldr	r3, [r2]
	ldr	r1, .L21+4
	lsls	r3, r3, #30
	bpl	.L17
	.loc 1 34 0
	ldr	r2, [r1, #76]
.LVL2:
.LBE6:
.LBE7:
	.loc 1 65 0
	ldr	r3, .L21+8
	.loc 1 66 0
	ldr	r0, .L21
	.loc 1 65 0
	uxth	r1, r2
	movw	r2, #3000
.LVL3:
	mul	r2, r2, r1
	umull	r1, r3, r3, r2
.LVL4:
	subs	r2, r2, r3
	add	r3, r3, r2, lsr #1
	lsrs	r3, r3, #11
	.loc 1 68 0
	sub	r3, r3, #760
	fmsr	s15, r3	@ int
	fuitos	s15, s15
	fconsts	s14, #4
	fdivs	s15, s15, s14
	.loc 1 66 0
	ldr	r3, [r0, #4]
	.loc 1 61 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 1 66 0
	bic	r3, r3, #8388608
	str	r3, [r0, #4]
	.loc 1 68 0
	fconsts	s14, #57
	fadds	s15, s15, s14
.LVL5:
	ftouizs	s15, s15
.LVL6:
	.loc 1 71 0
	fsts	s15, [sp, #4]	@ int
	ldrh	r0, [sp, #4]
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L22:
	.align	2
.L21:
	.word	1073816320
	.word	1073815552
	.word	1048833
	.cfi_endproc
.LFE146:
	.size	getADC1Temp, .-getADC1Temp
.Letext0:
	.file 2 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/Include/arm_math.h"
	.file 6 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 7 "delay.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x574
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x1
	.4byte	.LASF78
	.4byte	.LASF79
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1d
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x3f
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x41
	.4byte	0x82
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2d
	.4byte	0x77
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x5
	.4byte	0xbf
	.uleb128 0x6
	.4byte	0xbf
	.4byte	0xe6
	.uleb128 0x7
	.4byte	0xca
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xa9
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x8
	.byte	0x50
	.byte	0x4
	.2byte	0x130
	.4byte	0x1fc
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x132
	.4byte	0xd1
	.byte	0
	.uleb128 0x9
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x133
	.4byte	0xd1
	.byte	0x4
	.uleb128 0x9
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x134
	.4byte	0xd1
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x135
	.4byte	0xd1
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x136
	.4byte	0xd1
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x137
	.4byte	0xd1
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x138
	.4byte	0xd1
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x139
	.4byte	0xd1
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x13a
	.4byte	0xd1
	.byte	0x20
	.uleb128 0x9
	.ascii	"HTR\000"
	.byte	0x4
	.2byte	0x13b
	.4byte	0xd1
	.byte	0x24
	.uleb128 0x9
	.ascii	"LTR\000"
	.byte	0x4
	.2byte	0x13c
	.4byte	0xd1
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x13d
	.4byte	0xd1
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x13e
	.4byte	0xd1
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x13f
	.4byte	0xd1
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x140
	.4byte	0xd1
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x141
	.4byte	0xd1
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x142
	.4byte	0xd1
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x143
	.4byte	0xd1
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x144
	.4byte	0xd1
	.byte	0x48
	.uleb128 0x9
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x145
	.4byte	0xd1
	.byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x146
	.4byte	0xf0
	.uleb128 0x8
	.byte	0xc
	.byte	0x4
	.2byte	0x148
	.4byte	0x239
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x14a
	.4byte	0xd1
	.byte	0
	.uleb128 0x9
	.ascii	"CCR\000"
	.byte	0x4
	.2byte	0x14b
	.4byte	0xd1
	.byte	0x4
	.uleb128 0x9
	.ascii	"CDR\000"
	.byte	0x4
	.2byte	0x14c
	.4byte	0xd1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x14e
	.4byte	0x208
	.uleb128 0x8
	.byte	0x28
	.byte	0x4
	.2byte	0x28e
	.4byte	0x2d1
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x290
	.4byte	0xd1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x291
	.4byte	0xd1
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x292
	.4byte	0xd1
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x293
	.4byte	0xd1
	.byte	0xc
	.uleb128 0x9
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x294
	.4byte	0xd1
	.byte	0x10
	.uleb128 0x9
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x295
	.4byte	0xd1
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x296
	.4byte	0xe6
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x297
	.4byte	0xe6
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x298
	.4byte	0xd1
	.byte	0x1c
	.uleb128 0x9
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x299
	.4byte	0x2d1
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xd6
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x29a
	.4byte	0x245
	.uleb128 0x8
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x471
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xd1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xd1
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xd1
	.byte	0x8
	.uleb128 0x9
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xd1
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xd1
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xd1
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xd1
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x2e6
	.4byte	0xbf
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xd1
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xd1
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xd6
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xd1
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xd1
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xd1
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x2ed
	.4byte	0xbf
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xd1
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xd1
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xd6
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xd1
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xd1
	.byte	0x54
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xd1
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x2f4
	.4byte	0xbf
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xd1
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xd1
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xd6
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xd1
	.byte	0x70
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xd1
	.byte	0x74
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xd6
	.byte	0x78
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xd1
	.byte	0x80
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xd1
	.byte	0x84
	.byte	0
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x2e2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF71
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF73
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x157
	.4byte	0x2c
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x1
	.byte	0x1a
	.4byte	0xa9
	.byte	0x1
	.4byte	0x4ba
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x1
	.byte	0x1c
	.4byte	0xa9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x1
	.byte	0x3
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	0x49e
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e6
	.uleb128 0x10
	.4byte	0x4ae
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x27
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50b
	.uleb128 0x12
	.4byte	.LVL1
	.4byte	0x56a
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x3c
	.4byte	0xa9
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55e
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3e
	.4byte	0xbf
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0x3f
	.4byte	0x492
	.uleb128 0x16
	.4byte	0x49e
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x41
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x18
	.4byte	0x4ae
	.4byte	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x51b
	.4byte	0xeb
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc
	.uleb128 0x1b
	.4byte	0xbf
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x15
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xa
	.2byte	0xbb8
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x25
	.byte	0xa
	.2byte	0xfff
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x6
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF59:
	.ascii	"AHB1LPENR\000"
.LASF28:
	.ascii	"JSQR\000"
.LASF83:
	.ascii	"getADC1Temp\000"
.LASF70:
	.ascii	"RCC_TypeDef\000"
.LASF37:
	.ascii	"OSPEEDR\000"
.LASF49:
	.ascii	"APB1RSTR\000"
.LASF53:
	.ascii	"AHB2ENR\000"
.LASF29:
	.ascii	"JDR1\000"
.LASF30:
	.ascii	"JDR2\000"
.LASF31:
	.ascii	"JDR3\000"
.LASF32:
	.ascii	"JDR4\000"
.LASF4:
	.ascii	"short int\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF66:
	.ascii	"BDCR\000"
.LASF69:
	.ascii	"PLLI2SCFGR\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF86:
	.ascii	"delay_us\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF68:
	.ascii	"SSCGR\000"
.LASF78:
	.ascii	"adc.c\000"
.LASF76:
	.ascii	"v_sensor\000"
.LASF45:
	.ascii	"AHB1RSTR\000"
.LASF44:
	.ascii	"CFGR\000"
.LASF61:
	.ascii	"AHB3LPENR\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF56:
	.ascii	"APB1ENR\000"
.LASF77:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF36:
	.ascii	"OTYPER\000"
.LASF1:
	.ascii	"float\000"
.LASF54:
	.ascii	"AHB3ENR\000"
.LASF84:
	.ascii	"temp\000"
.LASF12:
	.ascii	"long long int\000"
.LASF38:
	.ascii	"PUPDR\000"
.LASF9:
	.ascii	"long int\000"
.LASF79:
	.ascii	"/home/damir/msut/STM32F407/examples/msut_zadaca2_ha"
	.ascii	"mzic_damir_hasanovic_azra\000"
.LASF40:
	.ascii	"BSRRH\000"
.LASF74:
	.ascii	"float32_t\000"
.LASF35:
	.ascii	"MODER\000"
.LASF50:
	.ascii	"APB2RSTR\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF80:
	.ascii	"getADC1\000"
.LASF21:
	.ascii	"JOFR1\000"
.LASF39:
	.ascii	"BSRRL\000"
.LASF23:
	.ascii	"JOFR3\000"
.LASF24:
	.ascii	"JOFR4\000"
.LASF73:
	.ascii	"long double\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF57:
	.ascii	"APB2ENR\000"
.LASF2:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF46:
	.ascii	"AHB2RSTR\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF22:
	.ascii	"JOFR2\000"
.LASF43:
	.ascii	"PLLCFGR\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF63:
	.ascii	"APB1LPENR\000"
.LASF71:
	.ascii	"char\000"
.LASF16:
	.ascii	"int32_t\000"
.LASF82:
	.ascii	"initADC1Temp\000"
.LASF60:
	.ascii	"AHB2LPENR\000"
.LASF34:
	.ascii	"ADC_Common_TypeDef\000"
.LASF48:
	.ascii	"RESERVED0\000"
.LASF51:
	.ascii	"RESERVED1\000"
.LASF55:
	.ascii	"RESERVED2\000"
.LASF58:
	.ascii	"RESERVED3\000"
.LASF62:
	.ascii	"RESERVED4\000"
.LASF65:
	.ascii	"RESERVED5\000"
.LASF67:
	.ascii	"RESERVED6\000"
.LASF72:
	.ascii	"double\000"
.LASF85:
	.ascii	"ITM_RxBuffer\000"
.LASF52:
	.ascii	"AHB1ENR\000"
.LASF75:
	.ascii	"r_val\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF42:
	.ascii	"GPIO_TypeDef\000"
.LASF25:
	.ascii	"SQR1\000"
.LASF26:
	.ascii	"SQR2\000"
.LASF27:
	.ascii	"SQR3\000"
.LASF47:
	.ascii	"AHB3RSTR\000"
.LASF33:
	.ascii	"ADC_TypeDef\000"
.LASF19:
	.ascii	"SMPR1\000"
.LASF20:
	.ascii	"SMPR2\000"
.LASF41:
	.ascii	"LCKR\000"
.LASF81:
	.ascii	"initADC1\000"
.LASF64:
	.ascii	"APB2LPENR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
