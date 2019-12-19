#include "GPIO Pin.h"

#define NUM_OF_EXT_INTERRUPTS (8U)

/*
	always_inline
	Generally, functions are not inlined unless optimization is specified. For functions declared inline, this attribute inlines the function independent of any restrictions that otherwise apply to inlining. 
	Failure to inline such a function is diagnosed as an error. Note that if such a function is called indirectly the compiler may or may not inline it depending on optimization level and a failure 
	to inline an indirect call may or may not be diagnosed.
*/

inline bool __attribute__((always_inline, optimize("O3"))) getPinState(IN_PAR const GPIOPin_t * const pin)
{
	return (*(pin->PINx) & (1<<(pin->pinNumber))) > 0 ? 1 : 0;
}

inline void __attribute__((always_inline, optimize("O3"), hot)) makeInput(IN_PAR const GPIOPin_t * const pin)
{
	*(pin->DDRx) &= ~(1<<(pin->pinNumber));
}

inline void __attribute__((always_inline, optimize("O3"), hot)) makeOutputLow(IN_PAR const GPIOPin_t * const pin)
{
	*(pin->DDRx) |= 1<<(pin->pinNumber);
	*(pin->PORTx) &= ~(1<<(pin->pinNumber));
}

inline void disablePullup(IN_PAR const GPIOPin_t * const pin)
{
	*(pin->PORTx) &= ~(1<<(pin->pinNumber)); // only if input
}

static volatile CallbackFunctionType callbacksForExternalInterrupts[NUM_OF_EXT_INTERRUPTS];

__attribute__((optimize("O3"))) void enableExternalInterrupt(IN_PAR const GPIOPin_t * const pin, IN_PAR const ExternalInteruptPolarity_t polarity, IN_PAR CallbackFunctionType onExternalInterrupt)
{
	*(pin->EICRx) &= ~(0x03 << (pin->INTx > 3 ? pin->INTx - 4 * 2 : pin->INTx * 2)); // preclear the ISCn bits
	*(pin->EICRx) |= polarity << (pin->INTx > 3 ? pin->INTx - 4 * 2 : pin->INTx * 2); // set the ISCn bits
	EIMSK |= 1<<(pin->INTx);
	callbacksForExternalInterrupts[pin->INTx] = onExternalInterrupt;
}

void disableExternalInterrupt(IN_PAR const GPIOPin_t * const pin)
{
	EIMSK &= ~(1<<(pin->INTx)); // reset the external interrupt enable bit
	EIFR &= ~(1<<(pin->INTx)); // reset the external interrupt status bit (makes pending interrupts non pending)
	callbacksForExternalInterrupts[pin->INTx] = NULL;
}

ISR(INT5_vect)
{
	(callbacksForExternalInterrupts[INT5])();
}