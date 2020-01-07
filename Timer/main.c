/**
 * \file main.c
 * \brief This is the main file for the code that is responsible for reading the One Wire Temperature Sensors. 
 * It contains the highest level state machines to iterate through the various sensors and the necessary variables / constants therefor.
**/


#include <avr/io.h> //< for various definitions used through-out the code
#include <stddef.h> //< for uint8_t and the like
#include <stdbool.h> //< for bool (obviously)
#include <stdlib.h> //< for malloc and free and potentially some more functions
#include <avr/interrupt.h> //< for the interrupt related code inside this compilation unit

#include "Timer0.h" //< The definitions needed for Timer0, used for the main Timing (i.e. kick-off new read out chain after 1s)
#include "Timer2.h" //< The definitions needed for Timer2, happens to be somewhat similar to Timer0 (read 'near identical') but with differences in the Prescalers the Timer has therefor this is its own module
#include "OneWireFrontEnd.h" //< contains the high level stuff for the One Wire Protocol, only the define SIZE_OF_ID is used here 
#include "GPIO Pin.h" //< the definitions needed for describing an IO Pin needed to define the One Wire Pin somewhat accurately and used to be able to pass around the registers needed to be manipulated for various things to happen depending on the pin these registers obviously will have to change...

#include "marcsLanguageExtension.h" //< for some self defined syntactic sugar type stuff like infinite loops, macros that show the direction of the parameters of a function... 
#include "DS18B20.h" //< for the temperature sensors that are of this type. 
#include "UART.h" //< for sending the "Telemetry" to a host processor (ie. Uptime, identifier for the sensor, current temperature, and error state for that particular measurement.
#include <stdio.h> //< for printf and friends so that also relatively complex strings can be send since the functionalities that are used for the USART are comparably dumb
#include <string.h> //< for strlen most importantly
#include "MAX31850.h" //< for the temperature sensors that are of this type. This uses the DS18B20 code under the hood for everything since for what we do here the two ICs behave identical from the bus perspective. Even the layout of internal memory of the ICs is equal in some sense. If one would want to do some more elaborate tasks with these chips some things would have to be seen more differentiated. Also this is used for the functions to convert 11.2 Fixed Pointformat to something that is easy to send with my printf-USARTSendString-Function-Combination...

/**
 * \brief that is just a compile time constant used to make more clear to which number the uC has to count in order to detect that enough interrupts have been invoked (that is 1s is elapsed)
**/
#define REMAININGNUMBEROFINTERRUPTSFORONESECONDSTARTVALUE (2000UL)

/**
 * \brief this is the data structure that describes the One Wire Pin that is used in the rest of the code. It is passed around to a bunch of different functions in various ways through out the code but basically every where where you read something about a onewirepin (even within other data structures) you may substitute this with this particular pin definition. 
**/
GPIOPin_t onewirepin={&DDRD,&PIND,&PORTD,2,INT0}; // Pin 2 on the Arduino Uno is PD2 (see here: https://www.arduino.cc/en/uploads/Main/Arduino_Uno_Rev3-schematic.pdf)

/**
 * \brief the arrays deviceIDx are the deviceIDs of the sensors that are connected to the uC at the moment. You may change those to what ever IDs your sensors have in your particular setup. Since there is no way for you to gather those IDs with this code (anymore) you have to know those before hand. 
 * These arrays may be put in the PGMSPACE in the future though this will require some changes to the code as it is so far (and break the current API), therefor you get a potentially smaller marginally slower code.
**/	
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

const uint8_t deviceIDThermocouple[SIZE_OF_ID]={0x3B, 0x19, 0x2B, 0x18, 0x00, 0x00, 0x00, 0xC3}; //< this is the deviceID of the one One Wire Enabled Thermocouple Amplifier that was hooked up for testing.

/**
 * \brief This is the number of sensors that are attempted to communicated with. You must make sure that this does reflect the amount of deviced in use or is less than that amount. The first NUM_OF_ONEWIRE_SENSORS_ATTACHED devices in the deviceIDs array have to be present or you may get (partially) meaningless data.
**/ 
#define NUM_OF_ONEWIRE_SENSORS_ATTACHED (11U)

const uint8_t * deviceIDs[NUM_OF_ONEWIRE_SENSORS_ATTACHED]={deviceIDThermocouple,deviceID0,deviceID1,deviceID2,deviceID3,deviceID4,deviceID5,deviceID6,deviceID7,deviceID8,deviceID9}; //< this array holds all deviceIDs that are intended to be read. only the first NUM_OF_ONEWIRE_SENSORS_ATTACHED ones will be attempted to be read though.

