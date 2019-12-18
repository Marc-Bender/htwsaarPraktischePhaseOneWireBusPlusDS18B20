#include "Timer2.h"

CallbackFunctionType onTimer2Overflow;
CallbackFunctionType onTimer2CaptureCompareAMatch;

void defineCallbackOnTimer2Overflow(IN_PAR const CallbackFunctionType callbackFunction)
{
	onTimer2Overflow = callbackFunction;
}

void defineCallbackOnTimer2CaptureCompareAMatch(IN_PAR const CallbackFunctionType callbackFunction)
{
	onTimer2CaptureCompareAMatch = callbackFunction;
}

ISR(TIMER2_OVF_vect )// interrupt for timer2 Overflow
{
	onTimer2Overflow();
}

ISR(TIMER2_COMPA_vect)// interrupt for timer2 Capture Compare A Match
{
	onTimer2CaptureCompareAMatch();
}

void setWaveformGenerationModeTimer2(IN_PAR const WaveformGenerationModeTimer2_t waveformmode)
{
	// reset the wgm bits to their default before setting the wanted mode
	TCCR2A &= ~(1<<WGM20 | 1<<WGM21);
	TCCR2B &= ~(1<<WGM22);
	
	TCCR2A |= (waveformmode & 0x03); // WaveformGenerationMode_t enumerates the options so that they form a 3bit binary number of form wgm2 wgm1 wgm0 and only the wgm1 and wgm0 bit are in this register
	TCCR2B |= (waveformmode & 0x04) << 1; // in this register only the wgm2 bit has to be set if needed so extract that from the parameter and shift it to the position that reflects its position in the register (and since wgm2 is the 4th bit in TCCR2B only a shift by one is neccessary)
}

void setPrescalerTimer2(IN_PAR const PrescalerTimer2_t prescaler)
{
	TCCR2B &= ~(PrescalerTimer2_1024); //resets all CS bits
	TCCR2B |= prescaler;
}

void enableTimer2OverflowInterrupt(void)
{
	TIMSK2 |= 1<<TOIE2;
}

void stopTimer2(void)
{
	setPrescalerTimer2(PrescalerTimer2_NoClockSource); // stops the timer
	TCNT2 = 0;
}

void resetTimer2(void)
{
	TCNT2 = 0;
}

void letTimer2GenerateInterruptEvery500us(void)
{
	// uses CTC mode
	OCR2A = 124;
	setPrescalerTimer2(PrescalerTimer2_64);
}

void letTimer2GenerateInterruptEveryRoughly60us(void)
{
	// uses CTC mode
	OCR2A = 7;
	setPrescalerTimer2(PrescalerTimer2_128);
}

void letTimer2GenerateInterruptEvery750us(void)
{
	// uses CTC mode
	OCR2A = 190;
	setPrescalerTimer2(PrescalerTimer2_64);
}

void enableTimer2CaptureCompareAInterrupt(void)
{
	TIMSK2 |= 1<<OCIE2A;
}

