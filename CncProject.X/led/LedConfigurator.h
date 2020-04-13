/* 
 * File:   LedConfigurator.h
 * Author: By Rfb
 *
 * Created on 11 Nisan 2020 Cumartesi, 20:58
 */

#ifndef LEDCONFIGURATOR_H
#define	LEDCONFIGURATOR_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include "Led.h"
#include "../io/digitalOutput/DigitalOutput.h"


    void  redLedInit() {
        TRISD1 = 0;

    }

    void yellowLedInit() {
        TRISD0 = 0;
    }

    void blueLedInit() {
        TRISC3 = 0;
    }

    void redLedSet(Led * button, int value) {
        LATDbits.LATD1 = value;
        
        
    }

    void yellowLedSet(Led * button, int value) {
        LATDbits.LATD0 = value;

    }

    void blueLedSet(Led * button, int value) {
        LATCbits.LATC3 = value;
    }

DigitalOutput redLedOutput;
DigitalOutput yellowLedOutput;
DigitalOutput blueLedOutput;

void LedConfigurator_config(){
    redLedOutput = DigitalOutput_init(redLedInit,redLedSet);
    yellowLedOutput = DigitalOutput_init(yellowLedInit,yellowLedSet);
    blueLedOutput = DigitalOutput_init(blueLedInit,blueLedSet);
}



#ifdef	__cplusplus
}
#endif

#endif	/* LEDCONFIGURATOR_H */

