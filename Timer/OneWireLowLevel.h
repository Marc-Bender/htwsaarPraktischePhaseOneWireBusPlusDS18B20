/**
 * \file OneWireLowLevel.h
 * \brief Contains the definitions of the low level functions of the One Wire Protocol. You may not use this in your usual code. This is mostly a basis for the front end code in a different module and for
 * driver development. 
 * WARNING: The One Wire Presence Pulse is a falling-edge---low-for-some-microseconds---rising edge construct. Since the low time is rather long and comfortably detectable with an interrupt. An Interrupt is 
 * used for that. As only the external interrupts feature the capability to setup the wanted polarity for a trigger event the One Wire Pin must be a pin with external interrupt capabilities or the code
 * has to be modified to work differently (maybe pin change interrupts work equally well you just must keep track of where you are at). There is no functionality baked into the code to detect whether
 * the pin passed into the One Wire Functions actually meets this requirement.
 * WARNING: The timing for most communication over the One Wire Bus is Timer driven. Therefor in most cases it must be bared in mind that the return from a function in this module most certainly does not imply that the requested action
 * is fully executed. This will be indicated through callback functions which therefor have to be passed to the functions to begin with.
 * Where Timer use was not realistically possible ( [this is for sure dependent on the CPU clock frequency but a 16MHz Clock was assumed] and only there) busy wait and polling where used. The Timer under use is Timer2 and is not changeable using function parameters or the like. This may be a feature one can 
 * implement at a later point in time if he is so inclined, I did not. Since there is only one Timer2 there must be no more than ONE One Wire Transaction at a time going on on any given point in time.
 * This also holds if the Transaction happens on a completely separate bus (ie. at a different pin) since there still is only one Timer2 around.
 * Also the Timer2 must be free to use for the One Wire Protocol Timing at all times that the One Wire Bus is actively used (ie. not idle). Since the timer is the core component in the whole functional chain.
 * The Code does not feature the ability to set the Timer to CTC mode every time it is needed as it was figured that it will be reserved for the One Wire Code anyway and that there will be no 
 * other users of the timer that may change the waveform generation bits for Timer2. If you use the Timer for something different when there is no One Wire Code active you must ensure that 
 * you reset the timer to CTC mode before entering One Wire Code manually.
 * While you are free to use the timer for anything that fits your needs during the idle times it is highly recommended to just reserve the timer to the One Wire functionality and spare your self the 
 * headache of ensuring the afore mentioned requirements are met.
 * It is the sole responsibility of the programmer to ensure that these requirements are met. Since there is no mechanism that would try to enforce that they are.
 * The processor may lock up using this code in the case of now devices answering the reset pulse with a presence pulse. Apart from that there is no mechanism that ensures that the messages sent out are actually
 * answered by a slave. Only the presence of at least one slave is mandatory. You may do some consistency checking work on your side to find out if the received data is meaningful or not.
**/

#ifndef ONEWIRE_H_
#define ONEWIRE_H_

	#include "GPIO Pin.h" //< for the abstraction of the one wire pin.
	#include "Timer2.h" //< Timing for the One Wire Bus shall be timer driven...
	#include <avr/interrupt.h>
	#include <util/delay.h>
	#include <stdbool.h>

	void awaitOneWirePresencePulse(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onPresencePulseReceived);
	void write1BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onBitWritten);
	void write0BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onBitWritten);
	void readBitFromOneWire(IN_PAR const GPIOPin_t * const onewirepin, OUT_PAR bool * const storeReadBitHere, IN_PAR const CallbackFunctionType onBitRead);
	void performFullOneWireReset(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onFullResetComplete);	

#endif /* ONEWIRE_H_ */
