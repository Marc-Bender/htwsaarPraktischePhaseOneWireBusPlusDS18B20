	.file	"DS18B20.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.onConvertTemperatureCommandSent,"ax",@progbits
.global	onConvertTemperatureCommandSent
	.type	onConvertTemperatureCommandSent, @function
onConvertTemperatureCommandSent:
.LFB19:
	.file 1 ".././DS18B20.c"
	.loc 1 116 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 117 0
	lds r30,internalDataReadTemperatureDS18B20+2
	lds r31,internalDataReadTemperatureDS18B20+2+1
	icall
.LVL0:
	ret
	.cfi_endproc
.LFE19:
	.size	onConvertTemperatureCommandSent, .-onConvertTemperatureCommandSent
	.section	.text.onReadyToSendReadScratchpadCommand,"ax",@progbits
.global	onReadyToSendReadScratchpadCommand
	.type	onReadyToSendReadScratchpadCommand, @function
onReadyToSendReadScratchpadCommand:
.LFB16:
	.loc 1 91 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 92 0
	lds r20,internalDataReadSP_DS18B20
	lds r21,internalDataReadSP_DS18B20+1
	ldi r18,lo8(gs(onReadScratchpadCommandSent))
	ldi r19,hi8(gs(onReadScratchpadCommandSent))
	ldi r22,lo8(1)
	ldi r24,lo8(-66)
	call writeByteToOneWireBus
.LVL1:
	ret
	.cfi_endproc
.LFE16:
	.size	onReadyToSendReadScratchpadCommand, .-onReadyToSendReadScratchpadCommand
	.section	.text.onReadyToSendConvertTemperatureCommand,"ax",@progbits
.global	onReadyToSendConvertTemperatureCommand
	.type	onReadyToSendConvertTemperatureCommand, @function
onReadyToSendConvertTemperatureCommand:
.LFB20:
	.loc 1 121 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 122 0
	lds r20,internalDataReadTemperatureDS18B20
	lds r21,internalDataReadTemperatureDS18B20+1
	ldi r18,lo8(gs(onConvertTemperatureCommandSent))
	ldi r19,hi8(gs(onConvertTemperatureCommandSent))
	ldi r22,lo8(1)
	ldi r24,lo8(68)
	call writeByteToOneWireBus
.LVL2:
	ret
	.cfi_endproc
.LFE20:
	.size	onReadyToSendConvertTemperatureCommand, .-onReadyToSendConvertTemperatureCommand
	.section	.text.onScratchpadReadyForTemperatureStorage,"ax",@progbits
.global	onScratchpadReadyForTemperatureStorage
	.type	onScratchpadReadyForTemperatureStorage, @function
onScratchpadReadyForTemperatureStorage:
.LFB18:
	.loc 1 107 0
	.cfi_startproc
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 108 0
	ldi r16,lo8(internalDataReadTemperatureDS18B20)
	ldi r17,hi8(internalDataReadTemperatureDS18B20)
	movw r30,r16
	ldd r26,Z+4
	ldd r27,Z+5
	ldi r28,lo8(internalDataReadSP_DS18B20)
	ldi r29,hi8(internalDataReadSP_DS18B20)
	ldd r30,Y+4
	ldd r31,Y+5
	ldd r24,Z+1
	ldi r25,0
	mov r25,r24
	clr r24
	ld r18,Z
	or r24,r18
	st X+,r24
	st X,r25
	.loc 1 110 0
	ldd r24,Y+4
	ldd r25,Y+5
	call free
.LVL3:
	.loc 1 111 0
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	.loc 1 112 0
	movw r26,r16
	adiw r26,2
	ld r30,X+
	ld r31,X
	sbiw r26,2+1
	icall
.LVL4:
/* epilogue start */
	.loc 1 113 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE18:
	.size	onScratchpadReadyForTemperatureStorage, .-onScratchpadReadyForTemperatureStorage
	.section	.text.readEntireScratchpad,"ax",@progbits
.global	readEntireScratchpad
	.type	readEntireScratchpad, @function
readEntireScratchpad:
.LFB17:
	.loc 1 96 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 99 0
	ldi r30,lo8(internalDataReadSP_DS18B20)
	ldi r31,hi8(internalDataReadSP_DS18B20)
	std Z+3,r19
	std Z+2,r18
	.loc 1 100 0
	std Z+7,r23
	std Z+6,r22
	.loc 1 101 0
	std Z+1,r25
	st Z,r24
	.loc 1 102 0
	std Z+5,r21
	std Z+4,r20
	.loc 1 103 0
	ldi r20,lo8(gs(onReadyToSendReadScratchpadCommand))
	ldi r21,hi8(gs(onReadyToSendReadScratchpadCommand))
.LVL6:
	call sendMatchRomCommand
.LVL7:
	ret
	.cfi_endproc
.LFE17:
	.size	readEntireScratchpad, .-readEntireScratchpad
	.section	.text.issueTemperatureConversion,"ax",@progbits
