	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.onTemperatureRead,"ax",@progbits
.global	onTemperatureRead
	.type	onTemperatureRead, @function
onTemperatureRead:
.LFB18:
	.file 1 ".././main.c"
	.loc 1 125 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 126 0
	lds r30,indexOfTemperatureSensorBeingRead
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(deviceIDs))
	sbci r31,hi8(-(deviceIDs))
	ld r20,Z
	ldd r21,Z+1
	ldi r18,lo8(gs(onTemperatureConversionStarted))
	ldi r19,hi8(gs(onTemperatureConversionStarted))
	ldi r22,0
	ldi r24,lo8(onewirepin)
	ldi r25,hi8(onewirepin)
	call issueTemperatureConversion
.LVL0:
	ret
	.cfi_endproc
.LFE18:
	.size	onTemperatureRead, .-onTemperatureRead
	.section	.text.onAllTemperaturesRead,"ax",@progbits
.global	onAllTemperaturesRead
	.type	onAllTemperaturesRead, @function
onAllTemperaturesRead:
.LFB15:
	.loc 1 69 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 70 0
/* #APP */
 ;  70 ".././main.c" 1
	nop

 ;  0 "" 2
/* #NOAPP */
	ret
	.cfi_endproc
.LFE15:
	.size	onAllTemperaturesRead, .-onAllTemperaturesRead
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"#%2i:%c%3i.%04idegC Err: %c\r\n"
	.section	.text.sendTelemetryViaUSART0,"ax",@progbits
.global	sendTelemetryViaUSART0
	.type	sendTelemetryViaUSART0, @function
sendTelemetryViaUSART0:
.LFB16:
	.loc 1 74 0
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
	.loc 1 75 0
	lds r24,indexOfTemperatureSensorBeingRead
	ldi r25,0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(currentTemperatures))
	sbci r31,hi8(-(currentTemperatures))
	ld r28,Z
	ldd r29,Z+1
.LVL1:
	.loc 1 81 0
	movw r30,r24
	subi r30,lo8(-(deviceIDs))
	sbci r31,hi8(-(deviceIDs))
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ld r24,Z
	cpi r24,lo8(40)
	brne .L4
	.loc 1 83 0
	movw r24,r28
	call getSignOfSigned7Point4Fixed
.LVL2:
	mov r17,r24
.LVL3:
	.loc 1 84 0
	movw r24,r28
	call getIntegerPartOfSigned7Point4Fixed
.LVL4:
	mov r16,r24
.LVL5:
	.loc 1 85 0
	movw r24,r28
	call getNonIntegerPartOfSigned7Point4Fixed
.LVL6:
	rjmp .L5
.LVL7:
.L4:
	.loc 1 87 0
	cpi r24,lo8(59)
	brne .L6
	.loc 1 89 0
	movw r24,r28
	call getSignOfSigned11Point2Fixed
.LVL8:
	mov r17,r24
.LVL9:
	.loc 1 90 0
	movw r24,r28
	call getIntegerPartOfSigned11Point2Fixed
.LVL10:
	mov r16,r24
.LVL11:
	.loc 1 91 0
	movw r24,r28
	call getNonIntegerPartOfSigned11Point2Fixed
.LVL12:
	rjmp .L5
.LVL13:
.L6:
	.loc 1 95 0
	call deathTrap
.LVL14:
	.loc 1 79 0
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	.loc 1 78 0
	ldi r16,lo8(-1)
	.loc 1 77 0
	ldi r17,lo8(63)
.LVL15:
.L5:
	.loc 1 100 0
	lds r18,indexOfTemperatureSensorBeingRead
	mov r30,r18
	ldi r31,0
	subi r30,lo8(-(errorBits))
	sbci r31,hi8(-(errorBits))
	ld r19,Z
	cpse r19,__zero_reg__
	rjmp .L8
	ldi r19,lo8(48)
	ldi r20,0
	rjmp .L7
.L8:
	ldi r19,lo8(69)
	ldi r20,0
.L7:
	.loc 1 100 0 is_stmt 0 discriminator 4
	push r20
.LCFI4:
	.cfi_def_cfa_offset 7
	push r19
.LCFI5:
	.cfi_def_cfa_offset 8
	push r25
.LCFI6:
	.cfi_def_cfa_offset 9
	push r24
.LCFI7:
	.cfi_def_cfa_offset 10
	push __zero_reg__
.LCFI8:
	.cfi_def_cfa_offset 11
	push r16
.LCFI9:
	.cfi_def_cfa_offset 12
	push __zero_reg__
.LCFI10:
	.cfi_def_cfa_offset 13
	push r17
.LCFI11:
	.cfi_def_cfa_offset 14
	push __zero_reg__
.LCFI12:
	.cfi_def_cfa_offset 15
	push r18
.LCFI13:
	.cfi_def_cfa_offset 16
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
.LVL16:
	push r25
