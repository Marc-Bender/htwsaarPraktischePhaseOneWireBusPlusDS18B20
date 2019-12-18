#include "DS18B20.h"

typedef enum
{
	DS18B20_ROMCommands_ReadRom = 0x33,
	DS18B20_ROMCommands_MatchRom = 0x55,
	DS18B20_ROMCommands_ConvertTemperature = 0x44,
	DS18B20_ROMCommands_SkipRom = 0xCC,
	DS18B20_ROMCommands_ReadScratchpad = 0xBE,
}DS18B20_ROMCommands_t;

typedef struct
{
	uint8_t temperatureLSB;
	uint8_t temperatureMSB;
	uint8_t TH;
	uint8_t TL;
	uint8_t configurationRegister;
	uint8_t RESERVED_0; // defaults to 0xff see DS18B20 Datasheet p.8/20
	uint8_t RESERVED_1;
	uint8_t RESERVED_2; // defaults to 0x10 see DS18B20 Datasheet p.8/20
	uint8_t CRC;
}DS18B20_Scratchpad_t;

typedef struct
{
	const GPIOPin_t * onewirepin;
	CallbackFunctionType callback;
	uint8_t * deviceId; // must be non const to enable the getDeviceId() to store its stuff somewhere
	uint8_t idBytesRead;
}DS18B20_InternalData_t;

typedef struct
{
	const GPIOPin_t * onewirepin;
	CallbackFunctionType callback;
	DS18B20_Scratchpad_t * scratchpad;	
	const uint8_t * deviceId;
}DS18B20_ReadEntireScratchpadInternalData_t;

typedef struct  
{
	const GPIOPin_t * onewirepin;
	CallbackFunctionType callback;
	signed7Point4Fixed_t * temperatureFixedPointFormat;	
	const uint8_t * deviceId;
} DS18B20_ReadTemperatureInternalData_t;

DS18B20_ReadEntireScratchpadInternalData_t internalDataReadSP_DS18B20;
DS18B20_InternalData_t internalDataDS18B20;
DS18B20_ReadTemperatureInternalData_t internalDataReadTemperatureDS18B20;

void onAllIdBytesSent(void)
{
	internalDataDS18B20.callback();
}

void matchRomSend8thIdByte(void)
{
	writeByteToOneWireBus(internalDataDS18B20.deviceId[7], true, internalDataDS18B20.onewirepin, &onAllIdBytesSent);
}

void matchRomSend7thIdByte(void)
{
	writeByteToOneWireBus(internalDataDS18B20.deviceId[6], true, internalDataDS18B20.onewirepin, &matchRomSend8thIdByte);
}

void matchRomSend6thIdByte(void)
{
	writeByteToOneWireBus(internalDataDS18B20.deviceId[5], true, internalDataDS18B20.onewirepin, &matchRomSend7thIdByte);
}

void matchRomSend5thIdByte(void)
{
	writeByteToOneWireBus(internalDataDS18B20.deviceId[4], true, internalDataDS18B20.onewirepin, &matchRomSend6thIdByte);
}

void matchRomSend4thIdByte(void)
{
	writeByteToOneWireBus(internalDataDS18B20.deviceId[3], true, internalDataDS18B20.onewirepin, &matchRomSend5thIdByte);
}

void matchRomSend3rdIdByte(void)
{
	writeByteToOneWireBus(internalDataDS18B20.deviceId[2], true, internalDataDS18B20.onewirepin, &matchRomSend4thIdByte);
}

void matchRomSend2ndIdByte(void)
{
	writeByteToOneWireBus(internalDataDS18B20.deviceId[1], true, internalDataDS18B20.onewirepin, &matchRomSend3rdIdByte);
}

void onMatchRomCommandSent(void)
{
	writeByteToOneWireBus(internalDataDS18B20.deviceId[0],true,internalDataDS18B20.onewirepin,&matchRomSend2ndIdByte);
}

void onReadyToSendMatchRomCommand(void)
{
	writeByteToOneWireBus(DS18B20_ROMCommands_MatchRom,true,internalDataDS18B20.onewirepin, &onMatchRomCommandSent);
}

void onReadyToSendSkipRomCommand(void)
{
	writeByteToOneWireBus(DS18B20_ROMCommands_SkipRom,true,internalDataDS18B20.onewirepin, internalDataDS18B20.callback);
}

void sendMatchRomCommand(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, IN_PAR const CallbackFunctionType onMatch)
{
	internalDataDS18B20.onewirepin = onewirepin;
	internalDataDS18B20.callback = onMatch;
	internalDataDS18B20.deviceId = deviceID; // warning about discarded const for deviceID Parameter can be ignored since the deviceID in the DS18B20_InternalData_t can not be made constant because the datastructure is shared also with the getID Function which writes to what ever is stored in that pointer while everything else only reads.
	
	performFullOneWireReset(internalDataDS18B20.onewirepin, &onReadyToSendMatchRomCommand);
}

