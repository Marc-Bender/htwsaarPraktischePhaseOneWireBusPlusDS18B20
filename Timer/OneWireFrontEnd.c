#include "OneWireFrontEnd.h"

#define BITS_PER_BYTE (8U)

typedef enum
{
	OneWireRomCommands_ReadRom = 0x33,
	OneWireRomCommands_MatchRom = 0x55,
	OneWireRomCommands_SkipRom = 0xCC,
}OneWireRomCommands_t;

typedef struct
{
	const uint8_t * deviceId;
	const GPIOPin_t * onewirepin;
	CallbackFunctionType callback;
}OneWireFrontendInternalData_t;

OneWireFrontendInternalData_t internalDataOneWireFrontend;

void sendID(IN_PAR const bool startAtZero);

void sendNextIDByte(void)
{
	sendID(false);
}

void sendID(IN_PAR const bool startAtZero)
{
	static volatile uint8_t positionWithinID;
	
	if(startAtZero)
		positionWithinID=0;
	if (positionWithinID<SIZE_OF_ID)
		writeByteToOneWireBus(internalDataOneWireFrontend.deviceId[positionWithinID++],true,internalDataOneWireFrontend.onewirepin,&sendNextIDByte);
	else
		internalDataOneWireFrontend.callback();
}

void onMatchRomCommandSent(void)
{
	sendID(true);
}

void onReadyToSendMatchRomCommand(void)
{
	writeByteToOneWireBus(OneWireRomCommands_MatchRom,true,internalDataOneWireFrontend.onewirepin, &onMatchRomCommandSent);
}

void onReadyToSendSkipRomCommand(void)
{
	writeByteToOneWireBus(OneWireRomCommands_SkipRom,true,internalDataOneWireFrontend.onewirepin, internalDataOneWireFrontend.callback);
}

__attribute__((optimize("O3"))) void sendMatchRomCommand(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const uint8_t * const deviceID, IN_PAR const CallbackFunctionType onMatch)
{
	internalDataOneWireFrontend.onewirepin = onewirepin;
	internalDataOneWireFrontend.callback = onMatch;
	internalDataOneWireFrontend.deviceId = deviceID;
	
	performFullOneWireReset(internalDataOneWireFrontend.onewirepin, &onReadyToSendMatchRomCommand);
}

void sendSkipRomCommand(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onSkip)
{
	internalDataOneWireFrontend.onewirepin = onewirepin;
	internalDataOneWireFrontend.callback = onSkip;
	
	performFullOneWireReset(internalDataOneWireFrontend.onewirepin, &onReadyToSendSkipRomCommand);
}

void readNextBitWrapper(void)
{
	readByteFromOneWireBus(NULL, false, NULL, NULL);
}

__attribute__((hot)) void readByteFromOneWireBus(OUT_PAR uint8_t * const byte, IN_PAR const bool startAtZero, IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onByteRead)
{
	static uint8_t * lastByte;
	static uint8_t posistionWithinByte;
	static CallbackFunctionType lastCallback;
	static const GPIOPin_t * lastOneWirePin;
	static bool readBit;
	
	// if run the first time with startAtZero = false then this will produce undefined behavior
	// do not use the internalData data object here since this will be used by the other functions in the subordinate state machines!!
	if(startAtZero)
	{
		posistionWithinByte = 0;
		lastByte = byte;
		*byte=0; // ensure that the byte that holds the result is initially zero so that there are no ones in there that a simple or can not override
		lastCallback = onByteRead;
		lastOneWirePin = onewirepin;
	}
	else
	{
		*lastByte |= ((readBit==1) ? 1 : 0 ) << posistionWithinByte;
		posistionWithinByte++;
	}
	
	if (posistionWithinByte < BITS_PER_BYTE)
		readBitFromOneWire(lastOneWirePin, &readBit, &readNextBitWrapper);
	else
		lastCallback();
}

void writeNextBitWrapper(void)
{
	writeByteToOneWireBus(0, false, NULL, NULL);
}

__attribute__((optimize("O3"))) void writeByteToOneWireBus(IN_PAR const uint8_t byte, IN_PAR const bool startAtZero, IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onByteSent)
{
	static volatile uint8_t lastByte;
	static volatile uint8_t positionWithinByte;
	static volatile CallbackFunctionType lastCallback;
	static const GPIOPin_t * lastOneWirePin;
	
	// if run the first time with startAtZero = false then this will produce undefined behavior
	// do not use the internalData data object here since this will be used by the other functions in the subordinate state machines!!
	if(startAtZero)
	{
		positionWithinByte = 0;
		lastByte = byte;
		lastCallback = onByteSent;
		lastOneWirePin = onewirepin;
	}

	if (positionWithinByte < BITS_PER_BYTE)
	{
		if(lastByte & (1<<(positionWithinByte++)))
			write1BitToOneWire(lastOneWirePin, &writeNextBitWrapper);
		else
			write0BitToOneWire(lastOneWirePin, &writeNextBitWrapper);
	}
	else
	lastCallback();
}
