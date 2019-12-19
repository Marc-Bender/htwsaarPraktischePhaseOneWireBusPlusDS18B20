#ifndef DS18B20_H_
#define DS18B20_H_

	#include "OneWireFrontEnd.h"
	#include "marcsLanguageExtension.h"
	#include "GPIO Pin.h"

	typedef int16_t signed7Point4Fixed_t; // MSB is sign, bits 14-11 are have to be discarded after two complement generation for float conversion

	void issueTemperatureConversion(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const bool issueCommandAtAllSensors, IN_PAR const uint8_t * const deviceID, IN_PAR const CallbackFunctionType onTemperatureConversionStarted);
	void readTemperature(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, OUT_PAR signed7Point4Fixed_t * const temperatureFixedPointFormat, OUT_PAR bool * const errorBit, IN_PAR const CallbackFunctionType onTemperatureReady);

	char getSignOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num );
	uint8_t getIntegerPartOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num);
	uint16_t getNonIntegerPartOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num);
	
#endif /* DS18B20_H_ */