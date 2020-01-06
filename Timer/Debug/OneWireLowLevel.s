	.file	"OneWireLowLevel.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.onReadBitEnsureLongEnoughIdleTime,"ax",@progbits
.global	onReadBitEnsureLongEnoughIdleTime
	.type	onReadBitEnsureLongEnoughIdleTime, @function
onReadBitEnsureLongEnoughIdleTime:
.LFB10:
	.file 1 ".././OneWireLowLevel.c"
	.loc 1 18 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 19 0
	call stopTimer2
.LVL0:
	.loc 1 20 0
	lds r30,internalData+2
	lds r31,internalData+2+1
	icall
.LVL1:
	ret
	.cfi_endproc
.LFE10:
	.size	onReadBitEnsureLongEnoughIdleTime, .-onReadBitEnsureLongEnoughIdleTime
	.section	.text.onWrite1BusIsSampled,"ax",@progbits
.global	onWrite1BusIsSampled
	.type	onWrite1BusIsSampled, @function
onWrite1BusIsSampled:
.LFB14:
	.loc 1 56 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 57 0
	call stopTimer2
.LVL2:
	.loc 1 58 0
	lds r30,internalData+2
	lds r31,internalData+2+1
	icall
.LVL3:
	ret
	.cfi_endproc
.LFE14:
	.size	onWrite1BusIsSampled, .-onWrite1BusIsSampled
	.section	.text.onResetPulse500usHaveElapsedEvent,"ax",@progbits
.global	onResetPulse500usHaveElapsedEvent
	.type	onResetPulse500usHaveElapsedEvent, @function
onResetPulse500usHaveElapsedEvent:
.LFB19:
	.loc 1 118 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 119 0
	call stopTimer2
.LVL4:
	.loc 1 120 0
	ldi r28,lo8(internalData)
	ldi r29,hi8(internalData)
	ld r24,Y
	ldd r25,Y+1
	call makeInput
.LVL5:
	.loc 1 121 0
	ldd r30,Y+2
	ldd r31,Y+3
	icall
.LVL6:
/* epilogue start */
	.loc 1 122 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE19:
	.size	onResetPulse500usHaveElapsedEvent, .-onResetPulse500usHaveElapsedEvent
	.section	.text.onWrite0BitBusMustGoHigh,"ax",@progbits
.global	onWrite0BitBusMustGoHigh
	.type	onWrite0BitBusMustGoHigh, @function
onWrite0BitBusMustGoHigh:
.LFB12:
	.loc 1 38 0
	.cfi_startproc
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 39 0
	ldi r28,lo8(internalData)
	ldi r29,hi8(internalData)
	ld r24,Y
	ldd r25,Y+1
	call makeInput
.LVL7:
	.loc 1 40 0
	call stopTimer2
.LVL8:
.LBB10:
.LBB11:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 276 0
	ldi r24,lo8(10)
1:	dec r24
	brne 1b
	rjmp .
.LVL9:
.LBE11:
.LBE10:
	.loc 1 42 0
	ldd r30,Y+2
	ldd r31,Y+3
	icall
.LVL10:
/* epilogue start */
	.loc 1 43 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE12:
	.size	onWrite0BitBusMustGoHigh, .-onWrite0BitBusMustGoHigh
	.section	.text.onPresencePulse500usHaveElapsedEvent,"ax",@progbits
.global	onPresencePulse500usHaveElapsedEvent
	.type	onPresencePulse500usHaveElapsedEvent, @function
onPresencePulse500usHaveElapsedEvent:
.LFB16:
	.loc 1 76 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 77 0
	lds r24,isDevicePresent
	tst r24
	breq .L6
	.loc 1 78 0
	lds r30,internalData+2
	lds r31,internalData+2+1
	icall
.LVL11:
	ret
.L6:
	.loc 1 80 0
	call deathTrap
.LVL12:
	ret
	.cfi_endproc
.LFE16:
	.size	onPresencePulse500usHaveElapsedEvent, .-onPresencePulse500usHaveElapsedEvent
	.section	.text.onPresencePulseEnded,"ax",@progbits
.global	onPresencePulseEnded
	.type	onPresencePulseEnded, @function
