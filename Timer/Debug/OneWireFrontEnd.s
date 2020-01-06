	.file	"OneWireFrontEnd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sendMatchRomCommand,"ax",@progbits
.global	sendMatchRomCommand
	.type	sendMatchRomCommand, @function
sendMatchRomCommand:
.LFB15:
	.file 1 ".././OneWireFrontEnd.c"
	.loc 1 56 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 57 0
	ldi r30,lo8(internalDataOneWireFrontend)
	ldi r31,hi8(internalDataOneWireFrontend)
	std Z+3,r25
	std Z+2,r24
	.loc 1 58 0
	std Z+5,r21
	std Z+4,r20
	.loc 1 59 0
	std Z+1,r23
	st Z,r22
	.loc 1 61 0
	ldi r22,lo8(gs(onReadyToSendMatchRomCommand))
	ldi r23,hi8(gs(onReadyToSendMatchRomCommand))
.LVL1:
	jmp performFullOneWireReset
.LVL2:
	.cfi_endproc
.LFE15:
	.size	sendMatchRomCommand, .-sendMatchRomCommand
	.section	.text.sendSkipRomCommand,"ax",@progbits
.global	sendSkipRomCommand
	.type	sendSkipRomCommand, @function
sendSkipRomCommand:
.LFB16:
	.loc 1 65 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 66 0
	ldi r30,lo8(internalDataOneWireFrontend)
	ldi r31,hi8(internalDataOneWireFrontend)
	std Z+3,r25
	std Z+2,r24
	.loc 1 67 0
	std Z+5,r23
	std Z+4,r22
	.loc 1 69 0
	ldi r22,lo8(gs(onReadyToSendSkipRomCommand))
	ldi r23,hi8(gs(onReadyToSendSkipRomCommand))
.LVL4:
	call performFullOneWireReset
.LVL5:
	ret
	.cfi_endproc
.LFE16:
	.size	sendSkipRomCommand, .-sendSkipRomCommand
	.section	.text.readByteFromOneWireBus,"ax",@progbits
.global	readByteFromOneWireBus
	.type	readByteFromOneWireBus, @function
readByteFromOneWireBus:
.LFB18:
	.loc 1 78 0
	.cfi_startproc
.LVL6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 87 0
	tst r22
	breq .L4
	.loc 1 89 0
	sts posistionWithinByte.2046,__zero_reg__
	.loc 1 90 0
	sts lastByte.2045+1,r25
	sts lastByte.2045,r24
	.loc 1 91 0
	movw r30,r24
	st Z,__zero_reg__
	.loc 1 92 0
	sts lastCallback.2047+1,r19
	sts lastCallback.2047,r18
	.loc 1 93 0
	sts lastOneWirePin.2048+1,r21
	sts lastOneWirePin.2048,r20
	rjmp .L5
.L4:
	.loc 1 97 0
	lds r30,lastByte.2045
	lds r31,lastByte.2045+1
	lds r18,posistionWithinByte.2046
.LVL7:
	lds r24,readBit.2049
.LVL8:
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
	.loc 1 98 0
	ldi r24,lo8(1)
	add r24,r18
	sts posistionWithinByte.2046,r24
	.loc 1 101 0
	cpi r24,lo8(8)
	brsh .L6
.L5:
	.loc 1 102 0
	ldi r20,lo8(gs(readNextBitWrapper))
	ldi r21,hi8(gs(readNextBitWrapper))
.LVL9:
	ldi r22,lo8(readBit.2049)
	ldi r23,hi8(readBit.2049)
.LVL10:
	lds r24,lastOneWirePin.2048
	lds r25,lastOneWirePin.2048+1
	call readBitFromOneWire
.LVL11:
	ret
.LVL12:
.L6:
	.loc 1 104 0
	lds r30,lastCallback.2047
	lds r31,lastCallback.2047+1
	icall
.LVL13:
	ret
	.cfi_endproc
.LFE18:
	.size	readByteFromOneWireBus, .-readByteFromOneWireBus
	.section	.text.readNextBitWrapper,"ax",@progbits
.global	readNextBitWrapper
	.type	readNextBitWrapper, @function
