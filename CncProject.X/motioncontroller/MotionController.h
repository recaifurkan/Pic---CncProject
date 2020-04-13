/* 
 * File:   MotionController.h
 * Author: By Rfb
 *
 * Created on 12 Nisan 2020 Pazar, 23:03
 */

#ifndef MOTIONCONTROLLER_H
#define	MOTIONCONTROLLER_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "../engine/Engine.h"
#include "../engine/EngineConfigurator.h"
#include "../utils/Utils.h"
#include "../Point.h"

    typedef struct MotionController {
        Engine x;
        Engine y;
        Engine z;
    } MotionController;
    
    
    
    MotionController MotionController_init();

    void MotionController_control(MotionController * motionController);
    
    Point MotionController_getCurrentCoord(MotionController * motionController);
    
    Point MotionController_getDestinationCoord(MotionController * motionController);



#ifdef	__cplusplus
}
#endif

#endif	/* MOTIONCONTROLLER_H */

