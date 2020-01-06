	.file	"GPIO Pin.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.getPinState,"ax",@progbits
.global	getPinState
	.type	getPinState, @function
getPinState:
.LFB0:
	.file 1 ".././GPIO Pin.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 14 0
	ldd r26,Z+2
	ldd r27,Z+3
	ld r25,X
	ldi r18,lo8(1)
	ldi r19,0
	ldd r0,Z+6
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	mov r24,r25
.LVL1:
	ldi r25,0
	and r18,r24
	and r19,r25
	ldi r24,lo8(1)
	cp __zero_reg__,r18
	cpc __zero_reg__,r19
	brge .L4
	.loc 1 15 0
	ret
.L4:
	.loc 1 14 0
	ldi r24,0
	.loc 1 15 0
	ret
	.cfi_endproc
.LFE0:
	.size	getPinState, .-getPinState
	.section	.text.hot.makeInput,"ax",@progbits
.global	makeInput
	.type	makeInput, @function
makeInput:
.LFB1:
	.loc 1 18 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 19 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld r20,Z
	ldi r18,lo8(1)
	ldi r19,0
	movw r22,r18
	adiw r26,6
	ld r0,X
	rjmp 2f
	1:
	lsl r22
	rol r23
	2:
	dec r0
	brpl 1b
	movw r24,r22
.LVL3:
	com r24
	and r24,r20
	st Z,r24
	ret
	.cfi_endproc
.LFE1:
	.size	makeInput, .-makeInput
	.section	.text.hot.makeOutputLow,"ax",@progbits
.global	makeOutputLow
	.type	makeOutputLow, @function
makeOutputLow:
.LFB2:
	.loc 1 23 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 24 0
	ld r26,Z
	ldd r27,Z+1
	ld r20,X
	ldi r18,lo8(1)
	ldi r19,0
	movw r24,r18
.LVL5:
	ldd r0,Z+6
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r20
	st X,r24
	.loc 1 25 0
	ldd r26,Z+4
	ldd r27,Z+5
	ld r24,X
	ldd r0,Z+6
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	com r18
	and r18,r24
	st X,r18
	ret
	.cfi_endproc
.LFE2:
	.size	makeOutputLow, .-makeOutputLow
	.section	.text.disablePullup,"ax",@progbits
.global	disablePullup
	.type	disablePullup, @function
disablePullup:
.LFB3:
	.loc 1 29 0
	.cfi_startproc
.LVL6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 30 0
	movw r26,r24
	adiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,4+1
	ld r20,Z
	ldi r18,lo8(1)
	ldi r19,0
	movw r22,r18
	adiw r26,6
	ld r0,X
	rjmp 2f
	1:
	lsl r22
	rol r23
	2:
	dec r0
	brpl 1b
	movw r24,r22
.LVL7:
	com r24
	and r24,r20
	st Z,r24
	ret
	.cfi_endproc
.LFE3:
	.size	disablePullup, .-disablePullup
	.section	.text.enableExternalInterrupt,"ax",@progbits
.global	enableExternalInterrupt
	.type	enableExternalInterrupt, @function
enableExternalInterrupt:
.LFB4:
	.loc 1 36 0
	.cfi_startproc
.LVL8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 37 0
	ldi r26,lo8(105)
	ldi r27,0
	ld r24,X
.LVL9:
	ldd r25,Z+7
	lsl r25
	ldi r18,lo8(3)
	ldi r19,0
	rjmp 2f
	1:
	lsl r18
	2:
	dec r25
	brpl 1b
	com r18
	and r18,r24
	st X,r18
	.loc 1 38 0
	ld r25,X
	ldd r24,Z+7
	lsl r24
	rjmp 2f
	1:
	lsl r22
	2:
	dec r24
	brpl 1b
.LVL10:
	or r22,r25
	st X,r22
	.loc 1 39 0
	in r24,0x1d
	ldi r18,lo8(1)
	ldi r19,0
	ldd r0,Z+7
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	or r18,r24
	out 0x1d,r18
	.loc 1 40 0
	ldd r30,Z+7
.LVL11:
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(callbacksForExternalInterrupts))
	sbci r31,hi8(-(callbacksForExternalInterrupts))
	std Z+1,r21
	st Z,r20
	ret
	.cfi_endproc
.LFE4:
	.size	enableExternalInterrupt, .-enableExternalInterrupt
	.section	.text.disableExternalInterrupt,"ax",@progbits
.global	disableExternalInterrupt
	.type	disableExternalInterrupt, @function
disableExternalInterrupt:
.LFB5:
	.loc 1 44 0
	.cfi_startproc
.LVL12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 45 0
	in r25,0x1d
	ldi r18,lo8(1)
	ldi r19,0
	movw r20,r18
	ldd r0,Z+7
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r0
	brpl 1b
	mov r24,r20
.LVL13:
	com r24
	and r24,r25
	out 0x1d,r24
	.loc 1 46 0
	in r24,0x1c
	ldd r0,Z+7
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	com r18
	and r18,r24
	out 0x1c,r18
	.loc 1 47 0
	ldd r30,Z+7
.LVL14:
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(callbacksForExternalInterrupts))
	sbci r31,hi8(-(callbacksForExternalInterrupts))
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ret
	.cfi_endproc
