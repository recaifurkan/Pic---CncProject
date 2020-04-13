#include "ButtonConfigurator.h"


void button1Init() {
    TRISD2 = 1;
}

int button1Read(DigitalInput *in) {
    return PORTDbits.RD2;
}
    

void ButtonConfigurator_config() {
    button1Input = DigitalInput_init(button1Init ,button1Read);
}
