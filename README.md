# htwsaarPraktischePhaseOneWireBusPlusDS18B20
Driver for the One-Wire-Bus and the DS18B20 on an Atmega2560 (on an Arduino Mega Dev-Board). Then later ported to a smaller ATmega328P Processor as found on the Uno and others.

Developed as part of my work during the practical phase of my studies for temperature measurements in an engine-test-rig.

This repository contains the Driver for the One Wire Bus, the DS18B20 Temperature Sensor, Timer0 and Timer2 (for Timing control of the readouts).

Written in pure C without using the premade libraries for the tasks since they rely heavily on busy-wait and other bad practices.

Where it was not possible to get around busy-wait since time delays too short for timers and interrupts to act where needed busy-wait was 
used but focus was on keeping such places at minimum.
