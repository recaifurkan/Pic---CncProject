#include "Led.h"


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
