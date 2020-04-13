#include "MotionController.h"
#include <math.h>
#include "../application/Application.h"

MotionController MotionController_init() {
    MotionController motionController;
    EngineConfigurator_configEngines();
    motionController.x = Engine_init(&xEngineMotionOutput,&xEngineDirOutput);
    motionController.y = Engine_init(&yEngineMotionOutput,&yEngineDirOutput);
    motionController.z = Engine_init(&zEngineMotionOutput,&zEngineDirOutput);
    Engine_setStepPerMetrice(&(motionController.x), 50);
    Engine_setStepPerMetrice(&(motionController.y), 50);
    Engine_setStepPerMetrice(&(motionController.z), 50);
    return motionController;

}

void MotionController_control(MotionController *motionController) {
    Point currentCoord = MotionController_getCurrentCoord(motionController);
    Point destinationCoord = MotionController_getDestinationCoord(motionController);

    //    usart.writeString(Point_toString(&destinationCoord));

    float dx = destinationCoord.x - currentCoord.x;
    float dy = destinationCoord.y - currentCoord.y;
    float dz = destinationCoord.z - currentCoord.z;

    int xs, ys, zs;

    if (dx > 0)
        xs = 1;
    else
        xs = -1;

    if (dy > 0)
        ys = 1;
    else
        ys = -1;

    if (dz > 0)
        zs = 1;
    else
        zs = -1;

    dx = abs(destinationCoord.x - currentCoord.x);
    dy = abs(destinationCoord.y - currentCoord.y);
    dz = abs(destinationCoord.z - currentCoord.z);

    float intDx = dx * Engine_getStepPerMetrice(&motionController->x);
    float intDy = dy * Engine_getStepPerMetrice(&motionController->y);
    float intDz = dz * Engine_getStepPerMetrice(&motionController->z);
//    Point temp = MotionController_getCurrentCoord(motionController);
//    usart.writeLine(Point_toString(&temp));

    if (intDx >= intDy && intDx >= intDz) {
        float rateY = intDx / intDy;
        float rateZ = intDx / intDz;
        float p1;
        float p2;
        for(;intDx>-1;intDx--){
            Engine_step(&motionController->x, xs);
            if (p1 >= rateY) {
                Engine_step(&motionController->y, ys);
                p1 -= rateY;
            }
            if (p2 >= rateZ) {
                Engine_step(&motionController->z, zs);
                p2 -= rateZ;
            }
            p1 ++;
            p2 ++;
        }
//        while (intDx-- != 0) {
//            
//
//            
//        }

    }

        //    usart.writeLine(Point_toString(&currentCoord));
        //    # Driving axis is Y-axis" 
    else if (intDy >= intDx && intDy >= intDz) {
        float rateX =intDy / intDx;
        float rateZ =intDy / intDz;
        float p1;
        float p2;
        //             while (y1 != y2):
         for(;intDy>-1;intDy--){
             Engine_step(&motionController->y, ys);
        if (p1 >= rateX) {
            Engine_step(&motionController->x, xs);
            p1 -= rateX;
        }
        if (p2 >= rateZ) {
            Engine_step(&motionController->z, zs);
            p2 -= rateZ;
        }
        p1 += 1;
        p2 += 1;
             
             
         }
//        while(intDy-- != 0){
//            
//        
//        }
        
    }
    else {
        float rateY =intDz / intDy;
        float rateX =intDz / intDx;
        float p1;
        float p2;
        //        while (z1 != z2):
        for(;intDz>-1;intDz--){
             Engine_step(&motionController->z, zs);
        if (p1 >= rateY) {
            Engine_step(&motionController->y, ys);
            p1 -= rateY;
        }
        if (p2 >= rateX) {
            Engine_step(&motionController->x, xs);
            p2 -= rateX; //  
        }
        p1 += 1;
        p2 += 1;
            
        }
//        while(intDz-- != 0){
//           
//        
//        }
//        

    }
//    temp = MotionController_getCurrentCoord(motionController);
//    usart.writeLine(Point_toString(&temp));

}
//
//Python3 code for generating points on a 3-D line  
//# using Bresenham's Algorithm 
//  
//def Bresenham3D(x1, y1, z1, x2, y2, z2): 
//    ListOfPoints = [] 
//    ListOfPoints.append((x1, y1, z1)) 
//    dx = abs(x2 - x1) 
//    dy = abs(y2 - y1) 
//    dz = abs(z2 - z1) 
//    if (x2 > x1): 
//        xs = 1
//    else: 
//        xs = -1
//    if (y2 > y1): 
//        ys = 1
//    else: 
//        ys = -1
//    if (z2 > z1): 
//        zs = 1
//    else: 
//        zs = -1
//  
//    # Driving axis is X-axis" 
//    if (dx >= dy and dx >= dz):         
//        p1 = 2 * dy - dx 
//        p2 = 2 * dz - dx 
//        while (x1 != x2): 
//            x1 += xs 
//            if (p1 >= 0): 
//                y1 += ys 
//                p1 -= 2 * dx 
//            if (p2 >= 0): 
//                z1 += zs 
//                p2 -= 2 * dx 
//            p1 += 2 * dy 
//            p2 += 2 * dz 
//            ListOfPoints.append((x1, y1, z1)) 
//  
//    # Driving axis is Y-axis" 
//    elif (dy >= dx and dy >= dz):        
//        p1 = 2 * dx - dy 
//        p2 = 2 * dz - dy 
//        while (y1 != y2): 
//            y1 += ys 
//            if (p1 >= 0): 
//                x1 += xs 
//                p1 -= 2 * dy 
//            if (p2 >= 0): 
//                z1 += zs 
//                p2 -= 2 * dy 
//            p1 += 2 * dx 
//            p2 += 2 * dz 
//            ListOfPoints.append((x1, y1, z1)) 
//  
//    # Driving axis is Z-axis" 
//    else:         
//        p1 = 2 * dy - dz 
//        p2 = 2 * dx - dz 
//        while (z1 != z2): 
//            z1 += zs 
//            if (p1 >= 0): 
//                y1 += ys 
//                p1 -= 2 * dz 
//            if (p2 >= 0): 
//                x1 += xs 
//                p2 -= 2 * dz 
//            p1 += 2 * dy 
//            p2 += 2 * dx 
//            ListOfPoints.append((x1, y1, z1)) 
//    return ListOfPoints 

Point MotionController_getCurrentCoord(MotionController * motionController) {
    return Point_init3D(
            Engine_getCurrentCoord(&motionController->x),
            Engine_getCurrentCoord(&motionController->y),
            Engine_getCurrentCoord(&motionController->z)
            );
}

Point MotionController_getDestinationCoord(MotionController * motionController) {
    return Point_init3D(
            Engine_getDestinationCoord(&motionController->x),
            Engine_getDestinationCoord(&motionController->y),
            Engine_getDestinationCoord(&motionController->z)
            );
}

