	.file	"Timer2.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.defineCallbackOnTimer2Overflow,"ax",@progbits
.global	defineCallbackOnTimer2Overflow
	.type	defineCallbackOnTimer2Overflow, @function
defineCallbackOnTimer2Overflow:
.LFB4:
	.file 1 ".././Timer2.c"
	.loc 1 7 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 8 0
	sts onTimer2Overflow+1,r25
	sts onTimer2Overflow,r24
	ret
	.cfi_endproc
.LFE4:
	.size	defineCallbackOnTimer2Overflow, .-defineCallbackOnTimer2Overflow
	.section	.text.defineCallbackOnTimer2CaptureCompareAMatch,"ax",@progbits
.global	defineCallbackOnTimer2CaptureCompareAMatch
	.type	defineCallbackOnTimer2CaptureCompareAMatch, @function
defineCallbackOnTimer2CaptureCompareAMatch:
.LFB5:
	.loc 1 12 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 13 0
	sts onTimer2CaptureCompareAMatch+1,r25
	sts onTimer2CaptureCompareAMatch,r24
	ret
	.cfi_endproc
.LFE5:
	.size	defineCallbackOnTimer2CaptureCompareAMatch, .-defineCallbackOnTimer2CaptureCompareAMatch
	.section	.text.__vector_9,"ax",@progbits
.global	__vector_9
	.type	__vector_9, @function
__vector_9:
.LFB6:
	.loc 1 17 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 18 0
	lds r30,onTimer2Overflow
	lds r31,onTimer2Overflow+1
	icall
.LVL2:
/* epilogue start */
	.loc 1 19 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE6:
	.size	__vector_9, .-__vector_9
	.section	.text.__vector_7,"ax",@progbits
.global	__vector_7
	.type	__vector_7, @function
__vector_7:
.LFB7:
	.loc 1 22 0
	.cfi_startproc
	push r1
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI21:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI22:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI23:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI24:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI25:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI26:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 23 0
	lds r30,onTimer2CaptureCompareAMatch
	lds r31,onTimer2CaptureCompareAMatch+1
	icall
.LVL3:
/* epilogue start */
	.loc 1 24 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE7:
	.size	__vector_7, .-__vector_7
	.section	.text.setWaveformGenerationModeTimer2,"ax",@progbits
.global	setWaveformGenerationModeTimer2
	.type	setWaveformGenerationModeTimer2, @function
setWaveformGenerationModeTimer2:
.LFB8:
	.loc 1 27 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 0
	ldi r26,lo8(-80)
	ldi r27,0
	ld r25,X
	andi r25,lo8(-4)
	st X,r25
	.loc 1 30 0
	ldi r30,lo8(-79)
	ldi r31,0
	ld r25,Z
	andi r25,lo8(-9)
	st Z,r25
	.loc 1 32 0
	ld r25,X
	mov r18,r24
	andi r18,lo8(3)
	or r25,r18
	st X,r25
	.loc 1 33 0
	ld r25,Z
	andi r24,lo8(4)
.LVL5:
	lsl r24
	or r24,r25
	st Z,r24
	ret
	.cfi_endproc
.LFE8:
	.size	setWaveformGenerationModeTimer2, .-setWaveformGenerationModeTimer2
	.section	.text.setPrescalerTimer2,"ax",@progbits
.global	setPrescalerTimer2
	.type	setPrescalerTimer2, @function
setPrescalerTimer2:
.LFB9:
	.loc 1 37 0
	.cfi_startproc
.LVL6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 38 0
	ldi r30,lo8(-79)
	ldi r31,0
	ld r25,Z
	andi r25,lo8(-8)
	st Z,r25
	.loc 1 39 0
	ld r25,Z
	or r24,r25
.LVL7:
	st Z,r24
	ret
	.cfi_endproc
.LFE9:
	.size	setPrescalerTimer2, .-setPrescalerTimer2
	.section	.text.enableTimer2OverflowInterrupt,"ax",@progbits
.global	enableTimer2OverflowInterrupt
	.type	enableTimer2OverflowInterrupt, @function
enableTimer2OverflowInterrupt:
.LFB10:
	.loc 1 43 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 44 0
	ldi r30,lo8(112)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ret
	.cfi_endproc
