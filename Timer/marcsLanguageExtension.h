#pragma once
#ifndef MARCSLANGUAGEEXTENSION_H_
#define MARCSLANGUAGEEXTENSION_H_

	#define IN_PAR 
	#define OUT_PAR
	#define BIDIR_PAR

	#define DO_NOTHING ;
	#define FOREVER for(;;)
	typedef void (* CallbackFunctionType)(void);

	#define ONBOARD_LED (5U)
	
	void deathTrap(void);

#endif