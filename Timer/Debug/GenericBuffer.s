	.file	"GenericBuffer.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__initBufferWithZeros,"ax",@progbits
.global	__initBufferWithZeros
	.type	__initBufferWithZeros, @function
__initBufferWithZeros:
.LFB0:
	.file 1 ".././GenericBuffer.c"
	.loc 1 4 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 5 0
	movw r30,r24
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	.loc 1 6 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ret
	.cfi_endproc
.LFE0:
	.size	__initBufferWithZeros, .-__initBufferWithZeros
	.section	.text.writeToBuffer,"ax",@progbits
.global	writeToBuffer
	.type	writeToBuffer, @function
writeToBuffer:
.LFB1:
	.loc 1 10 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 11 0
	ld r18,Z
	ldd r19,Z+1
	movw r24,r18
.LVL2:
	adiw r24,1
	std Z+1,r25
	st Z,r24
	andi r19,3
	add r30,r18
	adc r31,r19
.LVL3:
	std Z+4,r22
	ret
	.cfi_endproc
.LFE1:
	.size	writeToBuffer, .-writeToBuffer
	.section	.text.readFromBuffer,"ax",@progbits
.global	readFromBuffer
	.type	readFromBuffer, @function
readFromBuffer:
.LFB2:
	.loc 1 15 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 16 0
	ldd r18,Z+2
	ldd r19,Z+3
	movw r24,r18
.LVL5:
	adiw r24,1
	std Z+3,r25
	std Z+2,r24
	andi r19,3
	add r30,r18
	adc r31,r19
.LVL6:
	ldd r24,Z+4
	.loc 1 17 0
	ret
	.cfi_endproc
.LFE2:
	.size	readFromBuffer, .-readFromBuffer
	.section	.text.bytesAvailableInBuffer,"ax",@progbits
.global	bytesAvailableInBuffer
	.type	bytesAvailableInBuffer, @function
bytesAvailableInBuffer:
.LFB3:
	.loc 1 20 0
	.cfi_startproc
.LVL7:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 21 0
	ld r24,Z
	ldd r25,Z+1
.LVL8:
	ldd r18,Z+2
	ldd r19,Z+3
	.loc 1 22 0
	sub r24,r18
	sbc r25,r19
	ret
	.cfi_endproc
.LFE3:
	.size	bytesAvailableInBuffer, .-bytesAvailableInBuffer
	.text
.Letext0:
	.file 2 ".././GenericBuffer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF10
	.byte	0xc
	.long	.LASF11
	.long	.LASF12
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.word	0x404
	.byte	0x2
	.byte	0xa
	.long	0x5d
	.uleb128 0x3
	.long	.LASF0
	.byte	0x2
	.byte	0xc
	.long	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x2
	.byte	0xd
	.long	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0xe
	.long	0x8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.long	0x5d
	.uleb128 0x6
	.long	0x88
	.long	0x7a
	.uleb128 0x7
	.long	0x7a
	.word	0x3ff
	.byte	0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x5
	.long	0x81
	.uleb128 0x5
	.long	0x69
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0xf
	.long	0x29
	.uleb128 0x9
	.byte	0x1
	.long	.LASF6
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xca
	.uleb128 0xa
	.string	"buf"
	.byte	0x1
	.byte	0x3
	.long	0xd5
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xd0
	.uleb128 0x5
	.long	0x92
	.uleb128 0xc
	.long	0xca
	.uleb128 0x9
	.byte	0x1
	.long	.LASF7
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x111
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0x9
	.long	0xd5
	.long	.LLST0
	.uleb128 0xa
	.string	"chr"
	.byte	0x1
	.byte	0x9
	.long	0x111
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0xc
	.long	0x81
	.uleb128 0xe
	.byte	0x1
	.long	.LASF8
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0x81
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x144
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0xe
	.long	0xd5
	.long	.LLST1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF9
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.long	0x5d
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x172
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0x13
	.long	0x17d
	.long	.LLST2
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x178
	.uleb128 0xc
	.long	0xd0
	.uleb128 0xc
	.long	0x172
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
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
	.long	.LVL6
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LFE2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE3
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"GenericBuffers_t"
.LASF11:
	.string	".././GenericBuffer.c"
.LASF2:
	.string	"buffer"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mrelax -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF0:
	.string	"wrIndx"
.LASF6:
	.string	"__initBufferWithZeros"
.LASF8:
	.string	"readFromBuffer"
.LASF9:
	.string	"bytesAvailableInBuffer"
.LASF7:
	.string	"writeToBuffer"
.LASF1:
	.string	"rdIndx"
.LASF5:
	.string	"unsigned char"
.LASF4:
	.string	"sizetype"
.LASF12:
	.string	"C:\\\\Users\\\\Bender\\\\Desktop\\\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\\\Timer\\\\Timer\\\\Debug"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
