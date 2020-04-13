/**********************************************************
*  Yazar 	: sigmoid
*  Web 		: http://www.gencmucitler.com
*  ?lk		: Eyl�l 2017
*  D�zenleme: Yok 
*  Versiyon : 0.1
*  A��klama : Yaz�l�msal olarak ger�ekle�tirilmi� RS232
*    8 bit data no parity
***********************************************************/

#ifndef _XTAL_FREQ
    #define _XTAL_FREQ 8000000
#endif



#define USARTHIZ 9600	//istenilen ba�lant� h�z�n� yaz�n.      
#define usartdelaycyc (_XTAL_FREQ/4) / USARTHIZ  //ba�lant� h�z�n� hesapla
#define usartdelaycycyarim usartdelaycyc/2

#define softrxpintris	TRISD5
#define softtxpintris	TRISD6
#define softrxpin	PORTDbits.RD5
#define softtxpin	LATDbits.LD6

//soft usart i�indeki kullan�nan fonksiyonlardan komutlar�n �al��ma s�resinin ��kart�lmas�
#define sucyc1 11
#define sucyc2 16

#define sucyc1rcv 20
#define sucyc2rcv 29

void softusart_baslat(void);
char softusart_oku(void);
int softUsartReadString(char *buf, int max_length);
void softUSARTWriteString(const char *str);
void softusart_yaz(char veri);
void putch(unsigned char byte);