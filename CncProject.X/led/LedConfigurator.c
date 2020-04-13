#include "LedConfigurator.h"


  void  redLedInit() {
        TRISD1 = 0;

    }

    void yellowLedInit() {
        TRISD0 = 0;
    }

    void blueLedInit() {
        TRISC3 = 0;
    }

    void redLedSet(DigitalOutput * button, int value) {
        LATDbits.LATD1 = value;
        
        
    }

    void yellowLedSet(DigitalOutput * button, int value) {
        LATDbits.LATD0 = value;

    }

    void blueLedSet(DigitalOutput * button, int value) {
        LATCbits.LATC3 = value;
    }
    
    void LedConfigurator_config(){
    redLedOutput = DigitalOutput_init(redLedInit,redLedSet);
    yellowLedOutput = DigitalOutput_init(yellowLedInit,yellowLedSet);
    blueLedOutput = DigitalOutput_init(blueLedInit,blueLedSet);
}
