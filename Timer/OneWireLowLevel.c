/**
 * \file OneWireLowLevel.c
 * \brief The implementation of the functionality and the state machines that enable the One Wire Functionality at a basic level.
 * An important notice about the restrictions and requirements of this module are found in the header. It is your obligation to read it carefully and obey it at all times using this code.
**/
#include "OneWireLowLevel.h"

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

/**
 * \brief This is the last function in the (granted short) statemachine for reading a single bit from the One Wire Bus
 * It is called indirectly by a timer interrupt callback when the idle time for the One Wire Bus after a read as per specification is reached and thus the callback
 * onBitRead ( see readBitFromOneWire() ) can be safely executed (ie. for the most cases the next bit can be read)
**/ 
void onReadBitLongEnoughIdleTimeEnsured(void)
{
	stopTimer2();
	internalData.callback(); //onBitRead
}

/**
 * \brief This function starts the (granted short) statemachine for reading a bit from the One Wire Bus. It is usually called directly from the functionality to read entire
 * bytes from the bus that you may find in a front end module.
**/ 
void readBitFromOneWire(IN_PAR const GPIOPin_t * const onewirepin, OUT_PAR bool * const storeReadBitHere, IN_PAR const CallbackFunctionType onBitRead)
{
	makeOutputLow(onewirepin); // initiates the read time slot
	_delay_us(2); // 2us; the bus must be low for more than 1us but less than 15us, no interrupts here because that is too slow
	makeInput(onewirepin);
	_delay_us(10); // even that is still not that easy with interrupts; 10us because the bus must be sampled towards the end of the 15us readslot (2us+10us=12us<15us and near the end of the readslot)
	*storeReadBitHere = getPinState(onewirepin);
	// after every read 0 the bus must be idle for more than 1us. in read 1 case it does not really matter. but all read slots must be a minimum of 60us in duration
	internalData.callback = onBitRead;
	defineCallbackOnTimer2CaptureCompareAMatch(&onReadBitLongEnoughIdleTimeEnsured);
	letTimer2GenerateInterruptEveryRoughly60us(); // ~60us until Interrupt; this makes me able to reuse the same code for the delay time and ensures that all read slots are definitely a minimum of 60us in duration...
	enableTimer2CaptureCompareAInterrupt();
}

/**
 * \brief This is the last function in the statemachine for writing a zero bit to the bus. It is called indirectly when the Timer dictates that the low time of the bus was sufficient to count as a zero and must go high (read idle) again.
**/ 
void onWrite0BitBusMustGoHigh(void)
{
	makeInput(internalData.onewirepin);
	stopTimer2();
	_delay_us(2); // after every write 0 the bus must be idle for more than 1us
	(internalData.callback)();
}

/**
 * \brief This function starts the state machine for writing a zero bit to the bus. It is usually called directly from a front end function that sends entire bytes to the bus.
**/ 
void write0BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin,IN_PAR const CallbackFunctionType onBitWritten)
{
	internalData.onewirepin = onewirepin;
	internalData.callback = onBitWritten;
	defineCallbackOnTimer2CaptureCompareAMatch(&onWrite0BitBusMustGoHigh);
	letTimer2GenerateInterruptEveryRoughly60us(); // ~60us until Interrupt because the bus must be low for 60-120us
	makeOutputLow(onewirepin);
	enableTimer2CaptureCompareAInterrupt();
}

/**
 * \brief this is the last function in the statemachine for writing a logic one to the bus. It is called indirectly when the bus is sampled by the slaves and thus the one on the bus
 * is sent as a high on the bus is already the idle state there is no real need to ensure any waiting time after this.
**/ 
void onWrite1BusIsSampled(void)
{
	stopTimer2();
	(internalData.callback)();
}

