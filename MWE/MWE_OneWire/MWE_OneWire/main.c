/*
 * MWE_OneWire.c
 *
 * Created: 28.01.2020 14:34:40
 * Author : Bender
 */ 

// Minimales Beispiel für ein Programm was die deviceID in einem single drop system auslesen kann

#include <avr/io.h>
#include "GPIO Pin.h"
#include "OneWireFrontEnd.h"
#include "Timer2.h"

GPIOPin_t onewirepin={&DDRD,&PIND,&PORTD,2,INT0};
uint8_t deviceID0[SIZE_OF_ID]={0x28, 0x7e, 0xa0, 0xbc, 0x05, 0x00, 0x00, 0x10}; // sample id
	
void onIDRead(void)
{
	// deviceID0 beinhaltet jetzt die empfangene ID
}
void onByte6Read(void)
{
	readByteFromOneWireBus(&(deviceID0[7]),true,&onewirepin, &onIDRead);
}
void onByte5Read(void)
{
	readByteFromOneWireBus(&(deviceID0[6]),true,&onewirepin, &onByte6Read);
}
void onByte4Read(void)
{
	readByteFromOneWireBus(&(deviceID0[5]),true,&onewirepin, &onByte5Read);
}
void onByte3Read(void)
{
	readByteFromOneWireBus(&(deviceID0[4]),true,&onewirepin, &onByte4Read);
}
void onByte2Read(void)
{
	readByteFromOneWireBus(&(deviceID0[3]),true,&onewirepin, &onByte3Read);
}
void onByte1Read(void)
{
	readByteFromOneWireBus(&(deviceID0[2]),true,&onewirepin, &onByte2Read);
}
void onByte0Read(void)
{
	readByteFromOneWireBus(&(deviceID0[1]),true,&onewirepin, &onByte1Read);
}
void onByteSent(void)
{
	readByteFromOneWireBus(&(deviceID0[0]),true,&onewirepin, &onByte0Read);
}

void onSkipROMSent(void)
{
	writeByteToOneWireBus(0x33,true,&onewirepin,&onByteSent);
}

int main(void)
{
	makeInput(&onewirepin);
	disablePullup(&onewirepin);
	setWaveformGenerationModeTimer2(WaveformGenerationModeTimer2_CTC);
	sendSkipRomCommand(&onewirepin,&onSkipROMSent);
	
    while (1) 
    {
    }
}

