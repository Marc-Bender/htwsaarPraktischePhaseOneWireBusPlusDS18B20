/*
 * MWE_DS18B20.c
 *
 * Created: 28.01.2020 16:59:43
 * Author : Bender
 */ 

#include <avr/io.h>
#include "GPIO Pin.h"
#include "Timer2.h"
#include "DS18B20.h"
#include <util/delay.h>

GPIOPin_t onewirepin={&DDRD,&PIND,&PORTD,2,INT0};
const uint8_t deviceID0[SIZE_OF_ID]={0x28, 0x7e, 0xa0, 0xbc, 0x05, 0x00, 0x00, 0x10}; // sample id

bool errorBit=true;
signed7Point4Fixed_t currentTemperature;

void onTemperatureRead(void)
{
	DO_NOTHING
}

void onTemperatureConversionStarted(void)
{
	for(uint8_t i=0; i<100;i++) // 1s lang warten dann ist die temperatur umwandlung sicher fertig
		_delay_ms(10); // nur zur demonstration nicht zur nachahmung
	readTemperature(&onewirepin,deviceID0,&currentTemperature, &errorBit, &onTemperatureRead);
}

int main(void)
{
    /* Replace with your application code */
    while (1) 
    {
		makeInput(&onewirepin);
		disablePullup(&onewirepin);
		setWaveformGenerationModeTimer2(WaveformGenerationModeTimer2_CTC);
		sei();
		issueTemperatureConversion(&onewirepin,false,deviceID0, &onTemperatureConversionStarted);
    }
}