.LFE5:
	.size	disableExternalInterrupt, .-disableExternalInterrupt
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
.LFB6:
	.loc 1 51 0
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
	.loc 1 52 0
	lds r30,callbacksForExternalInterrupts
	lds r31,callbacksForExternalInterrupts+1
	icall
.LVL15:
/* epilogue start */
	.loc 1 53 0
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
	.size	__vector_1, .-__vector_1
	.section	.bss.callbacksForExternalInterrupts,"aw",@nobits
	.type	callbacksForExternalInterrupts, @object
	.size	callbacksForExternalInterrupts, 4
callbacksForExternalInterrupts:
	.zero	4
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././marcsLanguageExtension.h"
	.file 4 ".././GPIO Pin.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2a0
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF29
	.byte	0xc
	.long	.LASF30
	.long	.LASF31
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
	.byte	0x8
	.byte	0x4
	.byte	0xb
	.long	0xce
	.uleb128 0x8
	.long	.LASF9
	.byte	0x4
	.byte	0xd
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF10
	.byte	0x4
	.byte	0xe
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0xf
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0x11
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0x12
	.long	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xd4
	.uleb128 0x9
	.long	0x30
	.uleb128 0xa
	.long	0xce
	.uleb128 0xa
	.long	0x30
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x13
	.long	0x7f
	.uleb128 0xb
	.byte	0x1
	.long	0x3b
	.byte	0x4
	.byte	0x1c
	.long	0x113
	.uleb128 0xc
	.long	.LASF15
	.byte	0
	.uleb128 0xc
	.long	.LASF16
	.byte	0x1
	.uleb128 0xc
	.long	.LASF17
	.byte	0x2
	.uleb128 0xc
	.long	.LASF18
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x21
	.long	0xee
	.uleb128 0xd
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.long	0x14c
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x14c
	.uleb128 0xe
	.string	"pin"
	.byte	0x1
	.byte	0xc
	.long	0x15e
	.long	.LLST0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF20
	.uleb128 0x5
	.byte	0x2
	.long	0x159
	.uleb128 0xa
	.long	0xe3
	.uleb128 0xa
	.long	0x153
	.uleb128 0xf
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x18d
	.uleb128 0xe
	.string	"pin"
	.byte	0x1
	.byte	0x11
	.long	0x15e
	.long	.LLST1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1b7
	.uleb128 0xe
	.string	"pin"
	.byte	0x1
	.byte	0x16
	.long	0x15e
	.long	.LLST2
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1e1
	.uleb128 0xe
	.string	"pin"
	.byte	0x1
	.byte	0x1c
	.long	0x15e
	.long	.LLST3
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x22c
	.uleb128 0xe
	.string	"pin"
	.byte	0x1
	.byte	0x23
	.long	0x15e
	.long	.LLST4
	.uleb128 0x10
	.long	.LASF25
	.byte	0x1
	.byte	0x23
	.long	0x22c
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF26
	.byte	0x1
	.byte	0x23
	.long	0x6c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xa
	.long	0x113
	.uleb128 0xf
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x25b
	.uleb128 0xe
	.string	"pin"
	.byte	0x1
	.byte	0x2b
	.long	0x15e
	.long	.LLST6
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST7
	.byte	0x1
	.uleb128 0x13
	.long	0x288
	.long	0x281
	.uleb128 0x14
	.long	0x281
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF28
	.uleb128 0x9
	.long	0x6c
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x21
	.long	0x29e
	.byte	0x5
	.byte	0x3
	.long	callbacksForExternalInterrupts
	.uleb128 0x9
	.long	0x271
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LFE0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LFE1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LFE2
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LFE3
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL11
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL10
	.word	0x1
	.byte	0x66
	.long	.LVL10
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
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
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"callbacksForExternalInterrupts"
.LASF8:
	.string	"CallbackFunctionType"
.LASF31:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\\\Timer\\\\Timer\\\\Debug"
.LASF24:
	.string	"enableExternalInterrupt"
.LASF29:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF13:
	.string	"INTx"
.LASF23:
	.string	"disablePullup"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"__vector_1"
.LASF4:
	.string	"long unsigned int"
.LASF15:
	.string	"ExternalInteruptPolarity_LowLevel"
.LASF16:
	.string	"ExternalInteruptPolarity_AnyChange"
.LASF17:
	.string	"ExternalInteruptPolarity_FallingEdge"
.LASF22:
	.string	"makeOutputLow"
.LASF30:
	.string	".././GPIO Pin.c"
.LASF12:
	.string	"pinNumber"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF19:
	.string	"ExternalInteruptPolarity_t"
.LASF27:
	.string	"disableExternalInterrupt"
.LASF25:
	.string	"polarity"
.LASF9:
	.string	"DDRx"
.LASF21:
	.string	"makeInput"
.LASF14:
	.string	"GPIOPin_t"
.LASF28:
	.string	"sizetype"
.LASF32:
	.string	"getPinState"
.LASF5:
	.string	"long long int"
.LASF26:
	.string	"onExternalInterrupt"
.LASF18:
	.string	"ExternalInteruptPolarity_RisingEdge"
.LASF10:
	.string	"PINx"
.LASF11:
	.string	"PORTx"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"_Bool"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
