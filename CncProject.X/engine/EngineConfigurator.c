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

void xEngineMotionSet(DigitalOutput * engine, int value) {
    LATCbits.LATC0 = value;
}

void yEngineMotionSet(DigitalOutput * engine, int value) {
    LATCbits.LATC1 = value;
}

void zEngineMotionSet(DigitalOutput * engine, int value) {
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

void xEngineDirSet(DigitalOutput * engine, int value) {
    LATBbits.LATB0 = value;
}

void yEngineDirSet(DigitalOutput * engine, int value) {
    LATBbits.LATB1 = value;
}

void zEngineDirSet(DigitalOutput * engine, int value) {
    LATBbits.LATB2 = value;
}



