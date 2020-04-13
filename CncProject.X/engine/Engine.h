/* 
 * File:   Motor.h
 * Author: By Rfb
 *
 * Created on 12 Nisan 2020 Pazar, 21:44
 */

#ifndef MOTOR_H
#define	MOTOR_H

#ifdef	__cplusplus
extern "C" {
#endif
/*
 şimdiki koordinat ve hedef koordinat daima metris cinsinden
 * mm veya inç olacak
 */
#include "../io/digitalOutput/DigitalOutput.h"
#define CV 1
#define CCV 0
    typedef struct Engine {
        float currentCoord;
        float destinationCoord;
        int isMotion;
        DigitalOutput *motionOutput;
        DigitalOutput *dirOutput;
        float stepPerMetrice;


    } Engine;

    Engine Engine_init(DigitalOutput *motionOutput, DigitalOutput *dirOutput);
    float Engine_getStepPerMetrice(Engine *engine);
     

    void Engine_setStepPerMetrice(Engine *engine, float stepPerMm) ;
    
    float Engine_getCurrentCoord(Engine * engine);
    float Engine_getDestinationCoord(Engine * engine);
    
     void Engine_step(Engine * engine , int dir);
     
     void Engine_addCurrentCoord(Engine * engine , float addValue);



#ifdef	__cplusplus
}
#endif

#endif	/* MOTOR_H */

