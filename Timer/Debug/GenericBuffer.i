# 1 ".././GenericBuffer.c"
# 1 "C:\\Users\\Bender\\Desktop\\06.01.20 - AVR Timer + OneWire + DS18B20 + UART permanent version + Telemetry Uno Port\\Timer\\Timer\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././GenericBuffer.c"
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
# 2 ".././GenericBuffer.c" 2

void __initBufferWithZeros(volatile GenericBuffers_t * const buf)
{
 buf->rdIndx=0;
 buf->wrIndx=0;
}

void writeToBuffer(volatile GenericBuffers_t * const buf, const unsigned char chr)
{
 buf->buffer[((buf->wrIndx)++)%(1<<10)]=chr;
}

unsigned char readFromBuffer(volatile GenericBuffers_t * const buf)
{
 return buf->buffer[((buf->rdIndx)++)%(1<<10)];
}

__attribute__((pure)) unsigned bytesAvailableInBuffer(volatile GenericBuffers_t const * const buf)
{
  return buf->wrIndx - buf->rdIndx;
}