.global	issueTemperatureConversion
	.type	issueTemperatureConversion, @function
issueTemperatureConversion:
.LFB21:
	.loc 1 126 0
	.cfi_startproc
.LVL8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r20
	.loc 1 128 0
	ldi r30,lo8(internalDataReadTemperatureDS18B20)
	ldi r31,hi8(internalDataReadTemperatureDS18B20)
	std Z+3,r19
	std Z+2,r18
	.loc 1 129 0
	std Z+1,r25
	st Z,r24
	.loc 1 130 0
	tst r22
	breq .L7
	.loc 1 131 0
	ldi r22,lo8(gs(onReadyToSendConvertTemperatureCommand))
	ldi r23,hi8(gs(onReadyToSendConvertTemperatureCommand))
.LVL9:
	call sendSkipRomCommand
.LVL10:
	ret
.LVL11:
.L7:
	.loc 1 134 0
	sts internalDataReadTemperatureDS18B20+6+1,r21
	sts internalDataReadTemperatureDS18B20+6,r20
	.loc 1 135 0
	ldi r20,lo8(gs(onReadyToSendConvertTemperatureCommand))
	ldi r21,hi8(gs(onReadyToSendConvertTemperatureCommand))
.LVL12:
	movw r22,r26
.LVL13:
	call sendMatchRomCommand
.LVL14:
	ret
	.cfi_endproc
.LFE21:
	.size	issueTemperatureConversion, .-issueTemperatureConversion
	.section	.text.readTemperature,"ax",@progbits
.global	readTemperature
	.type	readTemperature, @function
readTemperature:
.LFB22:
	.loc 1 140 0
	.cfi_startproc
.LVL15:
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
	.loc 1 141 0
	ldi r30,lo8(internalDataReadTemperatureDS18B20)
	ldi r31,hi8(internalDataReadTemperatureDS18B20)
	std Z+3,r17
	std Z+2,r16
	.loc 1 142 0
	std Z+5,r21
	std Z+4,r20
	.loc 1 143 0
	std Z+1,r25
	st Z,r24
	.loc 1 144 0
	std Z+7,r23
	std Z+6,r22
	.loc 1 145 0
	std Z+9,r19
	std Z+8,r18
	.loc 1 147 0
	ldi r24,lo8(9)
	ldi r25,0
.LVL16:
	call malloc
.LVL17:
	movw r16,r24
.LVL18:
	.loc 1 148 0
	or r24,r25
	brne .L10
	.loc 1 149 0
	call deathTrap
.LVL19:
.L10:
	.loc 1 150 0
	ldi r18,lo8(gs(onScratchpadReadyForTemperatureStorage))
	ldi r19,hi8(gs(onScratchpadReadyForTemperatureStorage))
	movw r20,r16
	movw r22,r14
	movw r24,r28
	call readEntireScratchpad
.LVL20:
/* epilogue start */
	.loc 1 151 0
	pop r29
	pop r28
.LVL21:
	pop r17
	pop r16
.LVL22:
	pop r15
	pop r14
.LVL23:
	ret
	.cfi_endproc
.LFE22:
	.size	readTemperature, .-readTemperature
	.section	.text.calculateCRC8,"ax",@progbits
.global	calculateCRC8
	.type	calculateCRC8, @function
calculateCRC8:
.LFB23:
	.loc 1 174 0
	.cfi_startproc
.LVL24:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 176 0
	ldi r18,lo8(-1)
	add r18,r22
.LVL25:
	tst r22
	breq .L14
	mov r26,r24
	mov r27,r25
	ldi r24,0
.LVL26:
.L13:
.LBB2:
	.loc 1 177 0
	ld r30,X+
.LVL27:
	.loc 1 177 0
	eor r30,r24
	ldi r31,0
	subi r30,lo8(-(dscrc_table))
	sbci r31,hi8(-(dscrc_table))
.LVL28:
	.loc 1 177 0
/* #APP */
 ;  177 ".././DS18B20.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL29:
/* #NOAPP */
.LBE2:
	.loc 1 176 0
.LVL30:
	subi r18,1
	brcc .L13
	ret
.LVL31:
.L14:
	.loc 1 175 0
	ldi r24,0
.LVL32:
	.loc 1 179 0
	ret
	.cfi_endproc
.LFE23:
	.size	calculateCRC8, .-calculateCRC8
	.section	.text.onScratchpadRead,"ax",@progbits
.global	onScratchpadRead
	.type	onScratchpadRead, @function
onScratchpadRead:
.LFB12:
	.loc 1 58 0
	.cfi_startproc
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
	.loc 1 59 0
	ldi r28,lo8(internalDataReadSP_DS18B20)
	ldi r29,hi8(internalDataReadSP_DS18B20)
	ldi r22,lo8(8)
	ldd r24,Y+4
	ldd r25,Y+5
	call calculateCRC8
