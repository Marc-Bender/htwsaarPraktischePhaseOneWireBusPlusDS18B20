#include "marcsLanguageExtension.h"

#include <avr/io.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#ifndef F_CPU
	#define F_CPU (16000000U)
#endif

/***
 *** Diese funktion ist dazu gedacht den prozessor aufzuhängen falls etwas unerwartetes passiert. Die funktion sollte nur durch einen Reset verlassen werden können. 
***/
/**
 * \brief This function is just intended to be a trap to lock up the processor in case that anything unexpected happens. 
 * You can only ever leave this function with a reset.
**/ 
__attribute__((noreturn)) void deathTrap(void)
{
	cli();
	FOREVER
		DO_NOTHING
}