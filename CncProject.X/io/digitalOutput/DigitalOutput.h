/* 
 * File:   DigitalOutput.h
 * Author: By Rfb
 *
 * Created on 13 Nisan 2020 Pazartesi, 11:56
 */

#ifndef DIGITALOUTPUT_H
#define	DIGITALOUTPUT_H

#ifdef	__cplusplus
extern "C" {
#endif

    typedef struct DigitalOutput {
        void (*set)(struct DigitalOutput * outputable, int value);
        int isHigh;
    } DigitalOutput;

    DigitalOutput DigitalOutput_init(void (*init)(void), void (*set)(void));

    void DigitalOutput_open(DigitalOutput *outputable);
    
    void DigitalOutput_set(DigitalOutput *outputable, int value);

    void DigitalOutput_close(DigitalOutput *outputable);




#ifdef	__cplusplus
}
#endif

#endif	/* DIGITALOUTPUT_H */

