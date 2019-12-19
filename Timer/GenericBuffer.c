#include "GenericBuffer.h"

void __initBufferWithZeros(volatile GenericBuffers_t * const buf) 
{
	buf->rdIndx=0;
	buf->wrIndx=0;
}

void writeToBuffer(volatile GenericBuffers_t * const buf, const unsigned char chr)
{
	buf->buffer[((buf->wrIndx)++)%MOD2BUFFER]=chr;
}

unsigned char readFromBuffer(volatile GenericBuffers_t * const buf)
{
	return buf->buffer[((buf->rdIndx)++)%MOD2BUFFER];
}

__attribute__((pure)) unsigned bytesAvailableInBuffer(volatile GenericBuffers_t const * const buf)  
{
  return buf->wrIndx - buf->rdIndx;
}
