#include "MAX31850.h"

char getSignOfSigned11Point2Fixed(IN_PAR const signed11Point2Fixed_t num )
{
	return (num & 0x8000)?'-':'+';
}

uint16_t getIntegerPartOfSigned11Point2Fixed(IN_PAR const signed11Point2Fixed_t num)
{
	return (abs(num) & 0x7FF0)>>4;
}

uint16_t getNonIntegerPartOfSigned11Point2Fixed(IN_PAR const signed11Point2Fixed_t num)
{
	return ((((abs(num)) & 0x000C)>>2) * 2500);
}
