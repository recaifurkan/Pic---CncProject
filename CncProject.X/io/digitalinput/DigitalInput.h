/* 
 * File:   DigitalInput.h
 * Author: By Rfb
 *
 * Created on 13 Nisan 2020 Pazartesi, 11:54
 */

#ifndef DIGITALINPUT_H
#define	DIGITALINPUT_H

#ifdef	__cplusplus
extern "C" {
#endif

    typedef struct DigitalInput {
        int (*read)(struct DigitalInput *input);
    } DigitalInput;

    DigitalInput DigitalInput_init(void (*init)(void), int (*read)(void));


    int DigitalInput_getValue(DigitalInput *input);




#ifdef	__cplusplus
}
#endif

#endif	/* DIGITALINPUT_H */

