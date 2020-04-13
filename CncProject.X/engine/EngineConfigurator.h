/* 
 * File:   EngineConfigurator.h
 * Author: By Rfb
 *
 * Created on 12 Nisan 2020 Pazar, 22:45
 */

#ifndef ENGINECONFIGURATOR_H
#define	ENGINECONFIGURATOR_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <xc.h>
#include "Engine.h"
#include "../io/digitalOutput/DigitalOutput.h"




    void xEngineMotionInit();
    void yEngineMotionInit();
    void zEngineMotionInit();
    void xEngineMotionSet(DigitalOutput * engine, int value);
    void yEngineMotionSet(DigitalOutput * engine, int value);
    void zEngineMotionSet(DigitalOutput * engine, int value);

    void xEngineDirInit();
    void yEngineDirInit();
    void zEngineDirInit();
    void xEngineDirSet(DigitalOutput * engine, int value);
    void yEngineDirSet(DigitalOutput * engine, int value);
    void zEngineDirSet(DigitalOutput * engine, int value);

 









#ifdef	__cplusplus
}
#endif

#endif	/* ENGINECONFIGURATOR_H */

