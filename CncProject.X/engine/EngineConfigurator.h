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
#include "../application/Application.h"

    void xEngineMotionInit();
    void yEngineMotionInit();
    void zEngineMotionInit();
    void xEngineMotionSet(Engine * engine, int value);
    void yEngineMotionSet(Engine * engine, int value);
    void zEngineMotionSet(Engine * engine, int value);

    void xEngineDirInit();
    void yEngineDirInit();
    void zEngineDirInit();
    void xEngineDirSet(Engine * engine, int value);
    void yEngineDirSet(Engine * engine, int value);
    void zEngineDirSet(Engine * engine, int value);


    
    void EngineConfigurator_configEngines();





#ifdef	__cplusplus
}
#endif

#endif	/* ENGINECONFIGURATOR_H */

