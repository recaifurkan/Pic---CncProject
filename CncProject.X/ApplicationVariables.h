/* 
 * File:   ApplicationVariables.h
 * Author: By Rfb
 *
 * Created on 13 Nisan 2020 Pazartesi, 14:42
 */

#ifndef APPLICATIONVARIABLES_H
#define	APPLICATIONVARIABLES_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "io/digitalOutput/DigitalOutput.h"
#include "io/digitalinput/DigitalInput.h"
#include "usart/Usart.h"
#include "motioncontroller/MotionController.h"
#include "button/Button.h"
#include "led/Led.h"



    DigitalOutput xEngineMotionOutput;
    DigitalOutput yEngineMotionOutput;
    DigitalOutput zEngineMotionOutput;


    DigitalOutput xEngineDirOutput;
    DigitalOutput yEngineDirOutput;
    DigitalOutput zEngineDirOutput;

    Usart usart;
    MotionController motionController;


    Led yellowLed;
    Led blueLed;
    Led redLed;

    Button button;



#ifdef	__cplusplus
}
#endif

#endif	/* APPLICATIONVARIABLES_H */

