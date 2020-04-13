# 1 "io/digitalinput/DigitalInput.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "io/digitalinput/DigitalInput.c" 2
# 1 "io/digitalinput/DigitalInput.h" 1
# 15 "io/digitalinput/DigitalInput.h"
    typedef struct DigitalInput {
        int (*read)(struct DigitalInput * input);
    } DigitalInput;

    DigitalInput DigitalInput_init(void (*init)(void), int (*read)());


    int DigitalInput_getValue(DigitalInput *input);
# 1 "io/digitalinput/DigitalInput.c" 2


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
