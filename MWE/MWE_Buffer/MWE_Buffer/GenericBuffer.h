/***
 *** definiert einen grundlegenden byteorientierten ringbuffer mit modulo 2 teilbarer größe und die funktionen die diesen nutzbar machen.
***/
/**
 * \file GenericBuffer.h
 * \brief Defines a basic byteoriented FIFO ringbuffer of modulo 2 dividable size and the functions that make it usable.
**/ 
#ifndef GUARD_GENERICBUFFER_H
#define GUARD_GENERICBUFFER_H

		/**
		 * \brief BUFFER_SIZE must be less than 16 to make the initialization with zeros work
		**/ 
		#ifndef BUFFER_SIZE 
			#define BUFFER_SIZE (10U)
		#endif
		
		#define MOD2BUFFER (1<<BUFFER_SIZE)

		typedef struct 
		{
				unsigned volatile wrIndx;
				unsigned volatile rdIndx;
				unsigned char volatile buffer[MOD2BUFFER];
		} GenericBuffers_t;
		
		void __initBufferWithZeros(volatile GenericBuffers_t * const buf);
		void writeToBuffer(volatile GenericBuffers_t * const buf, const unsigned char chr);
		unsigned char readFromBuffer(volatile GenericBuffers_t * const buf);
		unsigned bytesAvailableInBuffer(volatile GenericBuffers_t const * const buf);
#endif