/**
 * \brief this function starts the statemachine for sending a logic one to the bus. It is usually called directly from a function that sends out entire bytes to the bus that you may find in a 
 * front end module.
**/ 
__attribute__((optimize("O3"))) void write1BitToOneWire(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onBitWritten) 
{
	internalData.onewirepin=onewirepin;
	internalData.callback=onBitWritten;
	makeOutputLow(onewirepin);
	_delay_us(1); // after 1us the bus must go high again see Datasheet DS18B20 p.16/20 1us is WAY too short for a Timer Interrupt
	makeInput(onewirepin);
	defineCallbackOnTimer2CaptureCompareAMatch(&onWrite1BusIsSampled);
	letTimer2GenerateInterruptEveryRoughly60us();
	enableTimer2CaptureCompareAInterrupt(); // makes interrupt after ~60us then the Bus is sampled by the Slave device
}

/**
 * \brief This is the last function in the statemachine for detecting the presence pulse that follows a reset in the initialization sequence of any One Wire Transaction
 * This function is called indirectly when the time slot for a presence pulse to occur has ended. This function will either call the callback that was passed to the function
 * that started the state machine or will cause the processor to lock up if no slave did answer the reset pulse with a presence pulse. This does not mean that a specific slave
 * that you may want to target afterwards is present. It only goes to ensure that the processor does not send out One Wire request completely in the void and that there is at least 
 * one slave that may or may not be addressed. A future implementation of this code may return an error code indicating that no slaves where present instead of doing a lock up but this was
 * the fastest and simplest solution to the issue.
 * the theoretical fault condition of the bus not returning to the idle state after a slave pulling it low for its presence pulse will also cause a lock up since a device is only counted as present
 * when there was a rising edge detected in time.
**/ 
void onPresencePulse500usHaveElapsedEvent(void)
{
	if (isDevicePresent)
		internalData.callback(); // onPresencePulseReceived
	else
		deathTrap();
}

/**
 * \brief This is a function that is expected to be executed second in the statemachine for detecting a presence pulse. It only goes to detect that there was minimum one device on the bus 
 * (which is all the presence pulse tells you anyway since the bus is of open drain type). All this function does is set a flag that will be used by a different function further down the line and 
 * disable the external interrupt that was used to detect the rising edge of the presence pulse.
**/ 
void onPresencePulseEnded(void)
{
	disableExternalInterrupt(internalData.onewirepin);
	isDevicePresent=true;
}

/**
 * \brief this function starts the state machine for detecting the presence pulse that has to follow the reset pulse in the initialization sequence of every One Wire Transaction.
 * It will usually not be used on its own and only lends it self to a functionality that performs the entire initialization sequence of a One Wire Transaction. As such it will 
 * certainly be called indirectly only (or within a callback onResetPulseComplete)
**/ 
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

/**
 * \brief this function is the last function in the state machine to generate the reset pulse and is called indirectly when the minimum duration for the reset pulse's low phase is 
 * over thus performing the last steps for generating the pulse all together
**/ 
void onResetPulse500usHaveElapsedEvent(void)
{
	stopTimer2();
	makeInput(internalData.onewirepin);
	internalData.callback(); // on Reset Complete
}

/**
 * \brief this function starts the generation of the reset pulse which will be completed using another function in the state machine further down the line.
 * It could be used on its own but probably only lends itself to a function that performs an entire initialization sequence. Calls to this function may be direct calls.
**/ 
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

/**
 * \brief this is the last function in the state machine for generating the entire initialization sequence for any One Wire Transaction.
 * It only serves as a wrapper for calling the awaitOneWirePresencePulse function (which starts an entire state machine itself) since this is called 
 * indirectly from a callback when a reset pulse was completely created and all callback functions are required to return a void and take a void. 
**/ 
void awaitOneWirePresencePulseWrapper(void)
{
	awaitOneWirePresencePulse(internalDataFullReset.onewirepin, internalDataFullReset.callback);
}

/**
 * \brief this function is usually called directly by some driver code. It generates a complete initialization sequence which is mandated at the begining of every One Wire Transaction
 * This function may be misleadingly named and thus may be renamed very soon. Also this function may be moved to a more front end module since this is not exactly low level anymore.
**/ 
void performFullOneWireReset(IN_PAR const GPIOPin_t * const onewirepin, IN_PAR const CallbackFunctionType onFullResetComplete)
{
	internalDataFullReset.onewirepin = onewirepin;
	internalDataFullReset.callback = onFullResetComplete;
	performOneWireReset(onewirepin,&awaitOneWirePresencePulseWrapper);
}
