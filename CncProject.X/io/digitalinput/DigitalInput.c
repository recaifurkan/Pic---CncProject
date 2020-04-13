#include "DigitalInput.h"

DigitalInput DigitalInput_init(void (*init)(void) , int (*read)()){
    DigitalInput input;
    input.read = read;
    (*init)();
    int val = (*read)(&input);
    val = input.read(&input);
    return input;
}


int DigitalInput_getValue(DigitalInput *input){
    int value = input->read(input);
    return value;
}