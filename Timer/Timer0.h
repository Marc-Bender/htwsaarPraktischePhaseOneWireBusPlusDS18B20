#ifndef TIMER0_H_
#define TIMER0_H_

// Module assumes fixed 16MHz CPU-Clock

#include <avr/io.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <avr/interrupt.h>

#include "marcsLanguageExtension.h"

typedef enum
{
	WaveformGenerationModeTimer0_Normal=0,
	WaveformGenerationModeTimer0_PWM_PhaseCorrect,
	WaveformGenerationModeTimer0_CTC,
	WaveformGenerationModeTimer0_FastPWM,
	WaveformGenerationModeTimer0_RESERVED0,
	WaveformGenerationModeTimer0_PWM_PhaseCorrect_To_OCRA,
	WaveformGenerationModeTimer0_RESERVED1,
	WaveformGenerationModeTimer0_FastPWM_To_OCRA,
} WaveformGenerationModeTimer0_t;

typedef enum
{
	PrescalerTimer0_NoClockSource=0,
	PrescalerTimer0_1,
	PrescalerTimer0_8,
	PrescalerTimer0_64,
	PrescalerTimer0_256,
	PrescalerTimer0_1024,
	PrescalerTimer0_ExternalFallingEdge,
	PrescalerTimer0_ExternalRisingEdge
}PrescalerTimer0_t;

void setWaveformGenerationModeTimer0(IN_PAR const WaveformGenerationModeTimer0_t waveformmode);
void setPrescalerTimer0(IN_PAR const PrescalerTimer0_t prescaler);
void enableTimer0OverflowInterrupt(void);
void stopTimer0(void);
void defineCallbackOnTimer0Overflow(IN_PAR const CallbackFunctionType callbackFunction);
void enableTimer0CaptureCompareAInterrupt(void);
void defineCallbackOnTimer0CaptureCompareAMatch(IN_PAR const CallbackFunctionType callbackFunction);
void letTimer0GenerateInterruptEvery500us(void);

#endif /* TIMER0_H_ */