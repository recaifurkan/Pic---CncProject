#include "Utils.h"


void recursiveDelay(float time){
    while(time){
         __delay_ms(1);
    }
}

void Library_delayMs(float time){
     recursiveDelay(time);  
    }
