/**
 * \file DS18B20.h
 * \brief Contains the definitions for working with the DS18B20 temperature sensors (at least up to the scale that was needed)
 * Also contains functions that convert the fixed point data format into parts of what could be pieced together to a float (or a fixed point number as a string, ...)
**/ 
#ifndef DS18B20_H_
#define DS18B20_H_

	#include <stdlib.h>
	#include <string.h>
	#include <stdio.h>
	#include <avr/pgmspace.h>
	#include "UART.h"

	#include "OneWireFrontEnd.h"
	#include "marcsLanguageExtension.h"
	#include "GPIO Pin.h"

	#define FAMILY_CODE_DS18B20 (0x28)

	typedef int16_t signed7Point4Fixed_t; // MSB is sign, bits 14-11 are have to be discarded after two complement generation for float conversion

	void issueTemperatureConversion(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const bool issueCommandAtAllSensors, IN_PAR const uint8_t * const deviceID, IN_PAR const CallbackFunctionType onTemperatureConversionStarted);
	void readTemperature(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, OUT_PAR signed7Point4Fixed_t * const temperatureFixedPointFormat, OUT_PAR bool * const errorBit, IN_PAR const CallbackFunctionType onTemperatureReady);

	char getSignOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num );
	uint8_t getIntegerPartOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num);
	uint16_t getNonIntegerPartOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num);
	
#endif /* DS18B20_H_ */