void sendSkipRomCommand(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onSkip)
{
	internalDataDS18B20.onewirepin = onewirepin;
	internalDataDS18B20.callback = onSkip;
	
	performFullOneWireReset(internalDataDS18B20.onewirepin, &onReadyToSendSkipRomCommand);
}


void readNextIdByte(void)
{
	internalDataDS18B20.idBytesRead++;
	if(internalDataDS18B20.idBytesRead < 8)
		readByteFromOneWireBus(&internalDataDS18B20.deviceId[internalDataDS18B20.idBytesRead],true,internalDataDS18B20.onewirepin,&readNextIdByte);
	else // all id bytes have been received
		internalDataDS18B20.callback(); // onIdRetrieved
}

void onReadRomCommandSent(void)
{
	internalDataDS18B20.idBytesRead = 0;
	//start with reading the first ID byte
	readByteFromOneWireBus(internalDataDS18B20.deviceId,true,internalDataDS18B20.onewirepin,&readNextIdByte); // then the next and so on
}

void sendReadRomCommand(void)
{
	writeByteToOneWireBus(DS18B20_ROMCommands_ReadRom,true,internalDataDS18B20.onewirepin,&onReadRomCommandSent);
}

void onScratchpadRead(void)
{
	internalDataReadSP_DS18B20.callback();
}

void readCRCRegister(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->CRC,true,internalDataReadSP_DS18B20.onewirepin,&onScratchpadRead);
}

void readReserved2(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->RESERVED_2,true,internalDataReadSP_DS18B20.onewirepin,&readCRCRegister);
}

void readReserved1(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->RESERVED_1,true,internalDataReadSP_DS18B20.onewirepin,&readReserved2);
}

void readReserved0(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->RESERVED_0,true,internalDataReadSP_DS18B20.onewirepin,&readReserved1);
}

void readConfigurationRegister(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->configurationRegister,true,internalDataReadSP_DS18B20.onewirepin,&readReserved0);
}

void readTLRegister(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->TL,true,internalDataReadSP_DS18B20.onewirepin,&readConfigurationRegister);
}

void readTHRegister(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->TH,true,internalDataReadSP_DS18B20.onewirepin,&readTLRegister);
}

void readTemperatureMSBFromScratchpad(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->temperatureMSB,true,internalDataReadSP_DS18B20.onewirepin,&readTHRegister);
}

void onReadScratchpadCommandSent(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->temperatureLSB,true,internalDataReadSP_DS18B20.onewirepin,&readTemperatureMSBFromScratchpad);
}

void onReadyToSendReadScratchpadCommand(void)
{
	writeByteToOneWireBus(DS18B20_ROMCommands_ReadScratchpad,true,internalDataReadSP_DS18B20.onewirepin,&onReadScratchpadCommandSent);
}

void readEntireScratchpad(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, OUT_PAR DS18B20_Scratchpad_t * const scratchpadThatContainsTheRawData, IN_PAR const CallbackFunctionType onEntireScratchpadRead)
{
	// do not use the normal internalData object here since subordinate state machines will use that and overwrite what ever you would write there here.
	// so use own data object for that that can also store the output parameter for this function
	internalDataReadSP_DS18B20.callback=onEntireScratchpadRead;
	internalDataReadSP_DS18B20.deviceId=deviceID;
	internalDataReadSP_DS18B20.onewirepin=onewirepin;
	internalDataReadSP_DS18B20.scratchpad=scratchpadThatContainsTheRawData;
	sendMatchRomCommand(onewirepin,deviceID,&onReadyToSendReadScratchpadCommand);
}

void getIdOfDS18B20(IN_PAR const GPIOPin_t * const onewirepin, OUT_PAR uint8_t * const deviceID, IN_PAR const CallbackFunctionType onIdRetrieved)
{
	internalDataDS18B20.onewirepin = onewirepin;
	internalDataDS18B20.callback = onIdRetrieved;
	internalDataDS18B20.deviceId = deviceID;
	performFullOneWireReset(internalDataDS18B20.onewirepin,&sendReadRomCommand);
}

void onScratchpadReadyForTemperatureStorage(void)
{
	*(internalDataReadTemperatureDS18B20.temperatureFixedPointFormat) = (internalDataReadSP_DS18B20.scratchpad->temperatureMSB<<8) | internalDataReadSP_DS18B20.scratchpad->temperatureLSB;;
	// no spacial post processing is necessary (not even reseting bits 14 - 11 since they have to get discarded when converted to float by a master controller anyway and reset they may interfere with the twos complement generation and would have to be masked out afterwards again) 
	free(internalDataReadSP_DS18B20.scratchpad); // free up no longer needed scratchpad
	internalDataReadSP_DS18B20.scratchpad=NULL; // do not leave behind a pointer to invalid locations
	internalDataReadTemperatureDS18B20.callback(); // temperature is now ready and found in the given location as 7.4 Fixed Point Signed
}

