# 1 ".././OneWire.c"
# 1 "C:\\Users\\Bender\\Desktop\\AVR Timer + OneWire + DS18B20 18.12.19 Bug fixed - restructuring ongoing\\Timer\\Timer\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././OneWire.c"
# 1 ".././OneWire.h" 1



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
# 174 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.3.300\\include/avr/iom2560.h" 1 3
# 1578 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.3.300\\include/avr/iom2560.h" 3
       
# 1579 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.3.300\\include/avr/iom2560.h" 3

       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
# 175 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
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
  volatile uint8_t * const EICRx;
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
 
# 42 ".././GPIO Pin.h" 3 4
_Bool 
# 42 ".././GPIO Pin.h"
     getPinState( const GPIOPin_t * const pin);
# 5 ".././OneWire.h" 2
# 1 ".././Timer2.h" 1






# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 8 ".././Timer2.h" 2

# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 1 3
# 48 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 49 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 2 3
# 70 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3

# 70 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 116 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 130 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 153 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 185 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 218 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 252 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 264 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 276 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 288 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 300 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 348 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);
# 361 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern double atof(const char *__nptr);
# 383 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 428 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *itoa (int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__itoa (int, char *, int);
 return __itoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__itoa_ncheck (int, char *, unsigned char);
 return __itoa_ncheck (__val, __s, __radix);
    }
}
# 473 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ltoa (long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ltoa (long, char *, int);
 return __ltoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ltoa_ncheck (long, char *, unsigned char);
 return __ltoa_ncheck (__val, __s, __radix);
    }
}
# 516 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *utoa (unsigned int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__utoa (unsigned int, char *, int);
 return __utoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__utoa_ncheck (unsigned int, char *, unsigned char);
 return __utoa_ncheck (__val, __s, __radix);
    }
}
# 558 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ultoa (unsigned long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ultoa (unsigned long, char *, int);
 return __ultoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ultoa_ncheck (unsigned long, char *, unsigned char);
 return __ultoa_ncheck (__val, __s, __radix);
    }
}
# 590 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 649 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 666 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 685 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
extern int atexit(void (*)(void));
extern int system (const char *);
extern char *getenv (const char *);
# 10 ".././Timer2.h" 2





# 14 ".././Timer2.h"
typedef enum
{
 WaveformGenerationModeTimer2_Normal=0,
 WaveformGenerationModeTimer2_PWM_PhaseCorrect,
 WaveformGenerationModeTimer2_CTC,
 WaveformGenerationModeTimer2_FastPWM,
 WaveformGenerationModeTimer2_RESERVED0,
 WaveformGenerationModeTimer2_PWM_PhaseCorrect_To_OCRA,
 WaveformGenerationModeTimer2_RESERVED1,
 WaveformGenerationModeTimer2_FastPWM_To_OCRA,
} WaveformGenerationModeTimer2_t;

typedef enum
{
 PrescalerTimer2_NoClockSource=0,
 PrescalerTimer2_1,
 PrescalerTimer2_8,
 PrescalerTimer2_32,
 PrescalerTimer2_64,
 PrescalerTimer2_128,
 PrescalerTimer2_256,
 PrescalerTimer2_1024
}PrescalerTimer2_t;

void setWaveformGenerationModeTimer2( const WaveformGenerationModeTimer2_t waveformmode);
void setPrescalerTimer2( const PrescalerTimer2_t prescaler);
void enableTimer2OverflowInterrupt();
void stopTimer2();
void defineCallbackOnTimer2Overflow( const CallbackFunctionType callbackFunction);
void resetTimer2(void);
void enableTimer2CaptureCompareAInterrupt(void);
void defineCallbackOnTimer2CaptureCompareAMatch( const CallbackFunctionType callbackFunction);
void letTimer2GenerateInterruptEvery500us(void);
void letTimer2GenerateInterruptEvery750us(void);
void letTimer2GenerateInterruptEveryRoughly60us(void);
# 6 ".././OneWire.h" 2



 void performOneWireReset( const GPIOPin_t * const onewirepin, const CallbackFunctionType onResetComplete);
 void awaitOneWirePresencePulse( const GPIOPin_t * const onewirepin, const CallbackFunctionType onPresencePulseReceived);
 void write1BitToOneWire( const GPIOPin_t * const onewirepin, const CallbackFunctionType onBitWritten);
 void write0BitToOneWire( const GPIOPin_t * const onewirepin, const CallbackFunctionType onBitWritten);
 void readBitFromOneWire( const GPIOPin_t * const onewirepin, 
# 13 ".././OneWire.h" 3 4
                                                                           _Bool 
# 13 ".././OneWire.h"
                                                                                * const storeReadBitHere, const CallbackFunctionType onBitRead);
 void writeByteToOneWireBus( const uint8_t byte, const 
# 14 ".././OneWire.h" 3 4
                                                                   _Bool 
# 14 ".././OneWire.h"
                                                                        startAtZero, const GPIOPin_t * const onewirepin, const CallbackFunctionType onByteSent);
 void readByteFromOneWireBus( uint8_t * const byte, const 
# 15 ".././OneWire.h" 3 4
                                                                       _Bool 
# 15 ".././OneWire.h"
                                                                            startAtZero, const GPIOPin_t * const onewirepin, const CallbackFunctionType onByteRead);
 void performFullOneWireReset( const GPIOPin_t * const onewirepin, const CallbackFunctionType onFullResetComplete);