onPresencePulseEnded:
.LFB17:
	.loc 1 84 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 85 0
	lds r24,internalData
	lds r25,internalData+1
	call disableExternalInterrupt
.LVL13:
	.loc 1 86 0
	ldi r24,lo8(1)
	sts isDevicePresent,r24
	ret
	.cfi_endproc
.LFE17:
	.size	onPresencePulseEnded, .-onPresencePulseEnded
	.section	.text.readBitFromOneWire,"ax",@progbits
.global	readBitFromOneWire
	.type	readBitFromOneWire, @function
readBitFromOneWire:
.LFB11:
	.loc 1 24 0
	.cfi_startproc
.LVL14:
	push r14
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI8:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
	movw r14,r22
	movw r16,r20
	.loc 1 25 0
	call makeOutputLow
.LVL15:
.LBB12:
.LBB13:
	.loc 2 276 0
	ldi r24,lo8(10)
1:	dec r24
	brne 1b
	rjmp .
.LVL16:
.LBE13:
.LBE12:
	.loc 1 27 0
	movw r24,r28
	call makeInput
.LVL17:
.LBB14:
.LBB15:
	.loc 2 276 0
	ldi r30,lo8(53)
1:	dec r30
	brne 1b
	nop
.LVL18:
.LBE15:
.LBE14:
	.loc 1 29 0
	movw r24,r28
	call getPinState
.LVL19:
	movw r30,r14
	st Z,r24
	.loc 1 31 0
	sts internalData+2+1,r17
	sts internalData+2,r16
	.loc 1 32 0
	ldi r24,lo8(gs(onReadBitEnsureLongEnoughIdleTime))
	ldi r25,hi8(gs(onReadBitEnsureLongEnoughIdleTime))
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL20:
	.loc 1 33 0
	call letTimer2GenerateInterruptEveryRoughly60us
.LVL21:
	.loc 1 34 0
	call enableTimer2CaptureCompareAInterrupt
.LVL22:
/* epilogue start */
	.loc 1 35 0
	pop r29
	pop r28
.LVL23:
	pop r17
	pop r16
.LVL24:
	pop r15
	pop r14
.LVL25:
	ret
	.cfi_endproc
.LFE11:
	.size	readBitFromOneWire, .-readBitFromOneWire
	.section	.text.write0BitToOneWire,"ax",@progbits
.global	write0BitToOneWire
	.type	write0BitToOneWire, @function
write0BitToOneWire:
.LFB13:
	.loc 1 46 0
	.cfi_startproc
.LVL26:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 47 0
	ldi r30,lo8(internalData)
	ldi r31,hi8(internalData)
	std Z+1,r25
	st Z,r24
	.loc 1 48 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 49 0
	ldi r24,lo8(gs(onWrite0BitBusMustGoHigh))
	ldi r25,hi8(gs(onWrite0BitBusMustGoHigh))
.LVL27:
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL28:
	.loc 1 50 0
	call letTimer2GenerateInterruptEveryRoughly60us
.LVL29:
	.loc 1 51 0
	movw r24,r28
	call makeOutputLow
.LVL30:
	.loc 1 52 0
	call enableTimer2CaptureCompareAInterrupt
.LVL31:
/* epilogue start */
	.loc 1 53 0
	pop r29
	pop r28
.LVL32:
	ret
	.cfi_endproc
.LFE13:
	.size	write0BitToOneWire, .-write0BitToOneWire
	.section	.text.write1BitToOneWire,"ax",@progbits
.global	write1BitToOneWire
	.type	write1BitToOneWire, @function
write1BitToOneWire:
.LFB15:
	.loc 1 63 0
	.cfi_startproc
.LVL33:
	push r28
.LCFI12:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 64 0
	ldi r30,lo8(internalData)
	ldi r31,hi8(internalData)
	std Z+1,r25
	st Z,r24
	.loc 1 65 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 66 0
	call makeOutputLow
.LVL34:
.LBB16:
.LBB17:
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL35:
.LBE17:
.LBE16:
	.loc 1 69 0
	movw r24,r28
	call makeInput
