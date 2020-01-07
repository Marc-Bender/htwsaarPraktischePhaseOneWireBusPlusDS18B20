/**
 * \file UART.h
 * \brief This file contains the necessary information to initialize and use a UART / USART interface on an AVR. Only USART0 is implemented as it stands and only the transmitter has been implemented 
 * to this point in time since that is everything that was needed for the project so far. Transmitting happens interrupt driven. Data is buffered in a ring buffer of modulo 2 dividable size.
**/


#ifndef UART_H_
#define UART_H_

	#include <avr/io.h>
	#include <stddef.h>
	#include <avr/interrupt.h>
	#include <stdbool.h>
	#include "marcsLanguageExtension.h"
	#include "GenericBuffer.h" //< for the ring buffer that holds the data to be transmitted (or rather the datatype thereof and the respective functions)

	typedef enum
	{
		USARTBaudRate_Reset,
		USARTBaudRate_9600,
		USARTBaudRate_14400,
		USARTBaudRate_19200,
		USARTBaudRate_28800,
		USARTBaudRate_38400,
		USARTBaudRate_56000,
		USARTBaudRate_57600,
		USARTBaudRate_115200,
		USARTBaudRate_128000,
		USARTBaudRate_256000
	}USARTBaudRate_t; //< just a nice way to pass baudrates into your initialization function(s)
	
	void USART0_init(IN_PAR const USARTBaudRate_t baudrate);
	void USART0_SendString(IN_PAR const char * const string, IN_PAR const uint8_t length);
	void USART0_SendChar(IN_PAR const char chr);
#endif