# 2 ".././OneWire.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 1 3
# 45 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 1 3
# 40 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3

# 40 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 1 3
# 127 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 47 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 86 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 174 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
          16000000
# 174 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
               ) / 1e3) * __ms;
# 184 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 210 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 254 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 263 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
          16000000
# 263 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
               ) / 1e6) * __us;
# 273 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 299 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 3 ".././OneWire.c" 2


# 4 ".././OneWire.c"
typedef struct
{
 const GPIOPin_t * onewirepin;
 CallbackFunctionType callback;
 uint8_t byte;
}OneWireStatemachinesInternalData_t;

typedef OneWireStatemachinesInternalData_t PerformFullOneWireResetInternalData_t;

OneWireStatemachinesInternalData_t internalData;
PerformFullOneWireResetInternalData_t internalDataFullReset;

volatile 
# 16 ".././OneWire.c" 3 4
        _Bool 
# 16 ".././OneWire.c"
             isDevicePresent=
# 16 ".././OneWire.c" 3 4
                             0
# 16 ".././OneWire.c"
                                  ;

void readNextBitWrapper(void)
{
 readByteFromOneWireBus(
# 20 ".././OneWire.c" 3 4
                       ((void *)0)
# 20 ".././OneWire.c"
                           , 
# 20 ".././OneWire.c" 3 4
                             0
# 20 ".././OneWire.c"
                                  , 
# 20 ".././OneWire.c" 3 4
                                    ((void *)0)
# 20 ".././OneWire.c"
                                        , 
# 20 ".././OneWire.c" 3 4
                                          ((void *)0)
# 20 ".././OneWire.c"
                                              );
}

