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
	.file	"lis302dl.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	initLIS302DL
	.thumb
	.thumb_func
	.type	initLIS302DL, %function
initLIS302DL:
.LFB110:
	.file 1 "lis302dl.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 10 0
	ldr	r4, .L3
	.loc 1 8 0
	movs	r0, #32
	bl	initSPI1
.LVL0:
	.loc 1 10 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 11 0
	movs	r0, #32
	bl	txByteSPI1
.LVL1:
	.loc 1 12 0
	movs	r0, #71
	bl	txByteSPI1
.LVL2:
	.loc 1 13 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 15 0
	movs	r0, #100
	bl	delay_ms
.LVL3:
	.loc 1 17 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 18 0
	movs	r0, #160
	bl	txByteSPI1
.LVL4:
	.loc 1 19 0
	bl	rxByteSPI1
.LVL5:
	.loc 1 21 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 23 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 24 0
	movs	r0, #161
	bl	txByteSPI1
.LVL6:
	.loc 1 25 0
	bl	rxByteSPI1
.LVL7:
	.loc 1 27 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 29 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 30 0
	movs	r0, #162
	bl	txByteSPI1
.LVL8:
	.loc 1 31 0
	bl	rxByteSPI1
.LVL9:
	.loc 1 33 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 35 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 36 0
	movs	r0, #143
	bl	txByteSPI1
.LVL10:
	.loc 1 38 0
	bl	rxByteSPI1
.LVL11:
	.loc 1 41 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	1073876992
	.cfi_endproc
.LFE110:
	.size	initLIS302DL, .-initLIS302DL
	.align	2
	.global	getDataLIS302DL
	.thumb
	.thumb_func
	.type	getDataLIS302DL, %function