readNextBitWrapper:
.LFB17:
	.loc 1 73 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 74 0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r24,0
	ldi r25,0
	call readByteFromOneWireBus
.LVL14:
	ret
	.cfi_endproc
.LFE17:
	.size	readNextBitWrapper, .-readNextBitWrapper
	.section	.text.writeByteToOneWireBus,"ax",@progbits
.global	writeByteToOneWireBus
	.type	writeByteToOneWireBus, @function
writeByteToOneWireBus:
.LFB20:
	.loc 1 113 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 121 0
	tst r22
	breq .L10
	.loc 1 123 0
	sts positionWithinByte.2060,__zero_reg__
	.loc 1 124 0
	sts lastByte.2059,r24
	.loc 1 125 0
	sts lastCallback.2061+1,r19
	sts lastCallback.2061,r18
	.loc 1 126 0
	sts lastOneWirePin.2062+1,r21
	sts lastOneWirePin.2062,r20
.L10:
	.loc 1 129 0
	lds r24,positionWithinByte.2060
.LVL16:
	cpi r24,lo8(8)
	brsh .L11
	.loc 1 131 0
	lds r24,lastByte.2059
	lds r18,positionWithinByte.2060
.LVL17:
	ldi r25,lo8(1)
	add r25,r18
	sts positionWithinByte.2060,r25
	ldi r25,0
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r18
	brpl 1b
	.loc 1 132 0
	ldi r22,lo8(gs(writeNextBitWrapper))
	ldi r23,hi8(gs(writeNextBitWrapper))
.LVL18:
	.loc 1 131 0
	sbrs r24,0
	rjmp .L12
	.loc 1 132 0
	lds r24,lastOneWirePin.2062
	lds r25,lastOneWirePin.2062+1
	jmp write1BitToOneWire
.LVL19:
.L12:
	.loc 1 134 0
	lds r24,lastOneWirePin.2062
	lds r25,lastOneWirePin.2062+1
	jmp write0BitToOneWire
.LVL20:
.L11:
.LBB4:
.LBB5:
	.loc 1 137 0
	lds r30,lastCallback.2061
	lds r31,lastCallback.2061+1
	ijmp
.LVL21:
.LBE5:
.LBE4:
	.cfi_endproc
.LFE20:
	.size	writeByteToOneWireBus, .-writeByteToOneWireBus
	.section	.text.sendID,"ax",@progbits
.global	sendID
	.type	sendID, @function
sendID:
.LFB11:
	.loc 1 29 0
	.cfi_startproc
.LVL22:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 32 0
	cpse r24,__zero_reg__
	.loc 1 33 0
	sts positionWithinID.2017,__zero_reg__
.L18:
	.loc 1 34 0
	lds r24,positionWithinID.2017
.LVL23:
	cpi r24,lo8(8)
	brsh .L19
	.loc 1 35 0
	ldi r30,lo8(internalDataOneWireFrontend)
	ldi r31,hi8(internalDataOneWireFrontend)
	ldd r20,Z+2
	ldd r21,Z+3
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	lds r24,positionWithinID.2017
	ldi r25,lo8(1)
	add r25,r24
	sts positionWithinID.2017,r25
	add r30,r24
	adc r31,__zero_reg__
	ldi r18,lo8(gs(sendNextIDByte))
	ldi r19,hi8(gs(sendNextIDByte))
	ldi r22,lo8(1)
	ld r24,Z
	call writeByteToOneWireBus
.LVL24:
	ret
.L19:
	.loc 1 37 0
	lds r30,internalDataOneWireFrontend+4
	lds r31,internalDataOneWireFrontend+4+1
	icall
.LVL25:
	ret
	.cfi_endproc
.LFE11:
	.size	sendID, .-sendID
	.section	.text.sendNextIDByte,"ax",@progbits
.global	sendNextIDByte
	.type	sendNextIDByte, @function
sendNextIDByte:
.LFB10:
	.loc 1 24 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 25 0
	ldi r24,0
	call sendID
.LVL26:
	ret
	.cfi_endproc
