/**
 * \file "GPIO Pin.c"
 * \brief Implementation of functions and interrupt handlers for use of GPIO pìns
**/ 

#include "GPIO Pin.h"

#define NUM_OF_EXT_INTERRUPTS (2U)

/* from the avr-gcc documentation:
	always_inline
	Generally, functions are not inlined unless optimization is specified. For functions declared inline, this attribute inlines the function independent of any restrictions that otherwise apply to inlining. 
	Failure to inline such a function is diagnosed as an error. Note that if such a function is called indirectly the compiler may or may not inline it depending on optimization level and a failure 
	to inline an indirect call may or may not be diagnosed.
*/

/**
 * \brief this function retrieves the logic state (high or low) on a gpio pin
**/ 
inline bool __attribute__((always_inline, optimize("O3"), hot)) getPinState(IN_PAR const GPIOPin_t * const pin)
{
	return (*(pin->PINx) & (1<<(pin->pinNumber))) > 0 ? 1 : 0;
}

/**
 * \brief This function sets a pin to the input (no pullup) mode.
**/ 
inline void __attribute__((always_inline, optimize("O3"), hot)) makeInput(IN_PAR const GPIOPin_t * const pin)
{
	*(pin->DDRx) &= ~(1<<(pin->pinNumber));
}

/**
 * \brief this function makes a pin an output and drives it low this is effectively what is needed when doing open drain on an AVR (since there is no real open drain capability here)
**/ 
inline void __attribute__((always_inline, optimize("O3"), hot)) makeOutputLow(IN_PAR const GPIOPin_t * const pin)
{
	*(pin->DDRx) |= 1<<(pin->pinNumber);
	*(pin->PORTx) &= ~(1<<(pin->pinNumber));
}

/**
 * \brief this function disables the pullup on the passed in pin this is called only once in the initialization to make sure that definitely no pullup is on for the pin that is used for the One Wire
 * functionality. Otherwise this code is unused and the one invocation thereof may be cut since the system starts of in the reset state (that is with all pins tristated)
**/ 
inline void disablePullup(IN_PAR const GPIOPin_t * const pin)
{
	*(pin->PORTx) &= ~(1<<(pin->pinNumber)); // only if input
}

static volatile CallbackFunctionType callbacksForExternalInterrupts[NUM_OF_EXT_INTERRUPTS];//< this is where the callbacks for the external interrupts are stored.

/**
 * \brief this function enables and registers an external interrupt on a pin. It is not tested if the pin does feature external interrupt capabilities.
**/ 
__attribute__((optimize("O3"),nonnull(3))) void enableExternalInterrupt(IN_PAR const GPIOPin_t * const pin, IN_PAR const ExternalInteruptPolarity_t polarity, IN_PAR CallbackFunctionType onExternalInterrupt)
{
	EICRA &= ~(0x03 << (pin->INTx * 2)); // preclear the ISCn bits
	EICRA |= polarity << (pin->INTx * 2); // set the ISCn bits
	EIMSK |= 1<<(pin->INTx);
	callbacksForExternalInterrupts[pin->INTx] = onExternalInterrupt;
}

/**
 * \brief this function disables the external interrupt on a pin by resetting the respective bits and removing the entry from the array that holds the callbacks 
**/ 
void disableExternalInterrupt(IN_PAR const GPIOPin_t * const pin)
{
	EIMSK &= ~(1<<(pin->INTx)); // reset the external interrupt enable bit
	EIFR &= ~(1<<(pin->INTx)); // reset the external interrupt status bit (makes pending interrupts non pending)
	callbacksForExternalInterrupts[pin->INTx] = NULL;
}

/**
 * \brief this is the interrupt handler for the external interrupt zero this interrupt will cause the processor to lock up if for some reason the registered callback is a NULL-pointer else it proceeds 
**/ 
ISR(INT0_vect)
{
	(callbacksForExternalInterrupts[INT0])!=NULL?callbacksForExternalInterrupts[INT0]():deathTrap();
}