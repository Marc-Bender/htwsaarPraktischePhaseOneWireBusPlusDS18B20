# 1 ".././GPIO Pin.c"
# 1 "C:\\Users\\Bender\\Desktop\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\Timer\\Timer\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././GPIO Pin.c"
# 1 ".././GPIO Pin.h" 1
       



# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 1 3 4
# 9 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 3 4
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 1 3 4
# 125 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4

# 125 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 2 3 4
# 6 ".././GPIO Pin.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 149 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 7 ".././GPIO Pin.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdbool.h" 1 3 4
# 8 ".././GPIO Pin.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 38 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 1 3
# 126 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 1 3
# 77 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 2 3
# 100 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 272 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.3.300\\include/avr/iom328p.h" 1 3
# 273 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 627 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h" 1 3
# 628 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h" 1 3
# 630 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h" 1 3
# 632 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3






# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 1 3
# 239 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 639 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h" 1 3
# 642 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 39 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 2 3
# 9 ".././GPIO Pin.h" 2
# 1 ".././marcsLanguageExtension.h" 1
       
# 11 ".././marcsLanguageExtension.h"
 
# 11 ".././marcsLanguageExtension.h"
typedef void (* CallbackFunctionType)(void);



 void deathTrap(void);
# 10 ".././GPIO Pin.h" 2

 typedef struct
 {
  volatile uint8_t * const DDRx;
  volatile uint8_t * const PINx;
  volatile uint8_t * const PORTx;

  const uint8_t pinNumber;
  const uint8_t INTx;
 }GPIOPin_t;

 typedef enum
 {
  IOType_Input=0,
  IOType_Output
 }IOType_t;

 typedef enum
 {
  ExternalInteruptPolarity_LowLevel=0,
  ExternalInteruptPolarity_AnyChange,
  ExternalInteruptPolarity_FallingEdge,
  ExternalInteruptPolarity_RisingEdge,
 }ExternalInteruptPolarity_t;

 void makeInput( const GPIOPin_t * const pin);
 void makeOutput( const GPIOPin_t * const pin);
 void makeOutputLow( const GPIOPin_t * const pin);
 void disablePullup( const GPIOPin_t * const pin);
 void enableExternalInterrupt( const GPIOPin_t * const pin, const ExternalInteruptPolarity_t polarity, CallbackFunctionType onExternalInterrupt);
 void disableExternalInterrupt( const GPIOPin_t * const pin);
 
# 41 ".././GPIO Pin.h" 3 4
_Bool 
# 41 ".././GPIO Pin.h"
     getPinState( const GPIOPin_t * const pin);
# 2 ".././GPIO Pin.c" 2
# 12 ".././GPIO Pin.c"
inline 
# 12 ".././GPIO Pin.c" 3 4
      _Bool 
# 12 ".././GPIO Pin.c"
           __attribute__((always_inline, optimize("O3"))) getPinState( const GPIOPin_t * const pin)
{
 return (*(pin->PINx) & (1<<(pin->pinNumber))) > 0 ? 1 : 0;
}

inline void __attribute__((always_inline, optimize("O3"), hot)) makeInput( const GPIOPin_t * const pin)
{
 *(pin->DDRx) &= ~(1<<(pin->pinNumber));
}

inline void __attribute__((always_inline, optimize("O3"), hot)) makeOutputLow( const GPIOPin_t * const pin)
{
 *(pin->DDRx) |= 1<<(pin->pinNumber);
 *(pin->PORTx) &= ~(1<<(pin->pinNumber));
}

inline void disablePullup( const GPIOPin_t * const pin)
{
 *(pin->PORTx) &= ~(1<<(pin->pinNumber));
}

static volatile CallbackFunctionType callbacksForExternalInterrupts[(2U)];

__attribute__((optimize("O3"))) void enableExternalInterrupt( const GPIOPin_t * const pin, const ExternalInteruptPolarity_t polarity, CallbackFunctionType onExternalInterrupt)
{
 
# 37 ".././GPIO Pin.c" 3
(*(volatile uint8_t *)(0x69)) 
# 37 ".././GPIO Pin.c"
      &= ~(0x03 << (pin->INTx * 2));
 
# 38 ".././GPIO Pin.c" 3
(*(volatile uint8_t *)(0x69)) 
# 38 ".././GPIO Pin.c"
      |= polarity << (pin->INTx * 2);
 
# 39 ".././GPIO Pin.c" 3
(*(volatile uint8_t *)((0x1D) + 0x20)) 
# 39 ".././GPIO Pin.c"
      |= 1<<(pin->INTx);
 callbacksForExternalInterrupts[pin->INTx] = onExternalInterrupt;
}

void disableExternalInterrupt( const GPIOPin_t * const pin)
{
 
# 45 ".././GPIO Pin.c" 3
(*(volatile uint8_t *)((0x1D) + 0x20)) 
# 45 ".././GPIO Pin.c"
      &= ~(1<<(pin->INTx));
 
# 46 ".././GPIO Pin.c" 3
(*(volatile uint8_t *)((0x1C) + 0x20)) 
# 46 ".././GPIO Pin.c"
     &= ~(1<<(pin->INTx));
 callbacksForExternalInterrupts[pin->INTx] = 
# 47 ".././GPIO Pin.c" 3 4
                                            ((void *)0)
# 47 ".././GPIO Pin.c"
                                                ;
}


# 50 ".././GPIO Pin.c" 3
void __vector_1 (void) __attribute__ ((signal,used, externally_visible)) ; void __vector_1 (void)

# 51 ".././GPIO Pin.c"
{
 (callbacksForExternalInterrupts[
# 52 ".././GPIO Pin.c" 3
                                0
# 52 ".././GPIO Pin.c"
                                    ])();
}
