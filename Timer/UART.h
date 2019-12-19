#ifndef UART_H_
#define UART_H_

	#include <avr/io.h>
	#include <stddef.h>
	#include <avr/interrupt.h>
	#include <stdbool.h>
	#include "marcsLanguageExtension.h"
	#include "GenericBuffer.h"

	typedef enum
	{
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
	}USARTBaudRate_t;

	typedef struct 
	{
		struct  
		{
			uint8_t enableReceiver:1;
			uint8_t enableTransmitter:1;
			uint8_t enableDataEmptyInterrupt:1;
			uint8_t UNUSED:5;
		}flags;
		
		USARTBaudRate_t baudrate;
	}USARTConfiguration_t;
	
	void USART0_init(IN_PAR const USARTConfiguration_t * const uartConfiguration);
	void USART0_SendString(IN_PAR const char * const string, IN_PAR const uint8_t length);
	void USART0_SendChar(IN_PAR const char chr);
#endif