.LCFI14:
	.cfi_def_cfa_offset 17
	push r24
.LCFI15:
	.cfi_def_cfa_offset 18
	lds r24,telemetryString+1
	push r24
.LCFI16:
	.cfi_def_cfa_offset 19
	lds r24,telemetryString
	push r24
.LCFI17:
	.cfi_def_cfa_offset 20
	call sprintf
.LVL17:
	.loc 1 101 0 is_stmt 1 discriminator 4
	lds r24,telemetryString
	lds r25,telemetryString+1
	movw r30,r24
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r22,r30
	sub r22,r24
	sbc r23,r25
	call USART0_SendString
.LVL18:
	.loc 1 102 0 discriminator 4
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
.LCFI18:
	.cfi_def_cfa_offset 6
/* epilogue start */
	pop r29
	pop r28
.LVL19:
	pop r17
.LVL20:
	pop r16
.LVL21:
	ret
	.cfi_endproc
.LFE16:
	.size	sendTelemetryViaUSART0, .-sendTelemetryViaUSART0
	.section	.text.startTemperatureConversionAndReadoutCycle,"ax",@progbits
.global	startTemperatureConversionAndReadoutCycle
	.type	startTemperatureConversionAndReadoutCycle, @function
startTemperatureConversionAndReadoutCycle:
.LFB19:
	.loc 1 130 0
	.cfi_startproc
	push r16
.LCFI19:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 132 0
	lds r24,indexOfTemperatureSensorBeingRead
	ldi r25,0
	movw r18,r24
	subi r18,lo8(-(errorBits))
	sbci r19,hi8(-(errorBits))
	ldi r20,lo8(1)
	movw r30,r18
	st Z,r20
	.loc 1 133 0
	lsl r24
	rol r25
	movw r20,r24
	subi r20,lo8(-(currentTemperatures))
	sbci r21,hi8(-(currentTemperatures))
	movw r30,r24
	subi r30,lo8(-(deviceIDs))
	sbci r31,hi8(-(deviceIDs))
	ld r22,Z
	ldd r23,Z+1
	ldi r16,lo8(gs(onTemperatureRead))
	ldi r17,hi8(gs(onTemperatureRead))
	ldi r24,lo8(onewirepin)
	ldi r25,hi8(onewirepin)
	call readTemperature
.LVL22:
/* epilogue start */
	.loc 1 134 0
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE19:
	.size	startTemperatureConversionAndReadoutCycle, .-startTemperatureConversionAndReadoutCycle
	.section	.text.onOneSecondHasElapsedEvent,"ax",@progbits
.global	onOneSecondHasElapsedEvent
	.type	onOneSecondHasElapsedEvent, @function
onOneSecondHasElapsedEvent:
.LFB13:
	.loc 1 49 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 50 0
	lds r24,uptimeInSeconds
	lds r25,uptimeInSeconds+1
	lds r26,uptimeInSeconds+2
	lds r27,uptimeInSeconds+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts uptimeInSeconds,r24
	sts uptimeInSeconds+1,r25
	sts uptimeInSeconds+2,r26
	sts uptimeInSeconds+3,r27
	.loc 1 51 0
	call startTemperatureConversionAndReadoutCycle
.LVL23:
	ret
	.cfi_endproc
.LFE13:
	.size	onOneSecondHasElapsedEvent, .-onOneSecondHasElapsedEvent
	.section	.text.timingGeneratorForOneSecond,"ax",@progbits
.global	timingGeneratorForOneSecond
	.type	timingGeneratorForOneSecond, @function
timingGeneratorForOneSecond:
.LFB14:
	.loc 1 55 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 58 0
	lds r24,remainingNumberOfInterruptsForOneSecond.2619
	lds r25,remainingNumberOfInterruptsForOneSecond.2619+1
	or r24,r25
	brne .L12
	.loc 1 60 0
	ldi r24,lo8(-48)
	ldi r25,lo8(7)
	sts remainingNumberOfInterruptsForOneSecond.2619+1,r25
	sts remainingNumberOfInterruptsForOneSecond.2619,r24
	.loc 1 61 0
	call onOneSecondHasElapsedEvent
.LVL24:
.L12:
	.loc 1 63 0
	lds r24,remainingNumberOfInterruptsForOneSecond.2619
	lds r25,remainingNumberOfInterruptsForOneSecond.2619+1
	sbiw r24,1
	sts remainingNumberOfInterruptsForOneSecond.2619+1,r25
	sts remainingNumberOfInterruptsForOneSecond.2619,r24
	ret
	.cfi_endproc
.LFE14:
	.size	timingGeneratorForOneSecond, .-timingGeneratorForOneSecond
	.section	.rodata.str1.1
.LC1:
	.string	"\r\n\r\n"
.LC2:
	.string	"!!Uptime [s]= %-10i \r\n"
	.section	.text.onTemperatureConversionStarted,"ax",@progbits
