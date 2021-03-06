/**
 * \file "GPIO Pin.h"
 * \brief Definitions for the use of GPIO pins
 * WARNING: None of the functions in this module check if the data inside passed in datastructures is actually coherent (ie. if a pin on portb has registers only for B, ...)
 * It is your obligation as a user to ensure passing in the right stuff (garbage in -> garbage out)
**/ 
#pragma once
#ifndef GPIO_PIN_H_
#define GPIO_PIN_H_

	#include "stdint.h"
	#include <stddef.h>
	#include <stdbool.h>
	#include <avr/interrupt.h>
	#include "marcsLanguageExtension.h"

	typedef struct
	{
		volatile uint8_t * const DDRx;
		volatile uint8_t * const PINx;
		volatile uint8_t * const PORTx;	
	
		const uint8_t pinNumber;
		const uint8_t INTx;
	}GPIOPin_t;

	typedef enum
	{
		IOType_Input=0,
		IOType_Output
	}IOType_t;

	typedef enum
	{
		ExternalInteruptPolarity_LowLevel=0,
		ExternalInteruptPolarity_AnyChange,
		ExternalInteruptPolarity_FallingEdge,
		ExternalInteruptPolarity_RisingEdge,
	}ExternalInteruptPolarity_t;

	void makeInput(IN_PAR const GPIOPin_t * const pin);
	void makeOutput(IN_PAR const GPIOPin_t * const pin);
	void makeOutputLow(IN_PAR const GPIOPin_t * const pin);
	void disablePullup(IN_PAR const GPIOPin_t * const pin);
	void enableExternalInterrupt(IN_PAR const GPIOPin_t * const pin, const ExternalInteruptPolarity_t polarity, CallbackFunctionType onExternalInterrupt); // If the pin does not feature external interupt capabilities is not checked this constellation may result in undefined behavior
	void disableExternalInterrupt(IN_PAR const GPIOPin_t * const pin);
	bool getPinState(IN_PAR const GPIOPin_t * const pin);
#endif