.LFE10:
	.size	sendNextIDByte, .-sendNextIDByte
	.section	.text.onMatchRomCommandSent,"ax",@progbits
.global	onMatchRomCommandSent
	.type	onMatchRomCommandSent, @function
onMatchRomCommandSent:
.LFB12:
	.loc 1 41 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 42 0
	ldi r24,lo8(1)
	call sendID
.LVL27:
	ret
	.cfi_endproc
.LFE12:
	.size	onMatchRomCommandSent, .-onMatchRomCommandSent
	.section	.text.onReadyToSendMatchRomCommand,"ax",@progbits
.global	onReadyToSendMatchRomCommand
	.type	onReadyToSendMatchRomCommand, @function
onReadyToSendMatchRomCommand:
.LFB13:
	.loc 1 46 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 47 0
	lds r20,internalDataOneWireFrontend+2
	lds r21,internalDataOneWireFrontend+2+1
	ldi r18,lo8(gs(onMatchRomCommandSent))
	ldi r19,hi8(gs(onMatchRomCommandSent))
	ldi r22,lo8(1)
	ldi r24,lo8(85)
	call writeByteToOneWireBus
.LVL28:
	ret
	.cfi_endproc
.LFE13:
	.size	onReadyToSendMatchRomCommand, .-onReadyToSendMatchRomCommand
	.section	.text.onReadyToSendSkipRomCommand,"ax",@progbits
.global	onReadyToSendSkipRomCommand
	.type	onReadyToSendSkipRomCommand, @function
onReadyToSendSkipRomCommand:
.LFB14:
	.loc 1 51 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 52 0
	ldi r30,lo8(internalDataOneWireFrontend)
	ldi r31,hi8(internalDataOneWireFrontend)
	ldd r18,Z+4
	ldd r19,Z+5
	ldd r20,Z+2
	ldd r21,Z+3
	ldi r22,lo8(1)
	ldi r24,lo8(-52)
	call writeByteToOneWireBus
.LVL29:
	ret
	.cfi_endproc
.LFE14:
	.size	onReadyToSendSkipRomCommand, .-onReadyToSendSkipRomCommand
	.section	.text.writeNextBitWrapper,"ax",@progbits
.global	writeNextBitWrapper
	.type	writeNextBitWrapper, @function
writeNextBitWrapper:
.LFB19:
	.loc 1 108 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 109 0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r24,0
	call writeByteToOneWireBus
.LVL30:
	ret
	.cfi_endproc
.LFE19:
	.size	writeNextBitWrapper, .-writeNextBitWrapper
	.section	.bss.lastOneWirePin.2062,"aw",@nobits
	.type	lastOneWirePin.2062, @object
	.size	lastOneWirePin.2062, 2
lastOneWirePin.2062:
	.zero	2
	.section	.bss.lastCallback.2061,"aw",@nobits
	.type	lastCallback.2061, @object
	.size	lastCallback.2061, 2
lastCallback.2061:
	.zero	2
	.section	.bss.lastByte.2059,"aw",@nobits
	.type	lastByte.2059, @object
	.size	lastByte.2059, 1
lastByte.2059:
	.zero	1
	.section	.bss.positionWithinByte.2060,"aw",@nobits
	.type	positionWithinByte.2060, @object
	.size	positionWithinByte.2060, 1
positionWithinByte.2060:
	.zero	1
	.section	.bss.readBit.2049,"aw",@nobits
	.type	readBit.2049, @object
	.size	readBit.2049, 1
readBit.2049:
	.zero	1
	.section	.bss.lastOneWirePin.2048,"aw",@nobits
	.type	lastOneWirePin.2048, @object
	.size	lastOneWirePin.2048, 2
lastOneWirePin.2048:
	.zero	2
	.section	.bss.lastCallback.2047,"aw",@nobits
	.type	lastCallback.2047, @object
	.size	lastCallback.2047, 2
lastCallback.2047:
	.zero	2
	.section	.bss.lastByte.2045,"aw",@nobits
	.type	lastByte.2045, @object
	.size	lastByte.2045, 2
lastByte.2045:
	.zero	2
	.section	.bss.posistionWithinByte.2046,"aw",@nobits
	.type	posistionWithinByte.2046, @object
	.size	posistionWithinByte.2046, 1
