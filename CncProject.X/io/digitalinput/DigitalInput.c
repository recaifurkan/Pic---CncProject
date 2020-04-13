#include "DigitalInput.h"
//#include "../../utils/Utils.h"

DigitalInput DigitalInput_init(void (*init)(void) , int (*read)(void)){
    DigitalInput input;
    (*init)();
    input.read = read;
    
    return input;
}


int DigitalInput_getValue(DigitalInput *input){
    int val = input->read(input);
    if(val){
        return val;
    }
//    printDebug("Read function pointer");
    return 0;
}