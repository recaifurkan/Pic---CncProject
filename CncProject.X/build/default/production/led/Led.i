# 1 "led/Led.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "led/Led.c" 2
# 1 "led/Led.h" 1
# 15 "led/Led.h"
# 1 "led/../io/digitalOutput/DigitalOutput.h" 1
# 15 "led/../io/digitalOutput/DigitalOutput.h"
    typedef struct DigitalOutput {
        void (*set)(struct DigitalOutput * outputable, int value);
        int isHigh;
    } DigitalOutput;

    DigitalOutput DigitalOutput_init(void (*init)(void), void (*set)(void));

    void DigitalOutput_open(DigitalOutput *outputable);

    void DigitalOutput_set(DigitalOutput *outputable, int value);

    void DigitalOutput_close(DigitalOutput *outputable);
# 15 "led/Led.h" 2




typedef struct Led{
    DigitalOutput *output;
    int isOpen;
}Led;

Led Led_init(DigitalOutput * output);


void Led_open(Led *led);

void Led_close(Led *led);

void Led_blink(Led *led , int time);
# 1 "led/Led.c" 2



Led Led_init(DigitalOutput * output) {
    Led led;
    led.output = output;
    return led;

}

void Led_open(Led *led) {
    led->isOpen = 1;
    DigitalOutput_open(led->output);
}

void Led_close(Led *led) {
    led->isOpen = 0;
    DigitalOutput_close(led->output);
}
