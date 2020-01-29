/*
 * MWE_Timer.c
 *
 * Created: 28.01.2020 13:48:53
 * Author : Bender
 */ 

#include <avr/io.h>
#include "Timer0.h"
#include "Timer2.h" // nur zur demo von pwm  (in timer0 nicht implementiert)

void onOverflow(void)
{
	stopTimer0();	
}

void onCTCMatch(void)
{
	stopTimer0();
}

int main(void)
{
    /* Replace with your application code */
    while (1) 
    {
		// simpler timer
		setWaveformGenerationModeTimer0(WaveformGenerationModeTimer0_Normal);
		defineCallbackOnTimer0Overflow(&onOverflow);
		enableTimer0OverflowInterrupt();
		// Funktion zum disablen wurde nicht gebraucht und existiert daher nicht
		setPrescalerTimer0(PrescalerTimer0_1024); // startet auch gleichzeitig den timer
		
		
		// capture compare timer (hier nur zur demonstration direkt unten drunter in realem code nicht, nebenläufigkeit beachten!!!)
		setWaveformGenerationModeTimer0(WaveformGenerationModeTimer0_CTC);
		defineCallbackOnTimer0CaptureCompareAMatch(&onCTCMatch);
		OCR0A = 42; // hierfür keine extra funktion da so nie wirklich in verwendung
		enableTimer0CaptureCompareAInterrupt();
		
		
		// timer mit fixem timing (anmerkung oben beachten)
		setWaveformGenerationModeTimer0(WaveformGenerationModeTimer0_CTC);
		defineCallbackOnTimer0CaptureCompareAMatch(&onCTCMatch);
		enableTimer0CaptureCompareAInterrupt();
		letTimer0GenerateInterruptEvery500us(); // startet auch gleichzeitig den timer
		
		
		// PWM
		setWaveformGenerationModeTimer2(WaveformGenerationModeTimer2_PWM_PhaseCorrect);
		setPrescalerTimer2(PrescalerTimer2_1024);
		enablePWMMode();
		setPWMValueTimer2(128);
    }
}

