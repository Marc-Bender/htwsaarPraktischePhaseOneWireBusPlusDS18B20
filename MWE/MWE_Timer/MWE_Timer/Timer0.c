#include "Timer0.h"


CallbackFunctionType onTimer0Overflow;
CallbackFunctionType onTimer0CaptureCompareAMatch;

void defineCallbackOnTimer0Overflow(IN_PAR const CallbackFunctionType callbackFunction)
{
	onTimer0Overflow = callbackFunction;
}

void defineCallbackOnTimer0CaptureCompareAMatch(IN_PAR const CallbackFunctionType callbackFunction)
{
	onTimer0CaptureCompareAMatch = callbackFunction;
}

ISR(TIMER0_OVF_vect)
{
	onTimer0Overflow();
}

ISR(TIMER0_COMPA_vect)
{
	onTimer0CaptureCompareAMatch();
}

void setWaveformGenerationModeTimer0(IN_PAR const WaveformGenerationModeTimer0_t waveformmode)
{
	// reset the wgm bits to their default before setting the wanted mode
	TCCR0A &= ~(1<<WGM00 | 1<<WGM01);
	TCCR0B &= ~(1<<WGM02);
	
	TCCR0A |= (waveformmode & 0x03); // WaveformGenerationMode_t enumerates the options so that they form a 3bit binary number of form wgm2 wgm1 wgm0 and only the wgm1 and wgm0 bit are in this register
	TCCR0B |= (waveformmode & 0x04) << 1; // in this register only the wgm2 bit has to be set if needed so extract that from the parameter and shift it to the position that reflects its position in the register
}

void setPrescalerTimer0(IN_PAR const PrescalerTimer0_t prescaler)
{
	TCCR0B &= ~(PrescalerTimer0_ExternalRisingEdge); //resets all CS bits
	TCCR0B |= prescaler;
}

void enableTimer0OverflowInterrupt(void)
{
	TIMSK0 |= 1<<TOIE0;
}

void stopTimer0(void)
{
	setPrescalerTimer0(PrescalerTimer0_NoClockSource); // stops the timer
	TCNT0 = 0;
}

void letTimer0GenerateInterruptEvery500us(void)
{
	// uses CTC mode
	OCR0A = 124;
	setPrescalerTimer0(PrescalerTimer0_64);
}

void enableTimer0CaptureCompareAInterrupt(void)
{
	TIMSK0 |= 1<<OCIE0A;
}