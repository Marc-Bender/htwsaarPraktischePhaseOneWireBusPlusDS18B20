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


int main(void)
{
    /* Replace with your application code */
    while (1) 
    {
		USART0_init(USARTBaudRate_115200);
		sei();
		USART0_SendString("Hallo Welt",strlen("Hallo Welt"));
		USART0_SendChar('\r');
		USART0_SendChar('\n');
		int test=42;
		char * string=malloc(16);
		sprintf(string,"Test=%i\r\n",test);
		USART0_SendString(string,strlen(string));
		free(string);
    }
}

