# 1 "io/digitalOutput/DigitalOutput.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "io/digitalOutput/DigitalOutput.c" 2
# 1 "io/digitalOutput/DigitalOutput.h" 1
# 15 "io/digitalOutput/DigitalOutput.h"
    typedef struct DigitalOutput {
        void (*set)(struct DigitalOutput * outputable, int value);
        int isHigh;
    } DigitalOutput;

    DigitalOutput DigitalOutput_init(void (*init)(void), void (*set)(void));

    void DigitalOutput_open(DigitalOutput *outputable);

    void DigitalOutput_set(DigitalOutput *outputable, int value);

    void DigitalOutput_close(DigitalOutput *outputable);
# 1 "io/digitalOutput/DigitalOutput.c" 2


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