.global	onTemperatureConversionStarted
	.type	onTemperatureConversionStarted, @function
onTemperatureConversionStarted:
.LFB17:
	.loc 1 105 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 106 0
	lds r24,indexOfTemperatureSensorBeingRead
	cpi r24,lo8(10)
	brsh .L14
	.loc 1 108 0
	call sendTelemetryViaUSART0
.LVL25:
	.loc 1 109 0
	lds r24,indexOfTemperatureSensorBeingRead
	subi r24,lo8(-(1))
	sts indexOfTemperatureSensorBeingRead,r24
	.loc 1 110 0
	call startTemperatureConversionAndReadoutCycle
.LVL26:
	ret
.L14:
	.loc 1 114 0
	call sendTelemetryViaUSART0
.LVL27:
	.loc 1 115 0
	ldi r22,lo8(4)
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call USART0_SendString
.LVL28:
	.loc 1 117 0
	lds r24,uptimeInSeconds
	lds r25,uptimeInSeconds+1
	lds r26,uptimeInSeconds+2
	lds r27,uptimeInSeconds+3
	push r27
.LCFI21:
	.cfi_def_cfa_offset 3
	push r26
.LCFI22:
	.cfi_def_cfa_offset 4
	push r25
.LCFI23:
	.cfi_def_cfa_offset 5
	push r24
.LCFI24:
	.cfi_def_cfa_offset 6
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	push r25
.LCFI25:
	.cfi_def_cfa_offset 7
	push r24
.LCFI26:
	.cfi_def_cfa_offset 8
	lds r24,uptimeString+1
	push r24
.LCFI27:
	.cfi_def_cfa_offset 9
	lds r24,uptimeString
	push r24
.LCFI28:
	.cfi_def_cfa_offset 10
	call sprintf
.LVL29:
	.loc 1 118 0
	lds r24,uptimeString
	lds r25,uptimeString+1
	movw r30,r24
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	sbiw r30,1
	movw r22,r30
	sub r22,r24
	sbc r23,r25
	call USART0_SendString
.LVL30:
	.loc 1 119 0
	sts indexOfTemperatureSensorBeingRead,__zero_reg__
	.loc 1 120 0
	call onAllTemperaturesRead
.LVL31:
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r25
	out __SREG__,__tmp_reg__
	out __SP_L__,r24
.LCFI29:
	.cfi_def_cfa_offset 2
	ret
	.cfi_endproc
.LFE17:
	.size	onTemperatureConversionStarted, .-onTemperatureConversionStarted
	.section	.text.mainInit,"ax",@progbits
.global	mainInit
	.type	mainInit, @function
mainInit:
.LFB20:
	.loc 1 137 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 138 0
	ldi r24,lo8(onewirepin)
	ldi r25,hi8(onewirepin)
	call makeInput
.LVL32:
	.loc 1 139 0
	ldi r24,lo8(onewirepin)
	ldi r25,hi8(onewirepin)
	call disablePullup
.LVL33:
	.loc 1 141 0
	ldi r24,lo8(1)
	call USART0_init
.LVL34:
	.loc 1 143 0
	ldi r24,lo8(31)
	ldi r25,0
	call malloc
.LVL35:
	sts telemetryString+1,r25
	sts telemetryString,r24
	.loc 1 144 0
	ldi r24,lo8(27)
	ldi r25,0
	call malloc
.LVL36:
	sts uptimeString+1,r25
	sts uptimeString,r24
	.loc 1 146 0
	ldi r24,lo8(2)
	call setWaveformGenerationModeTimer0
.LVL37:
	.loc 1 147 0
	ldi r24,lo8(gs(timingGeneratorForOneSecond))
	ldi r25,hi8(gs(timingGeneratorForOneSecond))
	call defineCallbackOnTimer0CaptureCompareAMatch
.LVL38:
	.loc 1 148 0
	call letTimer0GenerateInterruptEvery500us
.LVL39:
	.loc 1 149 0
	call enableTimer0CaptureCompareAInterrupt
.LVL40:
	.loc 1 151 0
	ldi r24,lo8(2)
	call setWaveformGenerationModeTimer2
.LVL41:
	.loc 1 152 0
	sts uptimeInSeconds,__zero_reg__
	sts uptimeInSeconds+1,__zero_reg__
	sts uptimeInSeconds+2,__zero_reg__
	sts uptimeInSeconds+3,__zero_reg__
	.loc 1 153 0
/* #APP */
 ;  153 ".././main.c" 1
	sei
 ;  0 "" 2
	.loc 1 155 0
/* #NOAPP */
	call startTemperatureConversionAndReadoutCycle
.LVL42:
	ret
	.cfi_endproc
.LFE20:
	.size	mainInit, .-mainInit
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(mainInit)
	.section	.text.mainEnd,"ax",@progbits
