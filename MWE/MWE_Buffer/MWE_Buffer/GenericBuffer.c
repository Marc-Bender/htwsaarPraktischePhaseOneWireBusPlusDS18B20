/**
 * \file GenericBuffer.c
 * \brief Implementation of the functions that make the FIFO usable
**/ 
/***
 *** Implementierung der funktionen die ein fifo nutzbar machen.
***/

#include "GenericBuffer.h"
#include <stdint.h>

/***
 *** Initialisiert den FIFO mit nullen (sowohl die indices als auch den eigentlichen datenspeicher)
***/
/**
 * \brief Initializes a Buffer with zeros that is for both the indices and the buffer itself
**/ 
void __initBufferWithZeros(volatile GenericBuffers_t * const buf) 
{
	buf->rdIndx=0;
	buf->wrIndx=0;
	for(uint16_t i=0;i<MOD2BUFFER;i++)
		buf->buffer[i]=0;
}

/***
 *** Ein byte in den buffer schreiben
***/
/**
 * \brief Puts a byte into the buffer 
**/ 
void writeToBuffer(volatile GenericBuffers_t * const buf, const unsigned char chr)
{
	buf->buffer[((buf->wrIndx)++)%MOD2BUFFER]=chr;
}

/***
 *** Ein byte aus dem Buffer lesen.
***/
/**
 * \brief reads a byte from the buffer
**/ 
unsigned char readFromBuffer(volatile GenericBuffers_t * const buf)
{
	return buf->buffer[((buf->rdIndx)++)%MOD2BUFFER];
}

/***
 *** liefert die anzahl der bytes die aus dem buffer gelesen werden können.
***/
/**
 * \brief just returns the number of bytes available for reading without reading any values or changing any indices
**/ 
__attribute__((pure)) unsigned bytesAvailableInBuffer(volatile GenericBuffers_t const * const buf)  
{
  return buf->wrIndx - buf->rdIndx;
}
