#include "DS18B20.h"

typedef enum
{
	DS18B20_ROMCommands_ReadRom = 0x33,
	DS18B20_ROMCommands_MatchRom = 0x55,
	DS18B20_ROMCommands_ConvertTemperature = 0x44,
	DS18B20_ROMCommands_SkipRom = 0xCC,
	DS18B20_ROMCommands_ReadScratchpad = 0xBE,
}DS18B20_ROMCommands_t;

typedef union
{
	struct
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
	}asStruct;
	uint8_t asArray[9];
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
	bool * errorBit;
} DS18B20_ReadTemperatureInternalData_t;

DS18B20_ReadEntireScratchpadInternalData_t internalDataReadSP_DS18B20;
DS18B20_InternalData_t internalDataDS18B20;
DS18B20_ReadTemperatureInternalData_t internalDataReadTemperatureDS18B20;

uint8_t calculateCRC8(const uint8_t * const addr, const uint8_t len);

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
	uint8_t calculatedCRC = calculateCRC8(internalDataReadSP_DS18B20.scratchpad->asArray, 8);
	if(calculatedCRC==internalDataReadSP_DS18B20.scratchpad->asStruct.CRC)
		internalDataReadSP_DS18B20.callback();
	else
		*(internalDataReadTemperatureDS18B20.errorBit) = true;
}

void readCRCRegister(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.CRC,true,internalDataReadSP_DS18B20.onewirepin,&onScratchpadRead);
}

void readReserved2(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.RESERVED_2,true,internalDataReadSP_DS18B20.onewirepin,&readCRCRegister);
}

void readReserved1(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.RESERVED_1,true,internalDataReadSP_DS18B20.onewirepin,&readReserved2);
}

void readReserved0(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.RESERVED_0,true,internalDataReadSP_DS18B20.onewirepin,&readReserved1);
}

void readConfigurationRegister(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.configurationRegister,true,internalDataReadSP_DS18B20.onewirepin,&readReserved0);
}

void readTLRegister(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.TL,true,internalDataReadSP_DS18B20.onewirepin,&readConfigurationRegister);
}

void readTHRegister(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.TH,true,internalDataReadSP_DS18B20.onewirepin,&readTLRegister);
}

void readTemperatureMSBFromScratchpad(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.temperatureMSB,true,internalDataReadSP_DS18B20.onewirepin,&readTHRegister);
}

void onReadScratchpadCommandSent(void)
{
	readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asStruct.temperatureLSB,true,internalDataReadSP_DS18B20.onewirepin,&readTemperatureMSBFromScratchpad);
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
	*(internalDataReadTemperatureDS18B20.temperatureFixedPointFormat) = (internalDataReadSP_DS18B20.scratchpad->asStruct.temperatureMSB<<8) | internalDataReadSP_DS18B20.scratchpad->asStruct.temperatureLSB;;
	// no spacial post processing is necessary (not even reseting bits 14 - 11 since they have to get discarded when converted to float by a master controller anyway and reset they may interfere with the twos complement generation and would have to be masked out afterwards again) 
	free(internalDataReadSP_DS18B20.scratchpad); // free up no longer needed scratchpad
	internalDataReadSP_DS18B20.scratchpad=NULL; // do not leave behind a pointer to invalid locations
	internalDataReadTemperatureDS18B20.callback(); // temperature is now ready and found in the given location as 7.4 Fixed Point Signed
}


uint16_t ticksTillConversionComplete;

void onTimerInterruptForConversionComplete(void)
{
	ticksTillConversionComplete--;
	if(ticksTillConversionComplete==0)
	{
		stopTimer2();
		internalDataReadTemperatureDS18B20.callback();// onTemperatureConversionComplete
	}
}

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

void readTemperature(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, OUT_PAR signed7Point4Fixed_t * const temperatureFixedPointFormat, OUT_PAR bool * const errorBit, IN_PAR const CallbackFunctionType onTemperatureReady)
{
	internalDataReadTemperatureDS18B20.callback=onTemperatureReady;
	internalDataReadTemperatureDS18B20.temperatureFixedPointFormat=temperatureFixedPointFormat;
	internalDataReadTemperatureDS18B20.onewirepin=onewirepin;
	internalDataReadTemperatureDS18B20.deviceId=deviceID;

	DS18B20_Scratchpad_t * scratchpadForReadingTemps = malloc(sizeof(DS18B20_Scratchpad_t)); // gets free-ed by the last function in the readEntireScratchpad state machine
	if(scratchpadForReadingTemps==NULL)// no space left
		deathTrap();
	internalDataReadTemperatureDS18B20.errorBit=errorBit;
	readEntireScratchpad(onewirepin,deviceID,scratchpadForReadingTemps, &onScratchpadReadyForTemperatureStorage);
}

// This table comes from Dallas sample code where it is freely reusable,
// though Copyright (C) 2000 Dallas Semiconductor Corporation
static const uint8_t CRC_LUT[] = 
{
	0,		94,		188,	226,	97,		63,		221,	131,	194,	156,	126,	32,		163,	253,	31,		65,
	157,	195,	33,		127,	252,	162,	64,		30,		95,		1,		227,	189,	62,		96,		130,	220,
	35,		125,	159,	193,	66,		28,		254,	160,	225,	191,	93,		3,		128,	222,	60,		98,
	190,	224,	2,		92,		223,	129,	99,		61,		124,	34,		192,	158,	 29,	67,		161,	255,
	70,		24,		250,	164,	39,		121,	155,	197,	132,	218,	56,		102,	229,	187,	89,		7,
	219,	133,	103,	57,		186,	228,	  6,	 88,	25,		71,		165,	251,	120,	38,		196,	154,
	101,	59,		217,	135,	4,		90,		184,	230,	167,	249,	27,		69,		198,	152,	122,	36,
	248,	166,	68,		26,		153,	199,	37,		123,	58,		100,	134,	216,	 91,	  5,	231,	185,
	140,	210,	48,		110,	237,	179,	 81,	15,		78,		16,		242,	172,	 47,	113,	147,	205,
	17,		79,		173,	243,	112,	46,		204,	146,	211,	141,	111,	 49,	178,	236,	14,		80,
	175,	241,	19,		77,		206,	144,	114,	44,		109,	51,		209,	143,	12,		82,		176,	238,
	50,		108,	142,	208,	83,		13,		239,	177,	240,	174,	76,		18,		145,	207,	45,		115,
	202,	148,	118,	40,		171,	245,	 23,	 73,	  8,	 86,	180,	234,	105,	55,		213,	139,
	87,		  9,	235,	181,	 54,	104,	138,	212,	149,	203,	 41,	119,	244,	170,	 72,	 22,
	233,	183,	 85,	 11,	136,	214,	 52,	106,	 43,	117,	151,	201,	 74,	 20,	246,	168,
	116,	 42,	200,	150,	 21,	 75,	169,	247,	182,	232,	 10,	84,		215,	137,	107,	53
};

uint8_t calculateCRC8(const uint8_t * addr, uint8_t len)
{
	uint8_t crc = 0;

	while (len--) 
	{
		crc = *((CRC_LUT + (crc ^ *addr++)));
	}
	return crc;
}