.global	mainEnd
	.type	mainEnd, @function
mainEnd:
.LFB21:
	.loc 1 159 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 160 0
	lds r24,telemetryString
	lds r25,telemetryString+1
	call free
.LVL43:
	.loc 1 161 0
	lds r24,uptimeString
	lds r25,uptimeString+1
	call free
.LVL44:
	ret
	.cfi_endproc
.LFE21:
	.size	mainEnd, .-mainEnd
	.global __do_global_dtors
	.section .dtors,"a",@progbits
	.p2align	1
	.word	gs(mainEnd)
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB22:
	.loc 1 166 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L19:
	rjmp .L19
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.section	.data.remainingNumberOfInterruptsForOneSecond.2619,"aw",@progbits
	.type	remainingNumberOfInterruptsForOneSecond.2619, @object
	.size	remainingNumberOfInterruptsForOneSecond.2619, 2
remainingNumberOfInterruptsForOneSecond.2619:
	.word	2000
.global	indexOfTemperatureSensorBeingRead
	.section	.bss.indexOfTemperatureSensorBeingRead,"aw",@nobits
	.type	indexOfTemperatureSensorBeingRead, @object
	.size	indexOfTemperatureSensorBeingRead, 1
indexOfTemperatureSensorBeingRead:
	.zero	1
	.section	.bss.uptimeInSeconds,"aw",@nobits
	.type	uptimeInSeconds, @object
	.size	uptimeInSeconds, 4
uptimeInSeconds:
	.zero	4
	.section	.bss.uptimeString,"aw",@nobits
	.type	uptimeString, @object
	.size	uptimeString, 2
uptimeString:
	.zero	2
	.section	.bss.telemetryString,"aw",@nobits
	.type	telemetryString, @object
	.size	telemetryString, 2
telemetryString:
	.zero	2
	.comm	errorBits,11,1
.global	currentTemperatures
	.section	.bss.currentTemperatures,"aw",@nobits
	.type	currentTemperatures, @object
	.size	currentTemperatures, 22
currentTemperatures:
	.zero	22
.global	idByte
	.section	.bss.idByte,"aw",@nobits
	.type	idByte, @object
	.size	idByte, 1
idByte:
	.zero	1
.global	deviceIDs
	.section	.data.deviceIDs,"aw",@progbits
	.type	deviceIDs, @object
	.size	deviceIDs, 22
deviceIDs:
	.word	deviceIDThermocouple
	.word	deviceID0
	.word	deviceID1
	.word	deviceID2
	.word	deviceID3
	.word	deviceID4
	.word	deviceID5
	.word	deviceID6
	.word	deviceID7
	.word	deviceID8
	.word	deviceID9
.global	deviceIDThermocouple
	.section	.rodata.deviceIDThermocouple,"a",@progbits
	.type	deviceIDThermocouple, @object
	.size	deviceIDThermocouple, 8
deviceIDThermocouple:
	.byte	59
	.byte	25
	.byte	43
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	-61
.global	deviceID9
	.section	.rodata.deviceID9,"a",@progbits
	.type	deviceID9, @object
	.size	deviceID9, 8
deviceID9:
	.byte	40
	.byte	-109
	.byte	-83
	.byte	-61
	.byte	3
	.byte	0
	.byte	0
	.byte	124
.global	deviceID8
	.section	.rodata.deviceID8,"a",@progbits
	.type	deviceID8, @object
	.size	deviceID8, 8
deviceID8:
	.byte	40
	.byte	113
	.byte	-13
	.byte	-101
	.byte	3
	.byte	0
	.byte	0
	.byte	-56
.global	deviceID7
	.section	.rodata.deviceID7,"a",@progbits
	.type	deviceID7, @object
	.size	deviceID7, 8
deviceID7:
	.byte	40
	.byte	62
	.byte	-48
	.byte	-61
	.byte	3
	.byte	0
	.byte	0
	.byte	-21
.global	deviceID6
	.section	.rodata.deviceID6,"a",@progbits
	.type	deviceID6, @object
	.size	deviceID6, 8
deviceID6:
	.byte	40
	.byte	-98
	.byte	-83
	.byte	-61
	.byte	3
	.byte	0
	.byte	0
	.byte	54
.global	deviceID5
	.section	.rodata.deviceID5,"a",@progbits
	.type	deviceID5, @object
	.size	deviceID5, 8
deviceID5:
	.byte	40
	.byte	-52
	.byte	-98
	.byte	-61
	.byte	3
	.byte	0
	.byte	0
	.byte	-68
.global	deviceID4
	.section	.rodata.deviceID4,"a",@progbits
	.type	deviceID4, @object
	.size	deviceID4, 8
deviceID4:
	.byte	40
	.byte	12
	.byte	-65
	.byte	-61
	.byte	3
	.byte	0
	.byte	0
	.byte	22