.LFE10:
	.size	enableTimer2OverflowInterrupt, .-enableTimer2OverflowInterrupt
	.section	.text.stopTimer2,"ax",@progbits
.global	stopTimer2
	.type	stopTimer2, @function
stopTimer2:
.LFB11:
	.loc 1 48 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 49 0
	ldi r24,0
	call setPrescalerTimer2
.LVL8:
	.loc 1 50 0
	sts 178,__zero_reg__
	ret
	.cfi_endproc
.LFE11:
	.size	stopTimer2, .-stopTimer2
	.section	.text.resetTimer2,"ax",@progbits
.global	resetTimer2
	.type	resetTimer2, @function
resetTimer2:
.LFB12:
	.loc 1 54 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 55 0
	sts 178,__zero_reg__
	ret
	.cfi_endproc
.LFE12:
	.size	resetTimer2, .-resetTimer2
	.section	.text.letTimer2GenerateInterruptEvery500us,"ax",@progbits
.global	letTimer2GenerateInterruptEvery500us
	.type	letTimer2GenerateInterruptEvery500us, @function
letTimer2GenerateInterruptEvery500us:
.LFB13:
	.loc 1 59 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 61 0
	ldi r24,lo8(124)
	sts 179,r24
	.loc 1 62 0
	ldi r24,lo8(4)
	call setPrescalerTimer2
.LVL9:
	ret
	.cfi_endproc
.LFE13:
	.size	letTimer2GenerateInterruptEvery500us, .-letTimer2GenerateInterruptEvery500us
	.section	.text.letTimer2GenerateInterruptEveryRoughly60us,"ax",@progbits
.global	letTimer2GenerateInterruptEveryRoughly60us
	.type	letTimer2GenerateInterruptEveryRoughly60us, @function
letTimer2GenerateInterruptEveryRoughly60us:
.LFB14:
	.loc 1 66 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 68 0
	ldi r24,lo8(7)
	sts 179,r24
	.loc 1 69 0
	ldi r24,lo8(5)
	call setPrescalerTimer2
.LVL10:
	ret
	.cfi_endproc
.LFE14:
	.size	letTimer2GenerateInterruptEveryRoughly60us, .-letTimer2GenerateInterruptEveryRoughly60us
	.section	.text.letTimer2GenerateInterruptEvery750us,"ax",@progbits
.global	letTimer2GenerateInterruptEvery750us
	.type	letTimer2GenerateInterruptEvery750us, @function
letTimer2GenerateInterruptEvery750us:
.LFB15:
	.loc 1 73 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 75 0
	ldi r24,lo8(-66)
	sts 179,r24
	.loc 1 76 0
	ldi r24,lo8(4)
	call setPrescalerTimer2
.LVL11:
	ret
	.cfi_endproc
.LFE15:
	.size	letTimer2GenerateInterruptEvery750us, .-letTimer2GenerateInterruptEvery750us
	.section	.text.enableTimer2CaptureCompareAInterrupt,"ax",@progbits
.global	enableTimer2CaptureCompareAInterrupt
	.type	enableTimer2CaptureCompareAInterrupt, @function
enableTimer2CaptureCompareAInterrupt:
.LFB16:
	.loc 1 80 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 81 0
	ldi r30,lo8(112)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ret
	.cfi_endproc
