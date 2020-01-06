	.file	"OneWire.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.onReadBitEnsureLongEnoughIdleTime,"ax",@progbits
.global	onReadBitEnsureLongEnoughIdleTime
	.type	onReadBitEnsureLongEnoughIdleTime, @function
onReadBitEnsureLongEnoughIdleTime:
.LFB14:
	.file 1 ".././OneWire.c"
	.loc 1 87 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 88 0
	call stopTimer2
.LVL0:
	.loc 1 89 0
	lds r30,internalData+2
	lds r31,internalData+2+1
	eicall
.LVL1:
	ret
	.cfi_endproc
.LFE14:
	.size	onReadBitEnsureLongEnoughIdleTime, .-onReadBitEnsureLongEnoughIdleTime
	.section	.text.onWrite1BusIsSampled,"ax",@progbits
.global	onWrite1BusIsSampled
	.type	onWrite1BusIsSampled, @function
onWrite1BusIsSampled:
.LFB18:
	.loc 1 125 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 126 0
	call stopTimer2
.LVL2:
	.loc 1 127 0
	lds r30,internalData+2
	lds r31,internalData+2+1
	eicall
.LVL3:
	ret
	.cfi_endproc
.LFE18:
	.size	onWrite1BusIsSampled, .-onWrite1BusIsSampled
	.section	.text.onResetPulse500usHaveElapsedEvent,"ax",@progbits
.global	onResetPulse500usHaveElapsedEvent
	.type	onResetPulse500usHaveElapsedEvent, @function
onResetPulse500usHaveElapsedEvent:
.LFB23:
	.loc 1 187 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 188 0
	call stopTimer2
.LVL4:
	.loc 1 189 0
	ldi r28,lo8(internalData)
	ldi r29,hi8(internalData)
	ld r24,Y
	ldd r25,Y+1
	call makeInput
.LVL5:
	.loc 1 190 0
	ldd r30,Y+2
	ldd r31,Y+3
	eicall
.LVL6:
/* epilogue start */
	.loc 1 191 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE23:
	.size	onResetPulse500usHaveElapsedEvent, .-onResetPulse500usHaveElapsedEvent
	.section	.text.onWrite0BitBusMustGoHigh,"ax",@progbits
.global	onWrite0BitBusMustGoHigh
	.type	onWrite0BitBusMustGoHigh, @function
onWrite0BitBusMustGoHigh:
.LFB16:
	.loc 1 107 0
	.cfi_startproc
	push r28
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI3:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 108 0
	ldi r28,lo8(internalData)
	ldi r29,hi8(internalData)
	ld r24,Y
	ldd r25,Y+1
	call makeInput
.LVL7:
	.loc 1 109 0
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
	.loc 1 111 0
	ldd r30,Y+2
	ldd r31,Y+3
	eicall
.LVL10:
/* epilogue start */
	.loc 1 112 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE16:
	.size	onWrite0BitBusMustGoHigh, .-onWrite0BitBusMustGoHigh
	.section	.text.onPresencePulse500usHaveElapsedEvent,"ax",@progbits
.global	onPresencePulse500usHaveElapsedEvent
	.type	onPresencePulse500usHaveElapsedEvent, @function
onPresencePulse500usHaveElapsedEvent:
.LFB20:
	.loc 1 145 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 146 0
	lds r24,isDevicePresent
	tst r24
	breq .L6
	.loc 1 147 0
	lds r30,internalData+2
	lds r31,internalData+2+1
	eicall
.LVL11:
	ret
.L6:
	.loc 1 149 0
	call deathTrap
.LVL12:
	ret
	.cfi_endproc
.LFE20:
	.size	onPresencePulse500usHaveElapsedEvent, .-onPresencePulse500usHaveElapsedEvent
	.section	.text.onPresencePulseEnded,"ax",@progbits
.global	onPresencePulseEnded
	.type	onPresencePulseEnded, @function
onPresencePulseEnded:
.LFB21:
	.loc 1 153 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 154 0
	lds r24,internalData
	lds r25,internalData+1
	call disableExternalInterrupt
.LVL13:
	.loc 1 155 0
	ldi r24,lo8(1)
	sts isDevicePresent,r24
	ret
	.cfi_endproc
.LFE21:
	.size	onPresencePulseEnded, .-onPresencePulseEnded
	.section	.text.readBitFromOneWire,"ax",@progbits
.global	readBitFromOneWire
	.type	readBitFromOneWire, @function
readBitFromOneWire:
.LFB15:
	.loc 1 93 0
	.cfi_startproc
.LVL14:
	push r14
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI5:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI6:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI7:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI9:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
	movw r14,r22
	movw r16,r20
	.loc 1 94 0
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
	.loc 1 96 0
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
	.loc 1 98 0
	movw r24,r28
	call getPinState
.LVL19:
	movw r30,r14
	st Z,r24
	.loc 1 100 0
	sts internalData+2+1,r17
	sts internalData+2,r16
	.loc 1 101 0
	ldi r24,lo8(gs(onReadBitEnsureLongEnoughIdleTime))
	ldi r25,hi8(gs(onReadBitEnsureLongEnoughIdleTime))
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL20:
	.loc 1 102 0
	call letTimer2GenerateInterruptEveryRoughly60us
.LVL21:
	.loc 1 103 0
	call enableTimer2CaptureCompareAInterrupt
