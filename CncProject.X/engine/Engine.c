#include "Engine.h"
#include "../utils/Utils.h"
 Engine Engine_init(DigitalOutput *motionOutput, DigitalOutput *dirOutput) {
        Engine engine;
        engine.motionOutput = motionOutput;
        engine.dirOutput = dirOutput;
        engine.stepPerMetrice = 1;
        return engine;
    }

    void Engine_setStepPerMetrice(Engine *engine, float stepPerMm) {
        engine->stepPerMetrice = stepPerMm;
    }
    
    float Engine_getStepPerMetrice(Engine *engine){
        return engine->stepPerMetrice;
    }
     float Engine_getCurrentCoord(Engine * engine){
        return engine->currentCoord;
    }
     
     float Engine_getDestinationCoord(Engine * engine){
         return engine->destinationCoord;
     }
    
    void Engine_step(Engine * engine , int dir){
        if(dir == CCV){
            DigitalOutput_open(engine->dirOutput);
        }
        else{
         DigitalOutput_close(engine->dirOutput);   
        }
        
        DigitalOutput_open(engine->motionOutput);
        DigitalOutput_close(engine->motionOutput);

//        engine->currentCoord += dir / engine->stepPerMetrice;
        
    }
    
    void Engine_setDestinationToAddCurrentCoord(Engine * engine , float addValue){
        engine->destinationCoord = engine->currentCoord + addValue;
    }
