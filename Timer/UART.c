#include "UART.h"

#ifndef F_CPU
	#define F_CPU (16000000UL)
	#warning Specifying no CPU-Clock and falling back to the default of 16MHz for F_CPU is discouraged and may be not accurate
#endif

#define MYUBRR0(baudrate) ((F_CPU) / (8 * (baudrate)-1))

static volatile GenericBuffers_t txBuffer;

void setBaudrate(IN_PAR const USARTBaudRate_t baudrate)
{
	switch (baudrate)
	{
		case USARTBaudRate_9600   : 
			UBRR0H = (uint8_t)(MYUBRR0(9600UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(9600UL);
			break;
		case USARTBaudRate_14400  :
			UBRR0H = (uint8_t)(MYUBRR0(14400UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(14400UL);
			break;
		case USARTBaudRate_19200  :
			UBRR0H = (uint8_t)(MYUBRR0(19200UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(19200UL);
			break;
		case USARTBaudRate_28800  :
			UBRR0H = (uint8_t)(MYUBRR0(28800UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(28800UL);
			break;
		case USARTBaudRate_38400  :
			UBRR0H = (uint8_t)(MYUBRR0(38400UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(38400UL);
			break;
		case USARTBaudRate_56000  :
			UBRR0H = (uint8_t)(MYUBRR0(56000UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(56000UL);
			break;
		case USARTBaudRate_57600  :
			UBRR0H = (uint8_t)(MYUBRR0(57600UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(57600UL);
			break;
		case USARTBaudRate_115200 :
			UBRR0H = (uint8_t)(MYUBRR0(115200UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(115200UL);
			break;
		case USARTBaudRate_128000 :
			UBRR0H = (uint8_t)(MYUBRR0(128000UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(128000UL);
			break;
		case USARTBaudRate_256000 :
			UBRR0H = (uint8_t)(MYUBRR0(256000UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(256000UL);
			break;
		default:
			setBaudrate(USARTBaudRate_9600);
			break;
	}
}

void USART0_init(IN_PAR const USARTConfiguration_t * const uartConfiguration)
{
	setBaudrate(uartConfiguration->baudrate);
	UCSR0A |= (1<<U2X0); // Doubles the effective Transmission speed in asynchronous mode (see Datasheet ATmega2560 p.219/435
	UCSR0B |= (uartConfiguration->flags.enableReceiver<<RXEN0)|(uartConfiguration->flags.enableTransmitter<<TXEN0);
	UCSR0C |= (3<<UCSZ00); // Set frame format: 8data, 1stop bit
}

void USART0_enableDataRegisterEmptyInterrupt(void)
{
	UCSR0B |= (1<<UDRIE0);
}

void USART0_disableDataRegisterEmptyInterrupt(void)
{
	UCSR0B &= ~(1<<UDRIE0);
}

void USART0_SendString(IN_PAR const char * const string, IN_PAR const uint8_t length)
{
	for(uint8_t i=0;i<length;i++)
	{
		writeToBuffer(&txBuffer, string[i]);
	}
	USART0_enableDataRegisterEmptyInterrupt();
}

void USART0_SendChar(IN_PAR const char chr)
{
	writeToBuffer(&txBuffer, chr);
	USART0_enableDataRegisterEmptyInterrupt();
}

ISR(USART0_UDRE_vect)
{
	// on output data register empty
	UCSR0A |= (1<<UDRE0); //When the Data Register Empty Interrupt Enable (UDRIEn) bit in UCSRnB is written to one, the USART Data Register Empty Interrupt will be executed as long as UDREn is set (provided that global interrupts are enabled). UDREn is cleared by writing UDRn. (see Datasheet ATmega2560 p.208f/435)
	if(bytesAvailableInBuffer(&txBuffer))
		UDR0 = readFromBuffer(&txBuffer);
	else
		USART0_disableDataRegisterEmptyInterrupt();
}