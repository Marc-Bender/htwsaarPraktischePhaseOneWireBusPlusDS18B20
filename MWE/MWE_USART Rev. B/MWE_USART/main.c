/*
 * MWE_USART.c
 *
 * Created: 28.01.2020 15:08:16
 * Author : Bender
 */ 

#include <avr/io.h>
#include "UART.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void on42CharsReceived(void)
{
	USART0_stopReception();
	char * stringOf42 = malloc(42);
	USART0_ReadString(stringOf42,42); // nimmt string von RX buffer und schreibt ihn in stringof42
	free(stringOf42);
}

int main(void)
{
    /* Replace with your application code */
    while (1) 
    {
		USARTConfiguration_t config={.baudrate=USARTBaudRate_115200,.flags.enableReceiver=true, .flags.enableTransmitter=true};
		USART0_init(&config);
		sei();
		USART0_SendString("Hallo Welt",strlen("Hallo Welt"));
		USART0_SendChar('\r');
		USART0_SendChar('\n');
		int test=42;
		char * string=malloc(16);
		sprintf(string,"Test=%i\r\n",test);
		USART0_SendString(string,strlen(string));
		free(string);
		USART0_ReceiveCharacters(42, &on42CharsReceived);
    }
}