.global	deviceID3
	.section	.rodata.deviceID3,"a",@progbits
	.type	deviceID3, @object
	.size	deviceID3, 8
deviceID3:
	.byte	40
	.byte	4
	.byte	-34
	.byte	-61
	.byte	3
	.byte	0
	.byte	0
	.byte	107
.global	deviceID2
	.section	.rodata.deviceID2,"a",@progbits
	.type	deviceID2, @object
	.size	deviceID2, 8
deviceID2:
	.byte	40
	.byte	-88
	.byte	-80
	.byte	-61
	.byte	3
	.byte	0
	.byte	0
	.byte	-7
.global	deviceID1
	.section	.rodata.deviceID1,"a",@progbits
	.type	deviceID1, @object
	.size	deviceID1, 8
deviceID1:
	.byte	40
	.byte	-96
	.byte	-55
	.byte	-61
	.byte	3
	.byte	0
	.byte	0
	.byte	-58
.global	deviceID0
	.section	.rodata.deviceID0,"a",@progbits
	.type	deviceID0, @object
	.size	deviceID0, 8
deviceID0:
	.byte	40
	.byte	126
	.byte	-96
	.byte	-68
	.byte	5
	.byte	0
	.byte	0
	.byte	16
.global	onewirepin
	.section	.data.onewirepin,"aw",@progbits
	.type	onewirepin, @object
	.size	onewirepin, 8
