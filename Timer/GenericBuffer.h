#ifndef GUARD_GENERICBUFFER_H
#define GUARD_GENERICBUFFER_H

		#ifndef BUFFER_SIZE 
			#define BUFFER_SIZE 10
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
