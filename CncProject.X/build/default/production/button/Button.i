# 1 "button/Button.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "button/Button.c" 2
# 1 "button/Button.h" 1
# 18 "button/Button.h"
# 1 "button/../io/digitalinput/DigitalInput.h" 1
# 15 "button/../io/digitalinput/DigitalInput.h"
    typedef struct DigitalInput {
        int (*read)(struct DigitalInput *input);
    } DigitalInput;

    DigitalInput DigitalInput_init(void (*init)(void), int (*read)(void));


    int DigitalInput_getValue(DigitalInput *input);
# 18 "button/Button.h" 2

typedef struct Button {
    DigitalInput * input;
    void (*onPressed)(void);
} Button;

Button Button_init(DigitalInput *input, void (*onPressed)(void) );


int Button_getValue(Button *button);

int Button_isPressed(Button *button);
# 1 "button/Button.c" 2








Button Button_init(DigitalInput *input, void (*onPressed)(void) ){
    Button buton;
    buton.input = input;
    buton.onPressed = onPressed;
    return buton;
}


int Button_isPressed(Button *button){
    int value = DigitalInput_getValue(button->input) ;
    return value;
}