.LVL33:
	.loc 1 60 0
	ldd r30,Y+4
	ldd r31,Y+5
	ldd r25,Z+8
	cp r24,r25
	breq .L17
	.loc 1 61 0
	lds r30,internalDataReadTemperatureDS18B20+8
	lds r31,internalDataReadTemperatureDS18B20+8+1
	ldi r24,lo8(1)
.LVL34:
	st Z,r24
	rjmp .L18
.LVL35:
.L17:
	.loc 1 63 0
	lds r30,internalDataReadTemperatureDS18B20+8
	lds r31,internalDataReadTemperatureDS18B20+8+1
	st Z,__zero_reg__
.LVL36:
.L18:
	.loc 1 64 0
	lds r30,internalDataReadSP_DS18B20+2
	lds r31,internalDataReadSP_DS18B20+2+1
	icall
.LVL37:
/* epilogue start */
	.loc 1 65 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE12:
	.size	onScratchpadRead, .-onScratchpadRead
	.section	.text.readScratchpadRegisters,"ax",@progbits
.global	readScratchpadRegisters
	.type	readScratchpadRegisters, @function
readScratchpadRegisters:
.LFB14:
	.loc 1 75 0
	.cfi_startproc
.LVL38:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 77 0
	cpse r24,__zero_reg__
	rjmp .L23
	.loc 1 79 0
	lds r25,positionWithinScratchpad.2597
	cpi r25,lo8(9)
	brsh .L21
	rjmp .L20
.L23:
	ldi r25,0
.L20:
	.loc 1 80 0
	ldi r30,lo8(internalDataReadSP_DS18B20)
	ldi r31,hi8(internalDataReadSP_DS18B20)
	ld r20,Z
	ldd r21,Z+1
	ldd __tmp_reg__,Z+4
	ldd r31,Z+5
	mov r30,__tmp_reg__
	ldi r24,lo8(1)
.LVL39:
	add r24,r25
	sts positionWithinScratchpad.2597,r24
	ldi r18,lo8(gs(readNextScratchpadByte))
	ldi r19,hi8(gs(readNextScratchpadByte))
	ldi r22,lo8(1)
	movw r26,r30
	add r26,r25
	adc r27,__zero_reg__
	movw r24,r26
	call readByteFromOneWireBus
.LVL40:
	ret
.LVL41:
.L21:
	.loc 1 82 0
	call onScratchpadRead
.LVL42:
	ret
	.cfi_endproc
.LFE14:
	.size	readScratchpadRegisters, .-readScratchpadRegisters
	.section	.text.readNextScratchpadByte,"ax",@progbits
.global	readNextScratchpadByte
	.type	readNextScratchpadByte, @function
readNextScratchpadByte:
.LFB13:
	.loc 1 70 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 71 0
	ldi r24,0
	call readScratchpadRegisters
.LVL43:
	ret
	.cfi_endproc
.LFE13:
	.size	readNextScratchpadByte, .-readNextScratchpadByte
	.section	.text.onReadScratchpadCommandSent,"ax",@progbits
.global	onReadScratchpadCommandSent
	.type	onReadScratchpadCommandSent, @function
onReadScratchpadCommandSent:
.LFB15:
	.loc 1 86 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 87 0
	ldi r24,lo8(1)
	call readScratchpadRegisters
.LVL44:
	ret
	.cfi_endproc
.LFE15:
	.size	onReadScratchpadCommandSent, .-onReadScratchpadCommandSent
	.section	.text.getSignOfSigned7Point4Fixed,"ax",@progbits
.global	getSignOfSigned7Point4Fixed
	.type	getSignOfSigned7Point4Fixed, @function
getSignOfSigned7Point4Fixed:
.LFB24:
	.loc 1 182 0
	.cfi_startproc
.LVL45:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 183 0
	clr r24
	andi r25,248
.LVL46:
	or r24,r25
	brne .L28
	ldi r24,lo8(43)
	ret
.L28:
	ldi r24,lo8(45)
	.loc 1 184 0
	ret
	.cfi_endproc
.LFE24:
	.size	getSignOfSigned7Point4Fixed, .-getSignOfSigned7Point4Fixed
	.section	.text.getIntegerPartOfSigned7Point4Fixed,"ax",@progbits
.global	getIntegerPartOfSigned7Point4Fixed
	.type	getIntegerPartOfSigned7Point4Fixed, @function
getIntegerPartOfSigned7Point4Fixed:
.LFB25:
	.loc 1 187 0
	.cfi_startproc
.LVL47:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 188 0
	tst r25
	brge .L30
	neg r25
	neg r24
	sbc r25,__zero_reg__
.LVL48:
.L30:
	swap r25
	swap r24
	andi r24,0x0f
	eor r24,r25
	andi r25,0x0f
	eor r24,r25
	.loc 1 189 0
	andi r24,lo8(127)
	ret
	.cfi_endproc
.LFE25:
	.size	getIntegerPartOfSigned7Point4Fixed, .-getIntegerPartOfSigned7Point4Fixed
	.section	.text.getNonIntegerPartOfSigned7Point4Fixed,"ax",@progbits