.LVL22:
/* epilogue start */
	.loc 1 104 0
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
.LFE15:
	.size	readBitFromOneWire, .-readBitFromOneWire
	.section	.text.readByteFromOneWireBus,"ax",@progbits
.global	readByteFromOneWireBus
	.type	readByteFromOneWireBus, @function
readByteFromOneWireBus:
.LFB11:
	.loc 1 24 0
	.cfi_startproc
.LVL26:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 33 0
	tst r22
	breq .L11
	.loc 1 35 0
	sts posistionWithinByte.2014,__zero_reg__
	.loc 1 36 0
	sts lastByte.2013+1,r25
	sts lastByte.2013,r24
	.loc 1 37 0
	movw r30,r24
	st Z,__zero_reg__
	.loc 1 38 0
	sts lastCallback.2015+1,r19
	sts lastCallback.2015,r18
	.loc 1 39 0
	sts lastOneWirePin.2016+1,r21
	sts lastOneWirePin.2016,r20
	rjmp .L12
.L11:
	.loc 1 43 0
	lds r30,lastByte.2013
	lds r31,lastByte.2013+1
	lds r18,posistionWithinByte.2014
.LVL27:
	lds r24,readBit.2017
.LVL28:
	ldi r25,0
	mov r0,r18
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	ld r25,Z
	or r24,r25
	st Z,r24
	.loc 1 44 0
	ldi r24,lo8(1)
	add r24,r18
	sts posistionWithinByte.2014,r24
	.loc 1 47 0
	cpi r24,lo8(8)
	brsh .L13
.L12:
	.loc 1 48 0
	ldi r20,lo8(gs(readNextBitWrapper))
	ldi r21,hi8(gs(readNextBitWrapper))
.LVL29:
	ldi r22,lo8(readBit.2017)
	ldi r23,hi8(readBit.2017)
.LVL30:
	lds r24,lastOneWirePin.2016
	lds r25,lastOneWirePin.2016+1
	call readBitFromOneWire
.LVL31:
	ret
.LVL32:
.L13:
	.loc 1 50 0
	lds r30,lastCallback.2015
	lds r31,lastCallback.2015+1
	eicall
.LVL33:
	ret
	.cfi_endproc
.LFE11:
	.size	readByteFromOneWireBus, .-readByteFromOneWireBus
	.section	.text.readNextBitWrapper,"ax",@progbits
.global	readNextBitWrapper
	.type	readNextBitWrapper, @function
readNextBitWrapper:
.LFB10:
	.loc 1 19 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 20 0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r24,0
	ldi r25,0
	call readByteFromOneWireBus
.LVL34:
	ret
	.cfi_endproc
.LFE10:
	.size	readNextBitWrapper, .-readNextBitWrapper
	.section	.text.write0BitToOneWire,"ax",@progbits
.global	write0BitToOneWire
	.type	write0BitToOneWire, @function
write0BitToOneWire:
.LFB17:
	.loc 1 115 0
	.cfi_startproc
.LVL35:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI11:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 116 0
	ldi r30,lo8(internalData)
	ldi r31,hi8(internalData)
	std Z+1,r25
	st Z,r24
	.loc 1 117 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 118 0
	ldi r24,lo8(gs(onWrite0BitBusMustGoHigh))
	ldi r25,hi8(gs(onWrite0BitBusMustGoHigh))
.LVL36:
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL37:
	.loc 1 119 0
	call letTimer2GenerateInterruptEveryRoughly60us
.LVL38:
	.loc 1 120 0
	movw r24,r28
	call makeOutputLow
.LVL39:
	.loc 1 121 0
	call enableTimer2CaptureCompareAInterrupt
.LVL40:
/* epilogue start */
	.loc 1 122 0
	pop r29
	pop r28
.LVL41:
	ret
	.cfi_endproc
.LFE17:
	.size	write0BitToOneWire, .-write0BitToOneWire
	.section	.text.writeByteToOneWireBus,"ax",@progbits
.global	writeByteToOneWireBus
	.type	writeByteToOneWireBus, @function
writeByteToOneWireBus:
.LFB13:
	.loc 1 59 0
	.cfi_startproc
.LVL42:
	push r28
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 67 0
	tst r22
	breq .L18
	.loc 1 69 0
	sts positionWithinByte.2028,__zero_reg__
	.loc 1 70 0
	sts lastByte.2027,r24
	.loc 1 71 0
	sts lastCallback.2029+1,r19
	sts lastCallback.2029,r18
	.loc 1 72 0
	sts lastOneWirePin.2030+1,r21
	sts lastOneWirePin.2030,r20
.L18:
	.loc 1 75 0
	lds r24,positionWithinByte.2028
.LVL43:
	cpi r24,lo8(8)
	brsh .L19
	.loc 1 77 0
	lds r24,lastByte.2027
	lds r18,positionWithinByte.2028
.LVL44:
	ldi r25,lo8(1)
	add r25,r18
	sts positionWithinByte.2028,r25
	ldi r25,0
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r18
	brpl 1b
	sbrs r24,0
	rjmp .L20
	.loc 1 78 0
	lds r28,lastOneWirePin.2030
	lds r29,lastOneWirePin.2030+1
.LVL45:
.LBB22:
.LBB23:
	.loc 1 133 0
	sts internalData+1,r29
	sts internalData,r28
	.loc 1 134 0
	ldi r24,lo8(gs(writeNextBitWrapper))
	ldi r25,hi8(gs(writeNextBitWrapper))
	sts internalData+2+1,r25
	sts internalData+2,r24
	.loc 1 135 0
	movw r24,r28
	call makeOutputLow