signed7Point4Fixed_t currentTemperatures[NUM_OF_ONEWIRE_SENSORS_ATTACHED]={0}; //< This array holds all the temperatures that are read from the sensors in the deviceIDs array. For the temperatures that are obtained from the thermocouple this is actually the wrong type but since they are both uint16_t under the hood it does not make this much of a difference. A more clean solution would have seperate arrays for the DS18B20-based temperatures and those from the thermocouple(s). Here this was not done... 
bool errorBits[NUM_OF_ONEWIRE_SENSORS_ATTACHED]; //< This contains the information on wheter the for all read sensor data (calculated and provided by the sensor itself) are equal. If not these booleans will be 'true' for each sensor where this was the case. This is not necessarily the most space effective method of storing this information and may take some further refinement. At the moment space is not critical though so there is not exactly an incentive to do so.
static char * telemetryString; //< since the USART_sendString function is very rudimentary (read dumb) complex strings have to be pieced together with some other piece of code (take sprintf for instance) and then the resulting string can be passed to the USART_sendString function. This is where the pieced together string goes that sprintf generates.
static char * uptimeString; //< similar to telemetryString but for the String that tells the uptime of the system in Read-out-cycles (which happen to be every second hence the '[s]' in the output...)
static volatile uint32_t uptimeInSeconds; //< The Variable that holds the underlying data for the generation of the above mentioned string (ie. static char *)

/**
 * \brief this starts the cycle of reading sensor data and then issuing the command to start a new measurement afterwards.
 * This is needed as a forward declaration since the code that accomplishes that cycle is quasi-recursive and hence has to know about certain functions...
**/
void startTemperatureConversionAndReadoutCycle(void); 

/**
 * \brief this is called when one second has elapsed (so it is time to trigger a new pass in the cycle of reading sensors and issuing new temperature conversions.
**/ 
void onOneSecondHasElapsedEvent(void)
{
	uptimeInSeconds++;
	startTemperatureConversionAndReadoutCycle();
}

/**
 * \brief since it is not directly possible to generate an interrupt after one second (even with the biggest prescaler and the biggest stop-counting-value-register-value) it is necessary to generate multiple interrupts in a certain fixed interval and then count them to figure out when the 
 * second is finally elapsed
**/
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

uint8_t indexOfTemperatureSensorBeingRead=0; //< this is the iterator variable that shows the position within the deviceIDs array...

/**
 * \brief this is called when all temperatures are read and all telemetry strings have at least been scheduled for transmit. Since there is nothing else to do then this function simply does nothing.
**/ 
void onAllTemperaturesRead(void)
{
	__asm("nop\r\n");
}

/**
 * \brief this function is responsible for generating the telemetry string after a sensor has been read and a new conversion has been issued. It also schedules them for transmit.
 * At the moment only sensors of the DS18B20 and MAX31850 types are supported. If other sensors are added at some point in time this function must be modified to do something if 
 * it comes across one of these sensors because as it stand this function will catch and handle the "unknown sensor type exception" by simply causing the system to lock up.
**/ 
void sendTelemetryViaUSART0(void)
{
	signed7Point4Fixed_t currentTemperature = currentTemperatures[indexOfTemperatureSensorBeingRead];

	char sign='?'; // some easy to tell apart from real data defaults that should be overwritten anyways
	uint8_t intPart=255;
	uint16_t nonIntPart=65535;

	if (deviceIDs[indexOfTemperatureSensorBeingRead][0]==FAMILY_CODE_DS18B20)
	{	
		sign = getSignOfSigned7Point4Fixed(currentTemperature);
		intPart = getIntegerPartOfSigned7Point4Fixed(currentTemperature);
		nonIntPart = getNonIntegerPartOfSigned7Point4Fixed(currentTemperature);
	}
	else if(deviceIDs[indexOfTemperatureSensorBeingRead][0]==FAMILY_CODE_MAX31850)
	{
		sign = getSignOfSigned11Point2Fixed(currentTemperature);
		intPart = getIntegerPartOfSigned11Point2Fixed(currentTemperature);
		nonIntPart = getNonIntegerPartOfSigned11Point2Fixed(currentTemperature);
	}
	else
	{
		deathTrap(); // can not process because then sign intPart and nonIntPart would end up being uninitialized...
	}
	
	/**
	 * \brief This constant holds the information on the maximum size a telemetry string can possibly have in the current way it is designed to look. Since changes to the design, layout or the contents
	 * of the telemetry string are almost certainly impacting this maximum size this constant is defined here, close to the point where the actual string is pieced together so one hopefully reminds to 
	 * change this constant as well.
	**/
	#define TELEMETRY_STRING_SIZE_MAX (sizeof('#')+2+sizeof(':')+1+3+sizeof('.')+4+strlen("degC ")+strlen("Err: ")+1+strlen("\r\n")+sizeof('\0')) /*1st 2 digits for the number 1st 1 for the sign 3 for the int 4 for the fraction +1 for the error bit*/
	
	sprintf(telemetryString, "#%2i:%c%3i.%04idegC Err: %c\r\n",indexOfTemperatureSensorBeingRead, sign, intPart, nonIntPart, errorBits[indexOfTemperatureSensorBeingRead]?'E':'0');
	USART0_SendString(telemetryString, strlen(telemetryString)); 
}

