	.file	"UART.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.setBaudrate,"ax",@progbits
.global	setBaudrate
	.type	setBaudrate, @function
setBaudrate:
.LFB0:
	.file 1 ".././UART.c"
	.loc 1 13 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 14 0
	ldi r25,0
	movw r30,r24
	sbiw r30,1
	cpi r30,10
	cpc r31,__zero_reg__
	brlo .+2
	rjmp .L2
	subi r30,lo8(-(gs(.L4)))
	sbci r31,hi8(-(gs(.L4)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.setBaudrate,"a",@progbits
	.p2align	1
.L4:
	.word gs(.L3)
	.word gs(.L5)
	.word gs(.L6)
	.word gs(.L7)
	.word gs(.L8)
	.word gs(.L9)
	.word gs(.L10)
	.word gs(.L11)
	.word gs(.L12)
	.word gs(.L13)
	.section	.text.setBaudrate
.L3:
	.loc 1 17 0
	sts 197,__zero_reg__
	.loc 1 18 0
	ldi r24,lo8(-48)
.LVL1:
	sts 196,r24
	.loc 1 19 0
	ret
.LVL2:
.L5:
	.loc 1 21 0
	sts 197,__zero_reg__
	.loc 1 22 0
	ldi r24,lo8(-118)
.LVL3:
	sts 196,r24
	.loc 1 23 0
	ret
.LVL4:
.L6:
	.loc 1 25 0
	sts 197,__zero_reg__
	.loc 1 26 0
	ldi r24,lo8(104)
.LVL5:
	sts 196,r24
	.loc 1 27 0
	ret
.LVL6:
.L7:
	.loc 1 29 0
	sts 197,__zero_reg__
	.loc 1 30 0
	ldi r24,lo8(69)
.LVL7:
	sts 196,r24
	.loc 1 31 0
	ret
.LVL8:
.L8:
	.loc 1 33 0
	sts 197,__zero_reg__
	.loc 1 34 0
	ldi r24,lo8(52)
.LVL9:
	sts 196,r24
	.loc 1 35 0
	ret
.LVL10:
.L9:
	.loc 1 37 0
	sts 197,__zero_reg__
	.loc 1 38 0
	ldi r24,lo8(35)
.LVL11:
	sts 196,r24
	.loc 1 39 0
	ret
.LVL12:
.L10:
	.loc 1 41 0
	sts 197,__zero_reg__
	.loc 1 42 0
	ldi r24,lo8(34)
.LVL13:
	sts 196,r24
	.loc 1 43 0
	ret
.LVL14:
.L11:
	.loc 1 45 0
	sts 197,__zero_reg__
	.loc 1 46 0
	ldi r24,lo8(17)
.LVL15:
	sts 196,r24
	.loc 1 47 0
	ret
.LVL16:
.L12:
	.loc 1 49 0
	sts 197,__zero_reg__
	.loc 1 50 0
	ldi r24,lo8(15)
.LVL17:
	sts 196,r24
	.loc 1 51 0
	ret
.LVL18:
.L13:
	.loc 1 53 0
	sts 197,__zero_reg__
	.loc 1 54 0
	ldi r24,lo8(7)
.LVL19:
	sts 196,r24
	.loc 1 55 0
	ret
.LVL20:
.L2:
	.loc 1 57 0
	ldi r24,lo8(1)
.LVL21:
	call setBaudrate
.LVL22:
	ret
	.cfi_endproc
.LFE0:
	.size	setBaudrate, .-setBaudrate
	.section	.text.USART0_init,"ax",@progbits
.global	USART0_init
	.type	USART0_init, @function
USART0_init:
.LFB1:
	.loc 1 63 0
	.cfi_startproc
.LVL23:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 64 0
	call setBaudrate
.LVL24:
	.loc 1 65 0
	ldi r30,lo8(-64)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	.loc 1 66 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(8)
	st Z,r24
	.loc 1 67 0
	ldi r30,lo8(-62)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	ret
	.cfi_endproc
.LFE1:
	.size	USART0_init, .-USART0_init
	.section	.text.USART0_enableDataRegisterEmptyInterrupt,"ax",@progbits
.global	USART0_enableDataRegisterEmptyInterrupt
	.type	USART0_enableDataRegisterEmptyInterrupt, @function
USART0_enableDataRegisterEmptyInterrupt:
.LFB2:
	.loc 1 71 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 72 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
	.cfi_endproc
.LFE2:
	.size	USART0_enableDataRegisterEmptyInterrupt, .-USART0_enableDataRegisterEmptyInterrupt
	.section	.text.USART0_disableDataRegisterEmptyInterrupt,"ax",@progbits
.global	USART0_disableDataRegisterEmptyInterrupt
	.type	USART0_disableDataRegisterEmptyInterrupt, @function
USART0_disableDataRegisterEmptyInterrupt:
.LFB3:
	.loc 1 76 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 77 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
	ret
	.cfi_endproc
.LFE3:
	.size	USART0_disableDataRegisterEmptyInterrupt, .-USART0_disableDataRegisterEmptyInterrupt
	.section	.text.USART0_SendString,"ax",@progbits
.global	USART0_SendString
	.type	USART0_SendString, @function
USART0_SendString:
.LFB4:
	.loc 1 81 0
	.cfi_startproc
.LVL25:
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
.LVL26:
.LBB2:
	.loc 1 82 0
	tst r22
	breq .L19
	movw r28,r24
	subi r22,lo8(-(-1))
.LVL27:
	mov r16,r22
	ldi r17,0
	subi r16,-1
	sbci r17,-1
	add r16,r24
	adc r17,r25
.LVL28:
.L20:
	.loc 1 84 0 discriminator 3
	ld r22,Y+
.LVL29:
	ldi r24,lo8(txBuffer)
	ldi r25,hi8(txBuffer)
	call writeToBuffer
.LVL30:
	.loc 1 82 0 discriminator 3
	cp r28,r16
	cpc r29,r17
	brne .L20
.LVL31:
.L19:
.LBE2:
	.loc 1 86 0
	call USART0_enableDataRegisterEmptyInterrupt
.LVL32:
/* epilogue start */
	.loc 1 87 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE4:
	.size	USART0_SendString, .-USART0_SendString
	.section	.text.USART0_SendChar,"ax",@progbits
.global	USART0_SendChar
	.type	USART0_SendChar, @function
USART0_SendChar:
.LFB5:
	.loc 1 90 0
	.cfi_startproc
.LVL33:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 91 0
	mov r22,r24
	ldi r24,lo8(txBuffer)
	ldi r25,hi8(txBuffer)
.LVL34:
	call writeToBuffer
.LVL35:
	.loc 1 92 0
	call USART0_enableDataRegisterEmptyInterrupt
.LVL36:
	ret
	.cfi_endproc
.LFE5:
	.size	USART0_SendChar, .-USART0_SendChar
	.section	.text.__vector_19,"ax",@progbits
.global	__vector_19
	.type	__vector_19, @function
__vector_19:
.LFB6:
	.loc 1 96 0
	.cfi_startproc
	push r1
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI8:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI10:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI11:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI12:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI13:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI14:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI15:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI16:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI17:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 98 0
	ldi r30,lo8(-64)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	.loc 1 99 0
	ldi r24,lo8(txBuffer)
	ldi r25,hi8(txBuffer)
	call bytesAvailableInBuffer
.LVL37:
	or r24,r25
	breq .L24
	.loc 1 100 0
	ldi r24,lo8(txBuffer)
	ldi r25,hi8(txBuffer)
	call readFromBuffer
.LVL38:
	sts 198,r24
	rjmp .L23
.L24:
	.loc 1 103 0
	call USART0_disableDataRegisterEmptyInterrupt
.LVL39:
.L23:
/* epilogue start */
	.loc 1 105 0
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
	.size	__vector_19, .-__vector_19
	.section	.bss.txBuffer,"aw",@nobits
	.type	txBuffer, @object
	.size	txBuffer, 1028
txBuffer:
	.zero	1028
	.text
.Letext0:
	.file 2 ".././GenericBuffer.h"
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././UART.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x34e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF40
	.byte	0xc
	.long	.LASF41
	.long	.LASF42
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF11
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
	.uleb128 0x5
	.word	0x404
	.byte	0x2
	.byte	0xa
	.long	0xa0
	.uleb128 0x6
	.long	.LASF7
	.byte	0x2
	.byte	0xc
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF8
	.byte	0x2
	.byte	0xd
	.long	0xa0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0xe
	.long	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.long	0x49
	.uleb128 0x8
	.long	0xbd
	.long	0xb6
	.uleb128 0x9
	.long	0xb6
	.word	0x3ff
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	0x3b
	.uleb128 0x7
	.long	0xa5
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0xf
	.long	0x6c
	.uleb128 0xa
	.byte	0x1
	.long	0x3b
	.byte	0x4
	.byte	0xc
	.long	0x121
	.uleb128 0xb
	.long	.LASF13
	.byte	0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.uleb128 0xb
	.long	.LASF16
	.byte	0x3
	.uleb128 0xb
	.long	.LASF17
	.byte	0x4
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.uleb128 0xb
	.long	.LASF20
	.byte	0x7
	.uleb128 0xb
	.long	.LASF21
	.byte	0x8
	.uleb128 0xb
	.long	.LASF22
	.byte	0x9
	.uleb128 0xb
	.long	.LASF23
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x18
	.long	0xd2
	.uleb128 0xc
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x165
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.byte	0xc
	.long	0x165
	.long	.LLST0
	.uleb128 0xe
	.long	.LVL22
	.long	0x12c
	.uleb128 0xf
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x121
	.uleb128 0xc
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1a5
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.byte	0x3e
	.long	0x165
	.long	.LLST1
	.uleb128 0xe
	.long	.LVL24
	.long	0x12c
	.uleb128 0xf
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.long	.LLST2
	.byte	0x1
	.long	0x246
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0x50
	.long	0x258
	.long	.LLST3
	.uleb128 0xd
	.long	.LASF32
	.byte	0x1
	.byte	0x50
	.long	0x25d
	.long	.LLST4
	.uleb128 0x13
	.long	.LBB2
	.long	.LBE2
	.long	0x23c
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x52
	.long	0x30
	.long	.LLST5
	.uleb128 0xe
	.long	.LVL30
	.long	0x32a
	.uleb128 0xf
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	txBuffer
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LVL32
	.long	0x1a5
	.byte	0
	.uleb128 0x16
	.byte	0x2
	.long	0x253
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF33
	.uleb128 0x10
	.long	0x24c
	.uleb128 0x10
	.long	0x246
	.uleb128 0x10
	.long	0x30
	.uleb128 0xc
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2b8
	.uleb128 0x17
	.string	"chr"
	.byte	0x1
	.byte	0x59
	.long	0x253
	.long	.LLST6
	.uleb128 0x18
	.long	.LVL35
	.long	0x32a
	.long	0x2ae
	.uleb128 0xf
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	txBuffer
	.uleb128 0xf
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0x15
	.long	.LVL36
	.long	0x1a5
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST7
	.byte	0x1
	.long	0x314
	.uleb128 0x18
	.long	.LVL37
	.long	0x337
	.long	0x2ee
	.uleb128 0xf
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	txBuffer
	.byte	0
	.uleb128 0x18
	.long	.LVL38
	.long	0x344
	.long	0x30a
	.uleb128 0xf
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	txBuffer
	.byte	0
	.uleb128 0x15
	.long	.LVL39
	.long	0x1bb
	.byte	0
	.uleb128 0x19
	.long	.LASF36
	.byte	0x1
	.byte	0xa
	.long	0x325
	.byte	0x5
	.byte	0x3
	.long	txBuffer
	.uleb128 0x7
	.long	0xc7
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF37
	.long	.LASF37
	.byte	0x2
	.byte	0x12
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF38
	.long	.LASF38
	.byte	0x2
	.byte	0x14
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF39
	.long	.LASF39
	.byte	0x2
	.byte	0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LVL4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x68
	.long	.LVL11
	.long	.LVL12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	.LVL15
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LFE0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL23
	.long	.LVL24-1
	.word	0x1
	.byte	0x68
	.long	.LVL24-1
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LFB4
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
	.long	.LFE4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST3:
	.long	.LVL25
	.long	.LVL28
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL25
	.long	.LVL27
	.word	0x1
	.byte	0x66
	.long	.LVL27
	.long	.LVL28
	.word	0x3
	.byte	0x86
	.sleb128 1
	.byte	0x9f
	.long	.LVL28
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL26
	.long	.LVL28
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.word	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.word	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x20
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.word	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	.LVL34
	.long	.LVL35-1
	.word	0x1
	.byte	0x66
	.long	.LVL35-1
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
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI17
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
.LASF37:
	.string	"writeToBuffer"
.LASF20:
	.string	"USARTBaudRate_57600"
.LASF18:
	.string	"USARTBaudRate_38400"
.LASF42:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\\\Timer\\\\Timer\\\\Debug"
.LASF16:
	.string	"USARTBaudRate_19200"
.LASF23:
	.string	"USARTBaudRate_256000"
.LASF17:
	.string	"USARTBaudRate_28800"
.LASF40:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF35:
	.string	"__vector_19"
.LASF1:
	.string	"unsigned char"
.LASF21:
	.string	"USARTBaudRate_115200"
.LASF36:
	.string	"txBuffer"
.LASF4:
	.string	"long unsigned int"
.LASF39:
	.string	"readFromBuffer"
.LASF13:
	.string	"USARTBaudRate_Reset"
.LASF12:
	.string	"GenericBuffers_t"
.LASF25:
	.string	"setBaudrate"
.LASF29:
	.string	"USART0_disableDataRegisterEmptyInterrupt"
.LASF22:
	.string	"USARTBaudRate_128000"
.LASF2:
	.string	"unsigned int"
.LASF34:
	.string	"USART0_SendChar"
.LASF6:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF31:
	.string	"string"
.LASF10:
	.string	"sizetype"
.LASF26:
	.string	"USART0_init"
.LASF5:
	.string	"long long int"
.LASF19:
	.string	"USARTBaudRate_56000"
.LASF15:
	.string	"USARTBaudRate_14400"
.LASF14:
	.string	"USARTBaudRate_9600"
.LASF41:
	.string	".././UART.c"
.LASF30:
	.string	"USART0_SendString"
.LASF9:
	.string	"buffer"
.LASF28:
	.string	"USART0_enableDataRegisterEmptyInterrupt"
.LASF8:
	.string	"rdIndx"
.LASF3:
	.string	"long int"
.LASF33:
	.string	"char"
.LASF27:
	.string	"baudrate"
.LASF7:
	.string	"wrIndx"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"USARTBaudRate_t"
.LASF32:
	.string	"length"
.LASF38:
	.string	"bytesAvailableInBuffer"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