.LVL46:
.LBB24:
.LBB25:
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL47:
.LBE25:
.LBE24:
	.loc 1 138 0
	movw r24,r28
	call makeInput
.LVL48:
	.loc 1 139 0
	ldi r24,lo8(gs(onWrite1BusIsSampled))
	ldi r25,hi8(gs(onWrite1BusIsSampled))
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL49:
	.loc 1 140 0
	call letTimer2GenerateInterruptEveryRoughly60us
.LVL50:
/* epilogue start */
.LBE23:
.LBE22:
	.loc 1 84 0
	pop r29
	pop r28
.LVL51:
.LBB27:
.LBB26:
	.loc 1 141 0
	jmp enableTimer2CaptureCompareAInterrupt
.LVL52:
.L20:
.LBE26:
.LBE27:
	.loc 1 80 0
	ldi r22,lo8(gs(writeNextBitWrapper))
	ldi r23,hi8(gs(writeNextBitWrapper))
.LVL53:
	lds r24,lastOneWirePin.2030
	lds r25,lastOneWirePin.2030+1
/* epilogue start */
	.loc 1 84 0
	pop r29
	pop r28
	.loc 1 80 0
	jmp write0BitToOneWire
.LVL54:
.L19:
.LBB28:
.LBB29:
	.loc 1 83 0
	lds r30,lastCallback.2029
	lds r31,lastCallback.2029+1
/* epilogue start */
.LBE29:
.LBE28:
	.loc 1 84 0
	pop r29
	pop r28
.LBB31:
.LBB30:
	.loc 1 83 0
	eijmp
.LVL55:
.LBE30:
.LBE31:
	.cfi_endproc
.LFE13:
	.size	writeByteToOneWireBus, .-writeByteToOneWireBus
	.section	.text.writeNextBitWrapper,"ax",@progbits
.global	writeNextBitWrapper
	.type	writeNextBitWrapper, @function
writeNextBitWrapper:
.LFB12:
	.loc 1 54 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 55 0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r24,0
	call writeByteToOneWireBus
.LVL56:
	ret
	.cfi_endproc
.LFE12:
	.size	writeNextBitWrapper, .-writeNextBitWrapper
	.section	.text.write1BitToOneWire,"ax",@progbits
.global	write1BitToOneWire
	.type	write1BitToOneWire, @function
write1BitToOneWire:
.LFB19:
	.loc 1 132 0
	.cfi_startproc
.LVL57:
	push r28
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI15:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 133 0
	ldi r30,lo8(internalData)
	ldi r31,hi8(internalData)
	std Z+1,r25
	st Z,r24
	.loc 1 134 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 135 0
	call makeOutputLow
.LVL58:
.LBB32:
.LBB33:
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL59:
.LBE33:
.LBE32:
	.loc 1 138 0
	movw r24,r28
	call makeInput
.LVL60:
	.loc 1 139 0
	ldi r24,lo8(gs(onWrite1BusIsSampled))
	ldi r25,hi8(gs(onWrite1BusIsSampled))
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL61:
	.loc 1 140 0
	call letTimer2GenerateInterruptEveryRoughly60us
.LVL62:
/* epilogue start */
	.loc 1 142 0
	pop r29
	pop r28
.LVL63:
	.loc 1 141 0
	jmp enableTimer2CaptureCompareAInterrupt
.LVL64:
	.cfi_endproc
.LFE19:
	.size	write1BitToOneWire, .-write1BitToOneWire
	.section	.text.awaitOneWirePresencePulse,"ax",@progbits
.global	awaitOneWirePresencePulse
	.type	awaitOneWirePresencePulse, @function
awaitOneWirePresencePulse:
.LFB22:
	.loc 1 159 0
	.cfi_startproc
.LVL65:
	push r28
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI17:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 168 0
	ldi r30,lo8(internalData)
	ldi r31,hi8(internalData)
	std Z+1,r25
	st Z,r24
	.loc 1 169 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 171 0
	ldi r24,lo8(gs(onPresencePulse500usHaveElapsedEvent))
	ldi r25,hi8(gs(onPresencePulse500usHaveElapsedEvent))
.LVL66:
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL67:
	.loc 1 172 0
	call letTimer2GenerateInterruptEvery500us
.LVL68:
	.loc 1 173 0
	call enableTimer2CaptureCompareAInterrupt
.LVL69:
.L28:
	.loc 1 179 0
	movw r24,r28
	call getPinState
.LVL70:
	cpse r24,__zero_reg__
	rjmp .L28
.LVL71:
	.loc 1 183 0
	ldi r20,lo8(gs(onPresencePulseEnded))
	ldi r21,hi8(gs(onPresencePulseEnded))
	ldi r22,lo8(3)
	movw r24,r28
	call enableExternalInterrupt
.LVL72:
/* epilogue start */
	.loc 1 184 0
	pop r29
	pop r28
.LVL73:
	ret
	.cfi_endproc
.LFE22:
	.size	awaitOneWirePresencePulse, .-awaitOneWirePresencePulse
	.section	.text.awaitOneWirePresencePulseWrapper,"ax",@progbits
.global	awaitOneWirePresencePulseWrapper
	.type	awaitOneWirePresencePulseWrapper, @function
