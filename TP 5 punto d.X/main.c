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
#include "teclado.h" //habilito la libreria del teclado   

unsigned char cont_mult; // contador para el multiplexado                                 
void multiplex(int); // defino una funcion de multiplexado
unsigned int ad_10bits(void); // funcion conversor A/D 10bits 

/*variables globales ********************************************************/
void main(void) {
    unsigned int AD_VALUE; // variable que guarda el dato del conversor A/D
    unsigned char cont1 = 0; //variable que habilita la configuracion de valores
    unsigned int lim_sup, lim_inf; // variable que guarda los limites sup e inf
    unsigned int valor_tecla; // variable tipo int que guarda el dato de tecla()
    unsigned char desbloqueo; //desbloquea el muestreo de el conversor ad en pantalla
    unsigned int VTD, VTDaux; //variable que guarda la cuenta para que se corra en los Disp
    TIMER0_INI(); // funcion configura el timer 0
    INTCONbits.GIE = 1; // inicio las variables globales
    tecladoIni13(); // funcion queconfigura el teclado
    T0CONbits.TMR0ON = 1; // prendo el timer 0
    while (1) {
        AD_VALUE = ad_10bits; // inserto el valor del conversor a una variable
        valor_tecla = tecla(); // inserto el valor de el teclado en una variable
        if (valor_tecla != NO_TECLA) { //pregunto si el teclado esta pulsado
            if (valor_tecla == '+') { //pregunto si la tecla # esta pulsada
                VTD = 0;
            } else if (VTD < 1000) { // sino hago el desplazamiento de numeros
                VTD = ((VTD * 10) + valor_tecla);
            }
            if (valor_tecla == '*') { //pregunta si se presiono *
                cont1 = 1;
            }
            switch (cont1) { //si se presiono * comprar el conversor y Lim_SUP
                case 1:
                    VTDaux = VTD;
                    lim_sup = VTDaux;
                    VTDaux = 0;
                    if (valor_tecla == '*') {
                        cont1 = 2;
                    }
                    break;
                case 2://si se volvio a presionar * comparar el conversor y Lim_inf
                    VTDaux = VTD;
                    lim_inf = VTDaux;
                    VTDaux = 0;
                    desbloqueo = 1;
                    break;
            }
        }
        if (AD_VALUE < lim_inf)LED1 = 0; //comparacion de el conversor y los limites
        if (AD_VALUE > lim_sup)LED2 = 1;
        if (desbloqueo == 1) { //si se desbloquea mostrar ADconverter
            multiplex(AD_VALUE);
        } else {
            multiplex(VTD); // sino muestro el dato del teclado en los displays
        }
    }
}

void __interrupt myISR(void) {
    if (TMR0IF) {
        TMR0L = 209;
        TMR0H = 0xFF;
        INTCONbits.TMR0IF = 0;
        cont_mult++; // contador del multiplex
        tic_teclado(); // contador del teclado 
    }
    if (RBIF) { //pregunto si salto la interrupcion de el teclado
        marca_tecla();
        RBIF = 0; // pongo en cero la interrupcion 


    }
}

void multiplex(int numero) { //funcion de multiplexado
    char umil = 0, centena = 0, decena = 0, uni = 0; //variables para la descomposicion de el numero
    char aux = 0; // variable auxiliar del multiplexado
    umil = numero / 1000;
    centena = (numero % 1000) / 100;
    decena = ((numero % 1000) % 100) / 10;
    uni = ((numero % 1000) % 100) % 10;
    if (cont_mult == 2) {
        DISP4 = 0;
        aux = LATA;
        aux = aux & 0xF0;
        aux = aux | umil;
        LATA = aux;
        DISP1 = 1;
    }
    if (cont_mult == 4) {
        DISP1 = 0;
        aux = LATA;
        aux = aux & 0xF0;
        aux = aux | centena;
        LATA = aux;
        DISP2 = 1;
    }
    if (cont_mult == 6) {
        DISP2 = 0;
        aux = LATA;
        aux = aux & 0xF0;
        aux = aux | decena;
        LATA = aux;
        DISP3 = 1;
    }
    if (cont_mult == 8) {
        DISP3 = 0;
        aux = LATA;
        aux = aux & 0xF0;
        aux = aux | uni;
        LATA = aux;
        DISP4 = 1;
        cont_mult = 0;
    }
}

unsigned int ad_10bits(void) { //funcion de conversor A/D
    unsigned char GuardoPorta, GuardoTrisa;
    unsigned int valor;

    GuardoPorta = PORTA;
    GuardoTrisa = TRISA;

    TRISAbits.RA0 = 1;
    ADCON1 = 0x0E;
    //canal 0 por defecto
    ADCON2 = 0xAD;
    ADCON0bits.ADON = 1;
    ADCON0bits.GO = 1;
    while (ADCON0bits.GO);

    ADCON0bits.ADON = 0;
    ADCON1 = 0x0F;
    LATA = GuardoPorta;
    TRISA = GuardoTrisa;
    valor = ((ADRESH << 8) + ADRESL);
    return valor;





}