.LVL36:
	.loc 1 70 0
	ldi r24,lo8(gs(onWrite1BusIsSampled))
	ldi r25,hi8(gs(onWrite1BusIsSampled))
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL37:
	.loc 1 71 0
	call letTimer2GenerateInterruptEveryRoughly60us
.LVL38:
/* epilogue start */
	.loc 1 73 0
	pop r29
	pop r28
.LVL39:
	.loc 1 72 0
	jmp enableTimer2CaptureCompareAInterrupt
.LVL40:
	.cfi_endproc
.LFE15:
	.size	write1BitToOneWire, .-write1BitToOneWire
	.section	.text.awaitOneWirePresencePulse,"ax",@progbits
.global	awaitOneWirePresencePulse
	.type	awaitOneWirePresencePulse, @function
awaitOneWirePresencePulse:
.LFB18:
	.loc 1 90 0
	.cfi_startproc
.LVL41:
	push r28
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 99 0
	ldi r30,lo8(internalData)
	ldi r31,hi8(internalData)
	std Z+1,r25
	st Z,r24
	.loc 1 100 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 102 0
	ldi r24,lo8(gs(onPresencePulse500usHaveElapsedEvent))
	ldi r25,hi8(gs(onPresencePulse500usHaveElapsedEvent))
.LVL42:
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL43:
	.loc 1 103 0
	call letTimer2GenerateInterruptEvery500us
.LVL44:
	.loc 1 104 0
	call enableTimer2CaptureCompareAInterrupt
.LVL45:
.L13:
	.loc 1 110 0
	movw r24,r28
	call getPinState
.LVL46:
	cpse r24,__zero_reg__
	rjmp .L13
.LVL47:
	.loc 1 114 0
	ldi r20,lo8(gs(onPresencePulseEnded))
	ldi r21,hi8(gs(onPresencePulseEnded))
	ldi r22,lo8(3)
	movw r24,r28
	call enableExternalInterrupt
.LVL48:
/* epilogue start */
	.loc 1 115 0
	pop r29
	pop r28
.LVL49:
	ret
	.cfi_endproc
.LFE18:
	.size	awaitOneWirePresencePulse, .-awaitOneWirePresencePulse
	.section	.text.awaitOneWirePresencePulseWrapper,"ax",@progbits
.global	awaitOneWirePresencePulseWrapper
	.type	awaitOneWirePresencePulseWrapper, @function
awaitOneWirePresencePulseWrapper:
.LFB21:
	.loc 1 142 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 143 0
	ldi r30,lo8(internalDataFullReset)
	ldi r31,hi8(internalDataFullReset)
	ldd r22,Z+2
	ldd r23,Z+3
	ld r24,Z
	ldd r25,Z+1
	call awaitOneWirePresencePulse
.LVL50:
	ret
	.cfi_endproc
.LFE21:
	.size	awaitOneWirePresencePulseWrapper, .-awaitOneWirePresencePulseWrapper
	.section	.text.performOneWireReset,"ax",@progbits
.global	performOneWireReset
	.type	performOneWireReset, @function
performOneWireReset:
.LFB20:
	.loc 1 125 0
	.cfi_startproc
.LVL51:
	push r28
.LCFI16:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 126 0
	sts isDevicePresent,__zero_reg__
	.loc 1 127 0
	ldi r30,lo8(internalData)
	ldi r31,hi8(internalData)
	std Z+1,r25
	st Z,r24
	.loc 1 128 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 130 0
	ldi r24,lo8(gs(onResetPulse500usHaveElapsedEvent))
	ldi r25,hi8(gs(onResetPulse500usHaveElapsedEvent))
.LVL52:
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL53:
	.loc 1 131 0
	movw r24,r28
	call makeOutputLow
.LVL54:
	.loc 1 137 0
	call letTimer2GenerateInterruptEvery500us
.LVL55:
	.loc 1 138 0
	call enableTimer2CaptureCompareAInterrupt
.LVL56:
/* epilogue start */
	.loc 1 139 0
	pop r29
	pop r28
.LVL57:
	ret
	.cfi_endproc