awaitOneWirePresencePulseWrapper:
.LFB25:
	.loc 1 211 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 212 0
	ldi r30,lo8(internalDataFullReset)
	ldi r31,hi8(internalDataFullReset)
	ldd r22,Z+2
	ldd r23,Z+3
	ld r24,Z
	ldd r25,Z+1
	call awaitOneWirePresencePulse
.LVL74:
	ret
	.cfi_endproc
.LFE25:
	.size	awaitOneWirePresencePulseWrapper, .-awaitOneWirePresencePulseWrapper
	.section	.text.performOneWireReset,"ax",@progbits
.global	performOneWireReset
	.type	performOneWireReset, @function
performOneWireReset:
.LFB24:
	.loc 1 194 0
	.cfi_startproc
.LVL75:
	push r28
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 195 0
	sts isDevicePresent,__zero_reg__
	.loc 1 196 0
	ldi r30,lo8(internalData)
	ldi r31,hi8(internalData)
	std Z+1,r25
	st Z,r24
	.loc 1 197 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 199 0
	ldi r24,lo8(gs(onResetPulse500usHaveElapsedEvent))
	ldi r25,hi8(gs(onResetPulse500usHaveElapsedEvent))
.LVL76:
	call defineCallbackOnTimer2CaptureCompareAMatch
.LVL77:
	.loc 1 200 0
	movw r24,r28
	call makeOutputLow
.LVL78:
	.loc 1 206 0
	call letTimer2GenerateInterruptEvery500us
.LVL79:
	.loc 1 207 0
	call enableTimer2CaptureCompareAInterrupt
.LVL80:
/* epilogue start */
	.loc 1 208 0
	pop r29
	pop r28
.LVL81:
	ret
	.cfi_endproc
.LFE24:
	.size	performOneWireReset, .-performOneWireReset
	.section	.text.performFullOneWireReset,"ax",@progbits
.global	performFullOneWireReset
	.type	performFullOneWireReset, @function
performFullOneWireReset:
.LFB26:
	.loc 1 216 0
	.cfi_startproc
.LVL82:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 217 0
	ldi r30,lo8(internalDataFullReset)
	ldi r31,hi8(internalDataFullReset)
	std Z+1,r25
	st Z,r24
	.loc 1 218 0
	std Z+3,r23
	std Z+2,r22
	.loc 1 219 0
	ldi r22,lo8(gs(awaitOneWirePresencePulseWrapper))
	ldi r23,hi8(gs(awaitOneWirePresencePulseWrapper))
.LVL83:
	call performOneWireReset
.LVL84:
	ret
	.cfi_endproc
.LFE26:
	.size	performFullOneWireReset, .-performFullOneWireReset
	.section	.bss.lastOneWirePin.2030,"aw",@nobits
	.type	lastOneWirePin.2030, @object
	.size	lastOneWirePin.2030, 2
lastOneWirePin.2030:
	.zero	2
	.section	.bss.lastCallback.2029,"aw",@nobits
	.type	lastCallback.2029, @object
	.size	lastCallback.2029, 2
lastCallback.2029:
	.zero	2
	.section	.bss.lastByte.2027,"aw",@nobits
	.type	lastByte.2027, @object
	.size	lastByte.2027, 1
lastByte.2027:
	.zero	1
	.section	.bss.positionWithinByte.2028,"aw",@nobits
	.type	positionWithinByte.2028, @object
	.size	positionWithinByte.2028, 1
positionWithinByte.2028:
	.zero	1
	.section	.bss.readBit.2017,"aw",@nobits
	.type	readBit.2017, @object
	.size	readBit.2017, 1
readBit.2017:
	.zero	1
	.section	.bss.lastOneWirePin.2016,"aw",@nobits
	.type	lastOneWirePin.2016, @object
	.size	lastOneWirePin.2016, 2
lastOneWirePin.2016:
	.zero	2
	.section	.bss.lastCallback.2015,"aw",@nobits
	.type	lastCallback.2015, @object
	.size	lastCallback.2015, 2
lastCallback.2015:
	.zero	2
	.section	.bss.lastByte.2013,"aw",@nobits
	.type	lastByte.2013, @object
	.size	lastByte.2013, 2
lastByte.2013:
	.zero	2
	.section	.bss.posistionWithinByte.2014,"aw",@nobits
	.type	posistionWithinByte.2014, @object
	.size	posistionWithinByte.2014, 1
