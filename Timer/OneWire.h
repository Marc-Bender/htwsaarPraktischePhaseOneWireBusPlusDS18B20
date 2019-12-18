#ifndef ONEWIRE_H_
#define ONEWIRE_H_

	#include "GPIO Pin.h" // for the abstraction of the one wire pin. It is assumed you chose a pin with external interrupt capabilities
	#include "Timer2.h" // Timing for the One Wire Bus shall be timer driven. 8 Bit Timer 2 should be sufficient. This Timer is hard coded into this driver so it can not be easily changed and should be reserved for this application only.
	#include <avr/interrupt.h>
	#include <stdbool.h>

	void performOneWireReset(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onResetComplete);
	void awaitOneWirePresencePulse(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onPresencePulseReceived);
	void write1BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onBitWritten);
	void write0BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onBitWritten);
	void readBitFromOneWire(IN_PAR const GPIOPin_t * const onewirepin, OUT_PAR bool * const storeReadBitHere, IN_PAR const CallbackFunctionType onBitRead);
	void writeByteToOneWireBus(IN_PAR const uint8_t byte, IN_PAR const bool startAtZero, IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onByteSent);
	void readByteFromOneWireBus(OUT_PAR uint8_t * const byte, IN_PAR const bool startAtZero, IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onByteRead);
	void performFullOneWireReset(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onFullResetComplete);	

#endif /* ONEWIRE_H_ */