posistionWithinByte.2046:
	.zero	1
	.section	.bss.positionWithinID.2017,"aw",@nobits
	.type	positionWithinID.2017, @object
	.size	positionWithinID.2017, 1
positionWithinID.2017:
	.zero	1
	.comm	internalDataOneWireFrontend,6,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././marcsLanguageExtension.h"
	.file 4 ".././GPIO Pin.h"
	.file 5 ".././OneWireLowLevel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x668
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF51
	.byte	0xc
	.long	.LASF52
	.long	.LASF53
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
	.byte	0x1
	.byte	0x6
	.long	0x10d
	.uleb128 0xc
	.long	.LASF15
	.byte	0x33
	.uleb128 0xc
	.long	.LASF16
	.byte	0x55
	.uleb128 0xc
	.long	.LASF17
	.byte	0xcc
	.byte	0
	.uleb128 0x7
	.byte	0x6
	.byte	0x1
	.byte	0xc
	.long	0x140
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0xe
	.long	0x140
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0xf
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.byte	0x10
	.long	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xde
	.uleb128 0x5
	.byte	0x2
	.long	0x14c
	.uleb128 0xa
	.long	0xe3
	.uleb128 0x3
	.long	.LASF21
	.byte	0x1
	.byte	0x11
	.long	0x10d
	.uleb128 0xd
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.byte	0x1
	.long	0x1c3
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0x70
	.long	0xde
	.uleb128 0xe
	.long	.LASF23
	.byte	0x1
	.byte	0x70
	.long	0x1ca
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x70
	.long	0x1cf
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0x70
	.long	0x1d4
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x72
	.long	0xd4
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x73
	.long	0xd4
	.uleb128 0xf
	.long	.LASF27
	.byte	0x1
	.byte	0x74
	.long	0x1d9
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x75
	.long	0x146
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF29
	.uleb128 0xa
	.long	0x1c3
	.uleb128 0xa
	.long	0x146
	.uleb128 0xa
	.long	0x6c
	.uleb128 0x9
	.long	0x6c
	.uleb128 0x10
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x24b
	.uleb128 0x11
	.long	.LASF19
	.byte	0x1
	.byte	0x37
	.long	0x1cf
	.long	.LLST0
	.uleb128 0x11
	.long	.LASF30
	.byte	0x1
	.byte	0x37
	.long	0x24b
	.long	.LLST1
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.byte	0x37
	.long	0x1d4
	.long	.LLST2
	.uleb128 0x12
	.long	.LVL2
	.byte	0x1
	.long	0x637
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onReadyToSendMatchRomCommand
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x140
	.uleb128 0x10
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2ad
	.uleb128 0x11
	.long	.LASF19
	.byte	0x1
	.byte	0x40
	.long	0x1cf
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF34
	.byte	0x1
	.byte	0x40
	.long	0x1d4
	.long	.LLST4
	.uleb128 0x14
	.long	.LVL5
	.long	0x637
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onReadyToSendSkipRomCommand
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x37f
	.uleb128 0x11
	.long	.LASF22
	.byte	0x1
	.byte	0x4d
	.long	0x385
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF23
	.byte	0x1
	.byte	0x4d
	.long	0x1ca
	.long	.LLST6
	.uleb128 0x11
	.long	.LASF19
	.byte	0x1
	.byte	0x4d
	.long	0x1cf
	.long	.LLST7
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1
	.byte	0x4d
	.long	0x1d4
	.long	.LLST8
	.uleb128 0x16
	.long	.LASF25
	.byte	0x1
	.byte	0x4f
	.long	0x37f
	.byte	0x5
	.byte	0x3
	.long	lastByte.2045
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.byte	0x50
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	posistionWithinByte.2046
	.uleb128 0x16
	.long	.LASF27
	.byte	0x1
	.byte	0x51
	.long	0x6c
	.byte	0x5
	.byte	0x3
	.long	lastCallback.2047
	.uleb128 0x16
	.long	.LASF28
	.byte	0x1
	.byte	0x52
	.long	0x146
	.byte	0x5
	.byte	0x3
	.long	lastOneWirePin.2048
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.byte	0x53
	.long	0x1c3
	.byte	0x5
	.byte	0x3
	.long	readBit.2049
	.uleb128 0x14
	.long	.LVL11
	.long	0x644
	.uleb128 0x13
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	readBit.2049
	.uleb128 0x13
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
	.long	0x37f
	.uleb128 0x10
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3d2
	.uleb128 0x14
	.long	.LVL14
	.long	0x2ad
	.uleb128 0x13
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
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
	.uleb128 0x17
	.long	0x15c
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x4c8
	.uleb128 0x18
	.long	0x16a
	.long	.LLST9
	.uleb128 0x18
	.long	0x175
	.long	.LLST10
	.uleb128 0x18
	.long	0x180
	.long	.LLST11
	.uleb128 0x18
	.long	0x18b
	.long	.LLST12
	.uleb128 0x19
	.long	0x196
	.byte	0x5
	.byte	0x3
	.long	lastByte.2059
	.uleb128 0x19
	.long	0x1a1
	.byte	0x5
	.byte	0x3
	.long	positionWithinByte.2060
	.uleb128 0x19
	.long	0x1ac
	.byte	0x5
	.byte	0x3
	.long	lastCallback.2061
	.uleb128 0x19
	.long	0x1b7
	.byte	0x5
	.byte	0x3
	.long	lastOneWirePin.2062
	.uleb128 0x1a
	.long	.LBB4
	.long	.LBE4
	.long	0x4a0
	.uleb128 0x1b
	.long	0x16a
	.byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.uleb128 0x18
	.long	0x175
	.long	.LLST13
	.uleb128 0x18
	.long	0x180
	.long	.LLST14
	.uleb128 0x18
	.long	0x18b
	.long	.LLST15
	.uleb128 0x1c
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x19
	.long	0x196
	.byte	0x5
	.byte	0x3
	.long	lastByte.2059
	.uleb128 0x19
	.long	0x1a1
	.byte	0x5
	.byte	0x3
	.long	positionWithinByte.2060
	.uleb128 0x19
	.long	0x1ac
	.byte	0x5
	.byte	0x3
	.long	lastCallback.2061
	.uleb128 0x19
	.long	0x1b7
	.byte	0x5
	.byte	0x3
	.long	lastOneWirePin.2062
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL19
	.byte	0x1
	.long	0x651
	.long	0x4bd
	.uleb128 0x13
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
	.uleb128 0x1e
	.long	.LVL20
	.byte	0x1
	.long	0x65e
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x520
	.uleb128 0x11
	.long	.LASF23
	.byte	0x1
	.byte	0x1c
	.long	0x1ca
	.long	.LLST16
	.uleb128 0x16
	.long	.LASF41
	.byte	0x1
	.byte	0x1e
	.long	0xd4
	.byte	0x5
	.byte	0x3
	.long	positionWithinID.2017
	.uleb128 0x14
	.long	.LVL24
	.long	0x15c
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	sendNextIDByte
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x54a
	.uleb128 0x14
	.long	.LVL26
	.long	0x4c8
	.uleb128 0x13
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x574
	.uleb128 0x14
	.long	.LVL27
	.long	0x4c8
	.uleb128 0x13
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x5b2
	.uleb128 0x14
	.long	.LVL28
	.long	0x15c
	.uleb128 0x13
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onMatchRomCommandSent
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x5e2
	.uleb128 0x14
	.long	.LVL29
	.long	0x15c
	.uleb128 0x13
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xcc
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x625
	.uleb128 0x14
	.long	.LVL30
	.long	0x15c
	.uleb128 0x13
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
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
	.uleb128 0x1f
	.long	.LASF55
	.byte	0x1
	.byte	0x13
	.long	0x151
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internalDataOneWireFrontend
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.long	.LASF47
	.long	.LASF47
	.byte	0x5
	.byte	0xe
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.long	.LASF48
	.long	.LASF48
	.byte	0x5
	.byte	0xd
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.long	.LASF49
	.long	.LASF49
	.byte	0x5
	.byte	0xb
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.long	.LASF50
	.long	.LASF50
	.byte	0x5
	.byte	0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
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
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.long	.LVL0
	.long	.LVL2-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2-1
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL2-1
	.word	0x5
	.byte	0x3
	.long	internalDataOneWireFrontend
	.long	.LVL2-1
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2-1
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5-1
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL4
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL5-1
	.word	0x5
	.byte	0x3
	.long	internalDataOneWireFrontend+4
	.long	.LVL5-1
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL10
	.word	0x1
	.byte	0x66
	.long	.LVL10
	.long	.LVL12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13-1
	.word	0x1
	.byte	0x66
	.long	.LVL13-1
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL6
	.long	.LVL9
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13-1
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL18
	.word	0x1
	.byte	0x66
	.long	.LVL18
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21-1
	.word	0x1
	.byte	0x66
	.long	.LVL21-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL19-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19-1
	.long	.LVL19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20-1
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL15
	.long	.LVL17
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x1
	.byte	0x66
	.long	.LVL21-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x68
	.long	.LVL23
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB18
	.long	.LFE18
	.long	.LFB17
	.long	.LFE17
	.long	.LFB20
	.long	.LFE20
	.long	.LFB11
	.long	.LFE11
	.long	.LFB10
	.long	.LFE10
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB19
	.long	.LFE19
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\\\Timer\\\\Timer\\\\Debug"
.LASF36:
	.string	"onByteRead"
