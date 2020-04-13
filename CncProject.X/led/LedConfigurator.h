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

#include "../io/digitalOutput/DigitalOutput.h"


    void redLedInit();
    void yellowLedInit();
    void blueLedInit();
    void redLedSet(DigitalOutput * button, int value);
    void yellowLedSet(DigitalOutput * button, int value);
    void blueLedSet(DigitalOutput * button, int value);
    DigitalOutput redLedOutput;
    DigitalOutput yellowLedOutput;
    DigitalOutput blueLedOutput;

    void LedConfigurator_config();





#ifdef	__cplusplus
}
#endif

#endif	/* LEDCONFIGURATOR_H */

