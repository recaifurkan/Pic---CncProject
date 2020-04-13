/* 
 * File:   Button.h
 * Author: ByRfb
 *
 * Created on March 10, 2019, 12:32 AM
 */

#ifndef BUTTON_H
#define	BUTTON_H

/*
 bu class buton yerine kullan?lmaktad?r altta zaten
 * hangi verileri tuutu?u yazmakta
 
 
 */

#include "../io/digitalinput/DigitalInput.h"
typedef struct Button {
    DigitalInput * input;
    void (*onPressed)(void);
} Button;

Button Button_init(DigitalInput * input, void (*onPressed)(void) );


int Button_getValue(Button *button);

int Button_isPressed(Button *button);






#endif	/* BUTTON_H */