posistionWithinByte.2014:
	.zero	1
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
	.long	0xb91
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF78
	.byte	0xc
	.long	.LASF79
	.long	.LASF80
	.long	.Ldebug_ranges0+0x30
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
	.byte	0xa
	.byte	0x5
	.byte	0xb
	.long	0xe7
	.uleb128 0x8
	.long	.LASF10
	.byte	0x5
	.byte	0xd
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF11
	.byte	0x5
	.byte	0xe
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF12
	.byte	0x5
	.byte	0xf
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0x11
	.long	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0x12
	.long	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0x13
	.long	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xed
	.uleb128 0x9
	.long	0x30
	.uleb128 0xa
	.long	0xe7
	.uleb128 0xa
	.long	0x30
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x14
	.long	0x8a
	.uleb128 0xb
	.byte	0x1
	.long	0x3b
	.byte	0x5
	.byte	0x1d
	.long	0x12c
	.uleb128 0xc
	.long	.LASF17
	.byte	0
	.uleb128 0xc
	.long	.LASF18
	.byte	0x1
	.uleb128 0xc
	.long	.LASF19
	.byte	0x2
	.uleb128 0xc
	.long	.LASF20
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x5
	.byte	0x1
	.byte	0x4
	.long	0x15f
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0x6
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x7
	.long	0x77
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0x8
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x165
	.uleb128 0xa
	.long	0xfc
	.uleb128 0x3
	.long	.LASF24
	.byte	0x1
	.byte	0x9
	.long	0x12c
	.uleb128 0x3
	.long	.LASF25
	.byte	0x1
	.byte	0xb
	.long	0x16a
	.uleb128 0xd
	.long	.LASF81
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0x1bc
	.uleb128 0xe
	.long	.LASF29
	.byte	0x2
	.byte	0xff
	.long	0x1bc
	.uleb128 0xf
	.long	.LASF26
	.byte	0x2
	.word	0x101
	.long	0x1bc
	.uleb128 0xf
	.long	.LASF27
	.byte	0x2
	.word	0x105
	.long	0x57
	.uleb128 0x10
	.byte	0x1
	.long	.LASF82
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF28
	.uleb128 0x11
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.long	0x22a
	.uleb128 0xe
	.long	.LASF23
	.byte	0x1
	.byte	0x3a
	.long	0xf7
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.byte	0x3a
	.long	0x231
	.uleb128 0xe
	.long	.LASF21
	.byte	0x1
	.byte	0x3a
	.long	0x236
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0x3a
	.long	0x23b
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.byte	0x3c
	.long	0xed
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.byte	0x3d
	.long	0xed
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x3e
	.long	0x240
	.uleb128 0x12
	.long	.LASF35
	.byte	0x1
	.byte	0x3f
	.long	0x15f
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF36
	.uleb128 0xa
	.long	0x22a
	.uleb128 0xa
	.long	0x15f
	.uleb128 0xa
	.long	0x77
	.uleb128 0x9
	.long	0x77
	.uleb128 0x13
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x269
	.uleb128 0x14
	.long	.LVL0
	.long	0xb05
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x28d
	.uleb128 0x14
	.long	.LVL2
	.long	0xb05
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST0
	.byte	0x1
	.long	0x2ba
	.uleb128 0x14
	.long	.LVL4
	.long	0xb05
	.uleb128 0x14
	.long	.LVL5
	.long	0xb12
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.byte	0x1
	.long	0x320
	.uleb128 0x16
	.long	0x180
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x6e
	.long	0x30d
	.uleb128 0x17
	.long	0x18d
	.long	.LLST2
	.uleb128 0x18
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x19
	.long	0x198
	.long	.LLST3
	.uleb128 0x19
	.long	0x1a4
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL7
	.long	0xb12
	.uleb128 0x14
	.long	.LVL8
	.long	0xb05
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x344
	.uleb128 0x14
	.long	.LVL12
	.long	0xb1f
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x368
	.uleb128 0x14
	.long	.LVL13
	.long	0xb2c
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST5
	.byte	0x1
	.long	0x49b
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x1
	.byte	0x5c
	.long	0x236
	.long	.LLST6
	.uleb128 0x1c
	.long	.LASF44
	.byte	0x1
	.byte	0x5c
	.long	0x4a1
	.long	.LLST7
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x1
	.byte	0x5c
	.long	0x23b
	.long	.LLST8
	.uleb128 0x16
	.long	0x180
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.byte	0x5f
	.long	0x3e8
	.uleb128 0x17
	.long	0x18d
	.long	.LLST9
	.uleb128 0x18
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x19
	.long	0x198
	.long	.LLST10
	.uleb128 0x19
	.long	0x1a4
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x180
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0x61
	.long	0x421
	.uleb128 0x17
	.long	0x18d
	.long	.LLST12
	.uleb128 0x18
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x19
	.long	0x198
	.long	.LLST13
	.uleb128 0x19
	.long	0x1a4
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL15
	.long	0xb39
	.long	0x43a
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL17
	.long	0xb12
	.long	0x453
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL19
	.long	0xb46
	.long	0x46c
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL20
	.long	0xb53
	.long	0x488
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL21
	.long	0xb60
	.uleb128 0x14
	.long	.LVL22
	.long	0xb6d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x22a
	.uleb128 0xa
	.long	0x49b
	.uleb128 0x13
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x578
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x1
	.byte	0x17
	.long	0x57e
	.long	.LLST15
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x1
	.byte	0x17
	.long	0x231
	.long	.LLST16
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x1
	.byte	0x17
	.long	0x236
	.long	.LLST17
	.uleb128 0x1c
	.long	.LASF47
	.byte	0x1
	.byte	0x17
	.long	0x23b
	.long	.LLST18
	.uleb128 0x1f
	.long	.LASF32
	.byte	0x1
	.byte	0x19
	.long	0x578
	.byte	0x5
	.byte	0x3
	.long	lastByte.2013
	.uleb128 0x1f
	.long	.LASF48
	.byte	0x1
	.byte	0x1a
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	posistionWithinByte.2014
	.uleb128 0x1f
	.long	.LASF34
	.byte	0x1
	.byte	0x1b
	.long	0x77
	.byte	0x5
	.byte	0x3
	.long	lastCallback.2015
	.uleb128 0x1f
	.long	.LASF35
	.byte	0x1
	.byte	0x1c
	.long	0x15f
	.byte	0x5
	.byte	0x3
	.long	lastOneWirePin.2016
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.byte	0x1d
	.long	0x22a
	.byte	0x5
	.byte	0x3
	.long	readBit.2017
	.uleb128 0x20
	.long	.LVL31
	.long	0x368
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	readBit.2017
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	readNextBitWrapper
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x30
	.uleb128 0xa
	.long	0x578
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5cb
	.uleb128 0x20
	.long	.LVL34
	.long	0x4a6
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST19
	.byte	0x1
	.long	0x64b
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x1
	.byte	0x72
	.long	0x236
	.long	.LLST20
	.uleb128 0x1c
	.long	.LASF52
	.byte	0x1
	.byte	0x72
	.long	0x23b
	.long	.LLST21
	.uleb128 0x1d
	.long	.LVL37
	.long	0xb53
	.long	0x61f
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL38
	.long	0xb60
	.uleb128 0x1d
	.long	.LVL39
	.long	0xb39
	.long	0x641
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL40
	.long	0xb6d
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.byte	0x1
	.long	0x670
	.uleb128 0xe
	.long	.LASF21
	.byte	0x1
	.byte	0x83
	.long	0x236
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.byte	0x83
	.long	0x23b
	.byte	0
	.uleb128 0x21
	.long	0x1c3
	.long	.LFB13
	.long	.LFE13
	.long	.LLST22
	.long	0x80c
	.uleb128 0x17
	.long	0x1d1
	.long	.LLST23
	.uleb128 0x17
	.long	0x1dc
	.long	.LLST24
	.uleb128 0x17
	.long	0x1e7
	.long	.LLST25
	.uleb128 0x17
	.long	0x1f2
	.long	.LLST26
	.uleb128 0x22
	.long	0x1fd
	.byte	0x5
	.byte	0x3
	.long	lastByte.2027
	.uleb128 0x22
	.long	0x208
	.byte	0x5
	.byte	0x3
	.long	positionWithinByte.2028
	.uleb128 0x22
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	lastCallback.2029
	.uleb128 0x22
	.long	0x21e
	.byte	0x5
	.byte	0x3
	.long	lastOneWirePin.2030
	.uleb128 0x23
	.long	0x64b
	.long	.LBB22
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4e
	.long	0x791
	.uleb128 0x24
	.long	0x664
	.uleb128 0x17
	.long	0x659
	.long	.LLST27
	.uleb128 0x16
	.long	0x180
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0x89
	.long	0x72f
	.uleb128 0x17
	.long	0x18d
	.long	.LLST28
	.uleb128 0x18
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x19
	.long	0x198
	.long	.LLST29
	.uleb128 0x19
	.long	0x1a4
	.long	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL46
	.long	0xb39
	.long	0x748
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL48
	.long	0xb12
	.long	0x761
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL49
	.long	0xb53
	.long	0x77d
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL50
	.long	0xb60
	.uleb128 0x25
	.long	.LVL52
	.byte	0x1
	.long	0xb6d
	.byte	0
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x18
	.long	0x7f2
	.uleb128 0x27
	.long	0x1d1
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.uleb128 0x17
	.long	0x1dc
	.long	.LLST31
	.uleb128 0x17
	.long	0x1e7
	.long	.LLST32
	.uleb128 0x17
	.long	0x1f2
	.long	.LLST33
	.uleb128 0x28
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x22
	.long	0x1fd
	.byte	0x5
	.byte	0x3
	.long	lastByte.2027
	.uleb128 0x22
	.long	0x208
	.byte	0x5
	.byte	0x3
	.long	positionWithinByte.2028
	.uleb128 0x22
	.long	0x213
	.byte	0x5
	.byte	0x3
	.long	lastCallback.2029
	.uleb128 0x22
	.long	0x21e
	.byte	0x5
	.byte	0x3
	.long	lastOneWirePin.2030
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LVL54
	.byte	0x1
	.long	0x5cb
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	writeNextBitWrapper
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x84f
	.uleb128 0x20
	.long	.LVL56
	.long	0x1c3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x64b
	.long	.LFB19
	.long	.LFE19
	.long	.LLST34
	.byte	0x1
	.long	0x912
	.uleb128 0x17
	.long	0x659
	.long	.LLST35
	.uleb128 0x17
	.long	0x664
	.long	.LLST36
	.uleb128 0x16
	.long	0x180
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0x89
	.long	0x8b0
	.uleb128 0x17
	.long	0x18d
	.long	.LLST37
	.uleb128 0x18
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x19
	.long	0x198
	.long	.LLST38
	.uleb128 0x19
	.long	0x1a4
	.long	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL58
	.long	0xb39
	.long	0x8c9
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL60
	.long	0xb12
	.long	0x8e2
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL61
	.long	0xb53
	.long	0x8fe
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL62
	.long	0xb60
	.uleb128 0x25
	.long	.LVL64
	.byte	0x1
	.long	0xb6d
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST40
	.byte	0x1
	.long	0x9c9
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x1
	.byte	0x9e
	.long	0x236
	.long	.LLST41
	.uleb128 0x1c
	.long	.LASF57
	.byte	0x1
	.byte	0x9e
	.long	0x77
	.long	.LLST42
	.uleb128 0x2b
	.long	.LASF58
	.byte	0x1
	.byte	0xaf
	.long	0x22a
	.long	.LLST43
	.uleb128 0x1d
	.long	.LVL67
	.long	0xb53
	.long	0x975
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL68
	.long	0xb7a
	.uleb128 0x14
	.long	.LVL69
	.long	0xb6d
	.uleb128 0x1d
	.long	.LVL70
	.long	0xb46
	.long	0x9a0
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL72
	.long	0xb87
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
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
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9ed
	.uleb128 0x14
	.long	.LVL74
	.long	0x912
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST44
	.byte	0x1
	.long	0xa6d
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x1
	.byte	0xc1
	.long	0x236
	.long	.LLST45
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.byte	0xc1
	.long	0x23b
	.long	.LLST46
	.uleb128 0x1d
	.long	.LVL77
	.long	0xb53
	.long	0xa41
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL78
	.long	0xb39
	.long	0xa5a
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL79
	.long	0xb7a
	.uleb128 0x14
	.long	.LVL80
	.long	0xb6d
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xaca
	.uleb128 0x1c
	.long	.LASF21
	.byte	0x1
	.byte	0xd7
	.long	0x236
	.long	.LLST47
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x1
	.byte	0xd7
	.long	0x23b
	.long	.LLST48
	.uleb128 0x20
	.long	.LVL84
	.long	0x9ed
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x2c
	.long	.LASF64
	.byte	0x1
	.byte	0xd
	.long	0x16a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internalData
	.uleb128 0x2c
	.long	.LASF65
	.byte	0x1
	.byte	0xe
	.long	0x175
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internalDataFullReset
	.uleb128 0x2c
	.long	.LASF66
	.byte	0x1
	.byte	0x10
	.long	0xb00
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	isDevicePresent
	.uleb128 0x9
	.long	0x22a
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF67
	.long	.LASF67
	.byte	0x6
	.byte	0x29
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF68
	.long	.LASF68
	.byte	0x5
	.byte	0x24
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF69
	.long	.LASF69
	.byte	0x4
	.byte	0xf
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF70
	.long	.LASF70
	.byte	0x5
	.byte	0x29
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF71
	.long	.LASF71
	.byte	0x5
	.byte	0x26
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF72
	.long	.LASF72
	.byte	0x5
	.byte	0x2a
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF73
	.long	.LASF73
	.byte	0x6
	.byte	0x2d
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF74
	.long	.LASF74
	.byte	0x6
	.byte	0x30
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF75
	.long	.LASF75
	.byte	0x6
	.byte	0x2c
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF76
	.long	.LASF76
	.byte	0x6
	.byte	0x2e
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.long	.LASF77
	.long	.LASF77
	.byte	0x5
	.byte	0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.long	.LFB23
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI1
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST1:
	.long	.LFB16
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI3
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
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
	.long	.LFB15
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI9
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
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
	.long	.LFE15
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
	.long	.LFE15
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
	.long	.LFE15
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
	.long	.LVL26
	.long	.LVL28
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL26
	.long	.LVL30
	.word	0x1
	.byte	0x66
	.long	.LVL30
	.long	.LVL32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33-1
	.word	0x1
	.byte	0x66
	.long	.LVL33-1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL26
	.long	.LVL29
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33-1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LFB17
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI11
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST20:
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL41
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL35
	.long	.LVL37-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL37-1
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LFB13
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST23:
	.long	.LVL42
	.long	.LVL43
	.word	0x1
	.byte	0x68
	.long	.LVL43
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL42
	.long	.LVL46-1
	.word	0x1
	.byte	0x66
	.long	.LVL46-1
	.long	.LVL52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x66
	.long	.LVL53
	.long	.LVL54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55-1
	.word	0x1
	.byte	0x66
	.long	.LVL55-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL42
	.long	.LVL46-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46-1
	.long	.LVL52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL52
	.long	.LVL54-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54-1
	.long	.LVL54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL42
	.long	.LVL44
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LVL54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL45
	.long	.LVL51
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST28:
	.long	.LVL46
	.long	.LVL47
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST29:
	.long	.LVL46
	.long	.LVL47
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST30:
	.long	.LVL46
	.long	.LVL47
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL54
	.long	.LVL55-1
	.word	0x1
	.byte	0x66
	.long	.LVL55-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL54
	.long	.LVL55-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL54
	.long	.LVL55-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LFB19
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI15
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST35:
	.long	.LVL57
	.long	.LVL58-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL58-1
	.long	.LVL63
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL57
	.long	.LVL58-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL58-1
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST38:
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST39:
	.long	.LVL58
	.long	.LVL59
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LFB22
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI17
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST41:
	.long	.LVL65
	.long	.LVL66
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LVL73
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL73
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL65
	.long	.LVL67-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL67-1
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL69
	.long	.LVL71
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
	.long	.LFE22
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LFB24
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI19
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST45:
	.long	.LVL75
	.long	.LVL76
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL81
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL75
	.long	.LVL77-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77-1
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL82
	.long	.LVL84-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84-1
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL82
	.long	.LVL83
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LVL84-1
	.word	0x5
	.byte	0x3
	.long	internalDataFullReset+2
	.long	.LVL84-1
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x9c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB22
	.long	.LBE22
	.long	.LBB27
	.long	.LBE27
	.long	0
	.long	0
	.long	.LBB28
	.long	.LBE28
	.long	.LBB31
	.long	.LBE31
	.long	0
	.long	0
	.long	.LFB14
	.long	.LFE14
	.long	.LFB18
	.long	.LFE18
	.long	.LFB23
	.long	.LFE23
	.long	.LFB16
	.long	.LFE16
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB15
	.long	.LFE15
	.long	.LFB11
	.long	.LFE11
	.long	.LFB10
	.long	.LFE10
	.long	.LFB17
	.long	.LFE17
	.long	.LFB13
	.long	.LFE13
	.long	.LFB12
	.long	.LFE12
	.long	.LFB19
	.long	.LFE19
	.long	.LFB22
	.long	.LFE22
	.long	.LFB25
	.long	.LFE25
	.long	.LFB24
	.long	.LFE24
	.long	.LFB26
	.long	.LFE26
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"onByteRead"
.LASF9:
	.string	"CallbackFunctionType"
