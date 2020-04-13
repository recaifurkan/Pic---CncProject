#include "Button.h"


/*
 butonun olu?turlmas? ile ve kulan?lmas? ile ilgili fokstyionlar burada bulunmakta
 * buton olu?tururken ba?l? oldu?u portu ve hangi pine ba?l? oldu?jnuu giriyoun
 
 */
Button Button_init(DigitalInput * input, void (*onPressed)(void) ){
    Button buton;
    buton.input = input;
    buton.onPressed = onPressed;
    return buton;
}


int Button_isPressed(Button *button){
    int value = DigitalInput_getValue(button->input) ;
    return value;
}
