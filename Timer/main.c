#include <avr/io.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#include "Timer0.h"
#include "Timer2.h"
#include "OneWireFrontEnd.h"
#include "GPIO Pin.h"

#include "marcsLanguageExtension.h"
#include "DS18B20.h"
#include "UART.h"
#include <stdio.h>
#include <string.h>

#define REMAININGNUMBEROFINTERRUPTSFORONESECONDSTARTVALUE (2000UL)
GPIOPin_t onewirepin={&DDRD,&PIND,&PORTD,2,INT0}; // Pin 2 on the Arduino Uno is PD2 (see here: https://www.arduino.cc/en/uploads/Main/Arduino_Uno_Rev3-schematic.pdf)
	
const uint8_t deviceID0[SIZE_OF_ID]={0x28, 0x7e, 0xa0, 0xbc, 0x05, 0x00, 0x00, 0x10}; // the sleeved one
const uint8_t deviceID1[SIZE_OF_ID]={0x28, 0xA0, 0xC9, 0xC3, 0x03, 0x00, 0x00, 0xC6}; // those in the String 
const uint8_t deviceID2[SIZE_OF_ID]={0x28, 0xA8, 0xB0, 0xC3, 0x03, 0x00, 0x00, 0xF9}; //          |
const uint8_t deviceID3[SIZE_OF_ID]={0x28, 0x04, 0xDE, 0xC3, 0x03, 0x00, 0x00, 0x6B}; //          |
const uint8_t deviceID4[SIZE_OF_ID]={0x28, 0x0C, 0xBF, 0xC3, 0x03, 0x00, 0x00, 0x16}; //          |
const uint8_t deviceID5[SIZE_OF_ID]={0x28, 0xCC, 0x9E, 0xC3, 0x03, 0x00, 0x00, 0xBC}; //          |
const uint8_t deviceID6[SIZE_OF_ID]={0x28, 0x9E, 0xAD, 0xC3, 0x03, 0x00, 0x00, 0x36}; //          |
const uint8_t deviceID7[SIZE_OF_ID]={0x28, 0x3E, 0xD0, 0xC3, 0x03, 0x00, 0x00, 0xEB}; //         \|/ 
const uint8_t deviceID8[SIZE_OF_ID]={0x28, 0x71, 0xF3, 0x9B, 0x03, 0x00, 0x00, 0xC8}; //          v
const uint8_t deviceID9[SIZE_OF_ID]={0x28, 0x93, 0xAD, 0xC3, 0x03, 0x00, 0x00, 0x7C}; //     till here

#define NUM_OF_ONEWIRE_SENSORS_ATTACHED (10U)

const uint8_t * deviceIDs[NUM_OF_ONEWIRE_SENSORS_ATTACHED]={deviceID0,deviceID1,deviceID2,deviceID3,deviceID4,deviceID5,deviceID6,deviceID7,deviceID8,deviceID9};

volatile uint8_t idByte=0;
signed7Point4Fixed_t currentTemperatures[NUM_OF_ONEWIRE_SENSORS_ATTACHED]={0}; // equals +0.0000degC
bool errorBits[NUM_OF_ONEWIRE_SENSORS_ATTACHED];
static char * telemetryString;

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
	__asm("nop\r\n");
}

void sendTelemetryViaUSART0(void)
{
	signed7Point4Fixed_t currentTemperature = currentTemperatures[indexOfTemperatureSensorBeingRead];
	
	const char sign = getSignOfSigned7Point4Fixed(currentTemperature);
	const uint8_t intPart = getIntegerPartOfSigned7Point4Fixed(currentTemperature);
	const uint16_t nonIntPart = getNonIntegerPartOfSigned7Point4Fixed(currentTemperature);
	
	#define TELEMETRY_STRING_SIZE_MAX (sizeof('#')+1+sizeof(':')+1+3+sizeof('.')+4+strlen("degC ")+strlen("Err: ")+1+strlen("\r\n")+sizeof('\0')) /*1st 1 for the number (one digit only) 2nd for the sign 3 for the int 4 for the fraction +1 for the error bit*/
	
	sprintf(telemetryString, "#%i:%c%3i.%04idegC Err: %c\r\n",indexOfTemperatureSensorBeingRead, sign, intPart, nonIntPart, errorBits[indexOfTemperatureSensorBeingRead]?'E':'0');
	USART0_SendString(telemetryString, strlen(telemetryString)); 
}

void onTemperatureConversionStarted(void)
{
	if(indexOfTemperatureSensorBeingRead<NUM_OF_ONEWIRE_SENSORS_ATTACHED-1) // if there is a next sensor to read out send telemetry of current sensor, increment counter and do the cycle for the next sensor
	{
		sendTelemetryViaUSART0();
		indexOfTemperatureSensorBeingRead++;
		startTemperatureConversionAndReadoutCycle(); // read the next sensor
	}
	else // if there is no next sensor send telemetry of current sensor anyways and reset everything so the whole cycle can repeat for all the sensors some time in the future
	{
		sendTelemetryViaUSART0();
		USART0_SendString("\r\n\r\n",strlen("\r\n\r\n"));
		indexOfTemperatureSensorBeingRead=0;
		onAllTemperaturesRead();
	}
}

void onTemperatureRead(void)
{
	issueTemperatureConversion(&onewirepin,false,deviceIDs[indexOfTemperatureSensorBeingRead], &onTemperatureConversionStarted);
}

void startTemperatureConversionAndReadoutCycle(void)
{	
	// start reading out the first sensor. when reading the very first time the contents read may be garbage.
	errorBits[indexOfTemperatureSensorBeingRead]=true; // reset the error bit before reading data again so that per default data is being treated as faulty (paranoid mode)
	readTemperature(&onewirepin,deviceIDs[indexOfTemperatureSensorBeingRead],&currentTemperatures[indexOfTemperatureSensorBeingRead], &errorBits[indexOfTemperatureSensorBeingRead], &onTemperatureRead);
}

__attribute__((constructor)) void mainInit(void)
{
	DDRB |= (1<<ONBOARD_LED); // set Pin of on board led to output
	PORTB &= ~(1<<ONBOARD_LED); // Turn off on board led initially because it happens to light more often than not when the board is powered by default.

	makeInput(&onewirepin);
	disablePullup(&onewirepin);
	
	USART0_init(USARTBaudRate_115200);
	
	telemetryString = malloc(TELEMETRY_STRING_SIZE_MAX);
	
	setWaveformGenerationModeTimer0(WaveformGenerationModeTimer0_CTC); 
	defineCallbackOnTimer0CaptureCompareAMatch(&timingGeneratorForOneSecond);
	letTimer0GenerateInterruptEvery500us();
	enableTimer0CaptureCompareAInterrupt();
	
 	setWaveformGenerationModeTimer2(WaveformGenerationModeTimer2_CTC);// since the timer shall be reserved to the one wire functionality only these bits will only be set once and never changed again
	sei();

	startTemperatureConversionAndReadoutCycle();
}

__attribute__((destructor)) void mainEnd(void)
{
	free(telemetryString);
}

#pragma GCC diagnostic ignored "-Wmain"
void  __attribute__((noreturn)) main(void)
{
	FOREVER
    {
	   // main loop
    }
}