.LFE16:
	.size	enableTimer2CaptureCompareAInterrupt, .-enableTimer2CaptureCompareAInterrupt
	.comm	onTimer2CaptureCompareAMatch,2,1
	.comm	onTimer2Overflow,2,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././marcsLanguageExtension.h"
	.file 4 ".././Timer2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x303
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF45
	.byte	0xc
	.long	.LASF46
	.long	.LASF47
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0xb
	.long	0x77
	.uleb128 0x5
	.byte	0x2
	.long	0x7d
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	0x3b
	.byte	0x4
	.byte	0xf
	.long	0xbc
	.uleb128 0x8
	.long	.LASF9
	.byte	0
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.uleb128 0x8
	.long	.LASF11
	.byte	0x2
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.uleb128 0x8
	.long	.LASF16
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x18
	.long	0x7f
	.uleb128 0x7
	.byte	0x1
	.long	0x3b
	.byte	0x4
	.byte	0x1b
	.long	0x104
	.uleb128 0x8
	.long	.LASF18
	.byte	0
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.uleb128 0x8
	.long	.LASF20
	.byte	0x2
	.uleb128 0x8
	.long	.LASF21
	.byte	0x3
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x24
	.long	0xc7
	.uleb128 0x9
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x13c
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x6
	.long	0x13c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xb
	.long	0x6c
	.uleb128 0x9
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x16e
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0xb
	.long	0x13c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST0
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1c4
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.byte	0x1a
	.long	0x1c4
	.long	.LLST2
	.byte	0
	.uleb128 0xb
	.long	0xbc
	.uleb128 0x9
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1f3
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.byte	0x24
	.long	0x1f3
	.long	.LLST3
	.byte	0
	.uleb128 0xb
	.long	0x104
	.uleb128 0xe
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x238
	.uleb128 0xf
	.long	.LVL8
	.long	0x1c9
	.uleb128 0x10
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x278
	.uleb128 0xf
	.long	.LVL9
	.long	0x1c9
	.uleb128 0x10
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2a2
	.uleb128 0xf
	.long	.LVL10
	.long	0x1c9
	.uleb128 0x10
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2cc
	.uleb128 0xf
	.long	.LVL11
	.long	0x1c9
	.uleb128 0x10
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.byte	0x3
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	onTimer2Overflow
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.byte	0x4
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	onTimer2CaptureCompareAMatch
	.byte	0
	.section	.debug_abbrev,"",@progbits
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
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB6
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LFB7
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI27
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"waveformmode"
.LASF41:
	.string	"letTimer2GenerateInterruptEvery750us"
.LASF8:
	.string	"CallbackFunctionType"
.LASF14:
	.string	"WaveformGenerationModeTimer2_PWM_PhaseCorrect_To_OCRA"
.LASF47:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\\\Timer\\\\Timer\\\\Debug"
.LASF36:
	.string	"enableTimer2OverflowInterrupt"
.LASF22:
	.string	"PrescalerTimer2_64"
.LASF37:
	.string	"stopTimer2"
.LASF24:
	.string	"PrescalerTimer2_256"
.LASF16:
	.string	"WaveformGenerationModeTimer2_FastPWM_To_OCRA"
.LASF11:
	.string	"WaveformGenerationModeTimer2_CTC"
.LASF45:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF35:
	.string	"prescaler"
.LASF23:
	.string	"PrescalerTimer2_128"
.LASF28:
	.string	"defineCallbackOnTimer2CaptureCompareAMatch"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"PrescalerTimer2_1024"
.LASF4:
	.string	"long unsigned int"
.LASF19:
	.string	"PrescalerTimer2_1"
.LASF12:
	.string	"WaveformGenerationModeTimer2_FastPWM"
.LASF44:
	.string	"onTimer2CaptureCompareAMatch"
.LASF29:
	.string	"callbackFunction"
.LASF20:
	.string	"PrescalerTimer2_8"
.LASF9:
	.string	"WaveformGenerationModeTimer2_Normal"
.LASF46:
	.string	".././Timer2.c"
.LASF34:
	.string	"setPrescalerTimer2"
.LASF13:
	.string	"WaveformGenerationModeTimer2_RESERVED0"
.LASF15:
	.string	"WaveformGenerationModeTimer2_RESERVED1"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF42:
	.string	"enableTimer2CaptureCompareAInterrupt"
.LASF40:
	.string	"letTimer2GenerateInterruptEveryRoughly60us"
.LASF18:
	.string	"PrescalerTimer2_NoClockSource"
.LASF39:
	.string	"letTimer2GenerateInterruptEvery500us"
.LASF5:
	.string	"long long int"
.LASF27:
	.string	"defineCallbackOnTimer2Overflow"
.LASF43:
	.string	"onTimer2Overflow"
.LASF38:
	.string	"resetTimer2"
.LASF32:
	.string	"setWaveformGenerationModeTimer2"
.LASF31:
	.string	"__vector_7"
.LASF3:
	.string	"long int"
.LASF30:
	.string	"__vector_9"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"PrescalerTimer2_t"
.LASF21:
	.string	"PrescalerTimer2_32"
.LASF10:
	.string	"WaveformGenerationModeTimer2_PWM_PhaseCorrect"
.LASF17:
	.string	"WaveformGenerationModeTimer2_t"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