.LASF45:
	.string	"onReadyToSendSkipRomCommand"
.LASF8:
	.string	"CallbackFunctionType"
.LASF30:
	.string	"deviceID"
.LASF51:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF44:
	.string	"onReadyToSendMatchRomCommand"
.LASF46:
	.string	"writeNextBitWrapper"
.LASF17:
	.string	"OneWireRomCommands_SkipRom"
.LASF18:
	.string	"deviceId"
.LASF7:
	.string	"uint8_t"
.LASF34:
	.string	"onSkip"
.LASF10:
	.string	"PINx"
.LASF27:
	.string	"lastCallback"
.LASF43:
	.string	"onMatchRomCommandSent"
.LASF54:
	.string	"writeByteToOneWireBus"
.LASF39:
	.string	"readNextBitWrapper"
.LASF5:
	.string	"long long int"
.LASF26:
	.string	"positionWithinByte"
.LASF23:
	.string	"startAtZero"
.LASF3:
	.string	"long int"
.LASF41:
	.string	"positionWithinID"
.LASF32:
	.string	"sendMatchRomCommand"
.LASF22:
	.string	"byte"
.LASF13:
	.string	"INTx"
.LASF19:
	.string	"onewirepin"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF31:
	.string	"onMatch"
.LASF2:
	.string	"unsigned int"
