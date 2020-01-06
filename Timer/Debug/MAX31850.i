# 1 ".././MAX31850.c"
# 1 "C:\\Users\\Bender\\Desktop\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\Timer\\Timer\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././MAX31850.c"
# 1 ".././MAX31850.h" 1



# 1 ".././DS18B20.h" 1



# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 1 3
# 48 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 216 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4

# 216 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 49 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdlib.h" 2 3
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
# 5 ".././DS18B20.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 1 3
# 46 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 47 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 2 3
# 125 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern int ffs(int __val) __attribute__((__const__));





extern int ffsl(long __val) __attribute__((__const__));





__extension__ extern int ffsll(long long __val) __attribute__((__const__));
# 150 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern void *memccpy(void *, const void *, int, size_t);
# 162 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern void *memchr(const void *, int, size_t) __attribute__((__pure__));
# 180 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern int memcmp(const void *, const void *, size_t) __attribute__((__pure__));
# 191 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern void *memcpy(void *, const void *, size_t);
# 203 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern void *memmem(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 213 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern void *memmove(void *, const void *, size_t);
# 225 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern void *memrchr(const void *, int, size_t) __attribute__((__pure__));
# 235 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern void *memset(void *, int, size_t);
# 248 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strcat(char *, const char *);
# 262 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strchr(const char *, int) __attribute__((__pure__));
# 274 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strchrnul(const char *, int) __attribute__((__pure__));
# 287 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern int strcmp(const char *, const char *) __attribute__((__pure__));
# 305 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strcpy(char *, const char *);
# 320 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern int strcasecmp(const char *, const char *) __attribute__((__pure__));
# 333 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strcasestr(const char *, const char *) __attribute__((__pure__));
# 344 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern size_t strcspn(const char *__s, const char *__reject) __attribute__((__pure__));
# 364 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strdup(const char *s1);
# 377 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern size_t strlcat(char *, const char *, size_t);
# 388 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern size_t strlcpy(char *, const char *, size_t);
# 399 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern size_t strlen(const char *) __attribute__((__pure__));
# 411 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strlwr(char *);
# 422 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strncat(char *, const char *, size_t);
# 434 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern int strncmp(const char *, const char *, size_t) __attribute__((__pure__));
# 449 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strncpy(char *, const char *, size_t);
# 464 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));
# 478 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern size_t strnlen(const char *, size_t) __attribute__((__pure__));
# 491 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strpbrk(const char *__s, const char *__accept) __attribute__((__pure__));
# 505 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strrchr(const char *, int) __attribute__((__pure__));
# 515 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strrev(char *);
# 533 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strsep(char **, const char *);
# 544 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern size_t strspn(const char *__s, const char *__accept) __attribute__((__pure__));
# 557 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strstr(const char *, const char *) __attribute__((__pure__));
# 576 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strtok(char *, const char *);
# 593 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strtok_r(char *, const char *, char **);
# 606 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\string.h" 3
extern char *strupr(char *);



extern int strcoll(const char *s1, const char *s2);
extern char *strerror(int errnum);
extern size_t strxfrm(char *dest, const char *src, size_t n);
# 6 ".././DS18B20.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 1 3
# 44 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 1 3
# 37 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 1 3 4
# 9 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 3 4
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 1 3 4
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
# 38 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 2 3
# 77 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 45 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 98 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 46 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 2 3




# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 51 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 2 3
# 244 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
struct __file {
 char *buf;
 unsigned char unget;
 uint8_t flags;
# 263 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
 int size;
 int len;
 int (*put)(char, struct __file *);
 int (*get)(struct __file *);
 void *udata;
};
# 277 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
typedef struct __file FILE;
# 407 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern struct __file *__iob[];
# 419 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern FILE *fdevopen(int (*__put)(char, FILE*), int (*__get)(FILE*));
# 436 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern int fclose(FILE *__stream);
# 610 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern int vfprintf(FILE *__stream, const char *__fmt, va_list __ap);





extern int vfprintf_P(FILE *__stream, const char *__fmt, va_list __ap);






extern int fputc(int __c, FILE *__stream);




extern int putc(int __c, FILE *__stream);


extern int putchar(int __c);
# 651 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern int printf(const char *__fmt, ...);





