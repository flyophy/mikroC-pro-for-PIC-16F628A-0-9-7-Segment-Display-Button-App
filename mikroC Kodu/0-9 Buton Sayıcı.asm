
_main:

;0-9 Buton Sayýcý.c,3 :: 		void main()
;0-9 Buton Sayýcý.c,5 :: 		trisb=0;
	CLRF       TRISB+0
;0-9 Buton Sayýcý.c,6 :: 		portb=dizi[0];
	MOVF       _dizi+0, 0
	MOVWF      PORTB+0
;0-9 Buton Sayýcý.c,7 :: 		trisa.f0=1;
	BSF        TRISA+0, 0
;0-9 Buton Sayýcý.c,8 :: 		trisa.f1=1;
	BSF        TRISA+0, 1
;0-9 Buton Sayýcý.c,9 :: 		CMCON=7;
	MOVLW      7
	MOVWF      CMCON+0
;0-9 Buton Sayýcý.c,10 :: 		while(1)
L_main0:
;0-9 Buton Sayýcý.c,12 :: 		if(porta.f0==0)
	BTFSC      PORTA+0, 0
	GOTO       L_main2
;0-9 Buton Sayýcý.c,14 :: 		if(i<9)
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      9
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;0-9 Buton Sayýcý.c,16 :: 		i++;
	INCF       _i+0, 1
;0-9 Buton Sayýcý.c,17 :: 		portb=dizi[i];
	MOVF       _i+0, 0
	ADDLW      _dizi+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;0-9 Buton Sayýcý.c,18 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;0-9 Buton Sayýcý.c,19 :: 		}
L_main3:
;0-9 Buton Sayýcý.c,20 :: 		}
L_main2:
;0-9 Buton Sayýcý.c,21 :: 		if(porta.f1==0)
	BTFSC      PORTA+0, 1
	GOTO       L_main5
;0-9 Buton Sayýcý.c,23 :: 		if(i==10)i=9;
	MOVF       _i+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_main6
	MOVLW      9
	MOVWF      _i+0
L_main6:
;0-9 Buton Sayýcý.c,24 :: 		i--;
	DECF       _i+0, 1
;0-9 Buton Sayýcý.c,25 :: 		if(i<0)i=0;
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main7
	CLRF       _i+0
L_main7:
;0-9 Buton Sayýcý.c,26 :: 		portb=dizi[i];
	MOVF       _i+0, 0
	ADDLW      _dizi+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;0-9 Buton Sayýcý.c,27 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
;0-9 Buton Sayýcý.c,28 :: 		}
L_main5:
;0-9 Buton Sayýcý.c,29 :: 		}
	GOTO       L_main0
;0-9 Buton Sayýcý.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
