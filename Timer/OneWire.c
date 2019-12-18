#include "OneWire.h"
#include <util\delay.h>

typedef struct
{
	const GPIOPin_t * onewirepin;	
	CallbackFunctionType callback;
	uint8_t byte;
}OneWireStatemachinesInternalData_t;

typedef OneWireStatemachinesInternalData_t PerformFullOneWireResetInternalData_t;

OneWireStatemachinesInternalData_t internalData;
PerformFullOneWireResetInternalData_t internalDataFullReset;

volatile bool isDevicePresent=false;

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
	// do not use the internalData data object here since this will be used by the other functions in the subordinate statemachines!!
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
	
	if (posistionWithinByte < 8)
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

	if (positionWithinByte < 8) // why 9 not 8
	{
		if(lastByte & (1<<(positionWithinByte++))) // why does this -1 even make things work it should rather break stuff
			write1BitToOneWire(lastOneWirePin, &writeNextBitWrapper);
		else
			write0BitToOneWire(lastOneWirePin, &writeNextBitWrapper);
	}
	else
	lastCallback();
}

void onReadBitEnsureLongEnoughIdleTime(void)
{
	stopTimer2();
	internalData.callback(); //onBitRead
}

void readBitFromOneWire(IN_PAR const GPIOPin_t * const onewirepin, OUT_PAR bool * const storeReadBitHere, IN_PAR const CallbackFunctionType onBitRead)
{
	makeOutputLow(onewirepin); // initiates the read time slot
	_delay_us(2); // 2us; the bus must be low for more than 1us but less than 15us, no interrupts here because that is too slow
	makeInput(onewirepin);
	_delay_us(10); // even that is still not that easy with interrupts; 10us because the bus must be sampled towards the end of the 15us readslot (2us+10us=12us<15us and near the end of the readslot)
	*storeReadBitHere = getPinState(onewirepin);
	// after every read 0 the bus must be idle for more than 1us. in read 1 case it does not really matter. but all read slots must be a minimum of 60us in duration
	internalData.callback = onBitRead;
	defineCallbackOnTimer2CaptureCompareAMatch(&onReadBitEnsureLongEnoughIdleTime);
	letTimer2GenerateInterruptEveryRoughly60us(); // ~60us until Interrupt; this makes me able to reuse the same code for the delay time and ensures that all read slots are definitely a minimum of 6us in duration...
	enableTimer2CaptureCompareAInterrupt();
}

void onWrite0BitBusMustGoHigh(void)
{
	makeInput(internalData.onewirepin);
	stopTimer2();
	_delay_us(2); // after every write 0 the bus must be idle for more than 1us
	(internalData.callback)();
}

void write0BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin,IN_PAR const CallbackFunctionType onBitWritten)
{
	internalData.onewirepin = onewirepin;
	internalData.callback = onBitWritten;
	defineCallbackOnTimer2CaptureCompareAMatch(&onWrite0BitBusMustGoHigh);
	letTimer2GenerateInterruptEveryRoughly60us(); // ~60us until Interrupt because the bus must be low for 60-120us
	makeOutputLow(onewirepin);
	enableTimer2CaptureCompareAInterrupt();
}

void onWrite1BusIsSampled(void)
{
	stopTimer2();
	(internalData.callback)();
	// here there is no time delay needed as the bus is already quasi idle...
}

__attribute__((optimize("O3"))) void write1BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onBitWritten) 
{
	internalData.onewirepin=onewirepin;
	internalData.callback=onBitWritten;
	makeOutputLow(onewirepin);
	// scope shows that delay does not really work and even a single nop does not help to get the low time below 1us so omit it entirely?!
	_delay_us(1); // after 1us the bus must go high again see Datasheet DS18B20 p.16/20 1us is too short for a Timer Interrupt
	makeInput(onewirepin);
	defineCallbackOnTimer2CaptureCompareAMatch(&onWrite1BusIsSampled);
	letTimer2GenerateInterruptEveryRoughly60us();
	enableTimer2CaptureCompareAInterrupt(); // makes interrupt after ~60us then the Bus is sampled by the Slave device
}

void onPresencePulse500usHaveElapsedEvent(void)
{
	if (isDevicePresent)
		internalData.callback(); // onPresencePulseReceived
	else
		deathTrap();
}

void onPresencePulseEnded(void)
{
	disableExternalInterrupt(internalData.onewirepin);
	isDevicePresent=true;
}

void awaitOneWirePresencePulse(IN_PAR const GPIOPin_t * const onewirepin,IN_PAR CallbackFunctionType onPresencePulseReceived)
{
	/*
		MASTER Rx
		480µs MINIMUM 
	
		DS18B20 Datasheet p.15/20 
		
		External Interrupts appear to be too slow to detect the presence pulse's falling edge. But the Rising Edge works out just fine.
	*/
	internalData.onewirepin = onewirepin;
	internalData.callback = onPresencePulseReceived;
		
	defineCallbackOnTimer2CaptureCompareAMatch(&onPresencePulse500usHaveElapsedEvent); // ensure long enough waiting period since the master has to RX for at least 480us
	letTimer2GenerateInterruptEvery500us();
	enableTimer2CaptureCompareAInterrupt();

	bool isEdgeFalling=false;
	// bus is high
	while(!isEdgeFalling)
	{
		if(getPinState(onewirepin) == false)
			isEdgeFalling = true;
	}// loop detects falling edge, polling since using interrupts did not work out here 
	
	enableExternalInterrupt(onewirepin, ExternalInteruptPolarity_RisingEdge, &onPresencePulseEnded);
}

void onResetPulse500usHaveElapsedEvent(void)
{
	stopTimer2();
	makeInput(internalData.onewirepin);
	internalData.callback(); // on Reset Complete
}

void performOneWireReset(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onResetComplete)
{
	isDevicePresent=false;
	internalData.onewirepin = onewirepin;
	internalData.callback = onResetComplete;
	
	defineCallbackOnTimer2CaptureCompareAMatch(&onResetPulse500usHaveElapsedEvent);
	makeOutputLow(onewirepin);
	/*
		If the bus is held low for more than 480µs, all components on the bus will	be reset.
		
		DS18B20 Datasheet p.10/20
	*/
	letTimer2GenerateInterruptEvery500us();
	enableTimer2CaptureCompareAInterrupt();
}

void awaitOneWirePresencePulseWrapper(void)
{
	awaitOneWirePresencePulse(internalDataFullReset.onewirepin, internalDataFullReset.callback);
}

void performFullOneWireReset(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onFullResetComplete)
{
	internalDataFullReset.onewirepin = onewirepin;
	internalDataFullReset.callback = onFullResetComplete;
	performOneWireReset(onewirepin,&awaitOneWirePresencePulseWrapper);
}