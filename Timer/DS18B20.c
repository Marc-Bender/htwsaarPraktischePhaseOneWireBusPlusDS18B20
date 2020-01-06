#include "DS18B20.h"

typedef enum
{
	DS18B20_ROMCommands_ConvertTemperature = 0x44,
	DS18B20_ROMCommands_ReadScratchpad = 0xBE,
}DS18B20_ROMCommands_t;

typedef union
{
	struct scratchpadAsStruct
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
	uint8_t asArray[sizeof(struct scratchpadAsStruct)];
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

void onScratchpadRead(void)
{
	uint8_t calculatedCRC = calculateCRC8(internalDataReadSP_DS18B20.scratchpad->asArray, sizeof(struct scratchpadAsStruct)-1);
	if(calculatedCRC!=internalDataReadSP_DS18B20.scratchpad->asStruct.CRC)
		*(internalDataReadTemperatureDS18B20.errorBit) = true;	
	else
		*(internalDataReadTemperatureDS18B20.errorBit) = false;	
	internalDataReadSP_DS18B20.callback();
}

void readScratchpadRegisters(IN_PAR const bool startAtZero);

void readNextScratchpadByte(void)
{
	readScratchpadRegisters(false);
}

void readScratchpadRegisters(IN_PAR const bool startAtZero)
{
	static uint8_t positionWithinScratchpad;
	if(startAtZero)
		positionWithinScratchpad=0;
	if(positionWithinScratchpad<sizeof(struct scratchpadAsStruct))
		readByteFromOneWireBus(&internalDataReadSP_DS18B20.scratchpad->asArray[positionWithinScratchpad++],true,internalDataReadSP_DS18B20.onewirepin,&readNextScratchpadByte);
	else
		onScratchpadRead();
}

void onReadScratchpadCommandSent(void)
{
	readScratchpadRegisters(true);
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

void onScratchpadReadyForTemperatureStorage(void)
{
	*(internalDataReadTemperatureDS18B20.temperatureFixedPointFormat) = (internalDataReadSP_DS18B20.scratchpad->asStruct.temperatureMSB<<8) | internalDataReadSP_DS18B20.scratchpad->asStruct.temperatureLSB;;
	// no spacial post processing is necessary (not even reseting bits 14 - 11 since they have to get discarded when converted to float by a master controller anyway and reset they may interfere with the twos complement generation and would have to be masked out afterwards again) 
	free(internalDataReadSP_DS18B20.scratchpad); // free up no longer needed scratchpad
	internalDataReadSP_DS18B20.scratchpad=NULL; // do not leave behind a pointer to invalid locations
	internalDataReadTemperatureDS18B20.callback(); // temperature is now ready and found in the given location as 7.4 Fixed Point Signed
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
	internalDataReadTemperatureDS18B20.errorBit=errorBit;
	
	DS18B20_Scratchpad_t * scratchpadForReadingTemps = malloc(sizeof(DS18B20_Scratchpad_t)); // gets free-ed by the last function in the readEntireScratchpad state machine
	if(scratchpadForReadingTemps==NULL)// no space left
		deathTrap();
	readEntireScratchpad(onewirepin,deviceID,scratchpadForReadingTemps, &onScratchpadReadyForTemperatureStorage);
}

// This table comes straight from the library that i set out to replace
static const uint8_t PROGMEM dscrc_table[]={
	0,94,188,226,97,63,221,131,194,156,126,32,163,253,31,65,
	157,195,33,127,252,162,64,30,95,1,227,189,62,96,130,220,
	35,125,159,193,66,28,254,160,225,191,93,3,128,222,60,98,
	190,224,2,92,223,129,99,61,124,34,192,158,29,67,161,255,
	70,24,250,164,39,121,155,197,132,218,56,102,229,187,89,7,
	219,133,103,57,186,228,6,88,25,71,165,251,120,38,196,154,
	101,59,217,135,4,90,184,230,167,249,27,69,198,152,122,36,
	248,166,68,26,153,199,37,123,58,100,134,216,91,5,231,185,
	140,210,48,110,237,179,81,15,78,16,242,172,47,113,147,205,
	17,79,173,243,112,46,204,146,211,141,111,49,178,236,14,80,
	175,241,19,77,206,144,114,44,109,51,209,143,12,82,176,238,
	50,108,142,208,83,13,239,177,240,174,76,18,145,207,45,115,
	202,148,118,40,171,245,23,73,8,86,180,234,105,55,213,139,
	87,9,235,181,54,104,138,212,149,203,41,119,244,170,72,22,
	233,183,85,11,136,214,52,106,43,117,151,201,74,20,246,168,
	116,42,200,150,21,75,169,247,182,232,10,84,215,137,107,53};

// This function comes straight from the library that i set out to replace
uint8_t calculateCRC8(IN_PAR const uint8_t * addr, IN_PAR uint8_t len)
{
	uint8_t crc = 0;
	while (len--) 
		crc = pgm_read_byte(dscrc_table + (crc ^ *addr++));
	return crc;
}

char getSignOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num )
{
	return (num & 0xF800)?'-':'+';
}

uint8_t getIntegerPartOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num)
{
	return (uint8_t)((abs(num) & 0x07F0)>>4);
}

uint16_t getNonIntegerPartOfSigned7Point4Fixed(IN_PAR const signed7Point4Fixed_t num)
{
	return (((abs(num))&0x000F) * 625);
}
