/*
 * File:   main.c
 * Author: By Rfb
 *
 * Created on 09 Nisan 2020 Perşembe, 15:54
 */




// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.


#include "application/Application.h"

int main(void) {

    Application app = Application_init();


    while (1) {

        Application_loop(&app);

    }
    return 0;

}
