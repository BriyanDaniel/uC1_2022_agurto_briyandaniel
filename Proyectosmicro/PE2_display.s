;PRACTICA NUMERO 02
;NOMBRE: PE2_display
;FECHA:14/01/2023
;programa que permita mostrar los
;valores alfanum�ricos(0-9 y A-F) en un display de
;7 segmentos �nodo com�n, conectados al puerto
;D. Los valores a mostrar ser�n seleccionados por
;la siguiente condici�n:
;? Si el bot�n de la placa no esta presionado,
;se muestran los valores num�ricos del 0
;al 9.
;? Si el bot�n de la placa se mantiene
;presionado, se muestran los valores de A
;hasta F.
;Mostrar cada valor con un retardo de 1 segundo
;entre transici�n;
;AUTOR: BRIYAN DANIEL AGURTO QUIROGA

    
    
PROCESSOR 18F57Q84
#include "Bit_Config.inc" /config statements should precede project file includes./
#include <xc.inc>
#include "Retardos.inc"

    
PSECT resetVect,class=CODE,reloc=2
resetVect:
    goto Main
    
PSECT CODE
 
Main:
    CALL Config_OSC,1
    CALL Button
    CALL Display
    CALL Loop
    NOP
Loop:
    BTFSS PORTA,3,1
    goto Letras
 Numeros:
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BSF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BSF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BSF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BSF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BSF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BSF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    goto Loop
 Letras:
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BSF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BSF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BSF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BSF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF
    LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BSF TRISD,2,0
    BSF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BSF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,1
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    goto Loop
    
Button:
    BANKSEL PORTA
    CLRF PORTA,1
    CLRF ANSELA,1
    BSF TRISA,3,1
    BSF LATA,3,1
    BSF WPUA,3,1
    RETURN
     
Config_OSC:
    BANKSEL OSCCON1
    MOVLW 0x60
    MOVWF OSCCON1,1
    MOVLW 0x02
    MOVWF OSCFRQ,1
    RETURN
    
    
Display:
    BANKSEL PORTD
    CLRF PORTD,0
    CLRF ANSELD,0
    RETURN
    
    END resetVect


