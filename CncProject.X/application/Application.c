

#include "Application.h"

#include "../led/LedConfigurator.h"
#include "../button/ButtonConfigurator.h"

#include <stdio.h>

// yazılımsal uart sadece okuma çalışıyor göndermeyle ilgili bir sıkıntı var
// TODO bunu düzeltmen lazım

#include "../softuart/softusart.h"



void delaySaniye(int saniye) {
    while (saniye) {
        __delay_ms(1000);
        saniye--;
    }
}

void wait(int time) {
    int icTimer = time;
    int tmp = time;
    while (time != 0) {
        while (icTimer != 0) {
            icTimer--;
        }
        time--;
        icTimer = tmp;
    }
}

Led yellowLed;
Led blueLed;
Led redLed;

Button button;



Application Application_init() {
    Application app;
    app.id = 0;

    LATA = 0;
    LATB = 0;
    LATC = 0;
    LATD = 0;
    LATE = 0;
    USARTInit(&usart, 9600);
//    motionController = MotionController_init();
//    motionController.x.destinationCoord = 20;
//    motionController.y.destinationCoord = 60;
//    motionController.z.destinationCoord = 150;

    
    
//    MotionController_control(&motionController);
//    softusart_baslat();


//    printf("Yazilimsal UART test.\n");
//    softusart_yaz("d");
    

    //    OSCCON = 0x72; //   Use internal oscillator of 8MHz Frequency 


    
    //    TRISD = 0;
    LedConfigurator_config();

    yellowLed = Led_init(&yellowLedOutput);

    redLed = Led_init(&redLedOutput);

    blueLed = Led_init(&blueLedOutput);
    
    ButtonConfigurator_config();
//
    button = Button_init(&button1Input, 0);
//    
//    MotionController_init();
    
    

//    MotionController_init();


//    usart.writeLine("Application Başladı");

    


    return app;

}

void Application_loop(Application *app) {
//     Led_open(&redLed);

//    char temp [20] = "";
//    int returned = softUsartReadString(temp,20);
//    softUSARTWriteString(temp);
//    usart.writeString("Gelen uzunluk   ");
//    usart.writeInt(returned,2);   
//    usart.writeLine(temp);

    Led_open(&redLed);
    //    Led_open(&yellowLed);
    //    usart.writeLine("Denemelerrrr");
    if (DigitalInput_getValue(&button1Input)) {
        
        usart.writeLine("basıldı");
        Led_open(&blueLed);
        Led_close(&yellowLed);
        //    delaySaniye(1);
    } else {
        usart.writeLine("basılmadı");
        
        Led_close(&blueLed);
    }
    //    delaySaniye(1);
    //    wait(200);

    //        wait(200);
    //    delaySaniye(1);




}

__interrupt() void ISR(void) // interrupt için bu kullan?l?yor
{
    if (usart.isDataReady) //Polling for reception interrupt
    {

        char tmp[20] = "";
        usart.readString(tmp, 20);
        usart.writeLine(tmp);
        softUSARTWriteString(tmp);

        Led_open(&yellowLed);
        //        wait(20);
        //        Led_close(&yellowLed);



    }
}