extern int printf_P(const char *__fmt, ...);







extern int vprintf(const char *__fmt, va_list __ap);





extern int sprintf(char *__s, const char *__fmt, ...);





extern int sprintf_P(char *__s, const char *__fmt, ...);
# 687 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern int snprintf(char *__s, size_t __n, const char *__fmt, ...);





extern int snprintf_P(char *__s, size_t __n, const char *__fmt, ...);





extern int vsprintf(char *__s, const char *__fmt, va_list ap);





extern int vsprintf_P(char *__s, const char *__fmt, va_list ap);
# 715 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern int vsnprintf(char *__s, size_t __n, const char *__fmt, va_list ap);





extern int vsnprintf_P(char *__s, size_t __n, const char *__fmt, va_list ap);




extern int fprintf(FILE *__stream, const char *__fmt, ...);





extern int fprintf_P(FILE *__stream, const char *__fmt, ...);






extern int fputs(const char *__str, FILE *__stream);




extern int fputs_P(const char *__str, FILE *__stream);





extern int puts(const char *__str);




extern int puts_P(const char *__str);
# 764 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern size_t fwrite(const void *__ptr, size_t __size, size_t __nmemb,
         FILE *__stream);







extern int fgetc(FILE *__stream);




extern int getc(FILE *__stream);


extern int getchar(void);
# 812 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern int ungetc(int __c, FILE *__stream);
# 824 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern char *fgets(char *__str, int __size, FILE *__stream);






extern char *gets(char *__str);
# 842 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern size_t fread(void *__ptr, size_t __size, size_t __nmemb,
        FILE *__stream);




extern void clearerr(FILE *__stream);
# 859 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern int feof(FILE *__stream);
# 870 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
extern int ferror(FILE *__stream);






extern int vfscanf(FILE *__stream, const char *__fmt, va_list __ap);




extern int vfscanf_P(FILE *__stream, const char *__fmt, va_list __ap);







extern int fscanf(FILE *__stream, const char *__fmt, ...);




extern int fscanf_P(FILE *__stream, const char *__fmt, ...);






extern int scanf(const char *__fmt, ...);




extern int scanf_P(const char *__fmt, ...);







extern int vscanf(const char *__fmt, va_list __ap);







extern int sscanf(const char *__buf, const char *__fmt, ...);




extern int sscanf_P(const char *__buf, const char *__fmt, ...);
# 940 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h" 3
static __inline__ int fflush(FILE *stream __attribute__((unused)))
{
 return 0;
}






__extension__ typedef long long fpos_t;
extern int fgetpos(FILE *stream, fpos_t *pos);
extern FILE *fopen(const char *path, const char *mode);
extern FILE *freopen(const char *path, const char *mode, FILE *stream);
extern FILE *fdopen(int, const char *);
extern int fseek(FILE *stream, long offset, int whence);
extern int fsetpos(FILE *stream, fpos_t *pos);
extern long ftell(FILE *stream);
extern int fileno(FILE *);
extern void perror(const char *s);
extern int remove(const char *pathname);
extern int rename(const char *oldpath, const char *newpath);
extern void rewind(FILE *stream);
extern void setbuf(FILE *stream, char *buf);
extern int setvbuf(FILE *stream, char *buf, int mode, size_t size);
extern FILE *tmpfile(void);
extern char *tmpnam (char *s);
# 7 ".././DS18B20.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 1 3
# 89 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 90 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 1 3
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
# 91 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 2 3
# 1158 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1172 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));






extern void *memccpy_P(void *, const void *, int __val, size_t);
# 1188 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern void *memcpy_P(void *, const void *, size_t);






extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 1207 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1217 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcat_P(char *, const char *);
# 1233 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
# 1245 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
# 1258 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
# 1268 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcpy_P(char *, const char *);
# 1285 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));






extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
# 1305 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
# 1321 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcat_P (char *, const char *, size_t );
# 1334 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcpy_P (char *, const char *, size_t );
# 1346 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
# 1357 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1376 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1387 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncat_P(char *, const char *, size_t);
# 1401 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncpy_P(char *, const char *, size_t);
# 1416 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1427 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
# 1447 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strsep_P(char **__sp, const char * __delim);
# 1460 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1474 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
# 1496 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strtok_P(char *__s, const char * __delim);
# 1516 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strtok_rP(char *__s, const char * __delim, char **__last);
# 1529 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlen_PF(uint_farptr_t src) __attribute__((__const__));
# 1545 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strnlen_PF(uint_farptr_t src, size_t len) __attribute__((__const__));
# 1560 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern void *memcpy_PF(void *dest, uint_farptr_t src, size_t len);
# 1575 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcpy_PF(char *dest, uint_farptr_t src);
# 1595 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncpy_PF(char *dest, uint_farptr_t src, size_t len);
# 1611 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcat_PF(char *dest, uint_farptr_t src);
# 1632 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcat_PF(char *dst, uint_farptr_t src, size_t siz);
# 1649 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncat_PF(char *dest, uint_farptr_t src, size_t len);
# 1665 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strcmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1682 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strncmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1698 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strcasecmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1716 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strncasecmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1732 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strstr_PF(const char *s1, uint_farptr_t s2);
# 1744 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcpy_PF(char *dst, uint_farptr_t src, size_t siz);
# 1760 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));
# 1779 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t __strlen_P(const char *) __attribute__((__const__));
__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 8 ".././DS18B20.h" 2
# 1 ".././UART.h" 1




# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 149 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 6 ".././UART.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 7 ".././UART.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdbool.h" 1 3 4
# 8 ".././UART.h" 2
# 1 ".././marcsLanguageExtension.h" 1
       
# 11 ".././marcsLanguageExtension.h"
 
# 11 ".././marcsLanguageExtension.h"
typedef void (* CallbackFunctionType)(void);



 void deathTrap(void);
# 9 ".././UART.h" 2
# 1 ".././GenericBuffer.h" 1
# 10 ".././GenericBuffer.h"
  typedef struct
  {
    unsigned volatile wrIndx;
    unsigned volatile rdIndx;
    unsigned char volatile buffer[(1<<10)];
  } GenericBuffers_t;

  void __initBufferWithZeros(volatile GenericBuffers_t * const buf);
  void writeToBuffer(volatile GenericBuffers_t * const buf, const unsigned char chr);
  unsigned char readFromBuffer(volatile GenericBuffers_t * const buf);
  unsigned bytesAvailableInBuffer(volatile GenericBuffers_t const * const buf);
# 10 ".././UART.h" 2

 typedef enum
 {
  USARTBaudRate_Reset,
  USARTBaudRate_9600,
  USARTBaudRate_14400,
  USARTBaudRate_19200,
  USARTBaudRate_28800,
  USARTBaudRate_38400,
  USARTBaudRate_56000,
  USARTBaudRate_57600,
  USARTBaudRate_115200,
  USARTBaudRate_128000,
  USARTBaudRate_256000
 }USARTBaudRate_t;

 void USART0_init( const USARTBaudRate_t baudrate);
 void USART0_SendString( const char * const string, const uint8_t length);
 void USART0_SendChar( const char chr);
# 9 ".././DS18B20.h" 2

# 1 ".././OneWireFrontEnd.h" 1



# 1 ".././OneWireLowLevel.h" 1



# 1 ".././GPIO Pin.h" 1
       




# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 7 ".././GPIO Pin.h" 2




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
# 5 ".././OneWireLowLevel.h" 2
# 1 ".././Timer2.h" 1






# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 8 ".././Timer2.h" 2






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
# 6 ".././OneWireLowLevel.h" 2

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
# 8 ".././OneWireLowLevel.h" 2


 
# 10 ".././OneWireLowLevel.h"
void awaitOneWirePresencePulse( const GPIOPin_t * const onewirepin, const CallbackFunctionType onPresencePulseReceived);
 void write1BitToOneWire( const GPIOPin_t * const onewirepin, const CallbackFunctionType onBitWritten);
 void write0BitToOneWire( const GPIOPin_t * const onewirepin, const CallbackFunctionType onBitWritten);
 void readBitFromOneWire( const GPIOPin_t * const onewirepin, 
# 13 ".././OneWireLowLevel.h" 3 4
                                                                           _Bool 
# 13 ".././OneWireLowLevel.h"
                                                                                * const storeReadBitHere, const CallbackFunctionType onBitRead);
 void performFullOneWireReset( const GPIOPin_t * const onewirepin, const CallbackFunctionType onFullResetComplete);