.LFE20:
	.size	performOneWireReset, .-performOneWireReset
	.section	.text.performFullOneWireReset,"ax",@progbits
.global	performFullOneWireReset
	.type	performFullOneWireReset, @function
performFullOneWireReset:
.LFB22:
	.loc 1 147 0
	.cfi_startproc
.LVL58:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 148 0
	ldi r30,lo8(internalDataFullReset)
	ldi r31,hi8(internalDataFullReset)
	std Z+1,r25
	st Z,r24
	.loc 1 149 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 150 0
	ldi r22,lo8(gs(awaitOneWirePresencePulseWrapper))
	ldi r23,hi8(gs(awaitOneWirePresencePulseWrapper))
.LVL59:
	call performOneWireReset
.LVL60:
	ret
	.cfi_endproc
.LFE22:
	.size	performFullOneWireReset, .-performFullOneWireReset
.global	isDevicePresent
	.section	.bss.isDevicePresent,"aw",@nobits
	.type	isDevicePresent, @object
	.size	isDevicePresent, 1
isDevicePresent:
	.zero	1
	.comm	internalDataFullReset,5,1
	.comm	internalData,5,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././marcsLanguageExtension.h"
	.file 5 ".././GPIO Pin.h"
	.file 6 ".././Timer2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7f9
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF62
	.byte	0xc
	.long	.LASF63
	.long	.LASF64
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x82
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x4
	.byte	0xb
	.long	0x82
	.uleb128 0x5
	.byte	0x2
	.long	0x88
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0xb
	.long	0xd9
	.uleb128 0x8
	.long	.LASF10
	.byte	0x5
	.byte	0xd
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF11
	.byte	0x5
	.byte	0xe
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF12
	.byte	0x5
	.byte	0xf
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0x11
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0x12
	.long	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xdf
	.uleb128 0x9
	.long	0x30
	.uleb128 0xa
	.long	0xd9
	.uleb128 0xa
	.long	0x30
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x13
	.long	0x8a
	.uleb128 0xb
	.byte	0x1
	.long	0x3b
	.byte	0x5
	.byte	0x1c
	.long	0x11e
	.uleb128 0xc
	.long	.LASF16
	.byte	0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x1
	.uleb128 0xc
	.long	.LASF18
	.byte	0x2
	.uleb128 0xc
	.long	.LASF19
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x5
	.byte	0x1
	.byte	0x3
	.long	0x151
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.byte	0x5
	.long	0x151
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0x6
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x7
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x157
	.uleb128 0xa
	.long	0xee
	.uleb128 0x3
	.long	.LASF23
	.byte	0x1
	.byte	0x8
	.long	0x11e
	.uleb128 0x3
	.long	.LASF24
	.byte	0x1
	.byte	0xa
	.long	0x15c
	.uleb128 0xd
	.long	.LASF65
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0x1ae
	.uleb128 0xe
	.long	.LASF66
	.byte	0x2
	.byte	0xff
	.long	0x1ae
	.uleb128 0xf
	.long	.LASF25
	.byte	0x2
	.word	0x101
	.long	0x1ae
	.uleb128 0xf
	.long	.LASF26
	.byte	0x2
	.word	0x105
	.long	0x57
	.uleb128 0x10
	.byte	0x1
	.long	.LASF67
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF27
	.uleb128 0x11
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1d9
	.uleb128 0x12
	.long	.LVL0
	.long	0x76d
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1fd
	.uleb128 0x12
	.long	.LVL2
	.long	0x76d
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST0
	.byte	0x1
	.long	0x22a
	.uleb128 0x12
	.long	.LVL4
	.long	0x76d
	.uleb128 0x12
	.long	.LVL5
	.long	0x77a
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST1
	.byte	0x1
	.long	0x290
	.uleb128 0x14
	.long	0x172
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x29
	.long	0x27d
	.uleb128 0x15
	.long	0x17f
	.long	.LLST2
	.uleb128 0x16
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x17
	.long	0x18a
	.long	.LLST3
	.uleb128 0x17
	.long	0x196
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LVL7
	.long	0x77a
	.uleb128 0x12
	.long	.LVL8
	.long	0x76d
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2b4
	.uleb128 0x12
	.long	.LVL12
	.long	0x787
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2d8
	.uleb128 0x12
	.long	.LVL13
	.long	0x794
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST5
	.byte	0x1
	.long	0x40b
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x1
	.byte	0x17
	.long	0x40b
	.long	.LLST6
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.byte	0x17
	.long	0x41d
	.long	.LLST7
	.uleb128 0x1a
	.long	.LASF36
	.byte	0x1
	.byte	0x17
	.long	0x422
	.long	.LLST8
	.uleb128 0x14
	.long	0x172
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.byte	0x1a
	.long	0x358
	.uleb128 0x15
	.long	0x17f
	.long	.LLST9
	.uleb128 0x16
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x17
	.long	0x18a
	.long	.LLST10
	.uleb128 0x17
	.long	0x196
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x172
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0x1c
	.long	0x391
	.uleb128 0x15
	.long	0x17f
	.long	.LLST12
	.uleb128 0x16
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x17
	.long	0x18a
	.long	.LLST13
	.uleb128 0x17
	.long	0x196
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL15
	.long	0x7a1
	.long	0x3aa
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL17
	.long	0x77a
	.long	0x3c3
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL19
	.long	0x7ae
	.long	0x3dc
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL20
	.long	0x7bb
	.long	0x3f8
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onReadBitEnsureLongEnoughIdleTime
	.byte	0
	.uleb128 0x12
	.long	.LVL21
	.long	0x7c8
	.uleb128 0x12
	.long	.LVL22
	.long	0x7d5
	.byte	0
	.uleb128 0xa
	.long	0x151
	.uleb128 0x5
	.byte	0x2
	.long	0x416
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF37
	.uleb128 0xa
	.long	0x410
	.uleb128 0xa
	.long	0x77
	.uleb128 0x19
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST15
	.byte	0x1
	.long	0x4a7
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x1
	.byte	0x2d
	.long	0x40b
	.long	.LLST16
	.uleb128 0x1a
	.long	.LASF39
	.byte	0x1
	.byte	0x2d
	.long	0x422
	.long	.LLST17
	.uleb128 0x1b
	.long	.LVL28
	.long	0x7bb
	.long	0x47b
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onWrite0BitBusMustGoHigh
	.byte	0
	.uleb128 0x12
	.long	.LVL29
	.long	0x7c8
	.uleb128 0x1b
	.long	.LVL30
	.long	0x7a1
	.long	0x49d
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.long	.LVL31
	.long	0x7d5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST18
	.byte	0x1
	.long	0x57a
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x1
	.byte	0x3e
	.long	0x40b
	.long	.LLST19
	.uleb128 0x1a
	.long	.LASF39
	.byte	0x1
	.byte	0x3e
	.long	0x422
	.long	.LLST20
	.uleb128 0x14
	.long	0x172
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.byte	0x44
	.long	0x518
	.uleb128 0x15
	.long	0x17f
	.long	.LLST21
	.uleb128 0x16
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x17
	.long	0x18a
	.long	.LLST22
	.uleb128 0x17
	.long	0x196
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL34
	.long	0x7a1
	.long	0x531
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL36
	.long	0x77a
	.long	0x54a
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL37
	.long	0x7bb
	.long	0x566
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onWrite1BusIsSampled
	.byte	0
	.uleb128 0x12
	.long	.LVL38
	.long	0x7c8
	.uleb128 0x1d
	.long	.LVL40
	.byte	0x1
	.long	0x7d5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST24
	.byte	0x1
	.long	0x631
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x1
	.byte	0x59
	.long	0x40b
	.long	.LLST25
	.uleb128 0x1a
	.long	.LASF42
	.byte	0x1
	.byte	0x59
	.long	0x77
	.long	.LLST26
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x1
	.byte	0x6a
	.long	0x416
	.long	.LLST27
	.uleb128 0x1b
	.long	.LVL43
	.long	0x7bb
	.long	0x5dd
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onPresencePulse500usHaveElapsedEvent
	.byte	0
	.uleb128 0x12
	.long	.LVL44
	.long	0x7e2
	.uleb128 0x12
	.long	.LVL45
	.long	0x7d5
	.uleb128 0x1b
	.long	.LVL46
	.long	0x7ae
	.long	0x608
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL48
	.long	0x7ef
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onPresencePulseEnded
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x655
	.uleb128 0x12
	.long	.LVL50
	.long	0x57a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST28
	.byte	0x1
	.long	0x6d5
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x1
	.byte	0x7c
	.long	0x40b
	.long	.LLST29
	.uleb128 0x1a
	.long	.LASF45
	.byte	0x1
	.byte	0x7c
	.long	0x422
	.long	.LLST30
	.uleb128 0x1b
	.long	.LVL53
	.long	0x7bb
	.long	0x6a9
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onResetPulse500usHaveElapsedEvent
	.byte	0
	.uleb128 0x1b
	.long	.LVL54
	.long	0x7a1
	.long	0x6c2
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.long	.LVL55
	.long	0x7e2
	.uleb128 0x12
	.long	.LVL56
	.long	0x7d5
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x732
	.uleb128 0x1a
	.long	.LASF20
	.byte	0x1
	.byte	0x92
	.long	0x40b
	.long	.LLST31
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.byte	0x92
	.long	0x422
	.long	.LLST32
	.uleb128 0x1f
	.long	.LVL60
	.long	0x655
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	awaitOneWirePresencePulseWrapper
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF48
	.byte	0x1
	.byte	0xc
	.long	0x15c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internalData
	.uleb128 0x20
	.long	.LASF49
	.byte	0x1
	.byte	0xd
	.long	0x167
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internalDataFullReset
	.uleb128 0x20
	.long	.LASF50
	.byte	0x1
	.byte	0xf
	.long	0x768
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	isDevicePresent
	.uleb128 0x9
	.long	0x416
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF51
	.long	.LASF51
	.byte	0x6
	.byte	0x29
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF52
	.long	.LASF52
	.byte	0x5
	.byte	0x23
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF53
	.long	.LASF53
	.byte	0x4
	.byte	0xf
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF54
	.long	.LASF54
	.byte	0x5
	.byte	0x28
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF55
	.long	.LASF55
	.byte	0x5
	.byte	0x25
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF56
	.long	.LASF56
	.byte	0x5
	.byte	0x29
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF57
	.long	.LASF57
	.byte	0x6
	.byte	0x2d
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF58
	.long	.LASF58
	.byte	0x6
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF59
	.long	.LASF59
	.byte	0x6
	.byte	0x2c
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF60
	.long	.LASF60
	.byte	0x6
	.byte	0x2e
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF61
	.long	.LASF61
	.byte	0x5
	.byte	0x27
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB19
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
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LFB12
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40000000
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42000000
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LFB11
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI9
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL15-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-1
	.long	.LVL23
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL14
	.long	.LVL15-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-1
	.long	.LVL25
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL15-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-1
	.long	.LVL24
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40000000
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42000000
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL16
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST13:
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43200000
	.long	0
	.long	0
