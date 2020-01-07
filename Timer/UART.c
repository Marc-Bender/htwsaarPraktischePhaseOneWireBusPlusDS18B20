#include "UART.h"

/**
 * \brief The setting of the baudrate defining registers necessitates the knowledge of the cpu core clock. Therefor this has to be defined. If it is not there is some (viable?) default value set and a warning is thrown
**/
#ifndef F_CPU
	#define F_CPU (16000000UL)
	#warning Specifying no CPU-Clock and falling back to the default of 16MHz for F_CPU is discouraged and may be not yield accurate results
#endif

#define MYUBRR0(baudrate) ((F_CPU) / (8 * (baudrate)-1))

static volatile GenericBuffers_t txBuffer; //< This is where the scheduled Characters / Strings are stored until they are actually sent. Sice there is only one USART Channel supported right now (and only the transmitter thereof) one single variable for that purpose like shown here will work just fine.

/**
 * \brief sets the baudrate according to the rate given in the parameter if for some reason (maybe typecastings) there is a value put into the function which it can not make sense of the function falls back to a default baudrate of 9600 baud.
**/
void setBaudrate(IN_PAR const USARTBaudRate_t baudrate)
{
	switch (baudrate)
	{
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
		default:	//fall-through to 9600 Baud as a default
		case USARTBaudRate_9600   : 
			UBRR0H = (uint8_t)(MYUBRR0(9600UL)>>8);
			UBRR0L = (uint8_t) MYUBRR0(9600UL);
			break;
	}
}

/**
 * \brief This function initializes a USART interface just enough so you can send some stuff with it. This essentially is just a code example from Microchip / Atmel that has been lightly modified.
**/ 
void USART0_init(IN_PAR const USARTBaudRate_t baudrate)
{
	setBaudrate(baudrate);
	UCSR0A |= (1<<U2X0); // Doubles the effective Transmission speed in asynchronous mode (see Datasheet ATmega2560 p.219/435
	UCSR0B |= 1<<TXEN0;
	UCSR0C |= (3<<UCSZ00); // Set frame format: 8data, 1stop bit
}

/**
 * \brief sets the bit that enables interrupt-generation when the data register is empty and thus it is possible to write a new / next value in there to have it transferred over the serial interface.
 * This makes polling of the interrupt-generating bit superfluous.
**/
inline void USART0_enableDataRegisterEmptyInterrupt(void)
{
	UCSR0B |= (1<<UDRIE0);
}

/**
 * \brief this function in contrast disables the data register empty interrupt so you do not get reminded that the register is empty when e.g there is nothing more to transmit.
**/
inline void USART0_disableDataRegisterEmptyInterrupt(void)
{
	UCSR0B &= ~(1<<UDRIE0);
}

/**
 * \brief Sends out a string to the tx-buffer and enables the data register empty interrupt so that the string is send as soon as possible.
 * This function is comparably dumb and does not feature the capabilities that functions like printf do. This function can only send arbitrary sequences of characters aka strings.
 * For more advanced functionality you may consider allocating some space to hold the string in its 'rendered' form and then use sprintf to print into that space.
 * Finally you can hand that piece of space with the rendered string into this function to put it into the tx-buffer and send it out as soon as possible.
 * example call (simplest form) : USART0_SendString("Hello World!", strlen("Hello World!"));
 * note the use of strlen here instead of sizeof which will yield you one more byte for the trailing zero terminator. This is superfluous and is not necessary to be transmitted for the most part.
 * This also enables the interrupt on tx data register empty to ensure that sending takes place to the next possible moment. It does so even when the USART0 is not initialized or the transmitter 
 * is not enabled and even when the interrupt is already enabled.
**/
void USART0_SendString(IN_PAR const char * const string, IN_PAR const uint8_t length)
{
	for(uint8_t i=0;i<length;i++)
	{
		writeToBuffer(&txBuffer, string[i]);
	}
	USART0_enableDataRegisterEmptyInterrupt();
}

/**
 * \brief likewise this function is there to add a single character to the tx buffer so you do not have to call the send string function with an argument of size one and then even tell it that the size is one. 
**/
void USART0_SendChar(IN_PAR const char chr)
{
	writeToBuffer(&txBuffer, chr);
	USART0_enableDataRegisterEmptyInterrupt();
}

/**
 * \brief this is the interrupt handler that gets called when the tx data register is empty and the data register empty interrupt is enabled...
 * As long as there are bytes remaining in the buffer for sending the handler sends them out whereas if there are none remaining it disables the interrupt
**/
ISR(USART_UDRE_vect)
{
	// on output data register empty
	UCSR0A |= (1<<UDRE0); //When the Data Register Empty Interrupt Enable (UDRIEn) bit in UCSRnB is written to one, the USART Data Register Empty Interrupt will be executed as long as UDREn is set (provided that global interrupts are enabled). UDREn is cleared by writing UDRn. (see Datasheet ATmega2560 p.208f/435)
	if(bytesAvailableInBuffer(&txBuffer))
		UDR0 = readFromBuffer(&txBuffer);
	else
	{
		USART0_disableDataRegisterEmptyInterrupt();
	}
}