/**
 * \brief part of the temperature conversion and read out cycle. This function gets called when the convert temperature command has been sent to the sensor. This is called indirectly through the last function in the statemachine 
 * to send a byte that has been initiated in the onTemperatureRead function
**/
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
		/**
		 * \brief this macro has a similar function to the one for the telemetry string. Also the motivation for the seemingly odd placement is the same...
		**/
		#define UPTIME_STRING_SIZE_MAX (strlen("!!Uptime [s]= ")+10+strlen(" \r\n")) /*10 is the amount of digits needed to display 2^32*/
		sprintf(uptimeString, "!!Uptime [s]= %-10i \r\n", uptimeInSeconds);
		USART0_SendString(uptimeString,strlen(uptimeString));
		indexOfTemperatureSensorBeingRead=0;
		onAllTemperaturesRead();
	}
}

/**
 * \brief part of the temperature conversion and read out cycle. This function gets called indirectly when the statemachine that reads the temperature from a particular sensor -- that has been initiated in the 
 * startTemperatureConversionAndReadoutCycle function -- has finished.
**/
void onTemperatureRead(void)
{
	issueTemperatureConversion(&onewirepin,false,deviceIDs[indexOfTemperatureSensorBeingRead], &onTemperatureConversionStarted);
}

/**
 * \brief part of the temperature conversion and read out cycle. This function is the first function in the chain and thus starts it all. It is called directly when the initialisation of the uC
 * and the peripherals in use is complete and directly through the onOneSecondHasElapsed function (that is regularly based on a timer interrupt)
 * When called for the very first time after the start up of the system the read temperatures may or may not be meaningful and there are absolutely no measures taken to work against that.
 * Since this initiates a statemachine that also issues the start of a temperature conversion after the current temperature was read this is not to big of an issue. Possible countermeasures could be to issue a 
 * temperature conversion per broadcast to all temperature sensors after the initialization of the system and then simply wait for that conversion to finish since there is nothing meaningful to do at that point in 
 * time. This option is in fact possible with this code but is not under active use.
**/
void startTemperatureConversionAndReadoutCycle(void)
{	
	// start reading out the first sensor. when reading the very first time the contents read may be garbage.
	errorBits[indexOfTemperatureSensorBeingRead]=true; // reset the error bit before reading data again so that per default data is being treated as faulty (paranoid mode)
	readTemperature(&onewirepin,deviceIDs[indexOfTemperatureSensorBeingRead],&currentTemperatures[indexOfTemperatureSensorBeingRead], &errorBits[indexOfTemperatureSensorBeingRead], &onTemperatureRead);
}

/**
 * \brief This function initializes the uC and the connected and used peripherals and starts the temperature conversion and read out cycle. It is implicitely called before the invocation of main() since this
 * is attributed as a constructor. Reference the avr-gcc manual for more information on that if that is greek to you
**/
__attribute__((constructor)) void mainInit(void)
{
	makeInput(&onewirepin);
	disablePullup(&onewirepin);
	
	USART0_init(USARTBaudRate_9600);
	
	telemetryString = malloc(TELEMETRY_STRING_SIZE_MAX);
	uptimeString = malloc(UPTIME_STRING_SIZE_MAX);
	
	setWaveformGenerationModeTimer0(WaveformGenerationModeTimer0_CTC); 
	defineCallbackOnTimer0CaptureCompareAMatch(&timingGeneratorForOneSecond);
	letTimer0GenerateInterruptEvery500us();
	enableTimer0CaptureCompareAInterrupt();
	
 	setWaveformGenerationModeTimer2(WaveformGenerationModeTimer2_CTC);// since the timer shall be reserved to the one wire functionality only these bits will only be set once and never changed again
	uptimeInSeconds=0;
	sei();

	startTemperatureConversionAndReadoutCycle();
}

/**
 * \brief this function is called when main() ends (ie. as it stands never) and has the purpose of cleaning up all the stuff that has amassed during the run time of the program (mostly strings).
 * This is only here since every malloc is supposed to have its respective free somewhere (even though nobody checks that)... This may just be something that you put in knowing it is technically 
 * not necessary but just is required by some coding standard or for your own peace of mind. 
**/
__attribute__((destructor)) void mainEnd(void)
{
	free(telemetryString);
	free(uptimeString);
}

#pragma GCC diagnostic ignored "-Wmain"
__attribute__((noreturn)) void main(void)
{
	FOREVER
    {
	   // main loop
    }
}

