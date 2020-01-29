/**
 * \file Timer2.h
 * \brief Contains the definitions for the usage of Timer2. This is widely (read almost-entirely) identical with the driver for the Timer0 which will therefor not be commented in any way.
 * Mostly this differs through the availability of certain prescalers. That are not present in Timer0.
 * The functionality for generating interrupts after a certain time is CPU Core Clock dependant and hardcoded. There is no calculation at runtime happening that takes the time period and then
 * computes the optimum configuration for the prescaler and the "stop-counting-at-value"-register. This has been done in a different project and created some respectable amount of code for calculating the 
 * ever same values. The CPU Core Clock is assumed to be 16MHz for those functions while the other functions in this module are clock agnostic.
**/

#ifndef TIMER2_H_
#define TIMER2_H_

#include <avr/io.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#include "marcsLanguageExtension.h"

typedef enum
{
	WaveformGenerationModeTimer2_Normal=0,
	WaveformGenerationModeTimer2_PWM_PhaseCorrect,
	WaveformGenerationModeTimer2_CTC,
	WaveformGenerationModeTimer2_FastPWM,
	WaveformGenerationModeTimer2_RESERVED0,
	WaveformGenerationModeTimer2_PWM_PhaseCorrect_To_OCRA,
	WaveformGenerationModeTimer2_RESERVED1,
	WaveformGenerationModeTimer2_FastPWM_To_OCRA,
} WaveformGenerationModeTimer2_t;

typedef enum
{
	PrescalerTimer2_NoClockSource=0,
	PrescalerTimer2_1,
	PrescalerTimer2_8,
	PrescalerTimer2_32,
	PrescalerTimer2_64,
	PrescalerTimer2_128,
	PrescalerTimer2_256,
	PrescalerTimer2_1024
}PrescalerTimer2_t;

void setWaveformGenerationModeTimer2(IN_PAR const WaveformGenerationModeTimer2_t waveformmode);
void setPrescalerTimer2(IN_PAR const PrescalerTimer2_t prescaler);
void enableTimer2OverflowInterrupt();
void stopTimer2();
void defineCallbackOnTimer2Overflow(IN_PAR const CallbackFunctionType callbackFunction);
void resetTimer2(void);
void enableTimer2CaptureCompareAInterrupt(void);
void defineCallbackOnTimer2CaptureCompareAMatch(IN_PAR const CallbackFunctionType callbackFunction);
void letTimer2GenerateInterruptEvery500us(void);
void letTimer2GenerateInterruptEvery750us(void);
void letTimer2GenerateInterruptEveryRoughly60us(void);
void enablePWMMode(void);
void setPWMValueTimer2(IN_PAR const uint8_t pwmValue);

#endif /* TIMER2_H_ */