.global	getNonIntegerPartOfSigned7Point4Fixed
	.type	getNonIntegerPartOfSigned7Point4Fixed, @function
getNonIntegerPartOfSigned7Point4Fixed:
.LFB26:
	.loc 1 192 0
	.cfi_startproc
.LVL49:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 193 0
	tst r25
	brge .L32
	neg r25
	neg r24
	sbc r25,__zero_reg__
.LVL50:
.L32:
	andi r24,15
	clr r25
	.loc 1 194 0
	ldi r18,lo8(113)
	ldi r19,lo8(2)
	movw r20,r24
	mul r20,r18
	movw r24,r0
	mul r20,r19
	add r25,r0
	mul r21,r18
	add r25,r0
	clr r1
	ret
	.cfi_endproc
.LFE26:
	.size	getNonIntegerPartOfSigned7Point4Fixed, .-getNonIntegerPartOfSigned7Point4Fixed
	.section	.bss.positionWithinScratchpad.2597,"aw",@nobits
	.type	positionWithinScratchpad.2597, @object
	.size	positionWithinScratchpad.2597, 1
positionWithinScratchpad.2597:
	.zero	1
	.section	.progmem.data.dscrc_table,"a",@progbits
	.type	dscrc_table, @object
	.size	dscrc_table, 256
