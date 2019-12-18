#ifndef TIMER2_H_
#define TIMER2_H_

// Module assumes a fixed 16Mhz CPU-Clock for the generation of timer interrupts in the given intervals

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

#endif /* TIMER2_H_ */