#ifndef MAX31850_H_
#define MAX31850_H_

	#include "DS18B20.h" // since the two ICs are widely identical from their bus behavior the same code can be used for both devices, for the most part at least

	#define FAMILY_CODE_MAX31850 (0x3B)

	typedef uint16_t signed11Point2Fixed_t;
	
	// this maybe used for some applications...
	inline void readTemperatureMAX31850(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, OUT_PAR signed11Point2Fixed_t * const temperatureFixedPointFormat, OUT_PAR bool * const errorBit, IN_PAR const CallbackFunctionType onTemperatureReady)
	{
		readTemperature(onewirepin,deviceID,(signed7Point4Fixed_t *) temperatureFixedPointFormat,errorBit,onTemperatureReady);
	}
	
	char getSignOfSigned11Point2Fixed(IN_PAR const signed11Point2Fixed_t num );
	uint16_t getIntegerPartOfSigned11Point2Fixed(IN_PAR const signed11Point2Fixed_t num);
	uint16_t getNonIntegerPartOfSigned11Point2Fixed(IN_PAR const signed11Point2Fixed_t num);


#endif /* MAX31850_H_ */