dscrc_table:
	.byte	0
	.byte	94
	.byte	-68
	.byte	-30
	.byte	97
	.byte	63
	.byte	-35
	.byte	-125
	.byte	-62
	.byte	-100
	.byte	126
	.byte	32
	.byte	-93
	.byte	-3
	.byte	31
	.byte	65
	.byte	-99
	.byte	-61
	.byte	33
	.byte	127
	.byte	-4
	.byte	-94
	.byte	64
	.byte	30
	.byte	95
	.byte	1
	.byte	-29
	.byte	-67
	.byte	62
	.byte	96
	.byte	-126
	.byte	-36
	.byte	35
	.byte	125
	.byte	-97
	.byte	-63
	.byte	66
	.byte	28
	.byte	-2
	.byte	-96
	.byte	-31
	.byte	-65
	.byte	93
	.byte	3
	.byte	-128
	.byte	-34
	.byte	60
	.byte	98
	.byte	-66
	.byte	-32
	.byte	2
	.byte	92
	.byte	-33
	.byte	-127
	.byte	99
	.byte	61
	.byte	124
	.byte	34
	.byte	-64
	.byte	-98
	.byte	29
	.byte	67
	.byte	-95
	.byte	-1
	.byte	70
	.byte	24
	.byte	-6
	.byte	-92
	.byte	39
	.byte	121
	.byte	-101
	.byte	-59
	.byte	-124
	.byte	-38
	.byte	56
	.byte	102
	.byte	-27
	.byte	-69
	.byte	89
	.byte	7
	.byte	-37
	.byte	-123
	.byte	103
	.byte	57
	.byte	-70
	.byte	-28
	.byte	6
	.byte	88
	.byte	25
	.byte	71
	.byte	-91
	.byte	-5
	.byte	120
	.byte	38
	.byte	-60
	.byte	-102
	.byte	101
	.byte	59
	.byte	-39
	.byte	-121
	.byte	4
	.byte	90
	.byte	-72
	.byte	-26
	.byte	-89
	.byte	-7
	.byte	27
	.byte	69
	.byte	-58
	.byte	-104
	.byte	122
	.byte	36
	.byte	-8
	.byte	-90
	.byte	68
	.byte	26
	.byte	-103
	.byte	-57
	.byte	37
	.byte	123
	.byte	58
	.byte	100
	.byte	-122
	.byte	-40
	.byte	91
	.byte	5
	.byte	-25
	.byte	-71
	.byte	-116
	.byte	-46
	.byte	48
	.byte	110
	.byte	-19
	.byte	-77
	.byte	81
	.byte	15
	.byte	78
	.byte	16
	.byte	-14
	.byte	-84
	.byte	47
	.byte	113
	.byte	-109
	.byte	-51
	.byte	17
	.byte	79
	.byte	-83
	.byte	-13
	.byte	112
	.byte	46
	.byte	-52
	.byte	-110
	.byte	-45
	.byte	-115
	.byte	111
	.byte	49
	.byte	-78
	.byte	-20
	.byte	14
	.byte	80
	.byte	-81
	.byte	-15
	.byte	19
	.byte	77
	.byte	-50
	.byte	-112
	.byte	114
	.byte	44
	.byte	109
	.byte	51
	.byte	-47
	.byte	-113
	.byte	12
	.byte	82
	.byte	-80
	.byte	-18
	.byte	50
	.byte	108
	.byte	-114
	.byte	-48
	.byte	83
	.byte	13
	.byte	-17
	.byte	-79
	.byte	-16
	.byte	-82
	.byte	76
	.byte	18
	.byte	-111
	.byte	-49
	.byte	45
	.byte	115
	.byte	-54
	.byte	-108
	.byte	118
	.byte	40
	.byte	-85
	.byte	-11
	.byte	23
	.byte	73
	.byte	8
	.byte	86
	.byte	-76
	.byte	-22
	.byte	105
	.byte	55
	.byte	-43
	.byte	-117
	.byte	87
	.byte	9
	.byte	-21
	.byte	-75
	.byte	54
	.byte	104
	.byte	-118
	.byte	-44
	.byte	-107
	.byte	-53
	.byte	41
	.byte	119
	.byte	-12
	.byte	-86
	.byte	72
	.byte	22
	.byte	-23
	.byte	-73
	.byte	85
	.byte	11
	.byte	-120
	.byte	-42
	.byte	52
	.byte	106
	.byte	43
	.byte	117
	.byte	-105
	.byte	-55
	.byte	74
	.byte	20
	.byte	-10
	.byte	-88
	.byte	116
	.byte	42
	.byte	-56
	.byte	-106
	.byte	21
	.byte	75
	.byte	-87
	.byte	-9
	.byte	-74
	.byte	-24
	.byte	10
	.byte	84
	.byte	-41
	.byte	-119
	.byte	107
	.byte	53
	.comm	internalDataReadTemperatureDS18B20,10,1
	.comm	internalDataDS18B20,7,1
	.comm	internalDataReadSP_DS18B20,8,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././marcsLanguageExtension.h"
	.file 4 ".././GPIO Pin.h"
	.file 5 ".././DS18B20.h"
	.file 6 ".././OneWireFrontEnd.h"
	.file 7 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x898
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF80
	.byte	0xc
	.long	.LASF81
	.long	.LASF82
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x2
	.byte	0x7e
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x7f
	.long	0x30
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x80
	.long	0x29
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0xb
	.long	0x94
	.uleb128 0x5
	.byte	0x2
	.long	0x9a
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF12
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0xb
	.long	0xf2
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xd
	.long	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xe
	.long	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xf
	.long	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0x11
	.long	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0x12
	.long	0x102
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0xf8
	.uleb128 0x9
	.long	0x45
	.uleb128 0xa
	.long	0xf2
	.uleb128 0xa
	.long	0x45
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x13
	.long	0xa3
	.uleb128 0x4
	.long	.LASF19
	.byte	0x5
	.byte	0x10
	.long	0x57
	.uleb128 0xb
	.byte	0x1
	.long	0x50
	.byte	0x1
	.byte	0x4
	.long	0x136
	.uleb128 0xc
	.long	.LASF20
	.byte	0x44
	.uleb128 0xc
	.long	.LASF21
	.byte	0xbe
	.byte	0
	.uleb128 0xd
	.long	.LASF83
	.byte	0x9
	.byte	0x1
	.byte	0xb
	.long	0x1bf
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0xd
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0xe
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"TH"
	.byte	0x1
	.byte	0xf
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"TL"
	.byte	0x1
	.byte	0x10
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF24
	.byte	0x1
	.byte	0x11
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x12
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x13
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0x14
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xe
	.string	"CRC"
	.byte	0x1
	.byte	0x15
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.byte	0x9
	.byte	0x1
	.byte	0x9
	.long	0x1de
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.byte	0x16
	.long	0x136
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.byte	0x17
	.long	0x1de
	.byte	0
	.uleb128 0x11
	.long	0x45
	.long	0x1ee
	.uleb128 0x12
	.long	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x1
	.byte	0x18
	.long	0x1bf
	.uleb128 0x7
	.byte	0x7
	.byte	0x1
	.byte	0x1a
	.long	0x23a
	.uleb128 0x8
	.long	.LASF31
	.byte	0x1
	.byte	0x1c
	.long	0x23a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF32
	.byte	0x1
	.byte	0x1d
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF33
	.byte	0x1
	.byte	0x1e
	.long	0x245
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF34
	.byte	0x1
	.byte	0x1f
	.long	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x240
	.uleb128 0xa
	.long	0x107
	.uleb128 0x5
	.byte	0x2
	.long	0x45
	.uleb128 0x4
	.long	.LASF35
	.byte	0x1
	.byte	0x20
	.long	0x1f9
	.uleb128 0x7
	.byte	0x8
	.byte	0x1
	.byte	0x22
	.long	0x297
	.uleb128 0x8
	.long	.LASF31
	.byte	0x1
	.byte	0x24
	.long	0x23a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF32
	.byte	0x1
	.byte	0x25
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF36
	.byte	0x1
	.byte	0x26
	.long	0x297
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF33
	.byte	0x1
	.byte	0x27
	.long	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x1ee
	.uleb128 0x5
	.byte	0x2
	.long	0x102
	.uleb128 0x4
	.long	.LASF37
	.byte	0x1
	.byte	0x28
	.long	0x256
	.uleb128 0x7
	.byte	0xa
	.byte	0x1
	.byte	0x2a
	.long	0x2fd
	.uleb128 0x8
	.long	.LASF31
	.byte	0x1
	.byte	0x2c
	.long	0x23a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF32
	.byte	0x1
	.byte	0x2d
	.long	0x89
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF38
	.byte	0x1
	.byte	0x2e
	.long	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF33
	.byte	0x1
	.byte	0x2f
	.long	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF39
	.byte	0x1
	.byte	0x30
	.long	0x303
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x112
	.uleb128 0x5
	.byte	0x2
	.long	0x309
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF40
	.uleb128 0x4
	.long	.LASF41
	.byte	0x1
	.byte	0x31
	.long	0x2ae
	.uleb128 0x13
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x36f
	.uleb128 0x15
	.long	.LVL1
	.long	0x83e
	.uleb128 0x16
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xbe
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onReadScratchpadCommandSent
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3ad
	.uleb128 0x15
	.long	.LVL2
	.long	0x83e
	.uleb128 0x16
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onConvertTemperatureCommandSent
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST0
	.byte	0x1
	.long	0x3d1
	.uleb128 0x18
	.long	.LVL3
	.long	0x84b
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x458
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x5f
	.long	0x458
	.long	.LLST1
	.uleb128 0x19
	.long	.LASF46
	.byte	0x1
	.byte	0x5f
	.long	0x45d
	.long	.LLST2
	.uleb128 0x19
	.long	.LASF47
	.byte	0x1
	.byte	0x5f
	.long	0x462
	.long	.LLST3
	.uleb128 0x19
	.long	.LASF48
	.byte	0x1
	.byte	0x5f
	.long	0x467
	.long	.LLST4
	.uleb128 0x15
	.long	.LVL7
	.long	0x859
	.uleb128 0x16
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
	.uleb128 0x16
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x16
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onReadyToSendReadScratchpadCommand
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x23a
	.uleb128 0xa
	.long	0x29d
	.uleb128 0xa
	.long	0x297
	.uleb128 0xa
	.long	0x89
	.uleb128 0x14
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x50f
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x7d
	.long	0x458
	.long	.LLST5
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.byte	0x7d
	.long	0x50f
	.long	.LLST6
	.uleb128 0x19
	.long	.LASF46
	.byte	0x1
	.byte	0x7d
	.long	0x45d
	.long	.LLST7
	.uleb128 0x19
	.long	.LASF51
	.byte	0x1
	.byte	0x7d
	.long	0x467
	.long	.LLST8
	.uleb128 0x1a
	.long	.LVL10
	.long	0x866
	.long	0x4ea
	.uleb128 0x16
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
	.uleb128 0x16
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onReadyToSendConvertTemperatureCommand
	.byte	0
	.uleb128 0x15
	.long	.LVL14
	.long	0x859
	.uleb128 0x16
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x16
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onReadyToSendConvertTemperatureCommand
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x309
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST9
	.byte	0x1
	.long	0x5e3
	.uleb128 0x19
	.long	.LASF31
	.byte	0x1
	.byte	0x8b
	.long	0x458
	.long	.LLST10
	.uleb128 0x19
	.long	.LASF46
	.byte	0x1
	.byte	0x8b
	.long	0x45d
	.long	.LLST11
	.uleb128 0x19
	.long	.LASF38
	.byte	0x1
	.byte	0x8b
	.long	0x5e3
	.long	.LLST12
	.uleb128 0x19
	.long	.LASF39
	.byte	0x1
	.byte	0x8b
	.long	0x5e8
	.long	.LLST13
	.uleb128 0x19
	.long	.LASF53
	.byte	0x1
	.byte	0x8b
	.long	0x467
	.long	.LLST14
	.uleb128 0x1c
	.long	.LASF55
	.byte	0x1
	.byte	0x93
	.long	0x297
	.long	.LLST15
	.uleb128 0x1a
	.long	.LVL17
	.long	0x873
	.long	0x5a0
	.uleb128 0x16
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x18
	.long	.LVL19
	.long	0x881
	.uleb128 0x15
	.long	.LVL20
	.long	0x3d1
	.uleb128 0x16
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
	.uleb128 0x16
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x16
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x16
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onScratchpadReadyForTemperatureStorage
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x2fd
	.uleb128 0xa
	.long	0x303
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	0x45
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x661
	.uleb128 0x19
	.long	.LASF54
	.byte	0x1
	.byte	0xad
	.long	0x29d
	.long	.LLST16
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xad
	.long	0x45
	.long	.LLST17
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0xaf
	.long	0x45
	.long	.LLST18
	.uleb128 0x20
	.long	.LBB2
	.long	.LBE2
	.uleb128 0x1c
	.long	.LASF56
	.byte	0x1
	.byte	0xb1
	.long	0x62
	.long	.LLST19
	.uleb128 0x1c
	.long	.LASF57
	.byte	0x1
	.byte	0xb1
	.long	0x45
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST21
	.byte	0x1
	.long	0x69a
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x1
	.byte	0x3b
	.long	0x45
	.long	.LLST22
	.uleb128 0x15
	.long	.LVL33
	.long	0x5ed
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6ff
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.byte	0x4a
	.long	0x50f
	.long	.LLST23
	.uleb128 0x21
	.long	.LASF62
	.byte	0x1
	.byte	0x4c
	.long	0x45
	.byte	0x5
	.byte	0x3
	.long	positionWithinScratchpad.2597
	.uleb128 0x1a
	.long	.LVL40
	.long	0x88e
	.long	0x6f5
	.uleb128 0x16
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	readNextScratchpadByte
	.byte	0
	.uleb128 0x18
	.long	.LVL42
	.long	0x661
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x729
	.uleb128 0x15
	.long	.LVL43
	.long	0x69a
	.uleb128 0x16
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x753
	.uleb128 0x15
	.long	.LVL44
	.long	0x69a
	.uleb128 0x16
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.long	0x82
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x781
	.uleb128 0x1e
	.string	"num"
	.byte	0x1
	.byte	0xb5
	.long	0x781
	.long	.LLST24
	.byte	0
	.uleb128 0xa
	.long	0x112
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.long	0x45
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7b4
	.uleb128 0x1e
	.string	"num"
	.byte	0x1
	.byte	0xba
	.long	0x781
	.long	.LLST25
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0x62
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7e2
	.uleb128 0x1e
	.string	"num"
	.byte	0x1
	.byte	0xbf
	.long	0x781
	.long	.LLST26
	.byte	0
	.uleb128 0x11
	.long	0x102
	.long	0x7f2
	.uleb128 0x12
	.long	0x9c
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.long	.LASF69
	.byte	0x1
	.byte	0x9a
	.long	0x803
	.byte	0x5
	.byte	0x3
	.long	dscrc_table
	.uleb128 0xa
	.long	0x7e2
	.uleb128 0x22
	.long	.LASF70
	.byte	0x1
	.byte	0x33
	.long	0x2a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internalDataReadSP_DS18B20
	.uleb128 0x22
	.long	.LASF71
	.byte	0x1
	.byte	0x34
	.long	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internalDataDS18B20
	.uleb128 0x22
	.long	.LASF72
	.byte	0x1
	.byte	0x35
	.long	0x310
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	internalDataReadTemperatureDS18B20
	.uleb128 0x23
	.byte	0x1
	.byte	0x1
	.long	.LASF73
	.long	.LASF73
	.byte	0x6
	.byte	0xa
	.uleb128 0x24
	.byte	0x1
	.byte	0x1
	.long	.LASF74
	.long	.LASF74
	.byte	0x7
	.word	0x133
	.uleb128 0x23
	.byte	0x1
	.byte	0x1
	.long	.LASF75
	.long	.LASF75
	.byte	0x6
	.byte	0x9
	.uleb128 0x23
	.byte	0x1
	.byte	0x1
	.long	.LASF76
	.long	.LASF76
	.byte	0x6
	.byte	0x8
	.uleb128 0x24
	.byte	0x1
	.byte	0x1
	.long	.LASF77
	.long	.LASF77
	.byte	0x7
	.word	0x12c
	.uleb128 0x23
	.byte	0x1
	.byte	0x1
	.long	.LASF78
	.long	.LASF78
	.byte	0x3
	.byte	0xf
	.uleb128 0x23
	.byte	0x1
	.byte	0x1
	.long	.LASF79
	.long	.LASF79
	.byte	0x6
	.byte	0xb
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
	.uleb128 0x4
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
	.uleb128 0x17
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB18
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
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL7-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-1
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL7-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-1
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LVL7-1
	.word	0x5
	.byte	0x3
	.long	internalDataReadSP_DS18B20+4
	.long	.LVL7-1
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL7-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7-1
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL10-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL11
	.long	.LVL14-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14-1
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x66
	.long	.LVL9
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.word	0x1
	.byte	0x66
	.long	.LVL13
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL8
	.long	.LVL10-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL14-1
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14-1
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL8
	.long	.LVL10-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL11
	.long	.LVL14-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14-1
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB22
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
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL21
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL17-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17-1
	.long	.LVL23
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL15
	.long	.LVL17-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17-1
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL15
	.long	.LVL17-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17-1
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL15
	.long	.LVL18
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL18
	.long	.LVL22
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL24
	.long	.LVL24
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL26
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL27
	.word	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.long	.LVL27
	.long	.LVL31
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST17:
	.long	.LVL24
	.long	.LVL25
	.word	0x1
	.byte	0x66
	.long	.LVL25
	.long	.LFE23
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST18:
	.long	.LVL24
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL31
	.word	0x1
	.byte	0x68
	.long	.LVL31
	.long	.LFE23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL28
	.long	.LVL31
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL29
	.long	.LVL31
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST21:
	.long	.LFB12
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
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST22:
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x68
	.long	.LVL39
	.long	.LVL41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL41
	.long	.LVL42-1
	.word	0x1
	.byte	0x68
	.long	.LVL42-1
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL50
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x8c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB19
	.long	.LFE19
	.long	.LFB16
	.long	.LFE16
	.long	.LFB20
	.long	.LFE20
	.long	.LFB18
	.long	.LFE18
	.long	.LFB17
	.long	.LFE17
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	.LFB13
	.long	.LFE13
	.long	.LFB15
	.long	.LFE15
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"sendMatchRomCommand"
.LASF22:
	.string	"temperatureLSB"
