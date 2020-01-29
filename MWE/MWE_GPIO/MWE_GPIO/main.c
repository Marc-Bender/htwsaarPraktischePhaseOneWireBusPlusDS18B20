/*
 * MWE_GPIO.c
 *
 * Created: 28.01.2020 13:16:54
 * Author : Bender
 */ 

#include <avr/io.h>
#include <stdbool.h>
#include "GPIO Pin.h"

// Definiere einmalig einen Pin
GPIOPin_t myPin = {.DDRx=&DDRB,.PORTx=&PORTB, .PINx=&PINB, .pinNumber=5U, .INTx=0}; // intx auch bei pins, ohne externe interrupt fähigkeiten notwendig, keine automatische prüfung der inhalte dieser datenstruktur...
GPIOPin_t pinWithExtInt = {.DDRx=&DDRD,.PORTx=&PORTD, .PINx=&PIND, .pinNumber=2U, .INTx=INT0};

void onExternalInterrupt(void)
{
	disableExternalInterrupt(&pinWithExtInt);
}

int main(void)
{
    while (1) 
    { 
		// myPin als input (no pull up no alternate function)
		makeInput(&myPin);
		bool logicStateAtMyPin = getPinState(&myPin); // equivalenter code logicstateAtMyPin = PINB & (1<<5);
		
		
		// mypin als output		
		makeOutputLow(&myPin); // setzt den pin auf output und low; equivalenter code: ddrb|=1<<5;portb&=~(1<<5);
		// zum setzen von myPin auf high existiert keine funktion da bisher nicht gebraucht (entstanden vor dem hintergrund der nachbildung von open drain verhalten)
		// funktion zum setzen von mypin auf output und sonst nichts nicht existent da nicht gebraucht...
		
		
		// externe interrupts
		makeInput(&pinWithExtInt);
		enableExternalInterrupt(&pinWithExtInt, ExternalInteruptPolarity_AnyChange, &onExternalInterrupt);
		sei();
    }
}