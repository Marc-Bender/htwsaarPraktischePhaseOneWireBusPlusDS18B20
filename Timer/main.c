#include <avr/io.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#include "Timer0.h"
#include "Timer2.h"
#include "OneWire.h"
#include "GPIO Pin.h"

#include "marcsLanguageExtension.h"
#include "DS18B20.h"
#include <string.h>

#define REMAININGNUMBEROFINTERRUPTSFORONESECONDSTARTVALUE (2000UL)
GPIOPin_t onewirepin={&DDRE,&PINE,&PORTE,PE5,INT5,&EICRB}; // Pin 3 on the Arduino Mega is PE5 (see here: https://www.arduino.cc/en/uploads/Main/arduino-mega-schematic.pdf)
	
// uint8_t deviceID[8]={0};
const uint8_t deviceID[8]={0x28, 0x7e, 0xa0, 0xbc, 0x05, 0x00, 0x00, 0x10};
volatile uint8_t idByte=0;
signed7Point4Fixed_t currentTemperature=0;

void dummy(void)
{
	// Temperature fully read for starters do not do anything with it
}

void onOneSecondHasElapsedEvent(void)
{
	//readTemperature(&onewirepin,deviceID,&currentTemperature,&dummy);
}

void timingGeneratorForOneSecond(void)
{
	static uint16_t remainingNumberOfInterruptsForOneSecond = REMAININGNUMBEROFINTERRUPTSFORONESECONDSTARTVALUE;
	
	if(remainingNumberOfInterruptsForOneSecond == 0)
	{
		remainingNumberOfInterruptsForOneSecond = REMAININGNUMBEROFINTERRUPTSFORONESECONDSTARTVALUE;
		onOneSecondHasElapsedEvent();
	}
	remainingNumberOfInterruptsForOneSecond--;
}

void onSlaveIdRetrieved(void)
{
	//readTemperature(&onewirepin,deviceID, &currentTemperature, &dummy);
}

void mainInit(void)
{
	DDRB |= (1<<ONBOARD_LED); // set Pin of on board led to output
	PORTB &= ~(1<<ONBOARD_LED); // Turn off on board led initially because it happens to light more often than not when the board is powered by default.
	
	DDRB |= 1<<4;
	PORTB &= ~(1<<4);
	
	makeInput(&onewirepin);
	disablePullup(&onewirepin);
	
// 	setWaveformGenerationModeTimer0(WaveformGenerationModeTimer0_CTC); 
// 	defineCallbackOnTimer0CaptureCompareAMatch(&timingGeneratorForOneSecond);
// 	letTimer0GenerateInterruptEvery500us();
// 	enableTimer0CaptureCompareAInterrupt();
	
 	setWaveformGenerationModeTimer2(WaveformGenerationModeTimer2_CTC);// since the timer shall be reserved to the one wire functionality only these bits will only be set once and never changed again
	sei();
	PORTB |= 1<<4;
	//getIdOfDS18B20(&onewirepin, &deviceID[0], &onSlaveIdRetrieved);
	readTemperature(&onewirepin,deviceID, &currentTemperature, &dummy);
}

void mainLoop(void)
{
	DO_NOTHING
}

void mainEnd(void)
{
	DO_NOTHING
}

#pragma GCC diagnostic ignored "-Wmain"
void  __attribute__((noreturn)) main(void)
{
	mainInit();
	FOREVER
    {
	    mainLoop();
    }
	mainEnd();
}