.LASF50:
	.string	"issueCommandAtAllSensors"
.LASF56:
	.string	"__addr16"
.LASF42:
	.string	"onReadyToSendReadScratchpadCommand"
.LASF84:
	.string	"onConvertTemperatureCommandSent"
.LASF38:
	.string	"temperatureFixedPointFormat"
.LASF61:
	.string	"startAtZero"
.LASF9:
	.string	"long long unsigned int"
.LASF54:
	.string	"addr"
.LASF66:
	.string	"getSignOfSigned7Point4Fixed"
.LASF74:
	.string	"free"
.LASF70:
	.string	"internalDataReadSP_DS18B20"
.LASF5:
	.string	"int16_t"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"asArray"
.LASF31:
	.string	"onewirepin"
.LASF19:
	.string	"signed7Point4Fixed_t"
.LASF79:
	.string	"readByteFromOneWireBus"
.LASF1:
	.string	"long int"
.LASF44:
	.string	"onScratchpadReadyForTemperatureStorage"
.LASF48:
	.string	"onEntireScratchpadRead"
.LASF68:
	.string	"getNonIntegerPartOfSigned7Point4Fixed"
.LASF25:
	.string	"RESERVED_0"
.LASF26:
	.string	"RESERVED_1"
.LASF6:
	.string	"uint16_t"
