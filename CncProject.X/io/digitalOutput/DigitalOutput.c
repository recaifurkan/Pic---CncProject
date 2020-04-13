#include "DigitalOutput.h"

DigitalOutput DigitalOutput_init(void (*init)(void) , void (*set)(void)) {
    DigitalOutput output;
    output.set = set;
    (*init)();
    return output;

}

void DigitalOutput_open(DigitalOutput *output) {
    output->isHigh = 1;
    (*output->set)(output,1);
}

void DigitalOutput_close(DigitalOutput *output) {
    output->isHigh = 0;
    output->set(output,0);
}

void DigitalOutput_set(DigitalOutput *outputable, int value){
    outputable->set(outputable,value);
}