onewirepin:
	.word	42
	.word	41
	.word	43
	.byte	2
	.byte	0
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././Timer0.h"
	.file 4 ".././Timer2.h"
	.file 5 ".././GPIO Pin.h"
	.file 6 ".././UART.h"
	.file 7 ".././DS18B20.h"
	.file 8 ".././MAX31850.h"
	.file 9 ".././marcsLanguageExtension.h"
	.file 10 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h"
	.file 11 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x887
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF102
	.byte	0xc
	.long	.LASF103
	.long	.LASF104
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7f
	.long	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x80
	.long	0x5f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x82
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.byte	0xf
	.long	0xca
	.uleb128 0x6
	.long	.LASF11
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.uleb128 0x6
	.long	.LASF15
	.byte	0x4
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.uleb128 0x6
	.long	.LASF17
	.byte	0x6
	.uleb128 0x6
	.long	.LASF18
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	0x3b
	.byte	0x4
	.byte	0xf
	.long	0x107
	.uleb128 0x6
	.long	.LASF19
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.uleb128 0x6
	.long	.LASF22
	.byte	0x3
	.uleb128 0x6
	.long	.LASF23
	.byte	0x4
	.uleb128 0x6
	.long	.LASF24
	.byte	0x5
	.uleb128 0x6
	.long	.LASF25
	.byte	0x6
	.uleb128 0x6
	.long	.LASF26
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0xb
	.long	0x156
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.byte	0xd
	.long	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.byte	0xe
	.long	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.byte	0xf
	.long	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.byte	0x11
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.byte	0x12
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x15c
	.uleb128 0xa
	.long	0x30
	.uleb128 0xb
	.long	0x156
	.uleb128 0xb
	.long	0x30
	.uleb128 0x3
	.long	.LASF32
	.byte	0x5
	.byte	0x13
	.long	0x107
	.uleb128 0x9
	.byte	0x2
	.long	0x17c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF33
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF34
	.uleb128 0x5
	.byte	0x1
	.long	0x3b
	.byte	0x6
	.byte	0xc
	.long	0x1d9
	.uleb128 0x6
	.long	.LASF35
	.byte	0
	.uleb128 0x6
	.long	.LASF36
	.byte	0x1
	.uleb128 0x6
	.long	.LASF37
	.byte	0x2
	.uleb128 0x6
	.long	.LASF38
	.byte	0x3
	.uleb128 0x6
	.long	.LASF39
	.byte	0x4
	.uleb128 0x6
	.long	.LASF40
	.byte	0x5
	.uleb128 0x6
	.long	.LASF41
	.byte	0x6
	.uleb128 0x6
	.long	.LASF42
	.byte	0x7
	.uleb128 0x6
	.long	.LASF43
	.byte	0x8
	.uleb128 0x6
	.long	.LASF44
	.byte	0x9
	.uleb128 0x6
	.long	.LASF45
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.long	.LASF46
	.byte	0x7
	.byte	0x10
	.long	0x42
	.uleb128 0xc
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x22a
	.uleb128 0xd
	.long	.LVL0
	.long	0x776
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onewirepin
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onTemperatureConversionStarted
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST0
	.byte	0x1
	.long	0x348
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.byte	0x4b
	.long	0x1d9
	.long	.LLST1
	.uleb128 0x11
	.long	.LASF50
	.byte	0x1
	.byte	0x4d
	.long	0x17c
	.long	.LLST2
	.uleb128 0x11
	.long	.LASF51
	.byte	0x1
	.byte	0x4e
	.long	0x30
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.byte	0x4f
	.long	0x54
	.long	.LLST4
	.uleb128 0x12
	.long	.LVL2
	.long	0x783
	.long	0x2af
	.uleb128 0xe
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
	.long	.LVL4
	.long	0x790
	.long	0x2c8
	.uleb128 0xe
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
	.long	.LVL6
	.long	0x79d
	.long	0x2e1
	.uleb128 0xe
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
	.long	.LVL8
	.long	0x7aa
	.long	0x2fa
	.uleb128 0xe
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
	.long	.LVL10
	.long	0x7b7
	.long	0x313
	.uleb128 0xe
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
	.long	.LVL12
	.long	0x7c4
	.long	0x32c
	.uleb128 0xe
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
	.uleb128 0x13
	.long	.LVL14
	.long	0x7d1
	.uleb128 0x13
	.long	.LVL17
	.long	0x7de
	.uleb128 0x13
	.long	.LVL18
	.long	0x7ec
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST5
	.byte	0x1
	.long	0x386
	.uleb128 0xd
	.long	.LVL22
	.long	0x7f9
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onewirepin
	.uleb128 0xe
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3aa
	.uleb128 0x13
	.long	.LVL23
	.long	0x348
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3df
	.uleb128 0x14
	.long	.LASF56
	.byte	0x1
	.byte	0x38
	.long	0x54
	.byte	0x5
	.byte	0x3
	.long	remainingNumberOfInterruptsForOneSecond.2619
	.uleb128 0x13
	.long	.LVL24
	.long	0x386
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST6
	.byte	0x1
	.long	0x451
	.uleb128 0x13
	.long	.LVL25
	.long	0x240
	.uleb128 0x13
	.long	.LVL26
	.long	0x348
	.uleb128 0x13
	.long	.LVL27
	.long	0x240
	.uleb128 0x12
	.long	.LVL28
	.long	0x7ec
	.long	0x435
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.long	.LVL29
	.long	0x7de
	.uleb128 0x13
	.long	.LVL30
	.long	0x7ec
	.uleb128 0x13
	.long	.LVL31
	.long	0x22a
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x544
	.uleb128 0x12
	.long	.LVL32
	.long	0x806
	.long	0x487
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onewirepin
	.byte	0
	.uleb128 0x12
	.long	.LVL33
	.long	0x813
	.long	0x4a3
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	onewirepin
	.byte	0
	.uleb128 0x12
	.long	.LVL34
	.long	0x820
	.long	0x4b6
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.long	.LVL35
	.long	0x82d
	.long	0x4ce
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x12
	.long	.LVL36
	.long	0x82d
	.long	0x4e6
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x4b
	.byte	0
	.uleb128 0x12
	.long	.LVL37
	.long	0x83b
	.long	0x4f9
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x12
	.long	.LVL38
	.long	0x848
	.long	0x515
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	timingGeneratorForOneSecond
	.byte	0
	.uleb128 0x13
	.long	.LVL39
	.long	0x855
	.uleb128 0x13
	.long	.LVL40
	.long	0x862
	.uleb128 0x12
	.long	.LVL41
	.long	0x86f
	.long	0x53a
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.long	.LVL42
	.long	0x348
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x571
	.uleb128 0x13
	.long	.LVL43
	.long	0x87c
	.uleb128 0x13
	.long	.LVL44
	.long	0x87c
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0x2a
	.long	0x176
	.byte	0x5
	.byte	0x3
	.long	telemetryString
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.byte	0x2b
	.long	0x176
	.byte	0x5
	.byte	0x3
	.long	uptimeString
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.byte	0x2c
	.long	0x5bb
	.byte	0x5
	.byte	0x3
	.long	uptimeInSeconds
	.uleb128 0xa
	.long	0x6d
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.byte	0x14
	.long	0x16b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	onewirepin
	.uleb128 0x17
	.long	0x166
	.long	0x5e2
	.uleb128 0x18
	.long	0x183
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.byte	0x16
	.long	0x5f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID0
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.byte	0x17
	.long	0x60b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID1
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0x18
	.long	0x622
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID2
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0x19
	.long	0x639
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID3
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF68
	.byte	0x1
	.byte	0x1a
	.long	0x650
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID4
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0x1b
	.long	0x667
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID5
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.byte	0x1c
	.long	0x67e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID6
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.byte	0x1d
	.long	0x695
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID7
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0x1e
	.long	0x6ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID8
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF73
	.byte	0x1
	.byte	0x1f
	.long	0x6c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceID9
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.byte	0x21
	.long	0x6da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceIDThermocouple
	.uleb128 0xb
	.long	0x5d2
	.uleb128 0x17
	.long	0x6ef
	.long	0x6ef
	.uleb128 0x18
	.long	0x183
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x166
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.byte	0x25
	.long	0x6df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	deviceIDs
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x27
	.long	0x15c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	idByte
	.uleb128 0x17
	.long	0x1d9
	.long	0x729
	.uleb128 0x18
	.long	0x183
	.byte	0xa
	.byte	0
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.byte	0x28
	.long	0x719
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	currentTemperatures
	.uleb128 0x17
	.long	0x74b
	.long	0x74b
	.uleb128 0x18
	.long	0x183
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF78
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.byte	0x29
	.long	0x73b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	errorBits
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.byte	0x42
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	indexOfTemperatureSensorBeingRead
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF81
	.long	.LASF81
	.byte	0x7
	.byte	0x12
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF82
	.long	.LASF82
	.byte	0x7
	.byte	0x15
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF83
	.long	.LASF83
	.byte	0x7
	.byte	0x16
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF84
	.long	.LASF84
	.byte	0x7
	.byte	0x17
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF85
	.long	.LASF85
	.byte	0x8
	.byte	0x10
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF86
	.long	.LASF86
	.byte	0x8
	.byte	0x11
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF87
	.long	.LASF87
	.byte	0x8
	.byte	0x12
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF88
	.long	.LASF88
	.byte	0x9
	.byte	0xf
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF89
	.long	.LASF89
	.byte	0xa
	.word	0x29f
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF90
	.long	.LASF90
	.byte	0x6
	.byte	0x1b
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF91
	.long	.LASF91
	.byte	0x7
	.byte	0x13
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF92
	.long	.LASF92
	.byte	0x5
	.byte	0x23
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF93
	.long	.LASF93
	.byte	0x5
	.byte	0x26
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF94
	.long	.LASF94
	.byte	0x6
	.byte	0x1a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF95
	.long	.LASF95
	.byte	0xb
	.word	0x12c
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF96
	.long	.LASF96
	.byte	0x3
	.byte	0x26
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF97
	.long	.LASF97
	.byte	0x3
	.byte	0x2c
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF98
	.long	.LASF98
	.byte	0x3
	.byte	0x2d
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF99
	.long	.LASF99
	.byte	0x3
	.byte	0x2b
	.uleb128 0x19
	.byte	0x1
	.byte	0x1
	.long	.LASF100
	.long	.LASF100
	.byte	0x4
	.byte	0x26
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF101
	.long	.LASF101
	.byte	0xb
	.word	0x133
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x87
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.long	.LFB16
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
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI18
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL19
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.word	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.long	.LVL3
	.long	.LVL7
	.word	0x1
	.byte	0x61
	.long	.LVL7
	.long	.LVL9
	.word	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.long	.LVL9
	.long	.LVL13
	.word	0x1
	.byte	0x61
	.long	.LVL13
	.long	.LVL15
	.word	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.long	.LVL15
	.long	.LVL20
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL5
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL5
	.long	.LVL7
	.word	0x1
	.byte	0x60
	.long	.LVL7
	.long	.LVL11
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.word	0x1
	.byte	0x60
	.long	.LVL13
	.long	.LVL15
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL15
	.long	.LVL21
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL6
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
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
	.long	.LVL12
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
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
	.long	.LVL15
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
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
	.long	.LVL17-1
	.word	0x7
	.byte	0x91
	.sleb128 -7
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LFB19
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI20
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LFB17
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI29
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB18
	.long	.LFE18
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB19
	.long	.LFE19
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB17
	.long	.LFE17
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"mainEnd"
.LASF95:
	.string	"malloc"