.LASF83:
	.string	"scratchpadAsStruct"
.LASF51:
	.string	"onTemperatureConversionStarted"
.LASF0:
	.string	"unsigned int"
.LASF80:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF7:
	.string	"long unsigned int"
.LASF57:
	.string	"__result"
.LASF46:
	.string	"deviceID"
.LASF11:
	.string	"CallbackFunctionType"
.LASF41:
	.string	"DS18B20_ReadTemperatureInternalData_t"
.LASF58:
	.string	"onScratchpadRead"
.LASF32:
	.string	"callback"
.LASF60:
	.string	"readScratchpadRegisters"
.LASF33:
	.string	"deviceId"
.LASF78:
	.string	"deathTrap"
.LASF15:
	.string	"PORTx"
.LASF71:
	.string	"internalDataDS18B20"
.LASF12:
	.string	"sizetype"
.LASF34:
	.string	"idBytesRead"
.LASF52:
	.string	"readTemperature"
.LASF20:
	.string	"DS18B20_ROMCommands_ConvertTemperature"
.LASF43:
	.string	"onReadyToSendConvertTemperatureCommand"
.LASF45:
	.string	"readEntireScratchpad"
.LASF81:
	.string	".././DS18B20.c"
.LASF16:
	.string	"pinNumber"