# 5 ".././OneWireFrontEnd.h" 2



 void sendSkipRomCommand( const GPIOPin_t * const onewirepin, const CallbackFunctionType onSkip);
 void sendMatchRomCommand( const GPIOPin_t * const onewirepin, const uint8_t * const deviceID, const CallbackFunctionType onMatch);
 void writeByteToOneWireBus( const uint8_t byte, const 
# 10 ".././OneWireFrontEnd.h" 3 4
                                                                   _Bool 
# 10 ".././OneWireFrontEnd.h"
                                                                        startAtZero, const GPIOPin_t * const onewirepin, const CallbackFunctionType onByteSent);
 void readByteFromOneWireBus( uint8_t * const byte, const 
# 11 ".././OneWireFrontEnd.h" 3 4
                                                                       _Bool 
# 11 ".././OneWireFrontEnd.h"
                                                                            startAtZero, const GPIOPin_t * const onewirepin, const CallbackFunctionType onByteRead);
# 11 ".././DS18B20.h" 2





 typedef int16_t signed7Point4Fixed_t;

 void issueTemperatureConversion( const GPIOPin_t * const onewirepin, const 
# 18 ".././DS18B20.h" 3 4
                                                                                        _Bool 
# 18 ".././DS18B20.h"
                                                                                             issueCommandAtAllSensors, const uint8_t * const deviceID, const CallbackFunctionType onTemperatureConversionStarted);
 void readTemperature( const GPIOPin_t * const onewirepin, const uint8_t * const deviceID, signed7Point4Fixed_t * const temperatureFixedPointFormat, 
# 19 ".././DS18B20.h" 3 4
                                                                                                                                                                                 _Bool 
# 19 ".././DS18B20.h"
                                                                                                                                                                                      * const errorBit, const CallbackFunctionType onTemperatureReady);

 char getSignOfSigned7Point4Fixed( const signed7Point4Fixed_t num );
 uint8_t getIntegerPartOfSigned7Point4Fixed( const signed7Point4Fixed_t num);
 uint16_t getNonIntegerPartOfSigned7Point4Fixed( const signed7Point4Fixed_t num);
# 5 ".././MAX31850.h" 2



 typedef uint16_t signed11Point2Fixed_t;


 inline void readTemperatureMAX31850( const GPIOPin_t * const onewirepin, const uint8_t * const deviceID, signed11Point2Fixed_t * const temperatureFixedPointFormat, 
# 11 ".././MAX31850.h" 3 4
                                                                                                                                                                                                 _Bool 
# 11 ".././MAX31850.h"
                                                                                                                                                                                                      * const errorBit, const CallbackFunctionType onTemperatureReady)
 {
  readTemperature(onewirepin,deviceID,(signed7Point4Fixed_t *) temperatureFixedPointFormat,errorBit,onTemperatureReady);
 }

 char getSignOfSigned11Point2Fixed( const signed11Point2Fixed_t num );
 uint16_t getIntegerPartOfSigned11Point2Fixed( const signed11Point2Fixed_t num);
 uint16_t getNonIntegerPartOfSigned11Point2Fixed( const signed11Point2Fixed_t num);
# 2 ".././MAX31850.c" 2

char getSignOfSigned11Point2Fixed( const signed11Point2Fixed_t num )
{
 return (num & 0x8000)?'-':'+';
}

uint16_t getIntegerPartOfSigned11Point2Fixed( const signed11Point2Fixed_t num)
{
 return (
# 10 ".././MAX31850.c" 3
        __builtin_abs(
# 10 ".././MAX31850.c"
        num
# 10 ".././MAX31850.c" 3
        ) 
# 10 ".././MAX31850.c"
                 & 0x7FF0)>>4;
}

uint16_t getNonIntegerPartOfSigned11Point2Fixed( const signed11Point2Fixed_t num)
{
 return ((((
# 15 ".././MAX31850.c" 3
           __builtin_abs(
# 15 ".././MAX31850.c"
           num
# 15 ".././MAX31850.c" 3
           )
# 15 ".././MAX31850.c"
                   ) & 0x000C)>>2) * 2500);
}