.LASF39:
	.string	"onResetPulse500usHaveElapsedEvent"
.LASF82:
	.string	"__builtin_avr_delay_cycles"
.LASF26:
	.string	"__tmp"
.LASF55:
	.string	"writeNextBitWrapper"
.LASF78:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF69:
	.string	"deathTrap"
.LASF17:
	.string	"ExternalInteruptPolarity_LowLevel"
.LASF74:
	.string	"letTimer2GenerateInterruptEveryRoughly60us"
.LASF24:
	.string	"OneWireStatemachinesInternalData_t"
.LASF68:
	.string	"makeInput"
.LASF4:
	.string	"uint8_t"
.LASF60:
	.string	"performOneWireReset"
.LASF11:
	.string	"PINx"
.LASF38:
	.string	"onWrite1BusIsSampled"
.LASF18:
	.string	"ExternalInteruptPolarity_AnyChange"
.LASF71:
	.string	"makeOutputLow"
.LASF53:
	.string	"writeByteToOneWireBus"
.LASF64:
	.string	"internalData"
.LASF29:
	.string	"__us"
.LASF66:
	.string	"isDevicePresent"
.LASF44:
	.string	"storeReadBitHere"
.LASF7:
	.string	"long long int"
.LASF33:
	.string	"positionWithinByte"
