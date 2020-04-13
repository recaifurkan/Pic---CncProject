
#include "Usart.h"
#include "UsartFunctions.h"
#include "../ApplicationVariables.h"
/*
 usart?n gele veride interrupt olu?turacak ?ekilde
 * olu?turulmas? i�in registerler de?er atayan ve olu?turran fonksiyonlar?n bulundu?u k?s?m
 
 
 */

void setupFunctions(Usart *usart) {
   
    usart->isDataReady = USARTDataReady;


    usart->readByte = USARTReadByte;
    usart->readChar = USARTReadChar;
    usart->readString = USARTReadString;


    usart->writeByte = USARTWriteByte;
    usart->writeInt = USARTWriteInt;
    usart->writeLong = USARTWriteLong;
    usart->writeFloat = USARTWriteFloat;
    usart->writeLine = USARTWriteLine;
    usart->writeString = USARTWriteString;
}



void enableInterrupts() {
    GIE = 1; // enable global interrupt
    PEIE = 1; // unable peripheral interrupt
    RCIE = 1; //enable interrupt. usarttan veri gelme interrupt? aktif edildi
}
long calculateSpbrg(long baudRate) {
    long bolum = 16 * baudRate;
    return ((_XTAL_FREQ / bolum) - 1);
}

void USARTInit(Usart *usart,long baudRate) {

    
    enableInterrupts();
    
     OSCCON = 0x72; //   Use internal oscillator of 8MHz Frequency 

    BRGH = 1; // Set For High-Speed Baud Rate
    SPBRG = calculateSpbrg(baudRate);
    // Set The Baud Rate To Be 9600 bps
    //--[ Enable The Ascynchronous Serial Port ]--
    SYNC = 0;
    SPEN = 1;
    //--[ Set The RX-TX Pins to be in UART mode (not io) ]--
    TRISC6 = 1; // As stated in the datasheet
    TRISC7 = 1; // As stated in the datasheet
    TXEN = 1; // Enable UART Transmission

    CREN = 1; // bu da almak i�in i?e yarar interrupt devreye sokar
    setupFunctions(usart);


    //    usart.writeInt(calculateSpbrg(9600),5);

    

}