.LLST14:
	.long	.LVL17
	.long	.LVL18
	.word	0x3
	.byte	0x8
	.byte	0xa0
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LFB13
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST16:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL32
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL26
	.long	.LVL28-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LFB15
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI13
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST19:
	.long	.LVL33
	.long	.LVL34-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34-1
	.long	.LVL39
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL33
	.long	.LVL34-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34-1
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST22:
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST23:
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LFB18
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
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST25:
	.long	.LVL41
	.long	.LVL42
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL49
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL41
	.long	.LVL43-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43-1
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL45
	.long	.LVL47
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL47
	.long	.LFE18
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LFB20
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LFE20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST29:
	.long	.LVL51
	.long	.LVL52
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL57
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL51
	.long	.LVL53-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL58
	.long	.LVL60-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60-1
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL60-1
	.word	0x5
	.byte	0x3
	.long	internalDataFullReset+2
	.long	.LVL60-1
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
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
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB10
	.long	.LFE10
	.long	.LFB14
	.long	.LFE14
	.long	.LFB19
	.long	.LFE19
	.long	.LFB12
	.long	.LFE12
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB11
	.long	.LFE11
	.long	.LFB13
	.long	.LFE13
	.long	.LFB15
	.long	.LFE15
	.long	.LFB18
	.long	.LFE18
	.long	.LFB21
	.long	.LFE21
	.long	.LFB20
	.long	.LFE20
	.long	.LFB22
	.long	.LFE22
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\\\Timer\\\\Timer\\\\Debug"
.LASF52:
	.string	"makeInput"
