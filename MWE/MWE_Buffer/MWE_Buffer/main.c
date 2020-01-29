/*
 * MWE_Buffer.c
 *
 * Created: 28.01.2020 14:24:36
 * Author : Bender
 */ 

#include <avr/io.h>
#include "GenericBuffer.h"
#include <stdio.h>

GenericBuffers_t buf;

int main(void)
{
    /* Replace with your application code */
    while (1) 
    {
		__initBufferWithZeros(&buf);
		writeToBuffer(&buf, 'a');
		writeToBuffer(&buf, 'b');
		writeToBuffer(&buf, 'c');
		char test[3];
		uint8_t i=0;
		while(bytesAvailableInBuffer(&buf))
		{
			test[i]=readFromBuffer(&buf);
			i++;
		}
    }
}

