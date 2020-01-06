#include "marcsLanguageExtension.h"

#include <avr/io.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#ifndef F_CPU
	#define F_CPU (16000000U)
#endif

void deathTrap(void)
{
	cli(); // Turn Off all Interrupts
	FOREVER
		DO_NOTHING
}