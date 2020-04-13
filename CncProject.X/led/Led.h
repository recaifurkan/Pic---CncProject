/* 
 * File:   Led.h
 * Author: By Rfb
 *
 * Created on 09 Nisan 2020 Perşembe, 22:37
 */

#ifndef LED_H
#define	LED_H

#ifdef	__cplusplus
extern "C" {
#endif
    
#include "../io/digitalOutput/DigitalOutput.h"
    

    
typedef struct Led{
    DigitalOutput* output;
    int isOpen;
}Led;
    
Led Led_init(DigitalOutput * output);


void Led_open(Led *led);

void Led_close(Led *led);

void Led_blink(Led *led , int time);


#ifdef	__cplusplus
}
#endif

#endif	/* LED_H */