.LASF9:
	.string	"CallbackFunctionType"
.LASF62:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF25:
	.string	"__tmp"
.LASF50:
	.string	"isDevicePresent"
.LASF53:
	.string	"deathTrap"
.LASF16:
	.string	"ExternalInteruptPolarity_LowLevel"
.LASF58:
	.string	"letTimer2GenerateInterruptEveryRoughly60us"
.LASF23:
	.string	"OneWireStatemachinesInternalData_t"
.LASF4:
	.string	"uint8_t"
.LASF44:
	.string	"performOneWireReset"
.LASF11:
	.string	"PINx"
.LASF29:
	.string	"onWrite1BusIsSampled"
.LASF17:
	.string	"ExternalInteruptPolarity_AnyChange"
.LASF55:
	.string	"makeOutputLow"
.LASF30:
	.string	"onResetPulse500usHaveElapsedEvent"
.LASF48:
	.string	"internalData"
.LASF66:
	.string	"__us"
.LASF35:
	.string	"storeReadBitHere"
.LASF7:
	.string	"long long int"
.LASF34:
	.string	"readBitFromOneWire"
.LASF3:
	.string	"long int"
.LASF24:
	.string	"PerformFullOneWireResetInternalData_t"
.LASF47:
	.string	"onFullResetComplete"