.LASF43:
	.string	"readBitFromOneWire"
.LASF3:
	.string	"long int"
.LASF25:
	.string	"PerformFullOneWireResetInternalData_t"
.LASF63:
	.string	"onFullResetComplete"
.LASF62:
	.string	"performFullOneWireReset"
.LASF23:
	.string	"byte"
.LASF73:
	.string	"defineCallbackOnTimer2CaptureCompareAMatch"
.LASF14:
	.string	"INTx"
.LASF61:
	.string	"onResetComplete"
.LASF21:
	.string	"onewirepin"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"lastCallback"
.LASF50:
	.string	"readNextBitWrapper"
.LASF0:
	.string	"signed char"
.LASF81:
	.string	"_delay_us"
.LASF8:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint32_t"
.LASF45:
	.string	"onBitRead"
.LASF2:
	.string	"unsigned int"
.LASF19:
	.string	"ExternalInteruptPolarity_FallingEdge"
.LASF40:
	.string	"onWrite0BitBusMustGoHigh"
.LASF76:
	.string	"letTimer2GenerateInterruptEvery500us"
.LASF16:
	.string	"GPIOPin_t"
.LASF48:
	.string	"posistionWithinByte"
.LASF41:
	.string	"onPresencePulse500usHaveElapsedEvent"