.LASF17:
	.string	"INTx"
.LASF76:
	.string	"sendSkipRomCommand"
.LASF40:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF53:
	.string	"onTemperatureReady"
.LASF73:
	.string	"writeByteToOneWireBus"
.LASF65:
	.string	"calculateCRC8"
.LASF36:
	.string	"scratchpad"
.LASF47:
	.string	"scratchpadThatContainsTheRawData"
.LASF77:
	.string	"malloc"
.LASF24:
	.string	"configurationRegister"
.LASF13:
	.string	"DDRx"
.LASF35:
	.string	"DS18B20_InternalData_t"
.LASF67:
	.string	"getIntegerPartOfSigned7Point4Fixed"
.LASF64:
	.string	"onReadScratchpadCommandSent"
.LASF69:
	.string	"dscrc_table"
.LASF39:
	.string	"errorBit"
.LASF27:
	.string	"RESERVED_2"
.LASF10:
	.string	"char"
.LASF55:
	.string	"scratchpadForReadingTemps"
.LASF28:
	.string	"asStruct"
.LASF30:
	.string	"DS18B20_Scratchpad_t"
.LASF37:
	.string	"DS18B20_ReadEntireScratchpadInternalData_t"
.LASF23:
	.string	"temperatureMSB"
.LASF18:
	.string	"GPIOPin_t"
.LASF62:
	.string	"positionWithinScratchpad"
.LASF4:
	.string	"uint8_t"
.LASF59:
	.string	"calculatedCRC"
.LASF72:
	.string	"internalDataReadTemperatureDS18B20"
.LASF49:
	.string	"issueTemperatureConversion"
.LASF14:
	.string	"PINx"
.LASF21:
	.string	"DS18B20_ROMCommands_ReadScratchpad"
.LASF63:
	.string	"readNextScratchpadByte"
.LASF82:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\\\Timer\\\\Timer\\\\Debug"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
