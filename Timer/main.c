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
	
const uint8_t deviceID0[8]={0x28, 0x7e, 0xa0, 0xbc, 0x05, 0x00, 0x00, 0x10}; // the sleeved one
const uint8_t deviceID1[8]={0x28, 0xA0, 0xC9, 0xC3, 0x03, 0x00, 0x00, 0xC6}; // those in the String 
const uint8_t deviceID2[8]={0x28, 0xA8, 0xB0, 0xC3, 0x03, 0x00, 0x00, 0xF9}; //          |
const uint8_t deviceID3[8]={0x28, 0x04, 0xDE, 0xC3, 0x03, 0x00, 0x00, 0x6B}; //          |
const uint8_t deviceID4[8]={0x28, 0x0C, 0xBF, 0xC3, 0x03, 0x00, 0x00, 0x16}; //          |
const uint8_t deviceID5[8]={0x28, 0xCC, 0x9E, 0xC3, 0x03, 0x00, 0x00, 0xBC}; //          |
const uint8_t deviceID6[8]={0x28, 0x9E, 0xAD, 0xC3, 0x03, 0x00, 0x00, 0x36}; //          |
const uint8_t deviceID7[8]={0x28, 0x3E, 0xD0, 0xC3, 0x03, 0x00, 0x00, 0xEB}; //         \|/ 
const uint8_t deviceID8[8]={0x28, 0x71, 0xF3, 0x9B, 0x03, 0x00, 0x00, 0xC8}; //          v
const uint8_t deviceID9[8]={0x28, 0x93, 0xAD, 0xC3, 0x03, 0x00, 0x00, 0x7C}; // till here

#define NUM_OF_ONEWIRE_SENSORS_ATTACHED (10U)

const uint8_t * deviceIDs[NUM_OF_ONEWIRE_SENSORS_ATTACHED]={deviceID0,deviceID1,deviceID2,deviceID3,deviceID4,deviceID5,deviceID6,deviceID7,deviceID8,deviceID9};

volatile uint8_t idByte=0;
signed7Point4Fixed_t currentTemperatures[NUM_OF_ONEWIRE_SENSORS_ATTACHED]={0};
bool errorBits[NUM_OF_ONEWIRE_SENSORS_ATTACHED]={0};

void startTemperatureConversionAndReadoutCycle(void);

void onOneSecondHasElapsedEvent(void)
{
	startTemperatureConversionAndReadoutCycle();
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

uint8_t indexOfTemperatureSensorBeingRead=0;

void onAllTemperaturesRead(void)
{
	DO_NOTHING
}

void onTemperatureConversionStarted(void)
{
	// bounds checking
	if(indexOfTemperatureSensorBeingRead<NUM_OF_ONEWIRE_SENSORS_ATTACHED)
	{	
		// read the next sensor
		startTemperatureConversionAndReadoutCycle();
	}
	else
	{
		// all Sensors read
		indexOfTemperatureSensorBeingRead=0;
		onAllTemperaturesRead();
	}
}
void onTemperatureRead(void)
{
	issueTemperatureConversion(&onewirepin,false,deviceIDs[indexOfTemperatureSensorBeingRead++], &onTemperatureConversionStarted);
}
void startTemperatureConversionAndReadoutCycle(void)
{	
	// start reading out the first sensor. when reading the very first time the contents read may be garbage.
	errorBits[indexOfTemperatureSensorBeingRead]=false; // reset the error bit before reading data again
	readTemperature(&onewirepin,deviceIDs[indexOfTemperatureSensorBeingRead],&currentTemperatures[indexOfTemperatureSensorBeingRead], &errorBits[indexOfTemperatureSensorBeingRead], &onTemperatureRead);
}

void mainInit(void)
{
	DDRB |= (1<<ONBOARD_LED); // set Pin of on board led to output
	PORTB &= ~(1<<ONBOARD_LED); // Turn off on board led initially because it happens to light more often than not when the board is powered by default.
	
	DDRB |= 1<<4;
	PORTB &= ~(1<<4);
	
	makeInput(&onewirepin);
	disablePullup(&onewirepin);
	
	setWaveformGenerationModeTimer0(WaveformGenerationModeTimer0_CTC); 
	defineCallbackOnTimer0CaptureCompareAMatch(&timingGeneratorForOneSecond);
	letTimer0GenerateInterruptEvery500us();
	enableTimer0CaptureCompareAInterrupt();
	
 	setWaveformGenerationModeTimer2(WaveformGenerationModeTimer2_CTC);// since the timer shall be reserved to the one wire functionality only these bits will only be set once and never changed again
	sei();
	PORTB |= 1<<4;
	startTemperatureConversionAndReadoutCycle();
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