.LASF59:
	.string	"awaitOneWirePresencePulseWrapper"
.LASF51:
	.string	"write0BitToOneWire"
.LASF36:
	.string	"_Bool"
.LASF58:
	.string	"isEdgeFalling"
.LASF35:
	.string	"lastOneWirePin"
.LASF13:
	.string	"pinNumber"
.LASF6:
	.string	"long unsigned int"
.LASF28:
	.string	"double"
.LASF15:
	.string	"EICRx"
.LASF37:
	.string	"onReadBitEnsureLongEnoughIdleTime"
.LASF10:
	.string	"DDRx"
.LASF32:
	.string	"lastByte"
.LASF77:
	.string	"enableExternalInterrupt"
.LASF70:
	.string	"disableExternalInterrupt"
.LASF67:
	.string	"stopTimer2"
.LASF75:
	.string	"enableTimer2CaptureCompareAInterrupt"
.LASF46:
	.string	"readByteFromOneWireBus"
.LASF31:
	.string	"onByteSent"
.LASF27:
	.string	"__ticks_dc"
.LASF56:
	.string	"awaitOneWirePresencePulse"
.LASF80:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\AVR Timer + OneWire + DS18B20 18.12.19 Bug fixed - restructuring ongoing\\\\Timer\\\\Timer\\\\Debug"
.LASF22:
	.string	"callback"
.LASF52:
	.string	"onBitWritten"
.LASF54:
	.string	"write1BitToOneWire"
.LASF79:
	.string	".././OneWire.c"
.LASF65:
	.string	"internalDataFullReset"
.LASF57:
	.string	"onPresencePulseReceived"
.LASF72:
	.string	"getPinState"
.LASF49:
	.string	"readBit"
.LASF42:
	.string	"onPresencePulseEnded"
.LASF30:
	.string	"startAtZero"
.LASF12:
	.string	"PORTx"
.LASF20:
	.string	"ExternalInteruptPolarity_RisingEdge"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