.LASF14:
	.string	"GPIOPin_t"
.LASF33:
	.string	"sendSkipRomCommand"
.LASF37:
	.string	"posistionWithinByte"
.LASF48:
	.string	"readBitFromOneWire"
.LASF40:
	.string	"sendID"
.LASF50:
	.string	"write0BitToOneWire"
.LASF29:
	.string	"_Bool"
.LASF21:
	.string	"OneWireFrontendInternalData_t"
.LASF28:
	.string	"lastOneWirePin"
.LASF12:
	.string	"pinNumber"
.LASF16:
	.string	"OneWireRomCommands_MatchRom"
.LASF15:
	.string	"OneWireRomCommands_ReadRom"
.LASF4:
	.string	"long unsigned int"
.LASF9:
	.string	"DDRx"
.LASF25:
	.string	"lastByte"
.LASF35:
	.string	"readByteFromOneWireBus"
.LASF24:
	.string	"onByteSent"
.LASF42:
	.string	"sendNextIDByte"
.LASF20:
	.string	"callback"
.LASF47:
	.string	"performFullOneWireReset"
.LASF49:
	.string	"write1BitToOneWire"
.LASF55:
	.string	"internalDataOneWireFrontend"
.LASF38:
	.string	"readBit"
.LASF52:
	.string	".././OneWireFrontEnd.c"
.LASF11:
	.string	"PORTx"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
