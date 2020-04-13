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
#include "../led/LedConfigurator.h"
#include "../button/ButtonConfigurator.h"
#include "../ApplicationVariables.h"


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