.LASF46:
	.string	"performFullOneWireReset"
.LASF22:
	.string	"byte"
.LASF57:
	.string	"defineCallbackOnTimer2CaptureCompareAMatch"
.LASF14:
	.string	"INTx"
.LASF45:
	.string	"onResetComplete"
.LASF20:
	.string	"onewirepin"
.LASF67:
	.string	"__builtin_avr_delay_cycles"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF65:
	.string	"_delay_us"
.LASF8:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint32_t"
.LASF36:
	.string	"onBitRead"
.LASF2:
	.string	"unsigned int"
.LASF18:
	.string	"ExternalInteruptPolarity_FallingEdge"
.LASF31:
	.string	"onWrite0BitBusMustGoHigh"
.LASF60:
	.string	"letTimer2GenerateInterruptEvery500us"
.LASF15:
	.string	"GPIOPin_t"
.LASF63:
	.string	".././OneWireLowLevel.c"
.LASF32:
	.string	"onPresencePulse500usHaveElapsedEvent"
.LASF43:
	.string	"awaitOneWirePresencePulseWrapper"
.LASF37:
	.string	"_Bool"
.LASF38:
	.string	"write0BitToOneWire"
.LASF28:
	.string	"onReadBitEnsureLongEnoughIdleTime"
.LASF13:
	.string	"pinNumber"
.LASF6:
	.string	"long unsigned int"
.LASF27:
	.string	"double"
.LASF10:
	.string	"DDRx"
.LASF68:
	.string	"isEdgeFalling"
.LASF61:
	.string	"enableExternalInterrupt"
.LASF54:
	.string	"disableExternalInterrupt"
.LASF51:
	.string	"stopTimer2"
.LASF59:
	.string	"enableTimer2CaptureCompareAInterrupt"
.LASF26:
	.string	"__ticks_dc"
.LASF41:
	.string	"awaitOneWirePresencePulse"
.LASF21:
	.string	"callback"
.LASF39:
	.string	"onBitWritten"
.LASF40:
	.string	"write1BitToOneWire"
.LASF49:
	.string	"internalDataFullReset"
.LASF42:
	.string	"onPresencePulseReceived"
.LASF56:
	.string	"getPinState"
.LASF33:
	.string	"onPresencePulseEnded"
.LASF12:
	.string	"PORTx"
.LASF19:
	.string	"ExternalInteruptPolarity_RisingEdge"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