// void onTemperatureConversionComplete(void)
// {
// 	DS18B20_Scratchpad_t * scratchpadForReadingTemps = malloc(sizeof(DS18B20_Scratchpad_t)); // gets free-ed by the last function in the readEntireScratchpad state machine
// 	if(scratchpadForReadingTemps==NULL)// no space left
// 		deathTrap();
// 
// 	readEntireScratchpad(internalDataReadTemperatureDS18B20.onewirepin,internalDataReadTemperatureDS18B20.deviceId,scratchpadForReadingTemps,&onScratchpadReadyForTemperatureStorage);
// }

uint16_t ticksTillConversionComplete;

// void onTimerInterruptForConversionComplete(void)
// {
// 	ticksTillConversionComplete--;
// 	if(ticksTillConversionComplete==0)
// 	{
// 		stopTimer2();
// 		onTemperatureConversionComplete();
// 	}
// }

void onTimerInterruptForConversionComplete(void)
{
	ticksTillConversionComplete--;
	if(ticksTillConversionComplete==0)
	{
		stopTimer2();
		internalDataReadTemperatureDS18B20.callback();// onTemperatureConversionComplete
	}
}


// void onConvertTemperatureCommandSent(void)
// {
// 	ticksTillConversionComplete=1000;
// 	defineCallbackOnTimer2CaptureCompareAMatch(&onTimerInterruptForConversionComplete);
// 	letTimer2GenerateInterruptEvery750us();
// 	enableTimer2CaptureCompareAInterrupt();
// }

void generateInterruptOnConversionComplete(IN_PAR const CallbackFunctionType onTemperatureConversionComplete)
{
	internalDataReadTemperatureDS18B20.callback=onTemperatureConversionComplete;
	ticksTillConversionComplete=1000;
	defineCallbackOnTimer2CaptureCompareAMatch(&onTimerInterruptForConversionComplete);
	letTimer2GenerateInterruptEvery750us();
	enableTimer2CaptureCompareAInterrupt();
}


void onConvertTemperatureCommandSent(void)
{
	internalDataReadTemperatureDS18B20.callback(); // on temperatureConversionStarted
}

void onReadyToSendConvertTemperatureCommand(void)
{
	writeByteToOneWireBus(DS18B20_ROMCommands_ConvertTemperature,true,internalDataReadTemperatureDS18B20.onewirepin,&onConvertTemperatureCommandSent);
}

// void readTemperature(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, OUT_PAR signed7Point4Fixed_t * const temperatureFixedPointFormat, IN_PAR const CallbackFunctionType onTemperatureReady)
// {
// 	internalDataReadTemperatureDS18B20.callback=onTemperatureReady;
// 	internalDataReadTemperatureDS18B20.temperatureFixedPointFormat=temperatureFixedPointFormat;
// 	internalDataReadTemperatureDS18B20.onewirepin = onewirepin;
// 	internalDataReadTemperatureDS18B20.deviceId = deviceID;
// 	sendMatchRomCommand(onewirepin,deviceID,&onReadyToSendConvertTemperatureCommand);
// }

void issueTemperatureConversion(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const bool issueCommandAtAllSensors ,IN_PAR const uint8_t * const deviceID, IN_PAR const CallbackFunctionType onTemperatureConversionStarted)
{
	// if issueCommandToAllSensors is true the value in deviceID is not used but must be given anyways. Its recommended to use NULL in that instance
	internalDataReadTemperatureDS18B20.callback=onTemperatureConversionStarted;
	internalDataReadTemperatureDS18B20.onewirepin = onewirepin;
	if(issueCommandAtAllSensors)
		sendSkipRomCommand(onewirepin,&onReadyToSendConvertTemperatureCommand);
	else
	{
		internalDataReadTemperatureDS18B20.deviceId = deviceID;
		sendMatchRomCommand(onewirepin,deviceID,&onReadyToSendConvertTemperatureCommand);
	}
}

void readTemperature(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, OUT_PAR signed7Point4Fixed_t * const temperatureFixedPointFormat, IN_PAR const CallbackFunctionType onTemperatureReady)
{
	internalDataReadTemperatureDS18B20.callback=onTemperatureReady;
	internalDataReadTemperatureDS18B20.temperatureFixedPointFormat=temperatureFixedPointFormat;
	internalDataReadTemperatureDS18B20.onewirepin=onewirepin;
	internalDataReadTemperatureDS18B20.deviceId=deviceID;

	DS18B20_Scratchpad_t * scratchpadForReadingTemps = malloc(sizeof(DS18B20_Scratchpad_t)); // gets free-ed by the last function in the readEntireScratchpad state machine
	if(scratchpadForReadingTemps==NULL)// no space left
		deathTrap();

	readEntireScratchpad(onewirepin,deviceID,scratchpadForReadingTemps,&onScratchpadReadyForTemperatureStorage);
}