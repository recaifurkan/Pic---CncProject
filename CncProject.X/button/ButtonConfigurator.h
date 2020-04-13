/* 
 * File:   ButtonConfigurator.h
 * Author: By Rfb
 *
 * Created on 11 Nisan 2020 Cumartesi, 20:58
 */

#ifndef BUTTONCONFIGURATOR_H
#define	BUTTONCONFIGURATOR_H

#ifdef	__cplusplus
extern "C" {
#endif


#include <xc.h>
#include "../io/digitalinput/DigitalInput.h"
    DigitalInput button1Input;


    void button1Init();
    int button1Read(DigitalInput *in);

    void ButtonConfigurator_config();



#ifdef	__cplusplus
}
#endif

#endif	/* BUTTONCONFIGURATOR_H */