__attribute__((hot)) void readByteFromOneWireBus( uint8_t * const byte, const 
# 23 ".././OneWire.c" 3 4
                                                                                           _Bool 
# 23 ".././OneWire.c"
                                                                                                startAtZero, const GPIOPin_t * const onewirepin, const CallbackFunctionType onByteRead)
{
 static uint8_t * lastByte;
 static uint8_t posistionWithinByte;
 static CallbackFunctionType lastCallback;
 static const GPIOPin_t * lastOneWirePin;
 static 
# 29 ".././OneWire.c" 3 4
       _Bool 
# 29 ".././OneWire.c"
            readBit;



 if(startAtZero)
 {
  posistionWithinByte = 0;
  lastByte = byte;
  *byte=0;
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
 writeByteToOneWireBus(0, 
# 55 ".././OneWire.c" 3 4
                         0
# 55 ".././OneWire.c"
                              , 
# 55 ".././OneWire.c" 3 4
                                ((void *)0)
# 55 ".././OneWire.c"
                                    , 
# 55 ".././OneWire.c" 3 4
                                      ((void *)0)
# 55 ".././OneWire.c"
                                          );
}

__attribute__((optimize("O3"))) void writeByteToOneWireBus( const uint8_t byte, const 
# 58 ".././OneWire.c" 3 4
                                                                                                  _Bool 
# 58 ".././OneWire.c"
                                                                                                       startAtZero, const GPIOPin_t * const onewirepin, const CallbackFunctionType onByteSent)
{
 static volatile uint8_t lastByte;
 static volatile uint8_t positionWithinByte;
 static volatile CallbackFunctionType lastCallback;
 static const GPIOPin_t * lastOneWirePin;



 if(startAtZero)
 {
  positionWithinByte = 0;
  lastByte = byte;
  lastCallback = onByteSent;
  lastOneWirePin = onewirepin;
 }

 if (positionWithinByte < 8)
 {
  if(lastByte & (1<<(positionWithinByte++)))
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
 internalData.callback();
}

void readBitFromOneWire( const GPIOPin_t * const onewirepin, 
# 92 ".././OneWire.c" 3 4
                                                                          _Bool 
# 92 ".././OneWire.c"
                                                                               * const storeReadBitHere, const CallbackFunctionType onBitRead)
{
 makeOutputLow(onewirepin);
 _delay_us(2);
 makeInput(onewirepin);
 _delay_us(10);
 *storeReadBitHere = getPinState(onewirepin);

 internalData.callback = onBitRead;
 defineCallbackOnTimer2CaptureCompareAMatch(&onReadBitEnsureLongEnoughIdleTime);
 letTimer2GenerateInterruptEveryRoughly60us();
 enableTimer2CaptureCompareAInterrupt();
}

void onWrite0BitBusMustGoHigh(void)
{
 makeInput(internalData.onewirepin);
 stopTimer2();
 _delay_us(2);
 (internalData.callback)();
}

void write0BitToOneWire( const GPIOPin_t * const onewirepin, const CallbackFunctionType onBitWritten)
{
 internalData.onewirepin = onewirepin;
 internalData.callback = onBitWritten;
 defineCallbackOnTimer2CaptureCompareAMatch(&onWrite0BitBusMustGoHigh);
 letTimer2GenerateInterruptEveryRoughly60us();
 makeOutputLow(onewirepin);
 enableTimer2CaptureCompareAInterrupt();
}

void onWrite1BusIsSampled(void)
{
 stopTimer2();
 (internalData.callback)();

}

__attribute__((optimize("O3"))) void write1BitToOneWire( const GPIOPin_t * const onewirepin, const CallbackFunctionType onBitWritten)
{
 internalData.onewirepin=onewirepin;
 internalData.callback=onBitWritten;
 makeOutputLow(onewirepin);

 _delay_us(1);
 makeInput(onewirepin);
 defineCallbackOnTimer2CaptureCompareAMatch(&onWrite1BusIsSampled);
 letTimer2GenerateInterruptEveryRoughly60us();
 enableTimer2CaptureCompareAInterrupt();
}

void onPresencePulse500usHaveElapsedEvent(void)
{
 if (isDevicePresent)
  internalData.callback();
 else
  deathTrap();
}

void onPresencePulseEnded(void)
{
 disableExternalInterrupt(internalData.onewirepin);
 isDevicePresent=
# 155 ".././OneWire.c" 3 4
                1
# 155 ".././OneWire.c"
                    ;
}

void awaitOneWirePresencePulse( const GPIOPin_t * const onewirepin, CallbackFunctionType onPresencePulseReceived)
{
# 168 ".././OneWire.c"
 internalData.onewirepin = onewirepin;
 internalData.callback = onPresencePulseReceived;

 defineCallbackOnTimer2CaptureCompareAMatch(&onPresencePulse500usHaveElapsedEvent);
 letTimer2GenerateInterruptEvery500us();
 enableTimer2CaptureCompareAInterrupt();

 
# 175 ".././OneWire.c" 3 4
_Bool 
# 175 ".././OneWire.c"
     isEdgeFalling=
# 175 ".././OneWire.c" 3 4
                   0
# 175 ".././OneWire.c"
                        ;

 while(!isEdgeFalling)
 {
  if(getPinState(onewirepin) == 
# 179 ".././OneWire.c" 3 4
                               0
# 179 ".././OneWire.c"
                                    )
   isEdgeFalling = 
# 180 ".././OneWire.c" 3 4
                  1
# 180 ".././OneWire.c"
                      ;
 }

 enableExternalInterrupt(onewirepin, ExternalInteruptPolarity_RisingEdge, &onPresencePulseEnded);
}

void onResetPulse500usHaveElapsedEvent(void)
{
 stopTimer2();
 makeInput(internalData.onewirepin);
 internalData.callback();
}

void performOneWireReset( const GPIOPin_t * const onewirepin, const CallbackFunctionType onResetComplete)
{
 isDevicePresent=
# 195 ".././OneWire.c" 3 4
                0
# 195 ".././OneWire.c"
                     ;
 internalData.onewirepin = onewirepin;
 internalData.callback = onResetComplete;

 defineCallbackOnTimer2CaptureCompareAMatch(&onResetPulse500usHaveElapsedEvent);
 makeOutputLow(onewirepin);





 letTimer2GenerateInterruptEvery500us();
 enableTimer2CaptureCompareAInterrupt();
}

void awaitOneWirePresencePulseWrapper(void)
{
 awaitOneWirePresencePulse(internalDataFullReset.onewirepin, internalDataFullReset.callback);
}

void performFullOneWireReset( const GPIOPin_t * const onewirepin, const CallbackFunctionType onFullResetComplete)
{
 internalDataFullReset.onewirepin = onewirepin;
 internalDataFullReset.callback = onFullResetComplete;
 performOneWireReset(onewirepin,&awaitOneWirePresencePulseWrapper);
}
