#ifndef ONEWIRE_H_
#define ONEWIRE_H_

	#include "GPIO Pin.h" // for the abstraction of the one wire pin. It is assumed you chose a pin with external interrupt capabilities
	#include "Timer2.h" // Timing for the One Wire Bus shall be timer driven. 8 Bit Timer 2 should be sufficient. This Timer is hard coded into this driver so it can not be easily changed and should be reserved for this application only.
	#include <avr/interrupt.h>
	#include <util/delay.h>
	#include <stdbool.h>

	void awaitOneWirePresencePulse(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onPresencePulseReceived);
	void write1BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onBitWritten);
	void write0BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onBitWritten);
	void readBitFromOneWire(IN_PAR const GPIOPin_t * const onewirepin, OUT_PAR bool * const storeReadBitHere, IN_PAR const CallbackFunctionType onBitRead);
	void performFullOneWireReset(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onFullResetComplete);	

#endif /* ONEWIRE_H_ */