getDataLIS302DL:
.LFB111:
	.loc 1 45 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL12:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 48 0
	movs	r5, #0
	.loc 1 52 0
	ldr	r4, .L10
	.loc 1 48 0
	strb	r5, [r0]
	.loc 1 49 0
	strb	r5, [r0, #1]
	.loc 1 50 0
	strb	r5, [r0, #2]
	.loc 1 52 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	.loc 1 45 0
	sub	sp, sp, #8
	.cfi_def_cfa_offset 24
	.loc 1 52 0
	str	r3, [r4, #20]
	.loc 1 45 0
	mov	r6, r0
	.loc 1 53 0
	movs	r0, #167
.LVL13:
	bl	txByteSPI1
.LVL14:
	.loc 1 54 0
	bl	rxByteSPI1
.LVL15:
	.loc 1 55 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 56 0
	movs	r0, #100
	bl	delay_us
.LVL16:
	.loc 1 58 0
	strb	r5, [sp]
	strb	r5, [sp, #2]
	strb	r5, [sp, #4]
	.loc 1 59 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 60 0
	movs	r0, #169
	bl	txByteSPI1
.LVL17:
	mov	r4, sp
	add	r5, sp, #6
.LVL18:
.L6:
	.loc 1 63 0 discriminator 3
	bl	rxByteSPI1
.LVL19:
	strb	r0, [r4], #1
.LVL20:
	.loc 1 62 0 discriminator 3
	cmp	r4, r5
	bne	.L6
	.loc 1 65 0
	ldr	r4, .L10
.LVL21:
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 67 0
	ldrb	r1, [sp]	@ zero_extendqisi2
	.loc 1 68 0
	ldrb	r2, [sp, #2]	@ zero_extendqisi2
	.loc 1 69 0
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	.loc 1 67 0
	strb	r1, [r6]
	.loc 1 68 0
	strb	r2, [r6, #1]
	.loc 1 69 0
	strb	r3, [r6, #2]
	.loc 1 71 0
	ldr	r3, [r4, #20]
	bic	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 72 0
	movs	r0, #32
	bl	txByteSPI1
.LVL22:
	.loc 1 73 0
	movs	r0, #71
	bl	txByteSPI1
.LVL23:
	.loc 1 74 0
	ldr	r3, [r4, #20]
	orr	r3, r3, #8
	str	r3, [r4, #20]
	.loc 1 76 0
	add	sp, sp, #8
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL24:
.L11:
	.align	2
.L10:
	.word	1073876992
	.cfi_endproc
.LFE111:
	.size	getDataLIS302DL, .-getDataLIS302DL
.Letext0:
	.file 2 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "spi.h"
	.file 6 "delay.h"
	.file 7 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3c7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.4byte	.LASF36
	.4byte	.LASF37
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1b
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1d
	.4byte	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.4byte	0x5b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x3f
	.4byte	0x6d
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x41
	.4byte	0x7f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x15
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x21
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.4byte	0x62
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x5
	.4byte	0xce
	.uleb128 0x6
	.4byte	0xce
	.4byte	0xf5
	.uleb128 0x7
	.4byte	0xd9
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xb8
	.uleb128 0x5
	.4byte	0xc3
	.uleb128 0x8
	.byte	0x28
	.byte	0x4
	.2byte	0x28e
	.4byte	0x18b
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x290
	.4byte	0xe0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x291
	.4byte	0xe0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x292
	.4byte	0xe0
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x293
	.4byte	0xe0
	.byte	0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x294
	.4byte	0xe0
	.byte	0x10
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x295
	.4byte	0xe0
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x296
	.4byte	0xf5
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x297
	.4byte	0xf5
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x298
	.4byte	0xe0
	.byte	0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x299
	.4byte	0x18b
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xe5
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x29a
	.4byte	0xff
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF28
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29c
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5
	.4byte	0xad
	.uleb128 0xe
	.ascii	"k\000"
	.byte	0x1
	.byte	0x5
	.4byte	0xad
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6
	.4byte	0xce
	.uleb128 0xf
	.4byte	.LVL0
	.4byte	0x37b
	.4byte	0x1eb
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x38c
	.4byte	0x1ff
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.4byte	.LVL2
	.4byte	0x38c
	.4byte	0x213
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x3a1
	.4byte	0x227
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x38c
	.4byte	0x23b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL5
	.4byte	0x3b2
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x38c
	.4byte	0x258
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa1
	.byte	0
	.uleb128 0x11
	.4byte	.LVL7
	.4byte	0x3b2
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x38c
	.4byte	0x275
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa2
	.byte	0
	.uleb128 0x11
	.4byte	.LVL9
	.4byte	0x3b2
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x38c
	.4byte	0x292
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0x8f
	.byte	0
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x3b2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x359
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2c
	.4byte	0x359
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2e
	.4byte	0xce
	.uleb128 0x13
	.ascii	"k\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0xad
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3a
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LVL14
	.4byte	0x38c
	.4byte	0x2fa
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa7
	.byte	0
	.uleb128 0x11
	.4byte	.LVL15
	.4byte	0x3b2
	.uleb128 0xf
	.4byte	.LVL16
	.4byte	0x3bd
	.4byte	0x317
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0xf
	.4byte	.LVL17
	.4byte	0x38c
	.4byte	0x32b
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xa9
	.byte	0
	.uleb128 0x11
	.4byte	.LVL19
	.4byte	0x3b2
	.uleb128 0xf
	.4byte	.LVL22
	.4byte	0x38c
	.4byte	0x348
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0x38c
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x6
	.4byte	0xad
	.4byte	0x36f
	.uleb128 0x7
	.4byte	0xd9
	.byte	0x5
	.byte	0
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x51b
	.4byte	0xfa
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x5
	.byte	0x1b
	.4byte	0x38c
	.uleb128 0x19
	.4byte	0xb8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x5
	.byte	0x1e
	.4byte	0xad
	.4byte	0x3a1
	.uleb128 0x19
	.4byte	0xad
	.byte	0
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x6
	.byte	0xb
	.4byte	0x3b2
	.uleb128 0x19
	.4byte	0xce
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF41
	.byte	0x5
	.byte	0x1d
	.4byte	0xad
	.uleb128 0x1c
	.4byte	.LASF42
	.byte	0x6
	.byte	0xc
	.uleb128 0x19
	.4byte	0xce
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
	.uleb128 0x3
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x1c
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF31:
	.ascii	"initLIS302DL\000"
.LASF1:
	.ascii	"__uint8_t\000"
.LASF20:
	.ascii	"MODER\000"
.LASF33:
	.ascii	"initSPI1\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF36:
	.ascii	"lis302dl.c\000"
.LASF14:
	.ascii	"int8_t\000"
.LASF21:
	.ascii	"OTYPER\000"
.LASF29:
	.ascii	"data\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF34:
	.ascii	"delay_ms\000"
.LASF41:
	.ascii	"rxByteSPI1\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF35:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF39:
	.ascii	"ITM_RxBuffer\000"
.LASF32:
	.ascii	"getDataLIS302DL\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF40:
	.ascii	"txByteSPI1\000"
.LASF22:
	.ascii	"OSPEEDR\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF27:
	.ascii	"GPIO_TypeDef\000"
.LASF28:
	.ascii	"char\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF30:
	.ascii	"utmp32\000"
.LASF38:
	.ascii	"accel_data\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF19:
	.ascii	"sizetype\000"
.LASF23:
	.ascii	"PUPDR\000"
.LASF11:
	.ascii	"long long int\000"
.LASF37:
	.ascii	"/home/damir/msut/STM32F407/examples/msut_zadaca2_ha"
	.ascii	"mzic_damir_hasanovic_azra\000"
.LASF4:
	.ascii	"short int\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF25:
	.ascii	"BSRRH\000"
.LASF8:
	.ascii	"long int\000"
.LASF24:
	.ascii	"BSRRL\000"
.LASF0:
	.ascii	"__int8_t\000"
.LASF2:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF42:
	.ascii	"delay_us\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF26:
	.ascii	"LCKR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
