/****************************************************************************
 * File:   main.c                                                           *
 * Author: Esteban Lemos                                                    *
 * Created on 5 de febrero de 2014, 20:49                                   *
 * En caso de necesitar el proyecto completo ingresar en                    *
 * https://github.com/EEST1/Plantilla_6to                                   *
 ****************************************************************************/
#include <xc.h>
#include "confbits.h"       //no se debe de modificar este archivo para
//garantizar el funcionamiento del BOOTLOADER

#include "Tecnica1.h"       //segun el shield habilita distintas librerias
#include "lcd.h"
#include "ConfShield2_1.h"
//declaro funciones
void ini(void);
void cursor(void);
void muestreocont(void);
void contadorf(void);
void configbotones(void);
void retrasos(void);
void muestreomensajes(void);

//seteo los valores del contador
#define ASCENDENTE 0
#define DESCENDENTE 1
#define LIMITE_MAXIMO 9999
#define LIMITE_MINIMO 0000
//variables
unsigned char cont = 0, flag = 0;
unsigned int contador = LIMITE_MAXIMO;
unsigned char sentido = DESCENDENTE;
unsigned int contador2 = 0, contador3 = 0;
unsigned int retraso = 0;
unsigned int retraso2 = 0;

/*variables globales ********************************************************/
void main(void) {



    ini(); //inicializo la placa, el lcd, el timer0 y las interrupciones
    cursor(); //escribo en pantalla
    

    while (1) {

        configbotones(); //configuro los botones para que hagan diferentes funciones
        retrasos(); //retraso de el parpadeo de caracteres
        contadorf(); // variable contador descendente
        muestreocont(); //funcion que se encarga de mostrar el timer en el lcd
        muestreomensajes(); //funcion que muestra los mensajes 


    }









}

void __interrupt myISR(void) {
    if (TMR0IF) {
        TMR0L = 209;
        TMR0H = 0xFF;
        INTCONbits.TMR0IF = 0;

        tic_LCD();
        //pongo a contar a los retrasos
        retraso2++;
        retraso++;


    }
}

void ini(void) {
    PicIni21(); //configuro la placa
    TIMER0_INI(); //inicializo el timer 0
    INTCONbits.GIE = 1; // activo las interrupciones globales
    T0CONbits.TMR0ON = 1; //activo la interrupcion del timer 0
    LCD_init(); //inicio el lcd configuro
    clear_LCD(); //limpio pantalla
    ret_HOME(); // pongo al cursor en el punto de inicio 
}

void cursor(void) {
    //escribo en pantalla TIMER:    s
    set_CURSOR(0x00);
    msg2LCD("TIMER:");
    set_CURSOR(0x0C);
    msg2LCD("s");


}

void muestreocont(void) {
    char umil, centena, decena, unidad;

    umil = contador / 1000;
    centena = (contador % 1000) / 100;
    decena = ((contador % 1000) % 100) / 10;
    unidad = ((contador % 1000) % 100) % 10; //lo divido en U,D,C,M
    if (contador <= 9999) {
        set_CURSOR(0x07);
        char2LCD(umil + 48);
        char2LCD(centena + 48);
        char2LCD(decena + 48);
        char2LCD(unidad + 48); //los muestro en el lcd







    }
}

void contadorf(void) {
    if (cont == 1) {

        if (cont == 1 && sentido == DESCENDENTE) {
            if (contador > LIMITE_MINIMO) {
                sentido = DESCENDENTE;
                if (retraso > 10) {
                    contador--;
                    retraso = 0;
                }

            }
        }
    }
}

void configbotones(void) {
    unsigned int esta_bot = 0, esta_bot2 = 0, esta_bot3 = 0;
    if (BOT1 == 0) { //si B1 esta apretado, sumo 1 a el contador

        contador++;
        retraso = 0; //reinicio el retraso del contador

    }
    if (BOT2 == 0) { //si B2 esta apretado, resto 1 a el contador
        contador--;
        retraso = 0;
    }
    if (BOT3==0) { //si B3 se apreta inicia el conteo descendente
        flag++;
        if(flag==1){
            cont=1;
            retraso= 0;
            
        }
        if(flag==2){
            cont=0;
            flag=0;
            retraso=0;
                    
        
        }

    }
    if (BOT4 == 0) { //si B4 se apreta reinicia el programa
        cont = 0;
        contador = 9999;
        retraso = 0;
        contador3 = 0;
        retraso2 = 0;


    }


}

void retrasos(void) {
    //retrasos para el muestreo de los caracteres parpadeantes

    if (retraso2 == 1000)contador3 = 1;
    if (retraso2 == 2000)contador3 = 2;
    if (retraso2 == 3000)contador3 = 3;
    if (retraso2 == 4000)contador3 = 4;


}

void muestreomensajes(void) {


    if (cont == 0) { //si el contador esta detenido se muestra "detenido"
        set_CURSOR(0x40);
        msg2LCD("----DETENIDO----");
        contador2 = 1;

    }
    if ((contador > LIMITE_MINIMO && contador < LIMITE_MAXIMO) && cont == 1) {
        //si el contador est acorriendo se muestro corriendo con caracteres parpadeantes//
        switch (contador3) {
            case 1:
                set_CURSOR(0x40);
                msg2LCD("###CORRIENDO### ");

                break;
            case 2:

                set_CURSOR(0x40);
                msg2LCD(" ##CORRIENDO##  ");

                break;

            case 3:
                set_CURSOR(0x40);
                msg2LCD("# #CORRIENDO# # ");




                break;
            case 4:
                set_CURSOR(0x40);
                msg2LCD("  #CORRIENDO#   ");
                retraso2 = 0;
                contador2 = 0;
                contador3 = 0;



                break;
        }
    }









    if ((contador == LIMITE_MINIMO || contador == LIMITE_MAXIMO) && cont == 1 && contador2 == 0) {
        //si el contador termina, se muestra finalizado
        set_CURSOR(0x40);
        msg2LCD("---FINALIZADO---");

    }




}

