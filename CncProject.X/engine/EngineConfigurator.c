#include "EngineConfigurator.h"

void xEngineMotionInit() {
    TRISC0 = 0;

}

void yEngineMotionInit() {
    TRISC1 = 0;

}

void zEngineMotionInit() {
    TRISC2 = 0;

}

void xEngineMotionSet(Engine * engine, int value) {
    LATCbits.LATC0 = value;
}

void yEngineMotionSet(Engine * engine, int value) {
    LATCbits.LATC1 = value;
}

void zEngineMotionSet(Engine * engine, int value) {
    LATCbits.LATC2 = value;
}

void xEngineDirInit() {
    TRISB0 = 0;
}

void yEngineDirInit() {
    TRISB1 = 0;
}

void zEngineDirInit() {
    TRISB2 = 0;
}

void xEngineDirSet(Engine * engine, int value) {
    LATBbits.LATB0 = value;
}

void yEngineDirSet(Engine * engine, int value) {
    LATBbits.LATB1 = value;
}

void zEngineDirSet(Engine * engine, int value) {
    LATBbits.LATB2 = value;
}

void EngineConfigurator_configEngines(){
    xEngineMotionOutput = DigitalOutput_init(xEngineMotionInit, xEngineMotionSet);
    yEngineMotionOutput = DigitalOutput_init(yEngineMotionInit, xEngineMotionSet);
    zEngineMotionOutput = DigitalOutput_init(zEngineMotionInit, xEngineMotionSet);
    xEngineDirOutput = DigitalOutput_init(xEngineDirInit, xEngineDirSet);
    yEngineDirOutput = DigitalOutput_init(yEngineDirInit, xEngineDirSet);
    zEngineDirOutput = DigitalOutput_init(zEngineDirInit, xEngineDirSet);
}
