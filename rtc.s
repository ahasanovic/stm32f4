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
	.file	"rtc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	initRTC
	.thumb
	.thumb_func
	.type	initRTC, %function
initRTC:
.LFB110:
	.file 1 "rtc.c"
	.loc 1 6 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 9 0
	ldr	r3, .L10
	.loc 1 10 0
	ldr	r0, .L10+4
	.loc 1 9 0
	ldr	r2, [r3, #64]
	.loc 1 18 0
	ldr	r1, .L10+8
	.loc 1 9 0
	orr	r2, r2, #268435456
	.loc 1 6 0
	push	{r4}
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 9 0
	str	r2, [r3, #64]
	.loc 1 10 0
	ldr	r2, [r0]
	orr	r2, r2, #256
	str	r2, [r0]
	.loc 1 13 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #524288
	str	r2, [r3, #8]
	.loc 1 15 0
	ldr	r2, [r3, #112]
	orr	r2, r2, #768
	str	r2, [r3, #112]
	.loc 1 16 0
	ldr	r2, [r3, #112]
	.loc 1 18 0
	movs	r4, #202
	.loc 1 16 0
	orr	r2, r2, #32768
	.loc 1 19 0
	movs	r0, #83
	.loc 1 16 0
	str	r2, [r3, #112]
	.loc 1 18 0
	str	r4, [r1, #36]
	.loc 1 19 0
	str	r0, [r1, #36]
	.loc 1 20 0
	ldr	r3, [r1, #12]
	orr	r3, r3, #32
	str	r3, [r1, #12]
.L2:
	.loc 1 21 0 discriminator 1
	ldr	r2, [r1, #12]
	ldr	r3, .L10+8
	lsls	r0, r2, #26
	bpl	.L2
	.loc 1 23 0
	ldr	r2, [r3, #12]
	orr	r2, r2, #128
	str	r2, [r3, #12]
.L3:
	.loc 1 24 0 discriminator 1
	ldr	r2, [r3, #12]
	ldr	r1, .L10+8
	lsls	r2, r2, #25
	bpl	.L3
	.loc 1 26 0
	mov	r3, #6488064
	str	r3, [r1, #16]
	.loc 1 27 0
	ldr	r3, [r1, #16]
	.loc 1 29 0
	ldr	r4, .L10+12
	.loc 1 30 0
	ldr	r0, .L10+16
	.loc 1 27 0
	orr	r3, r3, #9984
	orr	r3, r3, #15
	.loc 1 31 0
	movs	r2, #0
	.loc 1 27 0
	str	r3, [r1, #16]
	.loc 1 29 0
	str	r4, [r1]
	.loc 1 30 0
	str	r0, [r1, #4]
	.loc 1 31 0
	str	r2, [r1, #40]
	.loc 1 34 0
	ldr	r3, [r1, #12]
	.loc 1 38 0
	ldr	r4, [sp], #4
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 34 0
	bic	r3, r3, #128
	str	r3, [r1, #12]
	.loc 1 35 0
	ldr	r3, [r1, #8]
	.loc 1 37 0
	movs	r2, #255
	.loc 1 35 0
	bic	r3, r3, #32768
	str	r3, [r1, #8]
	.loc 1 37 0
	str	r2, [r1, #36]
	.loc 1 38 0
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073887232
	.word	1073770496
	.word	1073752064
	.word	547072
	.word	4727558
	.cfi_endproc
.LFE110:
	.size	initRTC, .-initRTC
	.align	2
	.global	getRTC
	.thumb
	.thumb_func
	.type	getRTC, %function
getRTC:
.LFB111:
	.loc 1 41 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 48
	.loc 1 44 0
	ldr	r3, .L26
	.loc 1 45 0
	ldr	r0, .L26+4
	.loc 1 44 0
	ldr	r6, [r3]
.LVL0:
	.loc 1 46 0
	add	r8, sp, #24
	.loc 1 45 0
	movs	r2, #0
	.loc 1 46 0
	strb	r2, [r8, #-20]!
.LVL1:
	.loc 1 45 0
	strb	r2, [r0]
	.loc 1 46 0
	mov	r3, r8
	add	r4, sp, #24
.LVL2:
.L13:
	rsb	r1, r8, r3
	.loc 1 51 0 discriminator 3
	strb	r2, [r3], #1
.LVL3:
	.loc 1 49 0 discriminator 3
	cmp	r3, r4
	.loc 1 52 0 discriminator 3
	strb	r2, [r0, r1]
.LVL4:
	.loc 1 49 0 discriminator 3
	bne	.L13
	.loc 1 55 0
	add	r7, sp, #24
	ubfx	r3, r6, #20, #2
.LVL5:
	str	r3, [r7, #-24]!
	.loc 1 56 0
	mov	r2, r8
	movs	r0, #32
	mov	r1, r7
	bl	getStr4NumMISC
.LVL6:
	add	r5, sp, #3
	.loc 1 57 0
	ldr	r0, .L26+4
	mov	r1, r8
	bl	catstrMISC
.LVL7:
	add	r4, sp, #23
	mov	r3, r5
	.loc 1 60 0
	movs	r2, #0
.LVL8:
.L14:
	.loc 1 60 0 is_stmt 0 discriminator 3
	strb	r2, [r3, #1]!
.LVL9:
	.loc 1 59 0 is_stmt 1 discriminator 3
	cmp	r3, r4
	bne	.L14
	.loc 1 62 0
	ubfx	r3, r6, #16, #3
.LVL10:
	.loc 1 63 0
	mov	r2, r8
	movs	r0, #32
	mov	r1, r7
	.loc 1 62 0
	str	r3, [sp]
	.loc 1 63 0
	bl	getStr4NumMISC
.LVL11:
	.loc 1 64 0
	ldr	r0, .L26+4
	mov	r1, r8
	bl	catstrMISC
.LVL12:
	mov	r3, r5
	.loc 1 67 0
	movs	r2, #0
.LVL13:
.L15:
	.loc 1 67 0 is_stmt 0 discriminator 3
	strb	r2, [r3, #1]!
.LVL14:
	.loc 1 66 0 is_stmt 1 discriminator 3
	cmp	r4, r3
	bne	.L15
	.loc 1 69 0
	ubfx	r3, r6, #12, #3
.LVL15:
	.loc 1 70 0
	mov	r2, r8
	movs	r0, #32
	mov	r1, r7
	.loc 1 69 0
	str	r3, [sp]
	.loc 1 70 0
	bl	getStr4NumMISC
.LVL16:
	.loc 1 71 0
	ldr	r0, .L26+4
	mov	r1, r8
	bl	catstrMISC
.LVL17:
	mov	r3, r5
	.loc 1 74 0
	movs	r2, #0
.LVL18:
.L16:
	.loc 1 74 0 is_stmt 0 discriminator 3
	strb	r2, [r3, #1]!
.LVL19:
	.loc 1 73 0 is_stmt 1 discriminator 3
	cmp	r4, r3
	bne	.L16
	.loc 1 76 0
	ubfx	r3, r6, #8, #4
.LVL20:
	.loc 1 77 0
	mov	r2, r8
	movs	r0, #32
	mov	r1, r7
	.loc 1 76 0
	str	r3, [sp]
	.loc 1 77 0
	bl	getStr4NumMISC
.LVL21:
	.loc 1 78 0
	ldr	r0, .L26+4
	mov	r1, r8
	bl	catstrMISC
.LVL22:
	mov	r3, r5
	.loc 1 82 0
	movs	r2, #0
.LVL23:
.L17:
	.loc 1 82 0 is_stmt 0 discriminator 3
	strb	r2, [r3, #1]!
.LVL24:
	.loc 1 81 0 is_stmt 1 discriminator 3
	cmp	r4, r3
	bne	.L17
	.loc 1 84 0
	ubfx	r3, r6, #4, #3
.LVL25:
	.loc 1 85 0
	movs	r0, #32
	mov	r1, r7
	mov	r2, r8
	.loc 1 84 0
	str	r3, [sp]
	.loc 1 85 0
	bl	getStr4NumMISC
.LVL26:
	.loc 1 86 0
	ldr	r0, .L26+4
	mov	r1, r8
	bl	catstrMISC
.LVL27:
	.loc 1 90 0
	movs	r3, #0
.LVL28:
.L18:
	.loc 1 90 0 is_stmt 0 discriminator 3
	strb	r3, [r5, #1]!
.LVL29:
	.loc 1 89 0 is_stmt 1 discriminator 3
	cmp	r4, r5
	bne	.L18
	.loc 1 93 0
	mov	r1, r7
	mov	r2, r8
	.loc 1 92 0
	and	r6, r6, #15
.LVL30:
	.loc 1 93 0
	movs	r0, #32
	.loc 1 92 0
	str	r6, [sp]
	.loc 1 93 0
	bl	getStr4NumMISC
.LVL31:
	.loc 1 94 0
	mov	r1, r8
	ldr	r0, .L26+4
	bl	catstrMISC
.LVL32:
	.loc 1 96 0
	ldr	r0, .L26+4
	add	sp, sp, #24
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL33:
.L27:
	.align	2
.L26:
	.word	1073752064
	.word	rtc_str
	.cfi_endproc
.LFE111:
	.size	getRTC, .-getRTC
	.comm	rtc_str,20,4
.Letext0:
	.file 2 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/damir/msut/STM32F407/gcc-arm-none-eabi/arm-none-eabi/include/stdint.h"
	.file 4 "../../../STM32F407/Libraries/CMSIS/ST/STM32F4xx/Include/stm32f4xx.h"
	.file 5 "../../../STM32F407/Libraries/CMSIS/Include/core_cm4.h"
	.file 6 "misc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x70e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1
	.4byte	.LASF88
	.4byte	.LASF89
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
	.4byte	0xad
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.2byte	0x2d3
	.4byte	0x107
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2d5
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2d6
	.4byte	0xca
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x2d7
	.4byte	0xe4
	.uleb128 0x8
	.byte	0x88
	.byte	0x4
	.2byte	0x2dd
	.4byte	0x2a2
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x2df
	.4byte	0xca
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x2e0
	.4byte	0xca
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x2e1
	.4byte	0xca
	.byte	0x8
	.uleb128 0x9
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x2e2
	.4byte	0xca
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x2e3
	.4byte	0xca
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x2e4
	.4byte	0xca
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x2e5
	.4byte	0xca
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x2e6
	.4byte	0xb8
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x2e7
	.4byte	0xca
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x2e8
	.4byte	0xca
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x2e9
	.4byte	0xcf
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x2ea
	.4byte	0xca
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x2eb
	.4byte	0xca
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x2ec
	.4byte	0xca
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x2ed
	.4byte	0xb8
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x2ee
	.4byte	0xca
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x2ef
	.4byte	0xca
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x2f0
	.4byte	0xcf
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x2f1
	.4byte	0xca
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x2f2
	.4byte	0xca
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x2f3
	.4byte	0xca
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2f4
	.4byte	0xb8
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x2f5
	.4byte	0xca
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x2f6
	.4byte	0xca
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2f7
	.4byte	0xcf
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2f8
	.4byte	0xca
	.byte	0x70
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x2f9
	.4byte	0xca
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2fa
	.4byte	0xcf
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x2fb
	.4byte	0xca
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x2fc
	.4byte	0xca
	.byte	0x84
	.byte	0
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x113
	.uleb128 0x8
	.byte	0xa0
	.byte	0x4
	.2byte	0x303
	.4byte	0x4bd
	.uleb128 0x9
	.ascii	"TR\000"
	.byte	0x4
	.2byte	0x305
	.4byte	0xca
	.byte	0
	.uleb128 0x9
	.ascii	"DR\000"
	.byte	0x4
	.2byte	0x306
	.4byte	0xca
	.byte	0x4
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x307
	.4byte	0xca
	.byte	0x8
	.uleb128 0x9
	.ascii	"ISR\000"
	.byte	0x4
	.2byte	0x308
	.4byte	0xca
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x309
	.4byte	0xca
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x30a
	.4byte	0xca
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x30b
	.4byte	0xca
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x30c
	.4byte	0xca
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x30d
	.4byte	0xca
	.byte	0x20
	.uleb128 0x9
	.ascii	"WPR\000"
	.byte	0x4
	.2byte	0x30e
	.4byte	0xca
	.byte	0x24
	.uleb128 0x9
	.ascii	"SSR\000"
	.byte	0x4
	.2byte	0x30f
	.4byte	0xca
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x310
	.4byte	0xca
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x311
	.4byte	0xca
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x312
	.4byte	0xca
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x313
	.4byte	0xca
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x314
	.4byte	0xca
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x315
	.4byte	0xca
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x316
	.4byte	0xca
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x317
	.4byte	0xca
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x318
	.4byte	0xb8
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x319
	.4byte	0xca
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x31a
	.4byte	0xca
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x31b
	.4byte	0xca
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x31c
	.4byte	0xca
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x31d
	.4byte	0xca
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x31e
	.4byte	0xca
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x31f
	.4byte	0xca
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x320
	.4byte	0xca
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x321
	.4byte	0xca
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x322
	.4byte	0xca
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x323
	.4byte	0xca
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x324
	.4byte	0xca
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x325
	.4byte	0xca
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x326
	.4byte	0xca
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x327
	.4byte	0xca
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x328
	.4byte	0xca
	.byte	0x8c
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x329
	.4byte	0xca
	.byte	0x90
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x32a
	.4byte	0xca
	.byte	0x94
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x32b
	.4byte	0xca
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x32c
	.4byte	0xca
	.byte	0x9c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x32d
	.4byte	0x2ae
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x1
	.byte	0x5
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ea
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x1
	.byte	0x7
	.4byte	0x4ea
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb8
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x1
	.byte	0x28
	.4byte	0x6ac
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ac
	.uleb128 0x10
	.ascii	"k\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x97
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2a
	.4byte	0x6b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x1
	.byte	0x2b
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.byte	0x2c
	.4byte	0xb8
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x6e4
	.4byte	0x561
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0x6ff
	.4byte	0x57e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_str
	.byte	0
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x6e4
	.4byte	0x59e
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x6ff
	.4byte	0x5bb
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_str
	.byte	0
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x6e4
	.4byte	0x5db
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0x6ff
	.4byte	0x5f8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_str
	.byte	0
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0x6e4
	.4byte	0x618
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x6ff
	.4byte	0x635
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_str
	.byte	0
	.uleb128 0x13
	.4byte	.LVL26
	.4byte	0x6e4
	.4byte	0x655
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LVL27
	.4byte	0x6ff
	.4byte	0x672
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_str
	.byte	0
	.uleb128 0x13
	.4byte	.LVL31
	.4byte	0x6e4
	.4byte	0x692
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x6ff
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_str
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x97
	.4byte	0x6c2
	.uleb128 0x7
	.4byte	0xc3
	.byte	0x13
	.byte	0
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x51b
	.4byte	0xdf
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x1
	.byte	0x3
	.4byte	0x6df
	.uleb128 0x5
	.byte	0x3
	.4byte	rtc_str
	.uleb128 0x5
	.4byte	0x6b2
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x6
	.byte	0x1b
	.4byte	0x6ff
	.uleb128 0x19
	.4byte	0xa2
	.uleb128 0x19
	.4byte	0x4ea
	.uleb128 0x19
	.4byte	0x6ac
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x6
	.byte	0x1c
	.uleb128 0x19
	.4byte	0x6ac
	.uleb128 0x19
	.4byte	0x6ac
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
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -44
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -44
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -45
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -45
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -45
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -45
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -45
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x56
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
.LASF35:
	.ascii	"AHB1LPENR\000"
.LASF86:
	.ascii	"rtc_str\000"
.LASF63:
	.ascii	"BKP2R\000"
.LASF25:
	.ascii	"APB1RSTR\000"
.LASF29:
	.ascii	"AHB2ENR\000"
.LASF2:
	.ascii	"short int\000"
.LASF67:
	.ascii	"BKP6R\000"
.LASF42:
	.ascii	"BDCR\000"
.LASF56:
	.ascii	"CALR\000"
.LASF48:
	.ascii	"WUTR\000"
.LASF45:
	.ascii	"PLLI2SCFGR\000"
.LASF17:
	.ascii	"sizetype\000"
.LASF18:
	.ascii	"PWR_TypeDef\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF74:
	.ascii	"BKP13R\000"
.LASF88:
	.ascii	"rtc.c\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF44:
	.ascii	"SSCGR\000"
.LASF37:
	.ascii	"AHB3LPENR\000"
.LASF87:
	.ascii	"GNU C 4.9.3 20141119 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 218278] -mlittle-endian -mthumb -mcpu"
	.ascii	"=cortex-m4 -mthumb-interwork -mfloat-abi=hard -mfpu"
	.ascii	"=fpv4-sp-d16 -g -O2 -fsingle-precision-constant\000"
.LASF89:
	.ascii	"/home/damir/msut/STM32F407/examples/msut_zadaca2_ha"
	.ascii	"mzic_damir_hasanovic_azra\000"
.LASF38:
	.ascii	"RESERVED4\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF78:
	.ascii	"BKP17R\000"
.LASF32:
	.ascii	"APB1ENR\000"
.LASF54:
	.ascii	"TSDR\000"
.LASF91:
	.ascii	"getRTC\000"
.LASF47:
	.ascii	"PRER\000"
.LASF64:
	.ascii	"BKP3R\000"
.LASF30:
	.ascii	"AHB3ENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF49:
	.ascii	"CALIBR\000"
.LASF7:
	.ascii	"long int\000"
.LASF71:
	.ascii	"BKP10R\000"
.LASF68:
	.ascii	"BKP7R\000"
.LASF46:
	.ascii	"RCC_TypeDef\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF58:
	.ascii	"ALRMASSR\000"
.LASF75:
	.ascii	"BKP14R\000"
.LASF81:
	.ascii	"RTC_TypeDef\000"
.LASF57:
	.ascii	"TAFCR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF33:
	.ascii	"APB2ENR\000"
.LASF61:
	.ascii	"BKP0R\000"
.LASF82:
	.ascii	"t_str\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF50:
	.ascii	"ALRMAR\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF22:
	.ascii	"AHB2RSTR\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF52:
	.ascii	"SHIFTR\000"
.LASF21:
	.ascii	"AHB1RSTR\000"
.LASF65:
	.ascii	"BKP4R\000"
.LASF53:
	.ascii	"TSTR\000"
.LASF19:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF39:
	.ascii	"APB1LPENR\000"
.LASF79:
	.ascii	"BKP18R\000"
.LASF72:
	.ascii	"BKP11R\000"
.LASF69:
	.ascii	"BKP8R\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF59:
	.ascii	"ALRMBSSR\000"
.LASF76:
	.ascii	"BKP15R\000"
.LASF92:
	.ascii	"getStr4NumMISC\000"
.LASF36:
	.ascii	"AHB2LPENR\000"
.LASF24:
	.ascii	"RESERVED0\000"
.LASF27:
	.ascii	"RESERVED1\000"
.LASF31:
	.ascii	"RESERVED2\000"
.LASF34:
	.ascii	"RESERVED3\000"
.LASF84:
	.ascii	"t_time\000"
.LASF41:
	.ascii	"RESERVED5\000"
.LASF43:
	.ascii	"RESERVED6\000"
.LASF60:
	.ascii	"RESERVED7\000"
.LASF80:
	.ascii	"BKP19R\000"
.LASF62:
	.ascii	"BKP1R\000"
.LASF28:
	.ascii	"AHB1ENR\000"
.LASF83:
	.ascii	"utmp32\000"
.LASF90:
	.ascii	"initRTC\000"
.LASF51:
	.ascii	"ALRMBR\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF66:
	.ascii	"BKP5R\000"
.LASF93:
	.ascii	"catstrMISC\000"
.LASF55:
	.ascii	"TSSSR\000"
.LASF73:
	.ascii	"BKP12R\000"
.LASF70:
	.ascii	"BKP9R\000"
.LASF85:
	.ascii	"ITM_RxBuffer\000"
.LASF20:
	.ascii	"CFGR\000"
.LASF40:
	.ascii	"APB2LPENR\000"
.LASF77:
	.ascii	"BKP16R\000"
.LASF23:
	.ascii	"AHB3RSTR\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20141119 (release) [ARM/embedded-4_9-branch revision 218278]"
