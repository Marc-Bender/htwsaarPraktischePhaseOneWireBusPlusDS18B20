#ifndef DS18B20_H_
#define DS18B20_H_

	#include "OneWire.h"
	#include "marcsLanguageExtension.h"
	#include "GPIO Pin.h"

	typedef int16_t signed7Point4Fixed_t; // MSB is sign, bits 14-11 are have to be discarded after two complement generation for float conversion

	void getIdOfDS18B20(IN_PAR const GPIOPin_t * const onewirepin, OUT_PAR uint8_t * const deviceID, IN_PAR CallbackFunctionType onIdRetrieved); // only works in single drop system
	void readTemperature(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, OUT_PAR signed7Point4Fixed_t * const temperatureFixedPointFormat, IN_PAR const CallbackFunctionType onTemperatureReady);
	void sendMatchRomCommand(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR uint8_t * const deviceID, IN_PAR CallbackFunctionType onMatch);
		
#endif /* DS18B20_H_ */