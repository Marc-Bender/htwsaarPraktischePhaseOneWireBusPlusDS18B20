/**
 * \file Timer2.c
 * \brief Implementation of the Timer2 functionality
**/
#include "Timer2.h"

CallbackFunctionType onTimer2Overflow; //< store the callback function for the overflow case here. Since there is only one Timer2 and only one overflow thereof this is in fact a viable solution. The Overflow functionality is not used anymore though so it may be one point for improvement. 
CallbackFunctionType onTimer2CaptureCompareAMatch; //< conversely for the case of a capture compare match on channel a, since only channel a is used and implemented this is a viable solution. This is NOT deprecated and is in use so do not "optimize" that away if you do so for the other variable. 

/**
 * \brief fills the above defined variable so that if the timer overflows eventually the ISR knows what to call
**/
void defineCallbackOnTimer2Overflow(IN_PAR const CallbackFunctionType callbackFunction)
{
	onTimer2Overflow = callbackFunction;
}

/**
 * \brief conversely for the case of a capture compare match on channel a
**/
void defineCallbackOnTimer2CaptureCompareAMatch(IN_PAR const CallbackFunctionType callbackFunction)
{
	onTimer2CaptureCompareAMatch = callbackFunction;
}

/**
 * interrupt for timer2 Overflow
**/
ISR(TIMER2_OVF_vect )
{
	onTimer2Overflow();
}

/**
 * interrupt for timer2 Capture Compare A Match
**/
ISR(TIMER2_COMPA_vect)
{
	onTimer2CaptureCompareAMatch();
}

/**
 * \brief sets the WGM bits for the selected waveform generation mode. This is actually overkill since only CTC Mode is used actively in this project. But maybe it makes sense anyway since the code leveraged
 * the Overflow (and hence the WaveformgenerationMode_Normal) in a long surpassed version of this code.
**/
void setWaveformGenerationModeTimer2(IN_PAR const WaveformGenerationModeTimer2_t waveformmode)
{
	// reset the wgm bits to their default before setting the wanted mode
	TCCR2A &= ~(1<<WGM20 | 1<<WGM21);
	TCCR2B &= ~(1<<WGM22);
	
	TCCR2A |= (waveformmode & 0x03); // WaveformGenerationMode_t enumerates the options so that they form a 3bit binary number of form wgm2 wgm1 wgm0 and only the wgm1 and wgm0 bit are in this register
	TCCR2B |= (waveformmode & 0x04) << 1; // in this register only the wgm2 bit has to be set if needed so extract that from the parameter and shift it to the position that reflects its position in the register (and since wgm2 is the 4th bit in TCCR2B only a shift by one is neccessary)
}

/**
 * \brief Sets the prescaler to your liking (within the boundaries of what is possible). Since the functions that generate fixed time intervalls all need their specific prescaler setting having a function that 
 * sets the appropriate bits the right way every time is meaningful
**/
void setPrescalerTimer2(IN_PAR const PrescalerTimer2_t prescaler)
{
	TCCR2B &= ~(PrescalerTimer2_1024); //resets all CS bits
	TCCR2B |= prescaler;
}

/**
 * \brief enables the Overflow Interrupt of Timer2. Since the Overflow is no more used that function is essentially superfluous
**/
void enableTimer2OverflowInterrupt(void)
{
	TIMSK2 |= 1<<TOIE2;
}

/**
 * \brief stops the timer2 and resets the counter register to zero. This function is heavily used in other modules since it makes it easy to generate a timer interrupt after a certain period of time 
 * only once. Which incidentally is needed quite often (read almost everywhere)
**/
void stopTimer2(void)
{
	setPrescalerTimer2(PrescalerTimer2_NoClockSource); // stops the timer
	TCNT2 = 0;
}

/**
 * \brief resets the Timer2 without stopping it. This was used in a long surpassed version for the detection of the presence pulse in the One Wire Protocol which was lead by the wrong assumtion that
 * every device generates a seperate presence pulse, and after every detection the timeout for a possible detection has to be reset (obviously). Since that version is long substituted with something
 * that really does work acording to specification this function is no longer needed and thus superfluous.
**/
void resetTimer2(void)
{
	TCNT2 = 0;
}

/**
 * \brief this function does what its name implies. Used in the Reset pulse generation and presence pulse timeout functionality
**/
void letTimer2GenerateInterruptEvery500us(void)
{
	// uses CTC mode
	OCR2A = 124;
	setPrescalerTimer2(PrescalerTimer2_64);
}

/**
 * \brief this function does what its name implies. Used in the generation of single bits on the One Wire Bus.
**/
void letTimer2GenerateInterruptEveryRoughly60us(void)
{
	// uses CTC mode
	OCR2A = 7;
	setPrescalerTimer2(PrescalerTimer2_128);
}

/**
 * \brief this function does what its name implies. Was used in the detection when the temperature conversions are finished (especially in the case that they were all triggered per broadcast this made sense to know). 
 * since the Code as it stands does not use that functionality and rather issues a temperature conversion and reads the same sensor the next time no earlier than one second later (ie. when the temperature conversion is long finished)
 * this is no longer needed and is only a relic of a bygone version of that code.
**/
void letTimer2GenerateInterruptEvery750us(void)
{
	// uses CTC mode
	OCR2A = 190;
	setPrescalerTimer2(PrescalerTimer2_64);
}

/**
 * \brief This function enables the interrupt on a capture compare match on channel a. This is used for all the Timing as it is realised right now. So that this function is essential.
**/
void enableTimer2CaptureCompareAInterrupt(void)
{
	TIMSK2 |= 1<<OCIE2A;
}

void enablePWMMode(void)
{
	setWaveformGenerationModeTimer2(WaveformGenerationModeTimer2_PWM_PhaseCorrect);
	TCCR2A &= ~((1<<COM2A0)|(1<<COM2A1)); // preclear the control bits just in case
	TCCR2A |= ((1<<COM2A0)|(1<<COM2A1));
}

inline __attribute__((always_inline)) void setPWMValueTimer2(IN_PAR const uint8_t pwmValue)
{
	OCR2A=pwmValue;
}