.LASF12:
	.string	"WaveformGenerationModeTimer0_PWM_PhaseCorrect"
.LASF89:
	.string	"sprintf"
.LASF76:
	.string	"idByte"
.LASF61:
	.string	"uptimeString"
.LASF10:
	.string	"long long unsigned int"
.LASF82:
	.string	"getSignOfSigned7Point4Fixed"
.LASF38:
	.string	"USARTBaudRate_19200"
.LASF101:
	.string	"free"
.LASF40:
	.string	"USARTBaudRate_38400"
.LASF45:
	.string	"USARTBaudRate_256000"
.LASF42:
	.string	"USARTBaudRate_57600"
.LASF93:
	.string	"disablePullup"
.LASF3:
	.string	"int16_t"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF63:
	.string	"onewirepin"
.LASF85:
	.string	"getSignOfSigned11Point2Fixed"
.LASF46:
	.string	"signed7Point4Fixed_t"
.LASF48:
	.string	"sendTelemetryViaUSART0"
.LASF6:
	.string	"long int"
.LASF16:
	.string	"WaveformGenerationModeTimer0_PWM_PhaseCorrect_To_OCRA"
.LASF13:
	.string	"WaveformGenerationModeTimer0_CTC"
.LASF84:
	.string	"getNonIntegerPartOfSigned7Point4Fixed"
.LASF4:
	.string	"uint16_t"
.LASF43:
	.string	"USARTBaudRate_115200"
