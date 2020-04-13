/* 
 * File:   Application.h
 * Author: By Rfb
 *
 * Created on 09 Nisan 2020 Perşembe, 23:21
 */

#ifndef APPLICATION_H
#define	APPLICATION_H

#ifdef	__cplusplus
extern "C" {
#endif



#include "../Configuration.h"
#include "../led/Led.h"
#include "../button/Button.h"
#include "../usart/Usart.h"
#include "../motioncontroller/MotionController.h"
#include "../io/digitalOutput/DigitalOutput.h"
#include "../io/digitalinput/DigitalInput.h"

    DigitalInput button1Input;

    DigitalOutput xEngineMotionOutput;
    DigitalOutput yEngineMotionOutput;
    DigitalOutput zEngineMotionOutput;


    DigitalOutput xEngineDirOutput;
    DigitalOutput yEngineDirOutput;
    DigitalOutput zEngineDirOutput;

    Usart usart;
//    MotionController motionController;


    __interrupt() void ISR(void);

    typedef struct {
        int id;

    } Application;



    Application Application_init();

    void Application_loop(Application *app);

    void wait(int time);






#ifdef	__cplusplus
}
#endif

#endif	/* APPLICATION_H */