.LASF56:
	.string	"remainingNumberOfInterruptsForOneSecond"
.LASF74:
	.string	"deviceIDThermocouple"
.LASF100:
	.string	"setWaveformGenerationModeTimer2"
.LASF37:
	.string	"USARTBaudRate_14400"
.LASF88:
	.string	"deathTrap"
.LASF5:
	.string	"unsigned int"
.LASF15:
	.string	"WaveformGenerationModeTimer0_RESERVED0"
.LASF17:
	.string	"WaveformGenerationModeTimer0_RESERVED1"
.LASF102:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF98:
	.string	"letTimer0GenerateInterruptEvery500us"
.LASF8:
	.string	"long unsigned int"
.LASF24:
	.string	"WaveformGenerationModeTimer2_PWM_PhaseCorrect_To_OCRA"
.LASF54:
	.string	"onOneSecondHasElapsedEvent"
.LASF36:
	.string	"USARTBaudRate_9600"
.LASF86:
	.string	"getIntegerPartOfSigned11Point2Fixed"
.LASF103:
	.string	".././main.c"
.LASF96:
	.string	"setWaveformGenerationModeTimer0"
.LASF94:
	.string	"USART0_init"
.LASF57:
	.string	"onTemperatureConversionStarted"
.LASF51:
	.string	"intPart"
.LASF92:
	.string	"makeInput"
.LASF21:
	.string	"WaveformGenerationModeTimer2_CTC"
.LASF29:
	.string	"PORTx"
.LASF34:
	.string	"sizetype"
.LASF91:
	.string	"readTemperature"
.LASF79:
	.string	"errorBits"
.LASF23:
	.string	"WaveformGenerationModeTimer2_RESERVED0"
.LASF25:
	.string	"WaveformGenerationModeTimer2_RESERVED1"
.LASF26:
	.string	"WaveformGenerationModeTimer2_FastPWM_To_OCRA"
.LASF80:
	.string	"indexOfTemperatureSensorBeingRead"
.LASF90:
	.string	"USART0_SendString"
.LASF49:
	.string	"currentTemperature"
.LASF11:
	.string	"WaveformGenerationModeTimer0_Normal"
.LASF47:
	.string	"onTemperatureRead"
.LASF41:
	.string	"USARTBaudRate_56000"
.LASF77:
	.string	"currentTemperatures"
.LASF30:
	.string	"pinNumber"
.LASF31:
	.string	"INTx"
.LASF78:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"WaveformGenerationModeTimer2_PWM_PhaseCorrect"
.LASF83:
	.string	"getIntegerPartOfSigned7Point4Fixed"
.LASF14:
	.string	"WaveformGenerationModeTimer0_FastPWM"
.LASF35:
	.string	"USARTBaudRate_Reset"
.LASF99:
	.string	"enableTimer0CaptureCompareAInterrupt"
.LASF27:
	.string	"DDRx"
.LASF53:
	.string	"startTemperatureConversionAndReadoutCycle"
.LASF7:
	.string	"uint32_t"
.LASF97:
	.string	"defineCallbackOnTimer0CaptureCompareAMatch"
.LASF33:
	.string	"char"
.LASF60:
	.string	"telemetryString"
.LASF39:
	.string	"USARTBaudRate_28800"
.LASF64:
	.string	"deviceID0"
.LASF65:
	.string	"deviceID1"
.LASF66:
	.string	"deviceID2"
.LASF67:
	.string	"deviceID3"
.LASF68:
	.string	"deviceID4"
.LASF69:
	.string	"deviceID5"
.LASF70:
	.string	"deviceID6"
.LASF71:
	.string	"deviceID7"
.LASF72:
	.string	"deviceID8"
.LASF73:
	.string	"deviceID9"
.LASF58:
	.string	"mainInit"
.LASF62:
	.string	"uptimeInSeconds"
.LASF32:
	.string	"GPIOPin_t"
.LASF18:
	.string	"WaveformGenerationModeTimer0_FastPWM_To_OCRA"
.LASF2:
	.string	"uint8_t"
.LASF44:
	.string	"USARTBaudRate_128000"
.LASF50:
	.string	"sign"
.LASF75:
	.string	"deviceIDs"
.LASF55:
	.string	"timingGeneratorForOneSecond"
.LASF105:
	.string	"onAllTemperaturesRead"
.LASF81:
	.string	"issueTemperatureConversion"
.LASF28:
	.string	"PINx"
.LASF22:
	.string	"WaveformGenerationModeTimer2_FastPWM"
.LASF106:
	.string	"main"
.LASF52:
	.string	"nonIntPart"
.LASF19:
	.string	"WaveformGenerationModeTimer2_Normal"
.LASF87:
	.string	"getNonIntegerPartOfSigned11Point2Fixed"
.LASF104:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\\\Timer\\\\Timer\\\\Debug"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
