opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 52243"

opt pagewidth 120

	opt lm

	processor	18F4550
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 65 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 141 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 214 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 239 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRM equ 0F66h ;# 
# 245 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRML equ 0F66h ;# 
# 322 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 361 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UIR equ 0F68h ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UIE equ 0F69h ;# 
# 471 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 521 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 571 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 630 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 680 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 824 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 955 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1086 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1217 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1348 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1479 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1610 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1741 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1872 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1959 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2220 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2307 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2394 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2724 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2833 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2986 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTD equ 0F83h ;# 
# 3106 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTE equ 0F84h ;# 
# 3357 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATA equ 0F89h ;# 
# 3492 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3624 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3739 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3871 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3973 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3978 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRA equ 0F92h ;# 
# 4170 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISB equ 0F93h ;# 
# 4175 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRB equ 0F93h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISC equ 0F94h ;# 
# 4396 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4562 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4567 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4783 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4788 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4884 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4942 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 5030 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 5118 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 5206 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5276 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5346 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5416 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5487 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5493 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5499 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5504 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5656 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5924 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5930 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5935 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5941 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5946 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5958 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 6080 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 6092 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 6098 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6193 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6277 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6282 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6438 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6443 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6754 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6817 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6823 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6829 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6835 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6840 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6996 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 7002 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 7008 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 7014 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 7084 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7174 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7296 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7302 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7308 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7314 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7375 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7444 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7710 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7716 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7722 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7819 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7824 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7830 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7836 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7940 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7946 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7958 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCON equ 0FD0h ;# 
# 8106 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8138 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8402 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8484 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8553 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8559 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8565 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8571 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8649 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8655 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8661 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8667 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8673 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8679 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8685 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8691 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8697 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8709 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8715 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8721 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8727 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8733 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8739 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8745 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8751 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8757 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8763 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8769 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8775 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8781 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8787 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8793 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8799 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8805 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8896 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8972 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9108 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PROD equ 0FF3h ;# 
# 9114 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9120 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9126 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9134 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9140 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9146 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9152 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9160 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9167 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PC equ 0FF9h ;# 
# 9173 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCL equ 0FF9h ;# 
# 9179 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9185 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9191 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9266 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOS equ 0FFDh ;# 
# 9272 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9278 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9284 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 65 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 141 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 214 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 239 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRM equ 0F66h ;# 
# 245 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRML equ 0F66h ;# 
# 322 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 361 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UIR equ 0F68h ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UIE equ 0F69h ;# 
# 471 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 521 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 571 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 630 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 680 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 824 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 955 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1086 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1217 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1348 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1479 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1610 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1741 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1872 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1959 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2220 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2307 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2394 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2724 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2833 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2986 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTD equ 0F83h ;# 
# 3106 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTE equ 0F84h ;# 
# 3357 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATA equ 0F89h ;# 
# 3492 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3624 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3739 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3871 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3973 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3978 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRA equ 0F92h ;# 
# 4170 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISB equ 0F93h ;# 
# 4175 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRB equ 0F93h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISC equ 0F94h ;# 
# 4396 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4562 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4567 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4783 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4788 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4884 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4942 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 5030 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 5118 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 5206 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5276 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5346 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5416 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5487 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5493 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5499 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5504 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5656 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5924 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5930 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5935 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5941 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5946 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5958 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 6080 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 6092 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 6098 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6193 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6277 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6282 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6438 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6443 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6754 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6817 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6823 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6829 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6835 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6840 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6996 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 7002 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 7008 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 7014 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 7084 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7174 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7296 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7302 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7308 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7314 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7375 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7444 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7710 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7716 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7722 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7819 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7824 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7830 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7836 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7940 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7946 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7958 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCON equ 0FD0h ;# 
# 8106 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8138 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8402 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8484 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8553 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8559 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8565 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8571 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8649 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8655 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8661 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8667 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8673 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8679 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8685 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8691 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8697 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8709 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8715 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8721 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8727 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8733 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8739 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8745 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8751 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8757 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8763 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8769 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8775 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8781 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8787 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8793 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8799 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8805 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8896 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8972 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9108 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PROD equ 0FF3h ;# 
# 9114 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9120 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9126 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9134 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9140 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9146 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9152 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9160 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9167 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PC equ 0FF9h ;# 
# 9173 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCL equ 0FF9h ;# 
# 9179 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9185 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9191 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9266 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOS equ 0FFDh ;# 
# 9272 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9278 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9284 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 65 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 141 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 214 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 239 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRM equ 0F66h ;# 
# 245 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRML equ 0F66h ;# 
# 322 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 361 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UIR equ 0F68h ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UIE equ 0F69h ;# 
# 471 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 521 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 571 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 630 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 680 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 824 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 955 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1086 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1217 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1348 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1479 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1610 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1741 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1872 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1959 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2220 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2307 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2394 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2724 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2833 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2986 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTD equ 0F83h ;# 
# 3106 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTE equ 0F84h ;# 
# 3357 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATA equ 0F89h ;# 
# 3492 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3624 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3739 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3871 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3973 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3978 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRA equ 0F92h ;# 
# 4170 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISB equ 0F93h ;# 
# 4175 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRB equ 0F93h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISC equ 0F94h ;# 
# 4396 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4562 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4567 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4783 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4788 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4884 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4942 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 5030 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 5118 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 5206 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5276 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5346 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5416 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5487 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5493 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5499 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5504 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5656 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5924 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5930 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5935 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5941 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5946 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5958 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 6080 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 6092 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 6098 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6193 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6277 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6282 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6438 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6443 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6754 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6817 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6823 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6829 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6835 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6840 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6996 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 7002 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 7008 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 7014 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 7084 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7174 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7296 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7302 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7308 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7314 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7375 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7444 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7710 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7716 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7722 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7819 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7824 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7830 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7836 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7940 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7946 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7958 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCON equ 0FD0h ;# 
# 8106 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8138 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8402 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8484 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8553 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8559 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8565 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8571 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8649 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8655 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8661 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8667 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8673 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8679 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8685 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8691 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8697 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8709 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8715 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8721 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8727 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8733 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8739 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8745 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8751 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8757 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8763 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8769 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8775 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8781 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8787 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8793 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8799 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8805 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8896 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8972 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9108 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PROD equ 0FF3h ;# 
# 9114 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9120 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9126 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9134 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9140 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9146 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9152 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9160 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9167 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PC equ 0FF9h ;# 
# 9173 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCL equ 0FF9h ;# 
# 9179 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9185 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9191 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9266 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOS equ 0FFDh ;# 
# 9272 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9278 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9284 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 65 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 141 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 214 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 239 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRM equ 0F66h ;# 
# 245 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRML equ 0F66h ;# 
# 322 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 361 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UIR equ 0F68h ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UIE equ 0F69h ;# 
# 471 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 521 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 571 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 630 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 680 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 824 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 955 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1086 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1217 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1348 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1479 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1610 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1741 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1872 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1959 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2220 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2307 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2394 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2481 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2568 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2724 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2833 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2986 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTD equ 0F83h ;# 
# 3106 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PORTE equ 0F84h ;# 
# 3357 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATA equ 0F89h ;# 
# 3492 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3624 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3739 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3871 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3973 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3978 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRA equ 0F92h ;# 
# 4170 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISB equ 0F93h ;# 
# 4175 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRB equ 0F93h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISC equ 0F94h ;# 
# 4396 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4562 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4567 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4783 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4788 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4884 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4942 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 5030 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 5118 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 5206 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5276 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5346 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5416 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5487 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5493 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5499 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5504 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5656 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5661 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5924 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5930 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5935 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5941 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5946 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5958 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 6080 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 6092 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 6098 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6193 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6277 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6282 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6438 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6443 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6575 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6754 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6817 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6823 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6829 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6835 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6840 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6996 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 7002 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 7008 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 7014 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 7084 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7174 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7296 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7302 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7308 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7314 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7375 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7444 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7710 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7716 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7722 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7819 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7824 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7830 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7836 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7940 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7946 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7958 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
RCON equ 0FD0h ;# 
# 8106 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8138 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8402 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8484 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8553 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8559 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8565 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8571 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8649 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8655 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8661 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8667 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8673 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8679 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8685 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8691 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8697 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8709 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8715 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8721 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8727 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8733 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8739 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8745 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8751 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8757 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8763 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8769 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8775 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8781 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8787 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8793 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8799 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8805 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8896 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8972 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9108 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PROD equ 0FF3h ;# 
# 9114 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9120 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9126 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9134 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9140 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9146 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9152 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9160 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9167 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PC equ 0FF9h ;# 
# 9173 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCL equ 0FF9h ;# 
# 9179 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9185 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9191 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9266 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOS equ 0FFDh ;# 
# 9272 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9278 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9284 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic18f4550.h"
TOSU equ 0FFFh ;# 
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
;;
;; C18 inline assembly external references (forward declarations)
;;
global UEIE, _UEIE
global UEIR, _UEIR
global UCON, _UCON
global UADDR, _UADDR
global UIE, _UIE
global UIR, _UIR
global TRISD, _TRISD
global LATD, _LATD
global ADCON1, _ADCON1
global YourHighPriorityISRCode, _YourHighPriorityISRCode
global YourLowPriorityISRCode, _YourLowPriorityISRCode
global USTAT, _USTAT
global UCFG, _UCFG
global UEP0, _UEP0
global UEP1, _UEP1
	FNCALL	_main,_InitializeSystem
	FNCALL	_main,_USBDeviceAttach
	FNCALL	_main,_ProcessIO
	FNCALL	_ProcessIO,_BlinkUSBStatus
	FNCALL	_ProcessIO,_putrsUSBUSART
	FNCALL	_ProcessIO,_getsUSBUSART
	FNCALL	_ProcessIO,_putUSBUSART
	FNCALL	_ProcessIO,_CDCTxService
	FNCALL	_CDCTxService,_USBTransferOnePacket
	FNCALL	_getsUSBUSART,_USBTransferOnePacket
	FNCALL	_InitializeSystem,_UserInit
	FNCALL	_InitializeSystem,_USBDeviceInit
	FNCALL	_USBDeviceInit,_memset
	FNROOT	_main
	FNCALL	_YourHighPriorityISRCode,_USBDeviceTasks
	FNCALL	_USBDeviceTasks,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBDeviceTasks,_USBWakeFromSuspend
	FNCALL	_USBDeviceTasks,_USBSuspend
	FNCALL	_USBDeviceTasks,_USBCtrlEPAllowStatusStage
	FNCALL	_USBDeviceTasks,_USBStallHandler
	FNCALL	_USBDeviceTasks,_USBCtrlEPService
	FNCALL	_USBDeviceTasks,i2_USBDeviceInit
	FNCALL	i2_USBDeviceInit,i2_memset
	FNCALL	_USBCtrlEPService,_USBCtrlTrfSetupHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfOutHandler
	FNCALL	_USBCtrlEPService,_USBCtrlTrfInHandler
	FNCALL	_USBCtrlTrfInHandler,_USBCtrlTrfTxService
	FNCALL	_USBCtrlTrfOutHandler,_USBCtrlTrfRxService
	FNCALL	_USBCtrlTrfRxService,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlTrfSetupHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCtrlTrfSetupHandler,_USBCtrlEPServiceComplete
	FNCALL	_USBCtrlTrfSetupHandler,_USBCheckStdRequest
	FNCALL	_USBCheckStdRequest,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBCheckStdRequest,_USBStdSetCfgHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetDscHandler
	FNCALL	_USBCheckStdRequest,_USBStdGetStatusHandler
	FNCALL	_USBCheckStdRequest,_USBStdFeatureReqHandler
	FNCALL	_USBStdFeatureReqHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBStdSetCfgHandler,i2_memset
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowStatusStage
	FNCALL	_USBCtrlEPServiceComplete,_USBCtrlEPAllowDataStage
	FNCALL	_USBCtrlEPAllowDataStage,_USBCtrlTrfTxService
	FNCALL	_USBSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USBWakeFromSuspend,_USER_USB_CALLBACK_EVENT_HANDLER
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCBSuspend
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCBWakeFromSuspend
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCB_SOF_Handler
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCBErrorHandler
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCBCheckOtherReq
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCBStdSetDscHandler
	FNCALL	_USER_USB_CALLBACK_EVENT_HANDLER,_USBCBInitEP
	FNCALL	_USBCBInitEP,_CDCInitEP
	FNCALL	_CDCInitEP,_USBEnableEndpoint
	FNCALL	_CDCInitEP,i2_USBTransferOnePacket
	FNCALL	_USBEnableEndpoint,_USBConfigureEndpoint
	FNCALL	_USBCBCheckOtherReq,_USBCheckCDCRequest
	FNCALL	intlevel2,_YourHighPriorityISRCode
	global	intlevel2
	FNROOT	intlevel2
	FNCALL	intlevel1,_YourLowPriorityISRCode
	global	intlevel1
	FNROOT	intlevel1
	global	_USB_SD_Ptr
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	file	"usb_descriptors.c"
	line	294
_USB_SD_Ptr:
	db	low((_sd000))
	db	high((_sd000))
	db	low highword((_sd000))
	db	low((_sd001))
	db	high((_sd001))
	db	low highword((_sd001))
	db	low((_sd002))
	db	high((_sd002))
	db	low highword((_sd002))
	global __end_of_USB_SD_Ptr
__end_of_USB_SD_Ptr:
	global	_USB_CD_Ptr
psect	smallconst
	file	"usb_descriptors.c"
	line	289
_USB_CD_Ptr:
	db	low((_configDescriptor1))
	db	high((_configDescriptor1))
	db	low highword((_configDescriptor1))
	global __end_of_USB_CD_Ptr
__end_of_USB_CD_Ptr:
	global	_configDescriptor1
psect	smallconst
	file	"usb_descriptors.c"
	line	185
_configDescriptor1:
	db	low(09h)
	db	low(02h)
	db	low(043h)
	db	low(0)
	db	low(02h)
	db	low(01h)
	db	low(0)
	db	low(0C0h)
	db	low(032h)
	db	low(09h)
	db	low(04h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(02h)
	db	low(02h)
	db	low(01h)
	db	low(0)
	db	low(05h)
	db	low(024h)
	db	low(0)
	db	low(010h)
	db	low(01h)
	db	low(04h)
	db	low(024h)
	db	low(02h)
	db	low(02h)
	db	low(05h)
	db	low(024h)
	db	low(06h)
	db	low(0)
	db	low(01h)
	db	low(05h)
	db	low(024h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(07h)
	db	low(05h)
	db	low(081h)
	db	low(03h)
	db	low(08h)
	db	low(0)
	db	low(02h)
	db	low(09h)
	db	low(04h)
	db	low(01h)
	db	low(0)
	db	low(02h)
	db	low(0Ah)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(02h)
	db	low(02h)
	db	low(040h)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(05h)
	db	low(082h)
	db	low(02h)
	db	low(040h)
	db	low(0)
	db	low(0)
	global __end_of_configDescriptor1
__end_of_configDescriptor1:
	global	_sd001
psect	smallconst
	file	"usb_descriptors.c"
	line	275
_sd001:
	db	low(034h)
	db	low(03h)
	dw	(04Dh)&0ffffh
	dw	(069h)&0ffffh
	dw	(063h)&0ffffh
	dw	(072h)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(063h)&0ffffh
	dw	(068h)&0ffffh
	dw	(069h)&0ffffh
	dw	(070h)&0ffffh
	dw	(020h)&0ffffh
	dw	(054h)&0ffffh
	dw	(065h)&0ffffh
	dw	(063h)&0ffffh
	dw	(068h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(067h)&0ffffh
	dw	(079h)&0ffffh
	dw	(020h)&0ffffh
	dw	(049h)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(063h)&0ffffh
	dw	(02Eh)&0ffffh
	global __end_of_sd001
__end_of_sd001:
	global	_sd002
psect	smallconst
	file	"usb_descriptors.c"
	line	282
_sd002:
	db	low(034h)
	db	low(03h)
	dw	(043h)&0ffffh
	dw	(044h)&0ffffh
	dw	(043h)&0ffffh
	dw	(020h)&0ffffh
	dw	(052h)&0ffffh
	dw	(053h)&0ffffh
	dw	(02Dh)&0ffffh
	dw	(032h)&0ffffh
	dw	(033h)&0ffffh
	dw	(032h)&0ffffh
	dw	(020h)&0ffffh
	dw	(045h)&0ffffh
	dw	(06Dh)&0ffffh
	dw	(075h)&0ffffh
	dw	(06Ch)&0ffffh
	dw	(061h)&0ffffh
	dw	(074h)&0ffffh
	dw	(069h)&0ffffh
	dw	(06Fh)&0ffffh
	dw	(06Eh)&0ffffh
	dw	(020h)&0ffffh
	dw	(044h)&0ffffh
	dw	(065h)&0ffffh
	dw	(06Dh)&0ffffh
	dw	(06Fh)&0ffffh
	global __end_of_sd002
__end_of_sd002:
	global	_device_dsc
psect	smallconst
	file	"usb_descriptors.c"
	line	166
_device_dsc:
	db	low(012h)
	db	low(01h)
	dw	(0200h)&0ffffh
	db	low(02h)
	db	low(0)
	db	low(0)
	db	low(08h)
	dw	(04D8h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0100h)&0ffffh
	db	low(01h)
	db	low(02h)
	db	low(0)
	db	low(01h)
	global __end_of_device_dsc
__end_of_device_dsc:
	global	_sd000
psect	smallconst
	file	"usb_descriptors.c"
	line	271
_sd000:
	db	low(04h)
	db	low(03h)
	dw	(0409h)&0ffffh
	global __end_of_sd000
__end_of_sd000:
	global	_AppVersion
global c18abssec_AppVersionAndSignatureSection
c18abssec_AppVersionAndSignatureSection equ 4118
psect	AppVersionAndSignatureSection,class=CONST,space=0,delta=1,reloc=2,noexec
global __pAppVersionAndSignatureSection
__pAppVersionAndSignatureSection:
	file	"main.c"
	line	370
	global	_AppVersion
_AppVersion:
	db	low(0)
	db	low(01h)
	global __end_of_AppVersion
__end_of_AppVersion:
	global	_SignaturePlaceholder
global c18abssec_AppSignatureSection
c18abssec_AppSignatureSection equ 4102
psect	AppSignatureSection,class=CONST,space=0,delta=1,reloc=2,noexec
global __pAppSignatureSection
__pAppSignatureSection:
	file	"main.c"
	line	372
	global	_SignaturePlaceholder
_SignaturePlaceholder:
	dw	(0FFFFh)&0ffffh
	global __end_of_SignaturePlaceholder
__end_of_SignaturePlaceholder:
	global	_USB_SD_Ptr
	global	_USB_CD_Ptr
	global	_configDescriptor1
	global	_sd001
	global	_sd002
	global	_device_dsc
	global	_sd000
	global	_AppVersion
	global	_SignaturePlaceholder
	global	_BaudRateGen
	global	BlinkUSBStatus@led_count
	global	USBCBSendResume@delay_count
	global	_pBDTEntryEP0OutCurrent
	global	_pBDTEntryEP0OutNext
	global	_pDst
	global	_BothEP0OutUOWNsSet
	global	_RemoteWakeup
	global	_USBDeferStatusStagePacket
	global	_USBStatusStageTimeoutCounter
	global	_buttonCount
	global	_controlTransferState
	global	_control_signal_bitmap
	global	_endpoint_number
	global	_shortPacketStatus
	global	_USBAlternateInterface
	global	_USBActiveConfiguration
	global	_USTATcopy
	global	_outPipes
	global	_pBDTEntryIn
	global	_pBDTEntryOut
	global	_ep_data_in
	global	_ep_data_out
	global	_pCDCDst
	global	_pCDCSrc
	global	_CDCDataInHandle
	global	_CDCDataOutHandle
	global	_USBBusIsSuspended
	global	_USBDeferINDataStagePackets
	global	_USBDeferOUTDataStagePackets
	global	_USBDeviceState
	global	_USBStatusStageEnabledFlag1
	global	_USBStatusStageEnabledFlag2
	global	_buttonPressed
	global	_cdc_mem_type
	global	_cdc_rx_len
	global	_cdc_trf_state
	global	_cdc_tx_len
	global	_USB_Out_Buffer
	global	_dummy_encapsulated_cmd_response
	global	_inPipes
	global	_USB_In_Buffer
	global	_BDT
	global	_SetupPkt
	global	_CtrlTrfData
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_IPR2bits
_IPR2bits	set	0xFA2
	global	_LATD
_LATD	set	0xF8C
	global	_LATDbits
_LATDbits	set	0xF8C
	global	_PIE2bits
_PIE2bits	set	0xFA0
	global	_PIR2bits
_PIR2bits	set	0xFA1
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISD
_TRISD	set	0xF95
	global	_UADDR
_UADDR	set	0xF6E
	global	_UCFG
_UCFG	set	0xF6F
	global	_UCON
_UCON	set	0xF6D
	global	_UCONbits
_UCONbits	set	0xF6D
	global	_UEIE
_UEIE	set	0xF6B
	global	_UEIR
_UEIR	set	0xF6A
	global	_UEP0bits
_UEP0bits	set	0xF70
	global	_UIE
_UIE	set	0xF69
	global	_UIEbits
_UIEbits	set	0xF69
	global	_UIR
_UIR	set	0xF68
	global	_UIRbits
_UIRbits	set	0xF68
	global	_USTAT
_USTAT	set	0xF6C
	global	_cdc_data_tx
	global	_cdc_data_tx
_cdc_data_tx  equ     1280
	global	_cdc_data_rx
	global	_cdc_data_rx
_cdc_data_rx  equ     1344
	global	_line_coding
	global	_line_coding
_line_coding  equ     1408
	global	_UEP0
_UEP0	set	0xF70
	global	_UEP1
_UEP1	set	0xF71
	global	c18abssec_USB_VARIABLES
	global	c18abssec_USB_VARIABLES
c18abssec_USB_VARIABLES  equ     1280
	global	c18abssec_USB_BDT
	global	c18abssec_USB_BDT
c18abssec_USB_BDT  equ     1024
	global	_stringPrinted
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
	global	_stringPrinted
_stringPrinted:
       ds      1
psect	smallconst
	global __stringdata
__stringdata:
	
STR_1:; BSR set to: 0

	db	66	;'B'
	db	117	;'u'
	db	116	;'t'
	db	116	;'t'
	db	111	;'o'
	db	110	;'n'
	db	32
	db	80	;'P'
	db	114	;'r'
	db	101	;'e'
	db	115	;'s'
	db	115	;'s'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	45
	db	45
	db	32
	db	13
	db	10
	db	0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_CPUDIV$OSC1_PLL2
__CFG_CPUDIV$OSC1_PLL2 equ 0x0
global __CFG_PLLDIV$5
__CFG_PLLDIV$5 equ 0x0
global __CFG_USBDIV$2
__CFG_USBDIV$2 equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$HSPLL_HS
__CFG_FOSC$HSPLL_HS equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_VREGEN$ON
__CFG_VREGEN$ON equ 0x0
global __CFG_BOR$ON
__CFG_BOR$ON equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"USB Device - CDC - Basic Demo -  C18 - PICDEM FSUSB.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	USB_BDT,class=ABS1,space=1,delta=1,noexec
global __pUSB_BDT
__pUSB_BDT:
	global	_BDT
_BDT:
       ds      48
	global	_SetupPkt
_SetupPkt:
       ds      8
	global	_CtrlTrfData
_CtrlTrfData:
       ds      8
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_BaudRateGen
	global	_BaudRateGen
_BaudRateGen:
       ds      4
BlinkUSBStatus@led_count:
       ds      2
USBCBSendResume@delay_count:
       ds      2
	global	_pBDTEntryEP0OutCurrent
_pBDTEntryEP0OutCurrent:
       ds      2
	global	_pBDTEntryEP0OutNext
_pBDTEntryEP0OutNext:
       ds      2
	global	_pDst
_pDst:
       ds      2
	global	_BothEP0OutUOWNsSet
_BothEP0OutUOWNsSet:
       ds      1
	global	_RemoteWakeup
_RemoteWakeup:
       ds      1
	global	_USBDeferStatusStagePacket
_USBDeferStatusStagePacket:
       ds      1
	global	_USBStatusStageTimeoutCounter
_USBStatusStageTimeoutCounter:
       ds      1
	global	_buttonCount
_buttonCount:
       ds      1
	global	_controlTransferState
_controlTransferState:
       ds      1
	global	_control_signal_bitmap
_control_signal_bitmap:
       ds      1
	global	_endpoint_number
_endpoint_number:
       ds      1
	global	_shortPacketStatus
_shortPacketStatus:
       ds      1
	global	_USBAlternateInterface
_USBAlternateInterface:
       ds      2
	global	_USBActiveConfiguration
_USBActiveConfiguration:
       ds      1
	global	_USTATcopy
_USTATcopy:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_outPipes
_outPipes:
       ds      9
	global	_pBDTEntryIn
_pBDTEntryIn:
       ds      6
	global	_pBDTEntryOut
_pBDTEntryOut:
       ds      6
	global	_ep_data_in
_ep_data_in:
       ds      3
	global	_ep_data_out
_ep_data_out:
       ds      3
	global	_pCDCDst
_pCDCDst:
       ds      3
	global	_pCDCSrc
_pCDCSrc:
       ds      3
	global	_CDCDataInHandle
_CDCDataInHandle:
       ds      2
	global	_CDCDataOutHandle
_CDCDataOutHandle:
       ds      2
	global	_USBBusIsSuspended
_USBBusIsSuspended:
       ds      1
	global	_USBDeferINDataStagePackets
_USBDeferINDataStagePackets:
       ds      1
	global	_USBDeferOUTDataStagePackets
_USBDeferOUTDataStagePackets:
       ds      1
	global	_USBDeviceState
_USBDeviceState:
       ds      1
	global	_USBStatusStageEnabledFlag1
_USBStatusStageEnabledFlag1:
       ds      1
	global	_USBStatusStageEnabledFlag2
_USBStatusStageEnabledFlag2:
       ds      1
	global	_buttonPressed
_buttonPressed:
       ds      1
	global	_cdc_mem_type
_cdc_mem_type:
       ds      1
	global	_cdc_rx_len
_cdc_rx_len:
       ds      1
	global	_cdc_trf_state
_cdc_trf_state:
       ds      1
	global	_cdc_tx_len
_cdc_tx_len:
       ds      1
	global	_USB_Out_Buffer
_USB_Out_Buffer:
       ds      64
	global	_dummy_encapsulated_cmd_response
_dummy_encapsulated_cmd_response:
       ds      8
	global	_inPipes
_inPipes:
       ds      6
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_USB_In_Buffer
_USB_In_Buffer:
       ds      64
psect	cinit
; Clear objects allocated to C18 Section: USB_BDT (64 bytes)
	global __pUSB_BDT
lfsr	0,__pUSB_BDT
movlw	64
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to C18 Section: USB_VARIABLES (135 bytes)
	global __pUSB_VARIABLES
lfsr	0,__pUSB_VARIABLES
movlw	135
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK1 (64 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	64
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to BANK0 (126 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	126
clear_3:
clrf	postinc0,c
decf	wreg
bnz	clear_3
; Clear objects allocated to COMRAM (27 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	27
clear_4:
clrf	postinc0,c
decf	wreg
bnz	clear_4
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
goto _main	;jump to C main() function
psect	cstackconfig,class=config,space=0,noexec
global __pcstackconfig
__pcstackconfig:
??_USBCheckCDCRequest:	; 0 bytes @ 0x0
??_USBCtrlEPAllowStatusStage:	; 0 bytes @ 0x0
??_USBStallHandler:	; 0 bytes @ 0x0
??_USBConfigureEndpoint:	; 0 bytes @ 0x0
??_USBCtrlTrfTxService:	; 0 bytes @ 0x0
?_YourHighPriorityISRCode:	; 0 bytes @ 0x0
?_YourLowPriorityISRCode:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_USBCBSuspend:	; 0 bytes @ 0x0
??_USBCBSuspend:	; 0 bytes @ 0x0
?_USBCBWakeFromSuspend:	; 0 bytes @ 0x0
??_USBCBWakeFromSuspend:	; 0 bytes @ 0x0
?_USBCB_SOF_Handler:	; 0 bytes @ 0x0
??_USBCB_SOF_Handler:	; 0 bytes @ 0x0
?_USBCBErrorHandler:	; 0 bytes @ 0x0
??_USBCBErrorHandler:	; 0 bytes @ 0x0
?_USBCBCheckOtherReq:	; 0 bytes @ 0x0
?_USBCBStdSetDscHandler:	; 0 bytes @ 0x0
??_USBCBStdSetDscHandler:	; 0 bytes @ 0x0
?_USBCBInitEP:	; 0 bytes @ 0x0
?_USBCtrlEPAllowDataStage:	; 0 bytes @ 0x0
?_USBCtrlEPServiceComplete:	; 0 bytes @ 0x0
?_USBCtrlTrfRxService:	; 0 bytes @ 0x0
??_USBCtrlTrfRxService:	; 0 bytes @ 0x0
?_USBStdSetCfgHandler:	; 0 bytes @ 0x0
?_USBStdGetDscHandler:	; 0 bytes @ 0x0
??_USBStdGetDscHandler:	; 0 bytes @ 0x0
?_USBStdGetStatusHandler:	; 0 bytes @ 0x0
??_USBStdGetStatusHandler:	; 0 bytes @ 0x0
?i2_USBDeviceInit:	; 0 bytes @ 0x0
??i2_USBTransferOnePacket:	; 0 bytes @ 0x0
??i2_memset:	; 0 bytes @ 0x0
	global	i2USBTransferOnePacket@handle
i2USBTransferOnePacket@handle:	; 2 bytes @ 0x0
	global	i2memset@p
i2memset@p:	; 2 bytes @ 0x0
	ds   1
??_USBCBCheckOtherReq:	; 0 bytes @ 0x1
	global	USBStdGetStatusHandler@p
USBStdGetStatusHandler@p:	; 2 bytes @ 0x1
	ds   1
??i2_USBDeviceInit:	; 0 bytes @ 0x2
	global	USBCtrlTrfTxService@byteToSend
USBCtrlTrfTxService@byteToSend:	; 1 bytes @ 0x2
	global	USBCtrlTrfRxService@i
USBCtrlTrfRxService@i:	; 1 bytes @ 0x2
	ds   1
??_USBCtrlTrfInHandler:	; 0 bytes @ 0x3
??_USBCtrlEPAllowDataStage:	; 0 bytes @ 0x3
??_USBCtrlEPServiceComplete:	; 0 bytes @ 0x3
	global	USBCtrlTrfRxService@byteToRead
USBCtrlTrfRxService@byteToRead:	; 1 bytes @ 0x3
	global	USBCtrlTrfInHandler@lastDTS
USBCtrlTrfInHandler@lastDTS:	; 1 bytes @ 0x3
	global	i2USBDeviceInit@i
i2USBDeviceInit@i:	; 1 bytes @ 0x3
	ds   1
??_USBCtrlTrfOutHandler:	; 0 bytes @ 0x4
	ds   2
	global	USBConfigureEndpoint@handle
USBConfigureEndpoint@handle:	; 2 bytes @ 0x6
	ds   2
??_USBEnableEndpoint:	; 0 bytes @ 0x8
	ds   2
	global	USBEnableEndpoint@p
USBEnableEndpoint@p:	; 2 bytes @ 0xA
	ds   2
??_USBCBInitEP:	; 0 bytes @ 0xC
??_USER_USB_CALLBACK_EVENT_HANDLER:	; 0 bytes @ 0xC
	ds   2
??_USBWakeFromSuspend:	; 0 bytes @ 0xE
??_USBSuspend:	; 0 bytes @ 0xE
??_USBCtrlTrfSetupHandler:	; 0 bytes @ 0xE
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_putrsUSBUSART:	; 0 bytes @ 0x0
	global	?_memset
?_memset:	; 2 bytes @ 0x0
	global	USBTransferOnePacket@handle
USBTransferOnePacket@handle:	; 2 bytes @ 0x0
	global	memset@p1
memset@p1:	; 2 bytes @ 0x0
	ds   2
??_CDCTxService:	; 0 bytes @ 0x2
	global	?_getsUSBUSART
?_getsUSBUSART:	; 1 bytes @ 0x2
	global	getsUSBUSART@buffer
getsUSBUSART@buffer:	; 2 bytes @ 0x2
	global	memset@c
memset@c:	; 2 bytes @ 0x2
	ds   1
	global	putrsUSBUSART@pData
putrsUSBUSART@pData:	; 3 bytes @ 0x3
	ds   1
	global	getsUSBUSART@len
getsUSBUSART@len:	; 1 bytes @ 0x4
	global	memset@n
memset@n:	; 2 bytes @ 0x4
	ds   1
??_getsUSBUSART:	; 0 bytes @ 0x5
	global	_CDCTxService$1523
_CDCTxService$1523:	; 2 bytes @ 0x5
	ds   1
	global	putrsUSBUSART@len
putrsUSBUSART@len:	; 1 bytes @ 0x6
	ds   1
	global	CDCTxService@i
CDCTxService@i:	; 1 bytes @ 0x7
	ds   1
	global	CDCTxService@byte_to_send
CDCTxService@byte_to_send:	; 1 bytes @ 0x8
	global	_getsUSBUSART$1475
_getsUSBUSART$1475:	; 2 bytes @ 0x8
	ds   2
??_ProcessIO:	; 0 bytes @ 0xA
	ds   1
	global	ProcessIO@numBytesRead
ProcessIO@numBytesRead:	; 1 bytes @ 0xB
	ds   1
	global	ProcessIO@i
ProcessIO@i:	; 1 bytes @ 0xC
	ds   1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_YourHighPriorityISRCode:	; 0 bytes @ 0x0
	ds   14
??_USBDeviceAttach:	; 0 bytes @ 0xE
??_UserInit:	; 0 bytes @ 0xE
??_BlinkUSBStatus:	; 0 bytes @ 0xE
	global	?_putrsUSBUSART
?_putrsUSBUSART:	; 0 bytes @ 0xE
	global	?_putUSBUSART
?_putUSBUSART:	; 0 bytes @ 0xE
??_memset:	; 0 bytes @ 0xE
	global	?_USBTransferOnePacket
?_USBTransferOnePacket:	; 2 bytes @ 0xE
	global	USBTransferOnePacket@ep
USBTransferOnePacket@ep:	; 1 bytes @ 0xE
	global	putUSBUSART@data
putUSBUSART@data:	; 2 bytes @ 0xE
	global	memset@p
memset@p:	; 2 bytes @ 0xE
	global	putrsUSBUSART@data
putrsUSBUSART@data:	; 3 bytes @ 0xE
	ds   1
	global	USBTransferOnePacket@dir
USBTransferOnePacket@dir:	; 1 bytes @ 0xF
	ds   1
??_USBDeviceInit:	; 0 bytes @ 0x10
	global	putUSBUSART@length
putUSBUSART@length:	; 1 bytes @ 0x10
	global	USBTransferOnePacket@data
USBTransferOnePacket@data:	; 2 bytes @ 0x10
	ds   1
??_putUSBUSART:	; 0 bytes @ 0x11
	global	USBDeviceInit@i
USBDeviceInit@i:	; 1 bytes @ 0x11
	ds   1
??_InitializeSystem:	; 0 bytes @ 0x12
	global	USBTransferOnePacket@len
USBTransferOnePacket@len:	; 1 bytes @ 0x12
	ds   1
??_USBTransferOnePacket:	; 0 bytes @ 0x13
??_main:	; 0 bytes @ 0x13
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_USBDeviceTasks:	; 0 bytes @ 0x0
?_InitializeSystem:	; 0 bytes @ 0x0
?_USBDeviceAttach:	; 0 bytes @ 0x0
?_ProcessIO:	; 0 bytes @ 0x0
?_UserInit:	; 0 bytes @ 0x0
?_USBDeviceInit:	; 0 bytes @ 0x0
?_BlinkUSBStatus:	; 0 bytes @ 0x0
?_CDCTxService:	; 0 bytes @ 0x0
?_USBCheckCDCRequest:	; 0 bytes @ 0x0
?_CDCInitEP:	; 0 bytes @ 0x0
?_USBWakeFromSuspend:	; 0 bytes @ 0x0
?_USBSuspend:	; 0 bytes @ 0x0
?_USBCtrlEPAllowStatusStage:	; 0 bytes @ 0x0
?_USBStallHandler:	; 0 bytes @ 0x0
?_USBCtrlEPService:	; 0 bytes @ 0x0
?_USBCtrlTrfTxService:	; 0 bytes @ 0x0
?_USBCtrlTrfSetupHandler:	; 0 bytes @ 0x0
?_USBCtrlTrfOutHandler:	; 0 bytes @ 0x0
?_USBCtrlTrfInHandler:	; 0 bytes @ 0x0
?_USBCheckStdRequest:	; 0 bytes @ 0x0
?_USBStdFeatureReqHandler:	; 0 bytes @ 0x0
??_YourLowPriorityISRCode:	; 0 bytes @ 0x0
	ds   17
	global	?_USBConfigureEndpoint
?_USBConfigureEndpoint:	; 0 bytes @ 0x11
	global	?i2_USBTransferOnePacket
?i2_USBTransferOnePacket:	; 2 bytes @ 0x11
	global	?i2_memset
?i2_memset:	; 2 bytes @ 0x11
	global	USBConfigureEndpoint@EPNum
USBConfigureEndpoint@EPNum:	; 1 bytes @ 0x11
	global	i2USBTransferOnePacket@ep
i2USBTransferOnePacket@ep:	; 1 bytes @ 0x11
	global	i2memset@p1
i2memset@p1:	; 2 bytes @ 0x11
	ds   1
	global	USBConfigureEndpoint@direction
USBConfigureEndpoint@direction:	; 1 bytes @ 0x12
	global	i2USBTransferOnePacket@dir
i2USBTransferOnePacket@dir:	; 1 bytes @ 0x12
	ds   1
	global	?_USBEnableEndpoint
?_USBEnableEndpoint:	; 0 bytes @ 0x13
	global	USBEnableEndpoint@ep
USBEnableEndpoint@ep:	; 1 bytes @ 0x13
	global	i2USBTransferOnePacket@data
i2USBTransferOnePacket@data:	; 2 bytes @ 0x13
	global	i2memset@c
i2memset@c:	; 2 bytes @ 0x13
	ds   1
	global	USBEnableEndpoint@options
USBEnableEndpoint@options:	; 1 bytes @ 0x14
	ds   1
	global	i2USBTransferOnePacket@len
i2USBTransferOnePacket@len:	; 1 bytes @ 0x15
	global	i2memset@n
i2memset@n:	; 2 bytes @ 0x15
	ds   1
??_CDCInitEP:	; 0 bytes @ 0x16
	ds   3
	global	?_USER_USB_CALLBACK_EVENT_HANDLER
?_USER_USB_CALLBACK_EVENT_HANDLER:	; 1 bytes @ 0x19
	global	USER_USB_CALLBACK_EVENT_HANDLER@event
USER_USB_CALLBACK_EVENT_HANDLER@event:	; 2 bytes @ 0x19
	ds   2
USER_USB_CALLBACK_EVENT_HANDLER@pdata:	; 2 bytes @ 0x1B
	ds   2
USER_USB_CALLBACK_EVENT_HANDLER@size:	; 2 bytes @ 0x1D
	ds   2
??_USBStdFeatureReqHandler:	; 0 bytes @ 0x1F
??_USBStdSetCfgHandler:	; 0 bytes @ 0x1F
	ds   1
	global	USBStdSetCfgHandler@i
USBStdSetCfgHandler@i:	; 1 bytes @ 0x20
	ds   2
	global	USBStdFeatureReqHandler@pUEP
USBStdFeatureReqHandler@pUEP:	; 2 bytes @ 0x22
	ds   2
	global	USBStdFeatureReqHandler@current_ep_data
USBStdFeatureReqHandler@current_ep_data:	; 1 bytes @ 0x24
	ds   1
	global	USBStdFeatureReqHandler@p
USBStdFeatureReqHandler@p:	; 2 bytes @ 0x25
	ds   2
??_USBCheckStdRequest:	; 0 bytes @ 0x27
	ds   2
??_USBCtrlEPService:	; 0 bytes @ 0x29
	ds   2
	global	USBCtrlEPService@setup_cnt
USBCtrlEPService@setup_cnt:	; 1 bytes @ 0x2B
	ds   1
??_USBDeviceTasks:	; 0 bytes @ 0x2C
	ds   2
	global	USBDeviceTasks@i
USBDeviceTasks@i:	; 1 bytes @ 0x2E
	ds   1
;!
;!Data Sizes:
;!    Strings     21
;!    Constant    209
;!    Data        0
;!    BSS         281
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    config           14     14      14
;!    COMRAM           95     47      74
;!    BANK0           160     19     146
;!    BANK1           256     13      77
;!    BANK2           256      0       0
;!    BANK3           256      0       0

;!
;!Pointer List with Targets:
;!
;!    USER_USB_CALLBACK_EVENT_HANDLER@pdata	PTR void  size(2) Largest target is 48
;!		 -> USTATcopy(COMRAM[1]), USBActiveConfiguration(COMRAM[1]), BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    ?_memset	PTR void  size(2) Largest target is 48
;!		 -> USBAlternateInterface(COMRAM[2]), BDT(USB_BDT_ABS[48]), UEP1(DATA[1]), 
;!
;!    ?_USBTransferOnePacket	PTR void  size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    memset@p1	PTR void  size(2) Largest target is 48
;!		 -> USBAlternateInterface(COMRAM[2]), BDT(USB_BDT_ABS[48]), UEP1(DATA[1]), 
;!
;!    memset@p	PTR char  size(2) Largest target is 48
;!		 -> USBAlternateInterface(COMRAM[2]), BDT(USB_BDT_ABS[48]), UEP1(DATA[1]), 
;!
;!    USBStdFeatureReqHandler@pUEP	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(DATA[1]), 
;!
;!    USBStdFeatureReqHandler@p	PTR struct __BDT size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    USBStdGetStatusHandler@p	PTR struct __BDT size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    pDst	PTR volatile unsigned char  size(2) Largest target is 8
;!		 -> CtrlTrfData(USB_BDT_ABS[8]), NULL(NULL[0]), 
;!
;!    USBConfigureEndpoint@handle	PTR volatile struct __BDT size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), 
;!
;!    pBDTEntryEP0OutCurrent	PTR volatile struct __BDT size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    pBDTEntryEP0OutNext	PTR volatile struct __BDT size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    USBTransferOnePacket@data	PTR unsigned char  size(2) Largest target is 64
;!		 -> cdc_data_tx(DATA[64]), NULL(NULL[0]), cdc_data_rx(DATA[64]), 
;!
;!    USBTransferOnePacket@handle	PTR volatile struct __BDT size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    USBEnableEndpoint@p	PTR unsigned char  size(2) Largest target is 1
;!		 -> UEP0(DATA[1]), 
;!
;!    pBDTEntryOut	PTR volatile struct __BDT[3] size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    pBDTEntryIn	PTR volatile struct __BDT[3] size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    sp__memset	PTR void  size(2) Largest target is 48
;!		 -> USBAlternateInterface(COMRAM[2]), BDT(USB_BDT_ABS[48]), UEP1(DATA[1]), 
;!
;!    putrsUSBUSART@data	PTR Q_02000000  char  size(3) Largest target is 21
;!		 -> STR_1(CODE[21]), 
;!
;!    putrsUSBUSART@pData	PTR Q_02000000  char  size(3) Largest target is 21
;!		 -> STR_1(CODE[21]), 
;!
;!    putUSBUSART@data	PTR char  size(2) Largest target is 64
;!		 -> USB_In_Buffer(BANK1[64]), 
;!
;!    getsUSBUSART@buffer	PTR char  size(2) Largest target is 64
;!		 -> USB_Out_Buffer(BANK0[64]), 
;!
;!    CDCDataInHandle	PTR void  size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    sp__USBTransferOnePacket	PTR void  size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    CDCDataOutHandle	PTR void  size(2) Largest target is 48
;!		 -> BDT(USB_BDT_ABS[48]), NULL(NULL[0]), 
;!
;!    S909$pFunc	PTR FTN()void  size(3) Largest target is 0
;!		 -> Absolute function(), 
;!
;!    outPipes.pFunc	PTR FTN()void  size(3) Largest target is 0
;!		 -> Absolute function(), 
;!
;!    S899$wRam	PTR unsigned short  size(2) Largest target is 0
;!
;!    outPipes.pDst.wRam	PTR unsigned short  size(2) Largest target is 0
;!
;!    S899$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    outPipes.pDst.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    S881$wRom	PTR rom unsigned short  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRom	PTR rom unsigned short  size(2) Largest target is 0
;!
;!    S881$wRam	PTR unsigned short  size(2) Largest target is 0
;!
;!    inPipes.pSrc.wRam	PTR unsigned short  size(2) Largest target is 0
;!
;!    S881$bRom	PTR rom unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRom	PTR rom unsigned char  size(2) Largest target is 0
;!
;!    S881$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    inPipes.pSrc.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    pCDCDst.wRom	PTR rom unsigned short  size(2) Largest target is 0
;!
;!    pCDCDst.bRom	PTR rom unsigned char  size(2) Largest target is 0
;!
;!    pCDCDst.wRam	PTR unsigned short  size(2) Largest target is 0
;!
;!    pCDCDst.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    S596_POINTER$wRom	PTR rom unsigned short  size(2) Largest target is 0
;!
;!    pCDCSrc.wRom	PTR rom unsigned short  size(2) Largest target is 0
;!
;!    S596_POINTER$bRom	PTR rom unsigned char  size(2) Largest target is 0
;!
;!    pCDCSrc.bRom	PTR rom unsigned char  size(2) Largest target is 0
;!
;!    S596_POINTER$wRam	PTR unsigned short  size(2) Largest target is 0
;!
;!    pCDCSrc.wRam	PTR unsigned short  size(2) Largest target is 0
;!
;!    S596_POINTER$bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    pCDCSrc.bRam	PTR unsigned char  size(2) Largest target is 0
;!
;!    USB_SD_Ptr	Q_02000000  PTR rom unsigned char [3] size(3) Largest target is 52
;!		 -> sd002(CODE[52]), sd001(CODE[52]), sd000(CODE[4]), 
;!
;!    USB_CD_Ptr	Q_02000000  PTR rom unsigned char [1] size(3) Largest target is 67
;!		 -> configDescriptor1(CODE[67]), 
;!


;!
;!Critical Paths under _main in config
;!
;!    None.
;!
;!Critical Paths under _YourHighPriorityISRCode in config
;!
;!    _USBDeviceTasks->_USER_USB_CALLBACK_EVENT_HANDLER
;!    i2_USBDeviceInit->i2_memset
;!    _USBCtrlTrfInHandler->_USBCtrlTrfTxService
;!    _USBCtrlTrfOutHandler->_USBCtrlTrfRxService
;!    _USBCtrlTrfSetupHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBCheckStdRequest->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBStdFeatureReqHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBStdSetCfgHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBCtrlEPAllowDataStage->_USBCtrlTrfTxService
;!    _USBSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBWakeFromSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _CDCInitEP->_USBEnableEndpoint
;!    _USBEnableEndpoint->_USBConfigureEndpoint
;!    _USBCBCheckOtherReq->_USBCheckCDCRequest
;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _YourHighPriorityISRCode in COMRAM
;!
;!    _YourHighPriorityISRCode->_USBDeviceTasks
;!    _USBDeviceTasks->_USBCtrlEPService
;!    i2_USBDeviceInit->i2_memset
;!    _USBCtrlTrfSetupHandler->_USBCheckStdRequest
;!    _USBCheckStdRequest->_USBStdFeatureReqHandler
;!    _USBStdFeatureReqHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBStdSetCfgHandler->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBWakeFromSuspend->_USER_USB_CALLBACK_EVENT_HANDLER
;!    _USBCBInitEP->_CDCInitEP
;!    _CDCInitEP->i2_USBTransferOnePacket
;!    _USBEnableEndpoint->_USBConfigureEndpoint
;!
;!Critical Paths under _main in BANK0
;!
;!    _CDCTxService->_USBTransferOnePacket
;!    _getsUSBUSART->_USBTransferOnePacket
;!    _InitializeSystem->_USBDeviceInit
;!    _USBDeviceInit->_memset
;!
;!Critical Paths under _YourHighPriorityISRCode in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_ProcessIO
;!    _ProcessIO->_getsUSBUSART
;!    _CDCTxService->_USBTransferOnePacket
;!    _getsUSBUSART->_USBTransferOnePacket
;!    _USBDeviceInit->_memset
;!
;!Critical Paths under _YourHighPriorityISRCode in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _YourHighPriorityISRCode in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _YourHighPriorityISRCode in BANK3
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2193
;!                   _InitializeSystem
;!                    _USBDeviceAttach
;!                          _ProcessIO
;! ---------------------------------------------------------------------------------
;! (1) _ProcessIO                                            3     3      0    1765
;!                                             10 BANK1      3     3      0
;!                     _BlinkUSBStatus
;!                      _putrsUSBUSART
;!                       _getsUSBUSART
;!                        _putUSBUSART
;!                       _CDCTxService
;! ---------------------------------------------------------------------------------
;! (2) _CDCTxService                                         7     7      0     678
;!                                              2 BANK1      7     7      0
;!               _USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (2) _putUSBUSART                                          4     1      3      62
;!                                             14 BANK0      4     1      3
;! ---------------------------------------------------------------------------------
;! (2) _getsUSBUSART                                         8     5      3     573
;!                                              2 BANK1      8     5      3
;!               _USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (3) _USBTransferOnePacket                                 7     2      5     440
;!                                             14 BANK0      5     0      5
;!                                              0 BANK1      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _putrsUSBUSART                                       10     7      3     164
;!                                             14 BANK0      3     0      3
;!                                              0 BANK1      7     7      0
;! ---------------------------------------------------------------------------------
;! (2) _BlinkUSBStatus                                       1     1      0       0
;!                                             14 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _USBDeviceAttach                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitializeSystem                                     0     0      0     428
;!                           _UserInit
;!                      _USBDeviceInit
;! ---------------------------------------------------------------------------------
;! (2) _USBDeviceInit                                        2     2      0     428
;!                                             16 BANK0      2     2      0
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (3) _memset                                               8     2      6     137
;!                                             14 BANK0      2     2      0
;!                                              0 BANK1      6     0      6
;! ---------------------------------------------------------------------------------
;! (2) _UserInit                                             1     1      0       0
;!                                             14 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _YourLowPriorityISRCode                              17    17      0       0
;!                                              0 COMRAM    17    17      0
;! ---------------------------------------------------------------------------------
;! (5) _YourHighPriorityISRCode                             14    14      0   12208
;!                                              0 BANK0     14    14      0
;!                     _USBDeviceTasks
;! ---------------------------------------------------------------------------------
;! (6) _USBDeviceTasks                                       3     3      0   12208
;!                                             44 COMRAM     3     3      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                 _USBWakeFromSuspend
;!                         _USBSuspend
;!          _USBCtrlEPAllowStatusStage
;!                    _USBStallHandler
;!                   _USBCtrlEPService
;!                    i2_USBDeviceInit
;! ---------------------------------------------------------------------------------
;! (7) i2_USBDeviceInit                                      2     2      0     983
;!                                              2 config     2     2      0
;!                           i2_memset
;! ---------------------------------------------------------------------------------
;! (7) _USBCtrlEPService                                     3     3      0    6904
;!                                             41 COMRAM     3     3      0
;!             _USBCtrlTrfSetupHandler
;!               _USBCtrlTrfOutHandler
;!                _USBCtrlTrfInHandler
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfInHandler                                  1     1      0     115
;!                                              3 config     1     1      0
;!                   Absolute function
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfOutHandler                                 0     0      0     114
;!                _USBCtrlTrfRxService
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlTrfRxService                                  4     4      0     114
;!                                              0 config     4     4      0
;!                   Absolute function
;!          _USBCtrlEPAllowStatusStage
;! ---------------------------------------------------------------------------------
;! (9) Absolute function(Fake)                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _USBCtrlTrfSetupHandler                               0     0      0    6607
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!           _USBCtrlEPServiceComplete
;!                 _USBCheckStdRequest
;! ---------------------------------------------------------------------------------
;! (9) _USBCheckStdRequest                                   2     2      0    5090
;!                                             39 COMRAM     2     2      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                _USBStdSetCfgHandler
;!                _USBStdGetDscHandler
;!             _USBStdGetStatusHandler
;!            _USBStdFeatureReqHandler
;! ---------------------------------------------------------------------------------
;! (10) _USBStdFeatureReqHandler                             8     8      0    1786
;!                                             31 COMRAM     8     8      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (10) _USBStdGetStatusHandler                              3     3      0      46
;!                                              0 config     3     3      0
;! ---------------------------------------------------------------------------------
;! (10) _USBStdGetDscHandler                                 5     5      0       0
;!                                              0 config     5     5      0
;! ---------------------------------------------------------------------------------
;! (10) _USBStdSetCfgHandler                                 2     2      0    1833
;!                                             31 COMRAM     2     2      0
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;!                           i2_memset
;! ---------------------------------------------------------------------------------
;! (8) i2_memset                                             8     2      6     318
;!                                              0 config     2     2      0
;!                                             17 COMRAM     6     0      6
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlEPServiceComplete                             0     0      0      92
;!          _USBCtrlEPAllowStatusStage
;!            _USBCtrlEPAllowDataStage
;! ---------------------------------------------------------------------------------
;! (10) _USBCtrlEPAllowDataStage                             0     0      0      92
;!                _USBCtrlTrfTxService
;! ---------------------------------------------------------------------------------
;! (9) _USBCtrlTrfTxService                                  3     3      0      92
;!                                              0 config     3     3      0
;! ---------------------------------------------------------------------------------
;! (10) _USBCtrlEPAllowStatusStage                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _USBStallHandler                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) _USBSuspend                                           0     0      0    1425
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (7) _USBWakeFromSuspend                                   0     0      0    1425
;!    _USER_USB_CALLBACK_EVENT_HANDLER
;! ---------------------------------------------------------------------------------
;! (11) _USER_USB_CALLBACK_EVENT_HANDLER                     8     2      6    1425
;!                                             12 config     2     2      0
;!                                             25 COMRAM     6     0      6
;!                       _USBCBSuspend
;!               _USBCBWakeFromSuspend
;!                  _USBCB_SOF_Handler
;!                  _USBCBErrorHandler
;!                 _USBCBCheckOtherReq
;!              _USBCBStdSetDscHandler
;!                        _USBCBInitEP
;! ---------------------------------------------------------------------------------
;! (12) _USBCBInitEP                                         0     0      0    1403
;!                          _CDCInitEP
;! ---------------------------------------------------------------------------------
;! (13) _CDCInitEP                                           3     3      0    1403
;!                                             22 COMRAM     3     3      0
;!                  _USBEnableEndpoint
;!             i2_USBTransferOnePacket
;! ---------------------------------------------------------------------------------
;! (14) i2_USBTransferOnePacket                              7     2      5    1026
;!                                              0 config     2     2      0
;!                                             17 COMRAM     5     0      5
;! ---------------------------------------------------------------------------------
;! (14) _USBEnableEndpoint                                   6     4      2     377
;!                                              8 config     4     4      0
;!                                             19 COMRAM     2     0      2
;!               _USBConfigureEndpoint
;! ---------------------------------------------------------------------------------
;! (15) _USBConfigureEndpoint                               10     8      2     222
;!                                              0 config     8     8      0
;!                                             17 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (12) _USBCBStdSetDscHandler                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (12) _USBCBCheckOtherReq                                  0     0      0       0
;!                 _USBCheckCDCRequest
;! ---------------------------------------------------------------------------------
;! (13) _USBCheckCDCRequest                                  1     1      0       0
;!                                              0 config     1     1      0
;! ---------------------------------------------------------------------------------
;! (12) _USBCBErrorHandler                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (12) _USBCB_SOF_Handler                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (12) _USBCBWakeFromSuspend                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (12) _USBCBSuspend                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 15
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _InitializeSystem
;!     _UserInit
;!     _USBDeviceInit
;!       _memset
;!   _USBDeviceAttach
;!   _ProcessIO
;!     _BlinkUSBStatus
;!     _putrsUSBUSART
;!     _getsUSBUSART
;!       _USBTransferOnePacket
;!     _putUSBUSART
;!     _CDCTxService
;!       _USBTransferOnePacket
;!
;! _YourLowPriorityISRCode (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!APPSIGNATURESEC   6FF9      0       0       0        0.0%
;!APPVERSIONANDSI   6FE9      0       0       0        0.0%
;!USB_BDT_ABS        3FF      0      40       0        6.3%
;!BIGRAM             3FF      0       0      14        0.0%
;!USB_VARIABLES_A    2FF      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!usb4               100      0       0       0        0.0%
;!BITBANK3           100      0       0      12        0.0%
;!BANK3              100      0       0      13        0.0%
;!BITBANK2           100      0       0      10        0.0%
;!BANK2              100      0       0      11        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100      D      4D       8       30.1%
;!BITBANK0            A0      0       0       5        0.0%
;!BANK0               A0     13      92       6       91.3%
;!BITCOMRAM           5F      0       0       1        0.0%
;!COMRAM              5F     2F      4A       2       77.9%
;!config               E      E       E       0      100.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0      19       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     129       9        0.0%
;!DATA                 0      0     142       4        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 490 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:   15
;; This function calls:
;;		_InitializeSystem
;;		_USBDeviceAttach
;;		_ProcessIO
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0
psect	text0
	file	"main.c"
	line	490
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:; BSR set to: 0

;incstack = 0
	opt	stack 16
;incstack = 0
	line	491
	
l4058:
;main.c: 491: InitializeSystem();
	call	_InitializeSystem	;wreg free
	goto	l4060
	line	493
;main.c: 494: {
;main.c: 496: if(1 && (USBDeviceState == DETACHED_STATE))
	
l102:
	line	496
	
l4060:
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBDeviceState))&0ffh	;volatile
	goto	u3941
	goto	u3940
u3941:
	goto	l4064
u3940:
	line	498
	
l4062:; BSR set to: 0

;main.c: 497: {
;main.c: 498: USBDeviceAttach();
	call	_USBDeviceAttach	;wreg free
	goto	l4064
	line	499
	
l103:
	line	521
	
l4064:
;main.c: 499: }
;main.c: 521: ProcessIO();
	call	_ProcessIO	;wreg free
	goto	l4060
	line	522
	
l104:
	line	493
	goto	l4060
	
l105:
	line	523
	
l106:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_ProcessIO

;; *************** function _ProcessIO *****************
;; Defined at:
;;		line 820 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   12[BANK1 ] unsigned char 
;;  numBytesRead    1   11[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       2       0       0
;;      Temps:          0       0       0       1       0       0
;;      Totals:         0       0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   14
;; This function calls:
;;		_BlinkUSBStatus
;;		_putrsUSBUSART
;;		_getsUSBUSART
;;		_putUSBUSART
;;		_CDCTxService
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	820
	global	__size_of_ProcessIO
	__size_of_ProcessIO	equ	__end_of_ProcessIO-_ProcessIO
	
_ProcessIO:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	824
	
l4072:
;main.c: 821: BYTE numBytesRead;
;main.c: 824: BlinkUSBStatus();
	call	_BlinkUSBStatus	;wreg free
	line	826
	
l4074:
;main.c: 826: if((USBDeviceState < CONFIGURED_STATE)||(UCONbits.SUSPND==1)) return;
	movlw	(020h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((_USBDeviceState))&0ffh	;volatile
	goto	u3951
	goto	u3950
u3951:
	goto	l118
u3950:
	
l4076:; BSR set to: 0

	
	btfss	((c:3949)),c,1	;volatile
	goto	u3961
	goto	u3960
u3961:
	goto	l4078
u3960:
	goto	l118
	
l117:; BSR set to: 0

	goto	l118
	
l115:; BSR set to: 0

	line	828
	
l4078:; BSR set to: 0

;main.c: 828: if(buttonPressed)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_buttonPressed))&0ffh,w	;volatile
	btfsc	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l4088
u3970:
	line	830
	
l4080:; BSR set to: 0

;main.c: 829: {
;main.c: 830: if(stringPrinted == FALSE)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_stringPrinted))&0ffh
	goto	u3981
	goto	u3980
u3981:
	goto	l4090
u3980:
	line	832
	
l4082:; BSR set to: 0

;main.c: 831: {
;main.c: 832: if((cdc_trf_state == 0))
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_cdc_trf_state))&0ffh
	goto	u3991
	goto	u3990
u3991:
	goto	l4090
u3990:
	line	834
	
l4084:; BSR set to: 0

;main.c: 833: {
;main.c: 834: putrsUSBUSART("Button Pressed -- \r\n");
	movlw	low(STR_1)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_putrsUSBUSART))&0ffh
	movlw	high(STR_1)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_putrsUSBUSART+1))&0ffh
	movlw	low highword(STR_1)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_putrsUSBUSART+2))&0ffh

	call	_putrsUSBUSART	;wreg free
	line	835
	
l4086:
;main.c: 835: stringPrinted = TRUE;
	movlb	1	; () banked
	movwf	(??_ProcessIO+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_stringPrinted))&0ffh
	movlb	1	; () banked
	movf	(??_ProcessIO+0+0)&0ffh,w
	goto	l4090
	line	836
	
l121:; BSR set to: 1

	goto	l4090
	line	837
	
l120:; BSR set to: 1

	line	838
;main.c: 836: }
;main.c: 837: }
;main.c: 838: }
	goto	l4090
	line	839
	
l119:; BSR set to: 1

	line	841
	
l4088:
;main.c: 839: else
;main.c: 840: {
;main.c: 841: stringPrinted = FALSE;
	movlb	1	; () banked
	movwf	(??_ProcessIO+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_stringPrinted))&0ffh
	movlb	1	; () banked
	movf	(??_ProcessIO+0+0)&0ffh,w
	goto	l4090
	line	842
	
l122:; BSR set to: 1

	line	844
	
l4090:
;main.c: 842: }
;main.c: 844: if((cdc_trf_state == 0))
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_cdc_trf_state))&0ffh
	goto	u4001
	goto	u4000
u4001:
	goto	l4112
u4000:
	line	846
	
l4092:; BSR set to: 0

;main.c: 845: {
;main.c: 846: numBytesRead = getsUSBUSART(USB_Out_Buffer,64);
	movlb	0	; () banked
	movlw	high(_USB_Out_Buffer)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((?_getsUSBUSART+1))&0ffh
	movlb	0	; () banked
	movlw	low(_USB_Out_Buffer)
	movlb	1	; () banked
	movwf	((?_getsUSBUSART))&0ffh
	movlb	1	; () banked
	movwf	(??_ProcessIO+0+0)&0ffh
	movlw	low(040h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	(0+(?_getsUSBUSART+02h))&0ffh
	movlb	1	; () banked
	movf	(??_ProcessIO+0+0)&0ffh,w
	call	_getsUSBUSART	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((ProcessIO@numBytesRead))&0ffh
	line	847
	
l4094:; BSR set to: 1

;main.c: 847: if(numBytesRead != 0)
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((ProcessIO@numBytesRead))&0ffh,w
	btfsc	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l4112
u4010:
	line	851
	
l4096:; BSR set to: 1

;main.c: 848: {
;main.c: 849: BYTE i;
;main.c: 851: for(i=0;i<numBytesRead;i++)
	movlb	1	; () banked
	movwf	(??_ProcessIO+0+0)&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((ProcessIO@i))&0ffh
	movlb	1	; () banked
	movf	(??_ProcessIO+0+0)&0ffh,w
	goto	l4108
	line	852
	
l126:; BSR set to: 1

	line	853
;main.c: 852: {
;main.c: 853: switch(USB_Out_Buffer[i])
	goto	l4104
	line	855
;main.c: 854: {
;main.c: 855: case 0x0A:
	
l128:; BSR set to: 1

	goto	l4098
	line	856
	
l129:; BSR set to: 1

	line	857
	
l4098:
;main.c: 856: case 0x0D:
;main.c: 857: USB_In_Buffer[i] = USB_Out_Buffer[i];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((ProcessIO@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_USB_Out_Buffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_USB_Out_Buffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((ProcessIO@i))&0ffh,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_USB_In_Buffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	1	; () banked
	movlw	high(_USB_In_Buffer)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	858
;main.c: 858: break;
	goto	l4106
	line	859
;main.c: 859: default:
	
l131:; BSR set to: 1

	line	860
	
l4100:
;main.c: 860: USB_In_Buffer[i] = USB_Out_Buffer[i] + 1;
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((ProcessIO@i))&0ffh,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_USB_In_Buffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_USB_In_Buffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((ProcessIO@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_USB_Out_Buffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_USB_Out_Buffer)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movlb	1	; () banked
	movwf	(??_ProcessIO+0+0)&0ffh
	movlb	1	; () banked
	incf	((??_ProcessIO+0+0))&0ffh,w
	movwf	indf2

	line	861
;main.c: 861: break;
	goto	l4106
	line	862
	
l4102:; BSR set to: 1

;main.c: 862: }
	goto	l4106
	line	853
	
l127:; BSR set to: 1

	
l4104:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((ProcessIO@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_USB_Out_Buffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_USB_Out_Buffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 10 to 13
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	10^0	; case 10
	skipnz
	goto	l4098
	xorlw	13^10	; case 13
	skipnz
	goto	l4098
	goto	l4100

	line	862
	
l130:; BSR set to: 0

	line	851
	
l4106:
	movlb	1	; () banked
	movlb	1	; () banked
	incf	((ProcessIO@i))&0ffh
	goto	l4108
	
l125:; BSR set to: 1

	
l4108:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((ProcessIO@numBytesRead))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((ProcessIO@i))&0ffh,w
	btfss	status,0
	goto	u4021
	goto	u4020
u4021:
	goto	l4104
u4020:
	goto	l4110
	
l132:; BSR set to: 1

	line	866
	
l4110:; BSR set to: 1

;main.c: 864: }
;main.c: 866: putUSBUSART(USB_In_Buffer,numBytesRead);
	movlb	1	; () banked
	movlw	high(_USB_In_Buffer)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_putUSBUSART+1))&0ffh
	movlb	1	; () banked
	movlw	low(_USB_In_Buffer)
	movlb	0	; () banked
	movwf	((?_putUSBUSART))&0ffh
	movff	(ProcessIO@numBytesRead),0+(?_putUSBUSART+02h)
	call	_putUSBUSART	;wreg free
	goto	l4112
	line	867
	
l124:
	goto	l4112
	line	868
	
l123:
	line	870
	
l4112:
;main.c: 867: }
;main.c: 868: }
;main.c: 870: CDCTxService();
	call	_CDCTxService	;wreg free
	line	871
	
l118:
	return
	opt stack 0
GLOBAL	__end_of_ProcessIO
	__end_of_ProcessIO:
	signat	_ProcessIO,88
	global	_CDCTxService

;; *************** function _CDCTxService *****************
;; Defined at:
;;		line 959 in file "..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte_to_send    1    8[BANK1 ] unsigned char 
;;  i               1    7[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       4       0       0
;;      Temps:          0       0       0       3       0       0
;;      Totals:         0       0       0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   13
;; This function calls:
;;		_USBTransferOnePacket
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
psect	text2
	file	"..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
	line	959
	global	__size_of_CDCTxService
	__size_of_CDCTxService	equ	__end_of_CDCTxService-_CDCTxService
	
_CDCTxService:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	963
	
l4278:
;usb_function_cdc.c: 960: BYTE byte_to_send;
;usb_function_cdc.c: 961: BYTE i;
;usb_function_cdc.c: 963: {PIE2bits.USBIE = 0;};
	bcf	((c:4000)),c,5	;volatile
	line	967
	
l4280:
;usb_function_cdc.c: 965: {};
;usb_function_cdc.c: 967: if((CDCDataInHandle==0?0:((volatile BDT_ENTRY*)CDCDataInHandle)->STAT.UOWN))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_CDCDataInHandle+1))&0ffh,w
	iorwf ((_CDCDataInHandle))&0ffh,w

	btfsc	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l4284
u4320:
	
l4282:; BSR set to: 0

	movff	(_CDCDataInHandle),fsr2l
	movff	(_CDCDataInHandle+1),fsr2h
	movlb	0	; () banked
	rlcf	(indf2)&0ffh,w
	rlcf	wreg,f
	andlw	1
	movlb	1	; () banked
	movwf	(??_CDCTxService+0+0)&0ffh
	movlb	1	; () banked
	movf	((??_CDCTxService+0+0))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_CDCTxService$1523))&0ffh
	movlb	1	; () banked
	clrf	((_CDCTxService$1523+1))&0ffh
	goto	l4286
	
l311:; BSR set to: 1

	
l4284:
	movlw	high(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_CDCTxService$1523+1))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_CDCTxService$1523))&0ffh
	goto	l4286
	
l313:; BSR set to: 1

	
l4286:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((_CDCTxService$1523+1))&0ffh,w
	iorwf ((_CDCTxService$1523))&0ffh,w

	btfsc	status,2
	goto	u4331
	goto	u4330
u4331:
	goto	l4290
u4330:
	line	969
	
l4288:; BSR set to: 1

;usb_function_cdc.c: 968: {
;usb_function_cdc.c: 969: {PIE2bits.USBIE = 1;};
	bsf	((c:4000)),c,5	;volatile
	line	970
;usb_function_cdc.c: 970: return;
	goto	l314
	line	971
	
l309:; BSR set to: 1

	line	978
	
l4290:; BSR set to: 1

;usb_function_cdc.c: 971: }
;usb_function_cdc.c: 978: if(cdc_trf_state == 3)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_cdc_trf_state))&0ffh,w
	xorlw	3

	btfss	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l4294
u4340:
	line	979
	
l4292:; BSR set to: 0

;usb_function_cdc.c: 979: cdc_trf_state = 0;
	movlb	1	; () banked
	movwf	(??_CDCTxService+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_trf_state))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+0+0)&0ffh,w
	goto	l4294
	
l315:; BSR set to: 1

	line	984
	
l4294:
;usb_function_cdc.c: 984: if(cdc_trf_state == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_cdc_trf_state))&0ffh
	goto	u4351
	goto	u4350
u4351:
	goto	l4298
u4350:
	line	986
	
l4296:; BSR set to: 0

;usb_function_cdc.c: 985: {
;usb_function_cdc.c: 986: {PIE2bits.USBIE = 1;};
	bsf	((c:4000)),c,5	;volatile
	line	987
;usb_function_cdc.c: 987: return;
	goto	l314
	line	988
	
l316:; BSR set to: 0

	line	993
	
l4298:; BSR set to: 0

;usb_function_cdc.c: 988: }
;usb_function_cdc.c: 993: if(cdc_trf_state == 2)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_cdc_trf_state))&0ffh,w
	xorlw	2

	btfss	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l4304
u4360:
	line	995
	
l4300:; BSR set to: 0

;usb_function_cdc.c: 994: {
;usb_function_cdc.c: 995: CDCDataInHandle = USBTransferOnePacket(2,1,(0),0);
	movlb	1	; () banked
	movwf	(??_CDCTxService+0+0)&0ffh
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	(??_CDCTxService+1+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(?_USBTransferOnePacket+01h))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+1+0)&0ffh,w
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(?_USBTransferOnePacket+02h))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(?_USBTransferOnePacket+02h))&0ffh
	movlb	1	; () banked
	movwf	(??_CDCTxService+2+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(?_USBTransferOnePacket+04h))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+2+0)&0ffh,w
	call	_USBTransferOnePacket	;wreg free
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_CDCDataInHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_CDCDataInHandle+1)
	line	997
	
l4302:; BSR set to: 0

;usb_function_cdc.c: 997: cdc_trf_state = 3;
	movlb	1	; () banked
	movwf	(??_CDCTxService+0+0)&0ffh
	movlw	low(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_trf_state))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+0+0)&0ffh,w
	line	998
;usb_function_cdc.c: 998: }
	goto	l4348
	line	999
	
l317:; BSR set to: 1

	
l4304:
;usb_function_cdc.c: 999: else if(cdc_trf_state == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((_cdc_trf_state))&0ffh,w

	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l4348
u4370:
	line	1004
	
l4306:; BSR set to: 0

;usb_function_cdc.c: 1000: {
;usb_function_cdc.c: 1004: if(cdc_tx_len > sizeof(cdc_data_tx))
	movlw	(041h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((_cdc_tx_len))&0ffh
	goto	u4381
	goto	u4380
u4381:
	goto	l320
u4380:
	line	1005
	
l4308:; BSR set to: 0

;usb_function_cdc.c: 1005: byte_to_send = sizeof(cdc_data_tx);
	movlb	1	; () banked
	movwf	(??_CDCTxService+0+0)&0ffh
	movlw	low(040h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((CDCTxService@byte_to_send))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+0+0)&0ffh,w
	goto	l4310
	line	1006
	
l320:; BSR set to: 0

	line	1007
;usb_function_cdc.c: 1006: else
;usb_function_cdc.c: 1007: byte_to_send = cdc_tx_len;
	movff	(_cdc_tx_len),(CDCTxService@byte_to_send)
	goto	l4310
	
l321:; BSR set to: 0

	line	1012
	
l4310:
;usb_function_cdc.c: 1012: cdc_tx_len = cdc_tx_len - byte_to_send;
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((CDCTxService@byte_to_send))&0ffh,w
	sublw	0
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((_cdc_tx_len))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_tx_len))&0ffh
	line	1014
	
l4312:; BSR set to: 0

;usb_function_cdc.c: 1014: pCDCDst.bRam = (BYTE*)&cdc_data_tx;
	movlb	5	; () banked
	movlw	high(1280)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pCDCDst+1))&0ffh
	movlb	5	; () banked
	movlw	low(1280)	;volatile
	movlb	0	; () banked
	movwf	((_pCDCDst))&0ffh
	line	1016
	
l4314:; BSR set to: 0

;usb_function_cdc.c: 1016: i = byte_to_send;
	movff	(CDCTxService@byte_to_send),(CDCTxService@i)
	line	1017
	
l4316:; BSR set to: 0

;usb_function_cdc.c: 1017: if(cdc_mem_type == 0x00)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_cdc_mem_type))&0ffh
	goto	u4391
	goto	u4390
u4391:
	goto	l4338
u4390:
	goto	l4328
	line	1019
	
l4318:; BSR set to: 0

;usb_function_cdc.c: 1018: {
;usb_function_cdc.c: 1019: while(i)
	goto	l4328
	
l324:; BSR set to: 0

	line	1021
	
l4320:
;usb_function_cdc.c: 1020: {
;usb_function_cdc.c: 1021: *pCDCDst.bRam = *pCDCSrc.bRom;
	movlb	0	; () banked
	movff	(_pCDCSrc),tblptrl
	movlb	0	; () banked
	movff	(_pCDCSrc+1),tblptrh
	movlb	0	; () banked
	movff	(_pCDCSrc+2),tblptru
	
	btfsc	tblptru,5
	bra	u4407
	tblrd	*
	
	movf	tablat,w
	bra	u4400
u4407:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u4400:
	movff	(_pCDCDst),fsr2l
	movff	(_pCDCDst+1),fsr2h
	movwf	indf2

	line	1022
	
l4322:
;usb_function_cdc.c: 1022: pCDCDst.bRam++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_pCDCDst))&0ffh
	incf	((_pCDCDst+1))&0ffh
	line	1023
	
l4324:; BSR set to: 0

;usb_function_cdc.c: 1023: pCDCSrc.bRom++;
	movlb	0	; () banked
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_pCDCSrc))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((_pCDCSrc+1))&0ffh
	movlw	low highword(01h)
	movlb	0	; () banked
	addwfc	((_pCDCSrc+2))&0ffh
	line	1024
	
l4326:; BSR set to: 0

;usb_function_cdc.c: 1024: i--;
	movlb	1	; () banked
	movlb	1	; () banked
	decf	((CDCTxService@i))&0ffh
	goto	l4328
	line	1025
	
l323:; BSR set to: 1

	line	1019
	
l4328:
	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	((CDCTxService@i))&0ffh
	goto	u4411
	goto	u4410
u4411:
	goto	l4320
u4410:
	goto	l326
	
l325:; BSR set to: 1

	line	1026
;usb_function_cdc.c: 1025: }
;usb_function_cdc.c: 1026: }
	goto	l326
	line	1027
	
l322:; BSR set to: 1

	line	1029
;usb_function_cdc.c: 1027: else
;usb_function_cdc.c: 1028: {
;usb_function_cdc.c: 1029: while(i)
	goto	l4338
	
l328:; BSR set to: 1

	line	1031
	
l4330:; BSR set to: 1

;usb_function_cdc.c: 1030: {
;usb_function_cdc.c: 1031: *pCDCDst.bRam = *pCDCSrc.bRam;
	movlb	0	; () banked
	movff	(_pCDCSrc),tblptrl
	movlb	0	; () banked
	movff	(_pCDCSrc+1),tblptrh
	movlb	0	; () banked
	movff	(_pCDCSrc+2),tblptru
	
	btfsc	tblptru,5
	bra	u4427
	tblrd	*
	
	movf	tablat,w
	bra	u4420
u4427:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u4420:
	movff	(_pCDCDst),fsr2l
	movff	(_pCDCDst+1),fsr2h
	movwf	indf2

	line	1032
	
l4332:
;usb_function_cdc.c: 1032: pCDCDst.bRam++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_pCDCDst))&0ffh
	incf	((_pCDCDst+1))&0ffh
	line	1033
	
l4334:; BSR set to: 0

;usb_function_cdc.c: 1033: pCDCSrc.bRam++;
	movlb	0	; () banked
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_pCDCSrc))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((_pCDCSrc+1))&0ffh
	movlw	low highword(01h)
	movlb	0	; () banked
	addwfc	((_pCDCSrc+2))&0ffh
	line	1034
	
l4336:; BSR set to: 0

;usb_function_cdc.c: 1034: i--;
	movlb	1	; () banked
	movlb	1	; () banked
	decf	((CDCTxService@i))&0ffh
	goto	l4338
	line	1035
	
l327:; BSR set to: 1

	line	1029
	
l4338:
	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	((CDCTxService@i))&0ffh
	goto	u4431
	goto	u4430
u4431:
	goto	l4330
u4430:
	goto	l326
	
l329:; BSR set to: 1

	line	1036
	
l326:; BSR set to: 1

	line	1042
;usb_function_cdc.c: 1035: }
;usb_function_cdc.c: 1036: }
;usb_function_cdc.c: 1042: if(cdc_tx_len == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_cdc_tx_len))&0ffh
	goto	u4441
	goto	u4440
u4441:
	goto	l4346
u4440:
	line	1044
	
l4340:; BSR set to: 0

;usb_function_cdc.c: 1043: {
;usb_function_cdc.c: 1044: if(byte_to_send == 64)
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((CDCTxService@byte_to_send))&0ffh,w
	xorlw	64

	btfss	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l4344
u4450:
	line	1045
	
l4342:; BSR set to: 1

;usb_function_cdc.c: 1045: cdc_trf_state = 2;
	movlb	1	; () banked
	movwf	(??_CDCTxService+0+0)&0ffh
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_trf_state))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+0+0)&0ffh,w
	goto	l4346
	line	1046
	
l331:; BSR set to: 1

	line	1047
	
l4344:; BSR set to: 1

;usb_function_cdc.c: 1046: else
;usb_function_cdc.c: 1047: cdc_trf_state = 3;
	movlb	1	; () banked
	movwf	(??_CDCTxService+0+0)&0ffh
	movlw	low(03h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_trf_state))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+0+0)&0ffh,w
	goto	l4346
	
l332:; BSR set to: 1

	goto	l4346
	line	1048
	
l330:; BSR set to: 1

	line	1049
	
l4346:
;usb_function_cdc.c: 1048: }
;usb_function_cdc.c: 1049: CDCDataInHandle = USBTransferOnePacket(2,1,(BYTE*)&cdc_data_tx,byte_to_send);
	movlb	1	; () banked
	movwf	(??_CDCTxService+0+0)&0ffh
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	(??_CDCTxService+1+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(?_USBTransferOnePacket+01h))&0ffh
	movlb	1	; () banked
	movf	(??_CDCTxService+1+0)&0ffh,w
	movlb	5	; () banked
	movlw	high(1280)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(?_USBTransferOnePacket+02h))&0ffh
	movlb	5	; () banked
	movlw	low(1280)	;volatile
	movlb	0	; () banked
	movwf	(0+(?_USBTransferOnePacket+02h))&0ffh
	movff	(CDCTxService@byte_to_send),0+(?_USBTransferOnePacket+04h)
	call	_USBTransferOnePacket	;wreg free
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_CDCDataInHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_CDCDataInHandle+1)
	goto	l4348
	line	1051
	
l319:; BSR set to: 0

	goto	l4348
	line	1053
	
l318:; BSR set to: 0

	
l4348:
;usb_function_cdc.c: 1051: }
;usb_function_cdc.c: 1053: {PIE2bits.USBIE = 1;};
	bsf	((c:4000)),c,5	;volatile
	line	1054
	
l314:
	return
	opt stack 0
GLOBAL	__end_of_CDCTxService
	__end_of_CDCTxService:
	signat	_CDCTxService,88
	global	_putUSBUSART

;; *************** function _putUSBUSART *****************
;; Defined at:
;;		line 679 in file "..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
;; Parameters:    Size  Location     Type
;;  data            2   14[BANK0 ] PTR char 
;;		 -> USB_In_Buffer(64), 
;;  length          1   16[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       3       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       1       0       0       0
;;      Totals:         0       0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
global __ptext3
__ptext3:
psect	text3
	file	"..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
	line	679
	global	__size_of_putUSBUSART
	__size_of_putUSBUSART	equ	__end_of_putUSBUSART-_putUSBUSART
	
_putUSBUSART:
;incstack = 0
	opt	stack 17
;incstack = 0
	line	703
	
l4266:
;usb_function_cdc.c: 703: {PIE2bits.USBIE = 0;};
	bcf	((c:4000)),c,5	;volatile
	line	704
;usb_function_cdc.c: 704: if(cdc_trf_state == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_cdc_trf_state))&0ffh
	goto	u4311
	goto	u4310
u4311:
	goto	l4276
u4310:
	line	706
	
l4268:; BSR set to: 0

;usb_function_cdc.c: 705: {
;usb_function_cdc.c: 706: { pCDCSrc.bRam = (BYTE*)data; cdc_tx_len = length; cdc_mem_type = 0x01; cdc_trf_state = 1; };
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((putUSBUSART@data))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pCDCSrc))&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((putUSBUSART@data+1))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pCDCSrc+1))&0ffh
	movlw	20h
	movlb	0	; () banked
	movwf	((_pCDCSrc+2))&0ffh
	
l4270:; BSR set to: 0

	movff	(putUSBUSART@length),(_cdc_tx_len)
	
l4272:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_putUSBUSART+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_mem_type))&0ffh
	movlb	0	; () banked
	movf	(??_putUSBUSART+0+0)&0ffh,w
	
l4274:; BSR set to: 0

	movlb	0	; () banked
	movwf	(??_putUSBUSART+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_trf_state))&0ffh
	movlb	0	; () banked
	movf	(??_putUSBUSART+0+0)&0ffh,w
	goto	l4276
	line	707
	
l291:; BSR set to: 0

	line	708
	
l4276:; BSR set to: 0

;usb_function_cdc.c: 707: }
;usb_function_cdc.c: 708: {PIE2bits.USBIE = 1;};
	bsf	((c:4000)),c,5	;volatile
	line	709
	
l292:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_putUSBUSART
	__end_of_putUSBUSART:
	signat	_putUSBUSART,8312
	global	_getsUSBUSART

;; *************** function _getsUSBUSART *****************
;; Defined at:
;;		line 608 in file "..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
;; Parameters:    Size  Location     Type
;;  buffer          2    2[BANK1 ] PTR char 
;;		 -> USB_Out_Buffer(64), 
;;  len             1    4[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       3       0       0
;;      Locals:         0       0       0       2       0       0
;;      Temps:          0       0       0       3       0       0
;;      Totals:         0       0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   13
;; This function calls:
;;		_USBTransferOnePacket
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
global __ptext4
__ptext4:
psect	text4
	file	"..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
	line	608
	global	__size_of_getsUSBUSART
	__size_of_getsUSBUSART	equ	__end_of_getsUSBUSART-_getsUSBUSART
	
_getsUSBUSART:; BSR set to: 0

;incstack = 0
	opt	stack 16
;incstack = 0
	line	609
	
l4238:
;usb_function_cdc.c: 609: cdc_rx_len = 0;
	movlb	1	; () banked
	movwf	(??_getsUSBUSART+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_rx_len))&0ffh
	movlb	1	; () banked
	movf	(??_getsUSBUSART+0+0)&0ffh,w
	line	611
	
l4240:; BSR set to: 1

;usb_function_cdc.c: 611: if(!(CDCDataOutHandle==0?0:((volatile BDT_ENTRY*)CDCDataOutHandle)->STAT.UOWN))
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_CDCDataOutHandle+1))&0ffh,w
	iorwf ((_CDCDataOutHandle))&0ffh,w

	btfsc	status,2
	goto	u4271
	goto	u4270
u4271:
	goto	l4244
u4270:
	
l4242:; BSR set to: 0

	movff	(_CDCDataOutHandle),fsr2l
	movff	(_CDCDataOutHandle+1),fsr2h
	movlb	0	; () banked
	rlcf	(indf2)&0ffh,w
	rlcf	wreg,f
	andlw	1
	movlb	1	; () banked
	movwf	(??_getsUSBUSART+0+0)&0ffh
	movlb	1	; () banked
	movf	((??_getsUSBUSART+0+0))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_getsUSBUSART$1475))&0ffh
	movlb	1	; () banked
	clrf	((_getsUSBUSART$1475+1))&0ffh
	goto	l4246
	
l281:; BSR set to: 1

	
l4244:
	movlw	high(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_getsUSBUSART$1475+1))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_getsUSBUSART$1475))&0ffh
	goto	l4246
	
l283:; BSR set to: 1

	
l4246:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((_getsUSBUSART$1475+1))&0ffh,w
	iorwf ((_getsUSBUSART$1475))&0ffh,w

	btfss	status,2
	goto	u4281
	goto	u4280
u4281:
	goto	l4262
u4280:
	line	617
	
l4248:; BSR set to: 1

;usb_function_cdc.c: 612: {
;usb_function_cdc.c: 617: if(len > (((volatile BDT_ENTRY*)CDCDataOutHandle)->CNT))
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((_CDCDataOutHandle))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_CDCDataOutHandle+1))&0ffh,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	1	; () banked
	movwf	(??_getsUSBUSART+0+0)&0ffh
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((getsUSBUSART@len))&0ffh,w
	movlb	1	; () banked
	subwf	((??_getsUSBUSART+0+0))&0ffh,w
	btfsc	status,0
	goto	u4291
	goto	u4290
u4291:
	goto	l4252
u4290:
	line	618
	
l4250:; BSR set to: 1

;usb_function_cdc.c: 618: len = (((volatile BDT_ENTRY*)CDCDataOutHandle)->CNT);
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((_CDCDataOutHandle))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_CDCDataOutHandle+1))&0ffh,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((getsUSBUSART@len))&0ffh
	goto	l4252
	
l284:; BSR set to: 1

	line	623
	
l4252:; BSR set to: 1

;usb_function_cdc.c: 623: for(cdc_rx_len = 0; cdc_rx_len < len; cdc_rx_len++)
	movlb	1	; () banked
	movwf	(??_getsUSBUSART+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_rx_len))&0ffh
	movlb	1	; () banked
	movf	(??_getsUSBUSART+0+0)&0ffh,w
	goto	l4258
	line	624
	
l286:; BSR set to: 1

	
l4254:
;usb_function_cdc.c: 624: buffer[cdc_rx_len] = cdc_data_rx[cdc_rx_len];
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_cdc_rx_len))&0ffh,w
	mullw	01h
	movlb	5	; () banked
	movlw	low(1344)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	5	; () banked
	movlw	high(1344)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_cdc_rx_len))&0ffh,w
	mullw	01h
	movf	(prodl),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((getsUSBUSART@buffer))&0ffh,w
	movwf	c:fsr1l
	movf	(prodh),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	addwfc	((getsUSBUSART@buffer+1))&0ffh,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	623
	
l4256:; BSR set to: 1

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((_cdc_rx_len))&0ffh
	goto	l4258
	
l285:; BSR set to: 0

	
l4258:
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((getsUSBUSART@len))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_cdc_rx_len))&0ffh,w
	btfss	status,0
	goto	u4301
	goto	u4300
u4301:
	goto	l4254
u4300:
	goto	l4260
	
l287:; BSR set to: 0

	line	630
	
l4260:; BSR set to: 0

;usb_function_cdc.c: 630: CDCDataOutHandle = USBTransferOnePacket(2,0,(BYTE*)&cdc_data_rx,sizeof(cdc_data_rx));
	movlb	1	; () banked
	movwf	(??_getsUSBUSART+0+0)&0ffh
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket))&0ffh
	movlb	1	; () banked
	movf	(??_getsUSBUSART+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	(??_getsUSBUSART+1+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(?_USBTransferOnePacket+01h))&0ffh
	movlb	1	; () banked
	movf	(??_getsUSBUSART+1+0)&0ffh,w
	movlb	5	; () banked
	movlw	high(1344)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(?_USBTransferOnePacket+02h))&0ffh
	movlb	5	; () banked
	movlw	low(1344)	;volatile
	movlb	0	; () banked
	movwf	(0+(?_USBTransferOnePacket+02h))&0ffh
	movlb	1	; () banked
	movwf	(??_getsUSBUSART+2+0)&0ffh
	movlw	low(040h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(?_USBTransferOnePacket+04h))&0ffh
	movlb	1	; () banked
	movf	(??_getsUSBUSART+2+0)&0ffh,w
	call	_USBTransferOnePacket	;wreg free
	movlb	0	; () banked
	movff	0+?_USBTransferOnePacket,(_CDCDataOutHandle)
	movlb	0	; () banked
	movff	1+?_USBTransferOnePacket,(_CDCDataOutHandle+1)
	goto	l4262
	line	632
	
l279:; BSR set to: 0

	line	634
	
l4262:
;usb_function_cdc.c: 632: }
;usb_function_cdc.c: 634: return cdc_rx_len;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_cdc_rx_len))&0ffh,w
	goto	l288
	
l4264:; BSR set to: 0

	line	636
	
l288:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_getsUSBUSART
	__end_of_getsUSBUSART:
	signat	_getsUSBUSART,8313
	global	_USBTransferOnePacket

;; *************** function _USBTransferOnePacket *****************
;; Defined at:
;;		line 1173 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1   14[BANK0 ] unsigned char 
;;  dir             1   15[BANK0 ] unsigned char 
;;  data            2   16[BANK0 ] PTR unsigned char 
;;		 -> cdc_data_tx(64), NULL(0), cdc_data_rx(64), 
;;  len             1   18[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  handle          2    0[BANK1 ] PTR volatile struct __BD
;;		 -> BDT(48), NULL(0), 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       5       0       0       0
;;      Locals:         0       0       0       2       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       5       2       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getsUSBUSART
;;		_CDCTxService
;;		_USBCDCEventHandler
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
global __ptext5
__ptext5:
psect	text5
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1173
	global	__size_of_USBTransferOnePacket
	__size_of_USBTransferOnePacket	equ	__end_of_USBTransferOnePacket-_USBTransferOnePacket
	
_USBTransferOnePacket:; BSR set to: 0

;incstack = 0
	opt	stack 16
;incstack = 0
	line	1177
	
l4350:
;usb_device.c: 1174: volatile BDT_ENTRY* handle;
;usb_device.c: 1177: if(dir != 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@dir))&0ffh,w
	btfsc	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l4354
u4460:
	line	1180
	
l4352:; BSR set to: 0

;usb_device.c: 1178: {
;usb_device.c: 1180: handle = pBDTEntryIn[ep];
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movff	postinc2,(USBTransferOnePacket@handle)
	movlb	1	; () banked
	movff	postdec2,(USBTransferOnePacket@handle+1)
	line	1181
;usb_device.c: 1181: }
	goto	l4356
	line	1182
	
l503:; BSR set to: 1

	line	1185
	
l4354:
;usb_device.c: 1182: else
;usb_device.c: 1183: {
;usb_device.c: 1185: handle = pBDTEntryOut[ep];
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movff	postinc2,(USBTransferOnePacket@handle)
	movlb	1	; () banked
	movff	postdec2,(USBTransferOnePacket@handle+1)
	goto	l4356
	line	1186
	
l504:; BSR set to: 1

	line	1190
	
l4356:; BSR set to: 1

;usb_device.c: 1186: }
;usb_device.c: 1190: if(handle == 0)
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	iorwf ((USBTransferOnePacket@handle))&0ffh,w

	btfss	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l4362
u4470:
	line	1192
	
l4358:; BSR set to: 1

;usb_device.c: 1191: {
;usb_device.c: 1192: return 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((?_USBTransferOnePacket))&0ffh
	goto	l506
	
l4360:; BSR set to: 0

	goto	l506
	line	1193
	
l505:; BSR set to: 0

	line	1206
	
l4362:
;usb_device.c: 1193: }
;usb_device.c: 1206: handle->ADR = ((WORD)(data));
	movlb	1	; () banked
	lfsr	2,02h
	movlb	1	; () banked
	movf	((USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movlb	1	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movlb	0	; () banked
	movff	(USBTransferOnePacket@data),postinc2
	movlb	0	; () banked
	movff	(USBTransferOnePacket@data+1),postdec2
	line	1207
;usb_device.c: 1207: handle->CNT = len;
	movlb	1	; () banked
	lfsr	2,01h
	movlb	1	; () banked
	movf	((USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movlb	1	; () banked
	movf	((USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movlb	0	; () banked
	movff	(USBTransferOnePacket@len),indf2

	line	1208
	
l4364:; BSR set to: 0

;usb_device.c: 1208: handle->STAT.Val &= 0x40;
	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1209
	
l4366:; BSR set to: 0

;usb_device.c: 1209: handle->STAT.Val |= 0x80 | (0x08 & 0x08);
	movff	(USBTransferOnePacket@handle),fsr2l
	movff	(USBTransferOnePacket@handle+1),fsr2h
	movlw	088h
	iorwf	indf2
	line	1212
	
l4368:; BSR set to: 0

;usb_device.c: 1212: if(dir != 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@dir))&0ffh,w
	btfsc	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l4372
u4480:
	line	1215
	
l4370:; BSR set to: 0

;usb_device.c: 1213: {
;usb_device.c: 1215: ((BYTE_VAL*)&pBDTEntryIn[ep])->Val ^= 0x0004;;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	line	1216
;usb_device.c: 1216: }
	goto	l4374
	line	1217
	
l507:; BSR set to: 0

	line	1220
	
l4372:; BSR set to: 0

;usb_device.c: 1217: else
;usb_device.c: 1218: {
;usb_device.c: 1220: ((BYTE_VAL*)&pBDTEntryOut[ep])->Val ^= 0x0004;;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBTransferOnePacket@ep))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	goto	l4374
	line	1221
	
l508:; BSR set to: 0

	line	1222
	
l4374:; BSR set to: 0

;usb_device.c: 1221: }
;usb_device.c: 1222: return (void*)handle;
	movff	(USBTransferOnePacket@handle),(?_USBTransferOnePacket)
	movff	(USBTransferOnePacket@handle+1),(?_USBTransferOnePacket+1)
	goto	l506
	
l4376:; BSR set to: 0

	line	1223
	
l506:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBTransferOnePacket
	__end_of_USBTransferOnePacket:
	signat	_USBTransferOnePacket,16506
	global	_putrsUSBUSART

;; *************** function _putrsUSBUSART *****************
;; Defined at:
;;		line 849 in file "..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
;; Parameters:    Size  Location     Type
;;  data            3   14[BANK0 ] PTR Q_02000000  char 
;;		 -> STR_1(21), 
;; Auto vars:     Size  Location     Type
;;  pData           3    3[BANK1 ] PTR Q_02000000  char 
;;		 -> STR_1(21), 
;;  len             1    6[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       3       0       0       0
;;      Locals:         0       0       0       4       0       0
;;      Temps:          0       0       0       3       0       0
;;      Totals:         0       0       3       7       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
global __ptext6
__ptext6:
psect	text6
	file	"..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
	line	849
	global	__size_of_putrsUSBUSART
	__size_of_putrsUSBUSART	equ	__end_of_putrsUSBUSART-_putrsUSBUSART
	
_putrsUSBUSART:; BSR set to: 0

;incstack = 0
	opt	stack 17
;incstack = 0
	line	876
	
l4216:
;usb_function_cdc.c: 850: BYTE len;
;usb_function_cdc.c: 851: const rom char *pData;
;usb_function_cdc.c: 876: {PIE2bits.USBIE = 0;};
	bcf	((c:4000)),c,5	;volatile
	line	877
	
l4218:
;usb_function_cdc.c: 877: if(cdc_trf_state != 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_cdc_trf_state))&0ffh,w
	btfsc	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l4222
u4240:
	line	879
	
l4220:; BSR set to: 0

;usb_function_cdc.c: 878: {
;usb_function_cdc.c: 879: {PIE2bits.USBIE = 1;};
	bsf	((c:4000)),c,5	;volatile
	line	880
;usb_function_cdc.c: 880: return;
	goto	l303
	line	881
	
l302:; BSR set to: 0

	line	887
	
l4222:; BSR set to: 0

;usb_function_cdc.c: 881: }
;usb_function_cdc.c: 887: len = 0;
	movlb	1	; () banked
	movwf	(??_putrsUSBUSART+0+0)&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((putrsUSBUSART@len))&0ffh
	movlb	1	; () banked
	movf	(??_putrsUSBUSART+0+0)&0ffh,w
	line	888
	
l4224:; BSR set to: 1

;usb_function_cdc.c: 888: pData = data;
	movff	(putrsUSBUSART@data),(putrsUSBUSART@pData)
	movff	(putrsUSBUSART@data+1),(putrsUSBUSART@pData+1)
	movff	(putrsUSBUSART@data+2),(putrsUSBUSART@pData+2)
	goto	l4226
	line	889
;usb_function_cdc.c: 889: do
	
l304:; BSR set to: 1

	line	891
	
l4226:; BSR set to: 1

;usb_function_cdc.c: 890: {
;usb_function_cdc.c: 891: len++;
	movlb	1	; () banked
	movlb	1	; () banked
	incf	((putrsUSBUSART@len))&0ffh
	line	892
	
l4228:; BSR set to: 1

;usb_function_cdc.c: 892: if(len == 255) break;
	movlb	1	; () banked
	movlb	1	; () banked
	incf	((putrsUSBUSART@len))&0ffh,w

	btfss	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l4232
u4250:
	goto	l306
	
l4230:; BSR set to: 1

	goto	l306
	
l305:; BSR set to: 1

	line	893
	
l4232:; BSR set to: 1

;usb_function_cdc.c: 893: }while(*pData++);
	movlb	1	; () banked
	lfsr	2,(putrsUSBUSART@pData)
	movff	indf2,??_putrsUSBUSART+0+0+0
	incf	postinc2
	movff	postinc2,??_putrsUSBUSART+0+0+1
	movff	postdec2,??_putrsUSBUSART+0+0+2
	movlw	0
	addwfc	postinc2
	addwfc	indf2
	movff	??_putrsUSBUSART+0+0,tblptrl
	movff	??_putrsUSBUSART+0+1,tblptrh
	movff	??_putrsUSBUSART+0+2,tblptru
	tblrd	*
	
	movf	tablat,w

	iorlw	0
	btfss	status,2
	goto	u4261
	goto	u4260
u4261:
	goto	l4226
u4260:
	
l306:; BSR set to: 1

	line	902
;usb_function_cdc.c: 902: { pCDCSrc.bRom = (rom BYTE*)data; cdc_tx_len = len; cdc_mem_type = 0x00; cdc_trf_state = 1; };
	movff	(putrsUSBUSART@data),(_pCDCSrc)
	movff	(putrsUSBUSART@data+1),(_pCDCSrc+1)
	movff	(putrsUSBUSART@data+2),(_pCDCSrc+2)
	movff	(putrsUSBUSART@len),(_cdc_tx_len)
	
l4234:; BSR set to: 1

	movlb	1	; () banked
	movwf	(??_putrsUSBUSART+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_mem_type))&0ffh
	movlb	1	; () banked
	movf	(??_putrsUSBUSART+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	(??_putrsUSBUSART+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_trf_state))&0ffh
	movlb	1	; () banked
	movf	(??_putrsUSBUSART+0+0)&0ffh,w
	line	903
	
l4236:; BSR set to: 1

;usb_function_cdc.c: 903: {PIE2bits.USBIE = 1;};
	bsf	((c:4000)),c,5	;volatile
	line	905
	
l303:
	return
	opt stack 0
GLOBAL	__end_of_putrsUSBUSART
	__end_of_putrsUSBUSART:
	signat	_putrsUSBUSART,4216
	global	_BlinkUSBStatus

;; *************** function _BlinkUSBStatus *****************
;; Defined at:
;;		line 892 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       1       0       0       0
;;      Totals:         0       0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ProcessIO
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
global __ptext7
__ptext7:
psect	text7
	file	"main.c"
	line	892
	global	__size_of_BlinkUSBStatus
	__size_of_BlinkUSBStatus	equ	__end_of_BlinkUSBStatus-_BlinkUSBStatus
	
_BlinkUSBStatus:
;incstack = 0
	opt	stack 17
;incstack = 0
	line	895
	
l4168:
;main.c: 893: static WORD led_count=0;
;main.c: 895: if(led_count == 0)led_count = 10000U;
	movf	((c:BlinkUSBStatus@led_count+1)),c,w
	iorwf ((c:BlinkUSBStatus@led_count)),c,w

	btfss	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l4172
u4080:
	
l4170:
	movlw	high(02710h)
	movwf	((c:BlinkUSBStatus@led_count+1)),c
	movlw	low(02710h)
	movwf	((c:BlinkUSBStatus@led_count)),c
	goto	l4172
	
l137:
	line	896
	
l4172:
;main.c: 896: led_count--;
	decf	((c:BlinkUSBStatus@led_count)),c
	btfss	status,0
	decf	((c:BlinkUSBStatus@led_count+1)),c
	line	903
	
l4174:
;main.c: 903: if(UCONbits.SUSPND == 1)
	
	btfss	((c:3949)),c,1	;volatile
	goto	u4091
	goto	u4090
u4091:
	goto	l138
u4090:
	line	905
	
l4176:
;main.c: 904: {
;main.c: 905: if(led_count==0)
	movf	((c:BlinkUSBStatus@led_count+1)),c,w
	iorwf ((c:BlinkUSBStatus@led_count)),c,w

	btfss	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l158
u4100:
	line	907
	
l4178:
;main.c: 906: {
;main.c: 907: LATDbits.LATD0 = !LATDbits.LATD0;;
	
	btfss	((c:3980)),c,0	;volatile
	goto	u4111
	goto	u4110
u4111:
	movlw	1
	goto	u4116
u4110:
	movlw	0
u4116:
	movlb	0	; () banked
	movwf	(??_BlinkUSBStatus+0+0)&0ffh
	movf	((c:3980)),c,w	;volatile
	movlb	0	; () banked
	xorwf	((??_BlinkUSBStatus+0+0))&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	((??_BlinkUSBStatus+0+0))&0ffh,w
	movwf	((c:3980)),c	;volatile
	line	908
	
l4180:; BSR set to: 0

;main.c: 908: if(LATDbits.LATD0)
	
	btfss	((c:3980)),c,0	;volatile
	goto	u4121
	goto	u4120
u4121:
	goto	l140
u4120:
	line	910
	
l4182:; BSR set to: 0

;main.c: 909: {
;main.c: 910: LATDbits.LATD1 = 1;;
	bsf	((c:3980)),c,1	;volatile
	line	911
;main.c: 911: }
	goto	l158
	line	912
	
l140:; BSR set to: 0

	line	914
;main.c: 912: else
;main.c: 913: {
;main.c: 914: LATDbits.LATD1 = 0;;
	bcf	((c:3980)),c,1	;volatile
	goto	l158
	line	915
	
l141:; BSR set to: 0

	goto	l158
	line	916
	
l139:; BSR set to: 0

	line	917
;main.c: 915: }
;main.c: 916: }
;main.c: 917: }
	goto	l158
	line	918
	
l138:
	line	920
;main.c: 918: else
;main.c: 919: {
;main.c: 920: if(USBDeviceState == DETACHED_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBDeviceState))&0ffh	;volatile
	goto	u4131
	goto	u4130
u4131:
	goto	l4186
u4130:
	line	922
	
l4184:; BSR set to: 0

;main.c: 921: {
;main.c: 922: {LATDbits.LATD0 = 0;;LATDbits.LATD1 = 0;;};
	bcf	((c:3980)),c,0	;volatile
	bcf	((c:3980)),c,1	;volatile
	line	923
;main.c: 923: }
	goto	l158
	line	924
	
l143:; BSR set to: 0

	
l4186:; BSR set to: 0

;main.c: 924: else if(USBDeviceState == ATTACHED_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((_USBDeviceState))&0ffh,w	;volatile

	btfss	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l4190
u4140:
	line	926
	
l4188:; BSR set to: 0

;main.c: 925: {
;main.c: 926: {LATDbits.LATD0 = 1;;LATDbits.LATD1 = 1;;};
	bsf	((c:3980)),c,0	;volatile
	bsf	((c:3980)),c,1	;volatile
	line	927
;main.c: 927: }
	goto	l158
	line	928
	
l145:; BSR set to: 0

	
l4190:; BSR set to: 0

;main.c: 928: else if(USBDeviceState == POWERED_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	2

	btfss	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l4194
u4150:
	line	930
	
l4192:; BSR set to: 0

;main.c: 929: {
;main.c: 930: {LATDbits.LATD0 = 1;;LATDbits.LATD1 = 0;;};
	bsf	((c:3980)),c,0	;volatile
	bcf	((c:3980)),c,1	;volatile
	line	931
;main.c: 931: }
	goto	l158
	line	932
	
l147:; BSR set to: 0

	
l4194:; BSR set to: 0

;main.c: 932: else if(USBDeviceState == DEFAULT_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	4

	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l4198
u4160:
	line	934
	
l4196:; BSR set to: 0

;main.c: 933: {
;main.c: 934: {LATDbits.LATD0 = 0;;LATDbits.LATD1 = 1;;};
	bcf	((c:3980)),c,0	;volatile
	bsf	((c:3980)),c,1	;volatile
	line	935
;main.c: 935: }
	goto	l158
	line	936
	
l149:; BSR set to: 0

	
l4198:; BSR set to: 0

;main.c: 936: else if(USBDeviceState == ADDRESS_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	16

	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l4206
u4170:
	line	938
	
l4200:; BSR set to: 0

;main.c: 937: {
;main.c: 938: if(led_count == 0)
	movf	((c:BlinkUSBStatus@led_count+1)),c,w
	iorwf ((c:BlinkUSBStatus@led_count)),c,w

	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l158
u4180:
	line	940
	
l4202:; BSR set to: 0

;main.c: 939: {
;main.c: 940: LATDbits.LATD0 = !LATDbits.LATD0;;
	
	btfss	((c:3980)),c,0	;volatile
	goto	u4191
	goto	u4190
u4191:
	movlw	1
	goto	u4196
u4190:
	movlw	0
u4196:
	movlb	0	; () banked
	movwf	(??_BlinkUSBStatus+0+0)&0ffh
	movf	((c:3980)),c,w	;volatile
	movlb	0	; () banked
	xorwf	((??_BlinkUSBStatus+0+0))&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	((??_BlinkUSBStatus+0+0))&0ffh,w
	movwf	((c:3980)),c	;volatile
	line	941
	
l4204:; BSR set to: 0

;main.c: 941: LATDbits.LATD1 = 0;;
	bcf	((c:3980)),c,1	;volatile
	goto	l158
	line	942
	
l152:; BSR set to: 0

	line	943
;main.c: 942: }
;main.c: 943: }
	goto	l158
	line	944
	
l151:; BSR set to: 0

	
l4206:; BSR set to: 0

;main.c: 944: else if(USBDeviceState == CONFIGURED_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	32

	btfss	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l158
u4200:
	line	946
	
l4208:; BSR set to: 0

;main.c: 945: {
;main.c: 946: if(led_count==0)
	movf	((c:BlinkUSBStatus@led_count+1)),c,w
	iorwf ((c:BlinkUSBStatus@led_count)),c,w

	btfss	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l158
u4210:
	line	948
	
l4210:; BSR set to: 0

;main.c: 947: {
;main.c: 948: LATDbits.LATD0 = !LATDbits.LATD0;;
	
	btfss	((c:3980)),c,0	;volatile
	goto	u4221
	goto	u4220
u4221:
	movlw	1
	goto	u4226
u4220:
	movlw	0
u4226:
	movlb	0	; () banked
	movwf	(??_BlinkUSBStatus+0+0)&0ffh
	movf	((c:3980)),c,w	;volatile
	movlb	0	; () banked
	xorwf	((??_BlinkUSBStatus+0+0))&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	((??_BlinkUSBStatus+0+0))&0ffh,w
	movwf	((c:3980)),c	;volatile
	line	949
	
l4212:; BSR set to: 0

;main.c: 949: if(LATDbits.LATD0)
	
	btfss	((c:3980)),c,0	;volatile
	goto	u4231
	goto	u4230
u4231:
	goto	l156
u4230:
	line	951
	
l4214:; BSR set to: 0

;main.c: 950: {
;main.c: 951: LATDbits.LATD1 = 0;;
	bcf	((c:3980)),c,1	;volatile
	line	952
;main.c: 952: }
	goto	l158
	line	953
	
l156:; BSR set to: 0

	line	955
;main.c: 953: else
;main.c: 954: {
;main.c: 955: LATDbits.LATD1 = 1;;
	bsf	((c:3980)),c,1	;volatile
	goto	l158
	line	956
	
l157:; BSR set to: 0

	goto	l158
	line	957
	
l155:; BSR set to: 0

	goto	l158
	line	958
	
l154:; BSR set to: 0

	goto	l158
	line	959
	
l153:; BSR set to: 0

	goto	l158
	
l150:; BSR set to: 0

	goto	l158
	
l148:; BSR set to: 0

	goto	l158
	
l146:; BSR set to: 0

	goto	l158
	
l144:; BSR set to: 0

	goto	l158
	
l142:; BSR set to: 0

	line	961
	
l158:
	return
	opt stack 0
GLOBAL	__end_of_BlinkUSBStatus
	__end_of_BlinkUSBStatus:
	signat	_BlinkUSBStatus,88
	global	_USBDeviceAttach

;; *************** function _USBDeviceAttach *****************
;; Defined at:
;;		line 1526 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
global __ptext8
__ptext8:
psect	text8
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1526
	global	__size_of_USBDeviceAttach
	__size_of_USBDeviceAttach	equ	__end_of_USBDeviceAttach-_USBDeviceAttach
	
_USBDeviceAttach:
;incstack = 0
	opt	stack 18
;incstack = 0
	line	1528
	
l2858:
;usb_device.c: 1529: {
;usb_device.c: 1530: if(1 == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBDeviceState))&0ffh	;volatile
	goto	u2271
	goto	u2270
u2271:
	goto	l528
u2270:
	line	1533
	
l2860:; BSR set to: 0

;usb_device.c: 1531: {
;usb_device.c: 1533: UCON = 0;
	movlw	low(0)
	movwf	((c:3949)),c	;volatile
	line	1536
;usb_device.c: 1536: UIE = 0;
	movlw	low(0)
	movwf	((c:3945)),c	;volatile
	line	1540
;usb_device.c: 1540: { UCFG = 0x10 | 0x00 | 0x04 | 0x02; UEIE = 0x9F; UIE = 0x39 | 0x40 | 0x02; };
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	1542
	
l2862:; BSR set to: 0

;usb_device.c: 1542: {RCONbits.IPEN = 1;IPR2bits.USBIP = 1;PIE2bits.USBIE = 1;INTCONbits.GIEH = 1;};
	bsf	((c:4048)),c,7	;volatile
	
l2864:; BSR set to: 0

	bsf	((c:4002)),c,5	;volatile
	
l2866:; BSR set to: 0

	bsf	((c:4000)),c,5	;volatile
	
l2868:; BSR set to: 0

	bsf	((c:4082)),c,7	;volatile
	line	1545
;usb_device.c: 1545: while(!UCONbits.USBEN){UCONbits.USBEN = 1;}
	goto	l525
	
l526:
	bsf	((c:3949)),c,3	;volatile
	
l525:
	
	btfss	((c:3949)),c,3	;volatile
	goto	u2281
	goto	u2280
u2281:
	goto	l526
u2280:
	goto	l2870
	
l527:
	line	1548
	
l2870:
;usb_device.c: 1548: USBDeviceState = ATTACHED_STATE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	l528
	line	1553
	
l524:; BSR set to: 0

	goto	l528
	line	1554
	
l523:; BSR set to: 0

	line	1555
	
l528:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBDeviceAttach
	__end_of_USBDeviceAttach:
	signat	_USBDeviceAttach,88
	global	_InitializeSystem

;; *************** function _InitializeSystem *****************
;; Defined at:
;;		line 547 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   14
;; This function calls:
;;		_UserInit
;;		_USBDeviceInit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
global __ptext9
__ptext9:
psect	text9
	file	"main.c"
	line	547
	global	__size_of_InitializeSystem
	__size_of_InitializeSystem	equ	__end_of_InitializeSystem-_InitializeSystem
	
_InitializeSystem:; BSR set to: 0

;incstack = 0
	opt	stack 16
;incstack = 0
	line	563
	
l4066:
;main.c: 563: ADCON1 |= 0x0F;
	movlw	(0Fh)&0ffh
	iorwf	((c:4033)),c	;volatile
	line	763
	
l4068:
;main.c: 763: UserInit();
	call	_UserInit	;wreg free
	line	765
	
l4070:
;main.c: 765: USBDeviceInit();
	call	_USBDeviceInit	;wreg free
	line	767
	
l109:
	return
	opt stack 0
GLOBAL	__end_of_InitializeSystem
	__end_of_InitializeSystem:
	signat	_InitializeSystem,88
	global	_USBDeviceInit

;; *************** function _USBDeviceInit *****************
;; Defined at:
;;		line 467 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       1       0       0       0
;;      Temps:          0       0       1       0       0       0
;;      Totals:         0       0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   13
;; This function calls:
;;		_memset
;; This function is called by:
;;		_InitializeSystem
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
global __ptext10
__ptext10:
psect	text10
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	467
	global	__size_of_USBDeviceInit
	__size_of_USBDeviceInit	equ	__end_of_USBDeviceInit-_USBDeviceInit
	
_USBDeviceInit:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	470
	
l4114:
;usb_device.c: 468: BYTE i;
;usb_device.c: 470: {PIE2bits.USBIE = 0;};
	bcf	((c:4000)),c,5	;volatile
	line	473
	
l4116:
;usb_device.c: 473: UEIR = 0;;
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	line	476
;usb_device.c: 476: UIR = 0;;
	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	479
;usb_device.c: 479: UEP0 = 0;
	movlw	low(0)
	movwf	((c:3952)),c	;volatile
	line	481
	
l4118:
;usb_device.c: 481: memset((void*)&UEP1,0x00,(2));;
	movlw	high((c:3953))	;volatile
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((?_memset+1))&0ffh
	movlw	low((c:3953))	;volatile
	movlb	1	; () banked
	movwf	((?_memset))&0ffh
	movlw	high(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	(1+(?_memset+02h))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movwf	(0+(?_memset+02h))&0ffh
	movlw	high(02h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	(1+(?_memset+04h))&0ffh
	movlw	low(02h)
	movlb	1	; () banked
	movwf	(0+(?_memset+04h))&0ffh
	call	_memset	;wreg free
	line	483
	
l4120:
;usb_device.c: 483: { UCFG = 0x10 | 0x00 | 0x04 | 0x02; UEIE = 0x9F; UIE = 0x39 | 0x40 | 0x02; };
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	
l4122:
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	
l4124:
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	492
	
l4126:
;usb_device.c: 486: ;
;usb_device.c: 489: ;
;usb_device.c: 492: for(i=0;i<(sizeof(BDT)/sizeof(BDT_ENTRY));i++)
	movlb	0	; () banked
	movwf	(??_USBDeviceInit+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBDeviceInit@i))&0ffh
	movlb	0	; () banked
	movf	(??_USBDeviceInit+0+0)&0ffh,w
	
l4128:; BSR set to: 0

	movlw	(0Ch-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u4031
	goto	u4030
u4031:
	goto	l4132
u4030:
	goto	l464
	
l4130:; BSR set to: 0

	goto	l464
	line	493
	
l463:; BSR set to: 0

	line	494
	
l4132:; BSR set to: 0

;usb_device.c: 493: {
;usb_device.c: 494: BDT[i].Val = 0x00;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	04h
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2
	movlw	high(0)
	movwf	postinc2
	movlw	low highword(0)
	movwf	postinc2
	movlw	high highword(0)
	movwf	postdec2
	movf	postdec2
	movf	postdec2
	line	492
	
l4134:
	movlb	0	; () banked
	movlb	0	; () banked
	incf	((USBDeviceInit@i))&0ffh
	
l4136:; BSR set to: 0

	movlw	(0Ch-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u4041
	goto	u4040
u4041:
	goto	l4132
u4040:
	
l464:; BSR set to: 0

	line	498
;usb_device.c: 495: }
;usb_device.c: 498: UCONbits.PPBRST = 1;
	bsf	((c:3949)),c,6	;volatile
	line	501
	
l4138:; BSR set to: 0

;usb_device.c: 501: UADDR = 0x00;
	movlw	low(0)
	movwf	((c:3950)),c	;volatile
	line	504
	
l4140:; BSR set to: 0

;usb_device.c: 504: UCONbits.PKTDIS = 0;
	bcf	((c:3949)),c,4	;volatile
	line	507
	
l4142:; BSR set to: 0

;usb_device.c: 507: UCONbits.PPBRST = 0;
	bcf	((c:3949)),c,6	;volatile
	line	510
;usb_device.c: 510: while(UIRbits.TRNIF == 1)
	goto	l4152
	
l466:; BSR set to: 0

	line	512
	
l4144:; BSR set to: 0

;usb_device.c: 511: {
;usb_device.c: 512: (UIR &= 0xF7);
	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	514
	
l4146:; BSR set to: 0

;usb_device.c: 514: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	515
	
l4148:; BSR set to: 0

;usb_device.c: 515: outPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	516
	
l4150:; BSR set to: 0

;usb_device.c: 516: outPipes[0].wCount.Val = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	goto	l4152
	line	517
	
l465:; BSR set to: 0

	line	510
	
l4152:; BSR set to: 0

	
	btfsc	((c:3944)),c,3	;volatile
	goto	u4051
	goto	u4050
u4051:
	goto	l4144
u4050:
	goto	l4154
	
l467:; BSR set to: 0

	line	521
	
l4154:; BSR set to: 0

;usb_device.c: 517: }
;usb_device.c: 521: USBStatusStageEnabledFlag1 = TRUE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag1))&0ffh	;volatile
	line	522
;usb_device.c: 522: USBStatusStageEnabledFlag2 = TRUE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag2))&0ffh	;volatile
	line	524
;usb_device.c: 524: USBDeferINDataStagePackets = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeferINDataStagePackets))&0ffh	;volatile
	line	525
;usb_device.c: 525: USBDeferOUTDataStagePackets = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	line	526
;usb_device.c: 526: USBBusIsSuspended = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBBusIsSuspended))&0ffh	;volatile
	line	530
	
l4156:; BSR set to: 0

;usb_device.c: 530: for(i = 0; i < (BYTE)(2+1u); i++)
	movlb	0	; () banked
	movwf	(??_USBDeviceInit+0+0)&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((USBDeviceInit@i))&0ffh
	movlb	0	; () banked
	movf	(??_USBDeviceInit+0+0)&0ffh,w
	movlw	(03h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u4061
	goto	u4060
u4061:
	goto	l4160
u4060:
	goto	l4166
	
l4158:; BSR set to: 0

	goto	l4166
	line	531
	
l468:; BSR set to: 0

	line	532
	
l4160:; BSR set to: 0

;usb_device.c: 531: {
;usb_device.c: 532: pBDTEntryIn[i] = 0u;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2
	movlw	high(0)
	movwf	postdec2
	line	533
;usb_device.c: 533: pBDTEntryOut[i] = 0u;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2
	movlw	high(0)
	movwf	postdec2
	line	534
;usb_device.c: 534: ep_data_in[i].Val = 0u;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	535
;usb_device.c: 535: ep_data_out[i].Val = 0u;
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	530
	
l4162:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((USBDeviceInit@i))&0ffh
	
l4164:; BSR set to: 0

	movlw	(03h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((USBDeviceInit@i))&0ffh
	goto	u4071
	goto	u4070
u4071:
	goto	l4160
u4070:
	goto	l4166
	
l469:; BSR set to: 0

	line	539
	
l4166:; BSR set to: 0

;usb_device.c: 536: }
;usb_device.c: 539: pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT+08h)	;volatile
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh
	line	541
;usb_device.c: 541: UEP0 = 0x06|0x10;
	movlw	low(016h)
	movwf	((c:3952)),c	;volatile
	line	543
;usb_device.c: 543: BDT[0].ADR = ((WORD)(&SetupPkt));
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movlb	_BDT>>8	; () unknown bank
	movwf	(1+(_BDT+02h))&0ffh	;volatile
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movlb	_BDT>>8	; () unknown bank
	movwf	(0+(_BDT+02h))&0ffh	;volatile
	line	544
;usb_device.c: 544: BDT[0].CNT = 8;
	movlw	low(08h)
	movlb	_BDT>>8	; () unknown bank
	movwf	(0+(_BDT+01h))&0ffh	;volatile
	line	545
;usb_device.c: 545: BDT[0].STAT.Val = 0x80|0x00|0x04;
	movlw	low(084h)
	movlb	_BDT>>8	; () unknown bank
	movlb	_BDT>>8	; () unknown bank
	movwf	((_BDT))&0ffh	;volatile
	line	548
;usb_device.c: 548: USBActiveConfiguration = 0;
	movlw	low(0)
	movwf	((c:_USBActiveConfiguration)),c	;volatile
	line	551
;usb_device.c: 551: USBDeviceState = DETACHED_STATE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	552
	
l470:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBDeviceInit
	__end_of_USBDeviceInit:
	signat	_USBDeviceInit,88
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\Microchip\xc8\v1.20\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    0[BANK1 ] PTR void 
;;		 -> USBAlternateInterface(2), BDT(48), UEP1(1), 
;;  c               2    2[BANK1 ] int 
;;  n               2    4[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p               2   14[BANK0 ] PTR char 
;;		 -> USBAlternateInterface(2), BDT(48), UEP1(1), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       6       0       0
;;      Locals:         0       0       2       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       2       6       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceInit
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.20\sources\common\memset.c"
	line	10
	global	__size_of_memset
	__size_of_memset	equ	__end_of_memset-_memset
	
_memset:; BSR set to: 0

;incstack = 0
	opt	stack 16
;incstack = 0
	line	18
	
l4396:
	movff	(memset@p1),(memset@p)
	movff	(memset@p1+1),(memset@p+1)
	line	19
	goto	l4402
	
l1250:
	line	20
	
l4398:
	movff	(memset@p),fsr2l
	movff	(memset@p+1),fsr2h
	movlb	1	; () banked
	movff	(memset@c),indf2

	
l4400:; BSR set to: 1

	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((memset@p))&0ffh
	incf	((memset@p+1))&0ffh
	goto	l4402
	
l1249:; BSR set to: 0

	line	19
	
l4402:
	movlb	1	; () banked
	movlb	1	; () banked
	decf	((memset@n))&0ffh
	btfss	status,0
	decf	((memset@n+1))&0ffh
	movlb	1	; () banked
	incf	((memset@n))&0ffh,w
	btfsc	status,2
	incf ((memset@n+1))&0ffh,w

	btfss	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l4398
u4510:
	goto	l1252
	
l1251:; BSR set to: 1

	line	22
;	Return value of _memset is never used
	
l1252:; BSR set to: 1

	return
	opt stack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12410
	global	_UserInit

;; *************** function _UserInit *****************
;; Defined at:
;;		line 789 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       1       0       0       0
;;      Totals:         0       0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   12
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InitializeSystem
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
global __ptext12
__ptext12:
psect	text12
	file	"main.c"
	line	789
	global	__size_of_UserInit
	__size_of_UserInit	equ	__end_of_UserInit-_UserInit
	
_UserInit:; BSR set to: 1

;incstack = 0
	opt	stack 17
;incstack = 0
	line	791
	
l2914:
;main.c: 791: buttonCount = 0;
	movlw	low(0)
	movwf	((c:_buttonCount)),c	;volatile
	line	792
;main.c: 792: buttonPressed = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_buttonPressed))&0ffh	;volatile
	line	793
	
l2916:; BSR set to: 0

;main.c: 793: stringPrinted = TRUE;
	movlb	0	; () banked
	movwf	(??_UserInit+0+0)&0ffh
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_stringPrinted))&0ffh
	movlb	0	; () banked
	movf	(??_UserInit+0+0)&0ffh,w
	line	796
	
l2918:; BSR set to: 0

;main.c: 796: LATD &= 0xF0; TRISD &= 0xF0;;
	movlw	(0F0h)&0ffh
	andwf	((c:3980)),c	;volatile
	
l2920:; BSR set to: 0

	movlw	(0F0h)&0ffh
	andwf	((c:3989)),c	;volatile
	line	799
	
l2922:; BSR set to: 0

;main.c: 799: TRISBbits.TRISB4=1;TRISBbits.TRISB5=1;;
	bsf	((c:3987)),c,4	;volatile
	
l2924:; BSR set to: 0

	bsf	((c:3987)),c,5	;volatile
	line	800
	
l112:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_UserInit
	__end_of_UserInit:
	signat	_UserInit,88
	global	_YourLowPriorityISRCode

;; *************** function _YourLowPriorityISRCode *****************
;; Defined at:
;;		line 418 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0      17       0       0       0       0
;;      Totals:         0      17       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intcodelo,class=CODE,space=0,reloc=2
global __pintcodelo
__pintcodelo:
psect	intcodelo
	file	"main.c"
	line	418
	global	__size_of_YourLowPriorityISRCode
	__size_of_YourLowPriorityISRCode	equ	__end_of_YourLowPriorityISRCode-_YourLowPriorityISRCode
	
_YourLowPriorityISRCode:; BSR set to: 0

;incstack = 0
	opt	stack 16
	movff	status+0,??_YourLowPriorityISRCode+0
	movff	wreg+0,??_YourLowPriorityISRCode+1
	movff	bsr+0,??_YourLowPriorityISRCode+2
	movff	pclat+0,??_YourLowPriorityISRCode+3
	movff	pclat+1,??_YourLowPriorityISRCode+4
	movff	fsr0l+0,??_YourLowPriorityISRCode+5
	movff	fsr0h+0,??_YourLowPriorityISRCode+6
	movff	fsr1l+0,??_YourLowPriorityISRCode+7
	movff	fsr1h+0,??_YourLowPriorityISRCode+8
	movff	fsr2l+0,??_YourLowPriorityISRCode+9
	movff	fsr2h+0,??_YourLowPriorityISRCode+10
	movff	prodl+0,??_YourLowPriorityISRCode+11
	movff	prodh+0,??_YourLowPriorityISRCode+12
	movff	tblptrl+0,??_YourLowPriorityISRCode+13
	movff	tblptrh+0,??_YourLowPriorityISRCode+14
	movff	tblptru+0,??_YourLowPriorityISRCode+15
	movff	tablat+0,??_YourLowPriorityISRCode+16
;incstack = 0
	line	424
	
i1l99:
	movff	??_YourLowPriorityISRCode+16,tablat+0
	movff	??_YourLowPriorityISRCode+15,tblptru+0
	movff	??_YourLowPriorityISRCode+14,tblptrh+0
	movff	??_YourLowPriorityISRCode+13,tblptrl+0
	movff	??_YourLowPriorityISRCode+12,prodh+0
	movff	??_YourLowPriorityISRCode+11,prodl+0
	movff	??_YourLowPriorityISRCode+10,fsr2h+0
	movff	??_YourLowPriorityISRCode+9,fsr2l+0
	movff	??_YourLowPriorityISRCode+8,fsr1h+0
	movff	??_YourLowPriorityISRCode+7,fsr1l+0
	movff	??_YourLowPriorityISRCode+6,fsr0h+0
	movff	??_YourLowPriorityISRCode+5,fsr0l+0
	movff	??_YourLowPriorityISRCode+4,pclat+1
	movff	??_YourLowPriorityISRCode+3,pclat+0
	movff	??_YourLowPriorityISRCode+2,bsr+0
	movff	??_YourLowPriorityISRCode+1,wreg+0
	movff	??_YourLowPriorityISRCode+0,status+0
	retfie
	opt stack 0
GLOBAL	__end_of_YourLowPriorityISRCode
	__end_of_YourLowPriorityISRCode:
	signat	_YourLowPriorityISRCode,1112
	global	_YourHighPriorityISRCode

;; *************** function _YourHighPriorityISRCode *****************
;; Defined at:
;;		line 406 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0      14       0       0       0
;;      Totals:         0       0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_USBDeviceTasks
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"main.c"
	line	406
	global	__size_of_YourHighPriorityISRCode
	__size_of_YourHighPriorityISRCode	equ	__end_of_YourHighPriorityISRCode-_YourHighPriorityISRCode
	
_YourHighPriorityISRCode:
;incstack = 0
	opt	stack 16
	movff	pclat+0,??_YourHighPriorityISRCode+0
	movff	pclat+1,??_YourHighPriorityISRCode+1
	movff	fsr0l+0,??_YourHighPriorityISRCode+2
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0h+0,??_YourHighPriorityISRCode+3
	movff	fsr1l+0,??_YourHighPriorityISRCode+4
	movff	fsr1h+0,??_YourHighPriorityISRCode+5
	movff	fsr2l+0,??_YourHighPriorityISRCode+6
	movff	fsr2h+0,??_YourHighPriorityISRCode+7
	movff	prodl+0,??_YourHighPriorityISRCode+8
	movff	prodh+0,??_YourHighPriorityISRCode+9
	movff	tblptrl+0,??_YourHighPriorityISRCode+10
	movff	tblptrh+0,??_YourHighPriorityISRCode+11
	movff	tblptru+0,??_YourHighPriorityISRCode+12
	movff	tablat+0,??_YourHighPriorityISRCode+13
;incstack = 0
	line	412
	
i2l4056:
;main.c: 412: USBDeviceTasks();
	call	_USBDeviceTasks	;wreg free
	line	415
	
i2l96:
	movff	??_YourHighPriorityISRCode+13,tablat+0
	movff	??_YourHighPriorityISRCode+12,tblptru+0
	movff	??_YourHighPriorityISRCode+11,tblptrh+0
	movff	??_YourHighPriorityISRCode+10,tblptrl+0
	movff	??_YourHighPriorityISRCode+9,prodh+0
	movff	??_YourHighPriorityISRCode+8,prodl+0
	movff	??_YourHighPriorityISRCode+7,fsr2h+0
	movff	??_YourHighPriorityISRCode+6,fsr2l+0
	movff	??_YourHighPriorityISRCode+5,fsr1h+0
	movff	??_YourHighPriorityISRCode+4,fsr1l+0
	movff	??_YourHighPriorityISRCode+3,fsr0h+0
	movff	??_YourHighPriorityISRCode+2,fsr0l+0
	movff	??_YourHighPriorityISRCode+1,pclat+1
	movff	??_YourHighPriorityISRCode+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_YourHighPriorityISRCode
	__end_of_YourHighPriorityISRCode:
	signat	_YourHighPriorityISRCode,88
	global	_USBDeviceTasks

;; *************** function _USBDeviceTasks *****************
;; Defined at:
;;		line 669 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   46[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       2       0       0       0       0
;;      Totals:         0       3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		_USBWakeFromSuspend
;;		_USBSuspend
;;		_USBCtrlEPAllowStatusStage
;;		_USBStallHandler
;;		_USBCtrlEPService
;;		i2_USBDeviceInit
;; This function is called by:
;;		_YourHighPriorityISRCode
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
global __ptext15
__ptext15:
psect	text15
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	669
	global	__size_of_USBDeviceTasks
	__size_of_USBDeviceTasks	equ	__end_of_USBDeviceTasks-_USBDeviceTasks
	
_USBDeviceTasks:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	781
	
i2l2742:
;usb_device.c: 670: BYTE i;
;usb_device.c: 781: if(USBDeviceState == ATTACHED_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((_USBDeviceState))&0ffh,w	;volatile

	btfss	status,2
	goto	i2u202_41
	goto	i2u202_40
i2u202_41:
	goto	i2l2752
i2u202_40:
	line	792
	
i2l2744:; BSR set to: 0

;usb_device.c: 782: {
;usb_device.c: 792: if(!UCONbits.SE0)
	
	btfsc	((c:3949)),c,5	;volatile
	goto	i2u203_41
	goto	i2u203_40
i2u203_41:
	goto	i2l2752
i2u203_40:
	line	794
	
i2l2746:; BSR set to: 0

;usb_device.c: 793: {
;usb_device.c: 794: UIR = 0;;
	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	798
	
i2l2748:; BSR set to: 0

;usb_device.c: 798: UIEbits.URSTIE = 1;
	bsf	((c:3945)),c,0	;volatile
	line	799
	
i2l2750:; BSR set to: 0

;usb_device.c: 799: UIEbits.IDLEIE = 1;
	bsf	((c:3945)),c,4	;volatile
	line	800
;usb_device.c: 800: USBDeviceState = POWERED_STATE;
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l2752
	line	801
	
i2l474:; BSR set to: 0

	goto	i2l2752
	line	802
	
i2l473:; BSR set to: 0

	line	818
	
i2l2752:; BSR set to: 0

;usb_device.c: 801: }
;usb_device.c: 802: }
;usb_device.c: 818: if(UIRbits.ACTVIF && UIEbits.ACTVIE)
	
	btfss	((c:3944)),c,2	;volatile
	goto	i2u204_41
	goto	i2u204_40
i2u204_41:
	goto	i2l2760
i2u204_40:
	
i2l2754:; BSR set to: 0

	
	btfss	((c:3945)),c,2	;volatile
	goto	i2u205_41
	goto	i2u205_40
i2u205_41:
	goto	i2l2760
i2u205_40:
	line	820
	
i2l2756:; BSR set to: 0

;usb_device.c: 819: {
;usb_device.c: 820: (UIR &= 0xFB);
	bcf	(0+(2/8)+(c:3944)),c,(2)&7	;volatile
	line	824
	
i2l2758:; BSR set to: 0

;usb_device.c: 824: USBWakeFromSuspend();
	call	_USBWakeFromSuspend	;wreg free
	goto	i2l2760
	line	826
	
i2l475:
	line	831
	
i2l2760:
;usb_device.c: 826: }
;usb_device.c: 831: if(UCONbits.SUSPND==1)
	
	btfss	((c:3949)),c,1	;volatile
	goto	i2u206_41
	goto	i2u206_40
i2u206_41:
	goto	i2l476
i2u206_40:
	line	833
	
i2l2762:
;usb_device.c: 832: {
;usb_device.c: 833: PIR2bits.USBIF = 0;;
	bcf	((c:4001)),c,5	;volatile
	line	834
;usb_device.c: 834: return;
	goto	i2l477
	line	835
	
i2l476:
	line	847
;usb_device.c: 835: }
;usb_device.c: 847: if(UIRbits.URSTIF && UIEbits.URSTIE)
	
	btfss	((c:3944)),c,0	;volatile
	goto	i2u207_41
	goto	i2u207_40
i2u207_41:
	goto	i2l2774
i2u207_40:
	
i2l2764:
	
	btfss	((c:3945)),c,0	;volatile
	goto	i2u208_41
	goto	i2u208_40
i2u208_41:
	goto	i2l2774
i2u208_40:
	line	849
	
i2l2766:
;usb_device.c: 848: {
;usb_device.c: 849: USBDeviceInit();
	call	i2_USBDeviceInit	;wreg free
	line	853
	
i2l2768:
;usb_device.c: 853: {PIE2bits.USBIE = 1;};
	bsf	((c:4000)),c,5	;volatile
	line	855
	
i2l2770:
;usb_device.c: 855: USBDeviceState = DEFAULT_STATE;
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	865
	
i2l2772:; BSR set to: 0

;usb_device.c: 865: (UIR &= 0xFE);
	bcf	(0+(0/8)+(c:3944)),c,(0)&7	;volatile
	goto	i2l2774
	line	866
	
i2l478:; BSR set to: 0

	line	871
	
i2l2774:
;usb_device.c: 866: }
;usb_device.c: 871: if(UIRbits.IDLEIF && UIEbits.IDLEIE)
	
	btfss	((c:3944)),c,4	;volatile
	goto	i2u209_41
	goto	i2u209_40
i2u209_41:
	goto	i2l2782
i2u209_40:
	
i2l2776:
	
	btfss	((c:3945)),c,4	;volatile
	goto	i2u210_41
	goto	i2u210_40
i2u210_41:
	goto	i2l2782
i2u210_40:
	line	877
	
i2l2778:
;usb_device.c: 872: {
;usb_device.c: 877: USBSuspend();
	call	_USBSuspend	;wreg free
	line	880
	
i2l2780:
;usb_device.c: 880: (UIR &= 0xEF);
	bcf	(0+(4/8)+(c:3944)),c,(4)&7	;volatile
	goto	i2l2782
	line	881
	
i2l479:
	line	883
	
i2l2782:
;usb_device.c: 881: }
;usb_device.c: 883: if(UIRbits.SOFIF)
	
	btfss	((c:3944)),c,6	;volatile
	goto	i2u211_41
	goto	i2u211_40
i2u211_41:
	goto	i2l2798
i2u211_40:
	line	885
	
i2l2784:
;usb_device.c: 884: {
;usb_device.c: 885: if(UIEbits.SOFIE)
	
	btfss	((c:3945)),c,6	;volatile
	goto	i2u212_41
	goto	i2u212_40
i2u212_41:
	goto	i2l2788
i2u212_40:
	line	887
	
i2l2786:
;usb_device.c: 886: {
;usb_device.c: 887: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SOF,0,1);
	movlw	high(073h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(073h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	high(01h)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(01h)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	goto	i2l2788
	line	888
	
i2l481:
	line	889
	
i2l2788:
;usb_device.c: 888: }
;usb_device.c: 889: (UIR &= 0xBF);
	bcf	(0+(6/8)+(c:3944)),c,(6)&7	;volatile
	line	914
	
i2l2790:
;usb_device.c: 914: if(USBStatusStageTimeoutCounter != 0u)
	movf	((c:_USBStatusStageTimeoutCounter)),c,w	;volatile
	btfsc	status,2
	goto	i2u213_41
	goto	i2u213_40
i2u213_41:
	goto	i2l2794
i2u213_40:
	line	916
	
i2l2792:
;usb_device.c: 915: {
;usb_device.c: 916: USBStatusStageTimeoutCounter--;
	decf	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	goto	i2l2794
	line	917
	
i2l482:
	line	923
	
i2l2794:
;usb_device.c: 917: }
;usb_device.c: 923: if(USBStatusStageTimeoutCounter == 0)
	tstfsz	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	goto	i2u214_41
	goto	i2u214_40
i2u214_41:
	goto	i2l2798
i2u214_40:
	line	925
	
i2l2796:
;usb_device.c: 924: {
;usb_device.c: 925: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l2798
	line	926
	
i2l483:
	goto	i2l2798
	line	928
	
i2l480:
	line	930
	
i2l2798:
;usb_device.c: 926: }
;usb_device.c: 928: }
;usb_device.c: 930: if(UIRbits.STALLIF && UIEbits.STALLIE)
	
	btfss	((c:3944)),c,5	;volatile
	goto	i2u215_41
	goto	i2u215_40
i2u215_41:
	goto	i2l2804
i2u215_40:
	
i2l2800:
	
	btfss	((c:3945)),c,5	;volatile
	goto	i2u216_41
	goto	i2u216_40
i2u216_41:
	goto	i2l2804
i2u216_40:
	line	932
	
i2l2802:
;usb_device.c: 931: {
;usb_device.c: 932: USBStallHandler();
	call	_USBStallHandler	;wreg free
	goto	i2l2804
	line	933
	
i2l484:
	line	935
	
i2l2804:
;usb_device.c: 933: }
;usb_device.c: 935: if(UIRbits.UERRIF && UIEbits.UERRIE)
	
	btfss	((c:3944)),c,1	;volatile
	goto	i2u217_41
	goto	i2u217_40
i2u217_41:
	goto	i2l2812
i2u217_40:
	
i2l2806:
	
	btfss	((c:3945)),c,1	;volatile
	goto	i2u218_41
	goto	i2u218_40
i2u218_41:
	goto	i2l2812
i2u218_40:
	line	937
	
i2l2808:
;usb_device.c: 936: {
;usb_device.c: 937: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_BUS_ERROR,0,1);
	movlw	high(07FFFh)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(07FFFh)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	high(01h)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(01h)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	938
	
i2l2810:
;usb_device.c: 938: UEIR = 0;;
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	goto	i2l2812
	line	946
	
i2l485:
	line	953
	
i2l2812:
;usb_device.c: 946: }
;usb_device.c: 953: if(USBDeviceState < DEFAULT_STATE)
	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	cpfslt	((_USBDeviceState))&0ffh	;volatile
	goto	i2u219_41
	goto	i2u219_40
i2u219_41:
	goto	i2l486
i2u219_40:
	line	955
	
i2l2814:; BSR set to: 0

;usb_device.c: 954: {
;usb_device.c: 955: PIR2bits.USBIF = 0;;
	bcf	((c:4001)),c,5	;volatile
	line	956
;usb_device.c: 956: return;
	goto	i2l477
	line	957
	
i2l486:; BSR set to: 0

	line	962
;usb_device.c: 957: }
;usb_device.c: 962: if(UIEbits.TRNIE)
	
	btfss	((c:3945)),c,3	;volatile
	goto	i2u220_41
	goto	i2u220_40
i2u220_41:
	goto	i2l487
i2u220_40:
	line	964
	
i2l2816:; BSR set to: 0

;usb_device.c: 963: {
;usb_device.c: 964: for(i = 0; i < 4u; i++)
	movwf	(??_USBDeviceTasks+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:USBDeviceTasks@i)),c
	movf	(??_USBDeviceTasks+0+0)&0ffh,c,w
	
i2l2818:; BSR set to: 0

	movlw	(04h-1)
	cpfsgt	((c:USBDeviceTasks@i)),c
	goto	i2u221_41
	goto	i2u221_40
i2u221_41:
	goto	i2l488
i2u221_40:
	goto	i2l487
	
i2l2820:; BSR set to: 0

	goto	i2l487
	line	965
	
i2l488:
	line	966
;usb_device.c: 965: {
;usb_device.c: 966: if(UIRbits.TRNIF)
	
	btfss	((c:3944)),c,3	;volatile
	goto	i2u222_41
	goto	i2u222_40
i2u222_41:
	goto	i2l487
i2u222_40:
	line	969
	
i2l2822:
;usb_device.c: 967: {
;usb_device.c: 969: USTATcopy.Val = USTAT;
	movff	(c:3948),(c:_USTATcopy)	;volatile
	line	970
	
i2l2824:
;usb_device.c: 970: endpoint_number = USTATcopy.endpoint_number;
	rrcf	((c:_USTATcopy)),c,w	;volatile
	rrcf	wreg,f
	rrcf	wreg,f
	andlw	(1<<4)-1
	movwf	((c:_endpoint_number)),c	;volatile
	line	972
	
i2l2826:
;usb_device.c: 972: (UIR &= 0xF7);
	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	977
	
i2l2828:
;usb_device.c: 977: if(USTATcopy.direction == 0)
	
	btfsc	((c:_USTATcopy)),c,2	;volatile
	goto	i2u223_41
	goto	i2u223_40
i2u223_41:
	goto	i2l2832
i2u223_40:
	line	979
	
i2l2830:
;usb_device.c: 978: {
;usb_device.c: 979: ep_data_out[endpoint_number].bits.ping_pong_state ^= 1;
	movlw	(01h)&0ffh
	movwf	(??_USBDeviceTasks+0+0)&0ffh,c
	movf	((c:_endpoint_number)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	(indf2)&0ffh,w
	andlw	(1<<1)-1
	movwf	(??_USBDeviceTasks+1+0)&0ffh,c
	movf	((??_USBDeviceTasks+0+0)),c,w
	xorwf	(??_USBDeviceTasks+1+0),c
	movlb	0	; () banked
	movf	(indf2)&0ffh,w
	xorwf	(??_USBDeviceTasks+1+0)&0ffh,c,w
	andlw	not ((1<<1)-1)
	xorwf	(??_USBDeviceTasks+1+0)&0ffh,c,w
	movlb	0	; () banked
	movwf	(indf2)&0ffh
	line	980
;usb_device.c: 980: }
	goto	i2l2834
	line	981
	
i2l491:; BSR set to: 0

	line	983
	
i2l2832:
;usb_device.c: 981: else
;usb_device.c: 982: {
;usb_device.c: 983: ep_data_in[endpoint_number].bits.ping_pong_state ^= 1;
	movlw	(01h)&0ffh
	movwf	(??_USBDeviceTasks+0+0)&0ffh,c
	movf	((c:_endpoint_number)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	(indf2)&0ffh,w
	andlw	(1<<1)-1
	movwf	(??_USBDeviceTasks+1+0)&0ffh,c
	movf	((??_USBDeviceTasks+0+0)),c,w
	xorwf	(??_USBDeviceTasks+1+0),c
	movlb	0	; () banked
	movf	(indf2)&0ffh,w
	xorwf	(??_USBDeviceTasks+1+0)&0ffh,c,w
	andlw	not ((1<<1)-1)
	xorwf	(??_USBDeviceTasks+1+0)&0ffh,c,w
	movlb	0	; () banked
	movwf	(indf2)&0ffh
	goto	i2l2834
	line	984
	
i2l492:; BSR set to: 0

	line	989
	
i2l2834:; BSR set to: 0

;usb_device.c: 984: }
;usb_device.c: 989: if(endpoint_number == 0)
	tstfsz	((c:_endpoint_number)),c	;volatile
	goto	i2u224_41
	goto	i2u224_40
i2u224_41:
	goto	i2l2838
i2u224_40:
	line	991
	
i2l2836:; BSR set to: 0

;usb_device.c: 990: {
;usb_device.c: 991: USBCtrlEPService();
	call	_USBCtrlEPService	;wreg free
	line	992
;usb_device.c: 992: }
	goto	i2l2840
	line	993
	
i2l493:
	line	995
	
i2l2838:
;usb_device.c: 993: else
;usb_device.c: 994: {
;usb_device.c: 995: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER,(BYTE*)&USTATcopy.Val,0);
	movlw	high(072h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(072h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movlw	high((c:_USTATcopy))	;volatile
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	low((c:_USTATcopy))	;volatile
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	goto	i2l2840
	line	996
	
i2l494:
	line	997
;usb_device.c: 996: }
;usb_device.c: 997: }
	goto	i2l2840
	line	998
	
i2l490:
	line	999
;usb_device.c: 998: else
;usb_device.c: 999: break;
	goto	i2l487
	
i2l495:
	line	964
	
i2l2840:
	incf	((c:USBDeviceTasks@i)),c
	
i2l2842:
	movlw	(04h-1)
	cpfsgt	((c:USBDeviceTasks@i)),c
	goto	i2u225_41
	goto	i2u225_40
i2u225_41:
	goto	i2l488
i2u225_40:
	goto	i2l487
	
i2l489:
	line	1001
	
i2l487:
	line	1003
;usb_device.c: 1000: }
;usb_device.c: 1001: }
;usb_device.c: 1003: PIR2bits.USBIF = 0;;
	bcf	((c:4001)),c,5	;volatile
	line	1004
	
i2l477:
	return
	opt stack 0
GLOBAL	__end_of_USBDeviceTasks
	__end_of_USBDeviceTasks:
	signat	_USBDeviceTasks,88
	global	i2_USBDeviceInit

;; *************** function i2_USBDeviceInit *****************
;; Defined at:
;;		line 467 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  USBDeviceIni    1    3[config] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2_memset
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
global __ptext16
__ptext16:
psect	text16
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	467
	global	__size_ofi2_USBDeviceInit
	__size_ofi2_USBDeviceInit	equ	__end_ofi2_USBDeviceInit-i2_USBDeviceInit
	
i2_USBDeviceInit:
;incstack = 0
	opt	stack 23
;incstack = 0
	line	470
	
i2l3946:
;usb_device.c: 468: BYTE i;
;usb_device.c: 470: {PIE2bits.USBIE = 0;};
	bcf	((c:4000)),c,5	;volatile
	line	473
	
i2l3948:
;usb_device.c: 473: UEIR = 0;;
	movlw	low(0)
	movwf	((c:3946)),c	;volatile
	line	476
;usb_device.c: 476: UIR = 0;;
	movlw	low(0)
	movwf	((c:3944)),c	;volatile
	line	479
;usb_device.c: 479: UEP0 = 0;
	movlw	low(0)
	movwf	((c:3952)),c	;volatile
	line	481
	
i2l3950:
;usb_device.c: 481: memset((void*)&UEP1,0x00,(2));;
	movlw	high((c:3953))	;volatile
	movwf	((c:?i2_memset+1)),c
	movlw	low((c:3953))	;volatile
	movwf	((c:?i2_memset)),c
	movlw	high(0)
	movwf	(1+((c:?i2_memset)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?i2_memset)+02h)),c
	movlw	high(02h)
	movwf	(1+((c:?i2_memset)+04h)),c
	movlw	low(02h)
	movwf	(0+((c:?i2_memset)+04h)),c
	call	i2_memset	;wreg free
	line	483
	
i2l3952:
;usb_device.c: 483: { UCFG = 0x10 | 0x00 | 0x04 | 0x02; UEIE = 0x9F; UIE = 0x39 | 0x40 | 0x02; };
	movlw	low(016h)
	movwf	((c:3951)),c	;volatile
	
i2l3954:
	movlw	low(09Fh)
	movwf	((c:3947)),c	;volatile
	
i2l3956:
	movlw	low(07Bh)
	movwf	((c:3945)),c	;volatile
	line	492
	
i2l3958:
;usb_device.c: 486: ;
;usb_device.c: 489: ;
;usb_device.c: 492: for(i=0;i<(sizeof(BDT)/sizeof(BDT_ENTRY));i++)
	movwf	(??i2_USBDeviceInit+0+0)&0ffh
	movlw	low(0)
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movwf	((i2USBDeviceInit@i))&0ffh
	movf	(??i2_USBDeviceInit+0+0)&0ffh,w
	
i2l3960:
	movlw	(0Ch-1)
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	cpfsgt	((i2USBDeviceInit@i))&0ffh
	goto	i2u385_41
	goto	i2u385_40
i2u385_41:
	goto	i2l3964
i2u385_40:
	goto	i2l464
	
i2l3962:
	goto	i2l464
	line	493
	
i2l463:
	line	494
	
i2l3964:
;usb_device.c: 493: {
;usb_device.c: 494: BDT[i].Val = 0x00;
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movf	((i2USBDeviceInit@i))&0ffh,w
	mullw	04h
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2
	movlw	high(0)
	movwf	postinc2
	movlw	low highword(0)
	movwf	postinc2
	movlw	high highword(0)
	movwf	postdec2
	movf	postdec2
	movf	postdec2
	line	492
	
i2l3966:
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	incf	((i2USBDeviceInit@i))&0ffh
	
i2l3968:
	movlw	(0Ch-1)
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	cpfsgt	((i2USBDeviceInit@i))&0ffh
	goto	i2u386_41
	goto	i2u386_40
i2u386_41:
	goto	i2l3964
i2u386_40:
	
i2l464:
	line	498
;usb_device.c: 495: }
;usb_device.c: 498: UCONbits.PPBRST = 1;
	bsf	((c:3949)),c,6	;volatile
	line	501
	
i2l3970:
;usb_device.c: 501: UADDR = 0x00;
	movlw	low(0)
	movwf	((c:3950)),c	;volatile
	line	504
	
i2l3972:
;usb_device.c: 504: UCONbits.PKTDIS = 0;
	bcf	((c:3949)),c,4	;volatile
	line	507
	
i2l3974:
;usb_device.c: 507: UCONbits.PPBRST = 0;
	bcf	((c:3949)),c,6	;volatile
	line	510
;usb_device.c: 510: while(UIRbits.TRNIF == 1)
	goto	i2l3984
	
i2l466:
	line	512
	
i2l3976:
;usb_device.c: 511: {
;usb_device.c: 512: (UIR &= 0xF7);
	bcf	(0+(3/8)+(c:3944)),c,(3)&7	;volatile
	line	514
	
i2l3978:
;usb_device.c: 514: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	515
	
i2l3980:; BSR set to: 0

;usb_device.c: 515: outPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	516
	
i2l3982:; BSR set to: 0

;usb_device.c: 516: outPipes[0].wCount.Val = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	goto	i2l3984
	line	517
	
i2l465:; BSR set to: 0

	line	510
	
i2l3984:
	
	btfsc	((c:3944)),c,3	;volatile
	goto	i2u387_41
	goto	i2u387_40
i2u387_41:
	goto	i2l3976
i2u387_40:
	goto	i2l3986
	
i2l467:
	line	521
	
i2l3986:
;usb_device.c: 517: }
;usb_device.c: 521: USBStatusStageEnabledFlag1 = TRUE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag1))&0ffh	;volatile
	line	522
;usb_device.c: 522: USBStatusStageEnabledFlag2 = TRUE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag2))&0ffh	;volatile
	line	524
;usb_device.c: 524: USBDeferINDataStagePackets = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeferINDataStagePackets))&0ffh	;volatile
	line	525
;usb_device.c: 525: USBDeferOUTDataStagePackets = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	line	526
;usb_device.c: 526: USBBusIsSuspended = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBBusIsSuspended))&0ffh	;volatile
	line	530
	
i2l3988:; BSR set to: 0

;usb_device.c: 530: for(i = 0; i < (BYTE)(2+1u); i++)
	movwf	(??i2_USBDeviceInit+0+0)&0ffh
	movlw	low(0)
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movwf	((i2USBDeviceInit@i))&0ffh
	movf	(??i2_USBDeviceInit+0+0)&0ffh,w
	movlw	(03h-1)
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	cpfsgt	((i2USBDeviceInit@i))&0ffh
	goto	i2u388_41
	goto	i2u388_40
i2u388_41:
	goto	i2l3992
i2u388_40:
	goto	i2l3998
	
i2l3990:
	goto	i2l3998
	line	531
	
i2l468:
	line	532
	
i2l3992:
;usb_device.c: 531: {
;usb_device.c: 532: pBDTEntryIn[i] = 0u;
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movf	((i2USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2
	movlw	high(0)
	movwf	postdec2
	line	533
;usb_device.c: 533: pBDTEntryOut[i] = 0u;
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movf	((i2USBDeviceInit@i))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2
	movlw	high(0)
	movwf	postdec2
	line	534
;usb_device.c: 534: ep_data_in[i].Val = 0u;
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movf	((i2USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	535
;usb_device.c: 535: ep_data_out[i].Val = 0u;
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movf	((i2USBDeviceInit@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	530
	
i2l3994:; BSR set to: 0

	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	incf	((i2USBDeviceInit@i))&0ffh
	
i2l3996:
	movlw	(03h-1)
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	movlb	i2USBDeviceInit@i>>8	; () unknown bank
	cpfsgt	((i2USBDeviceInit@i))&0ffh
	goto	i2u389_41
	goto	i2u389_40
i2u389_41:
	goto	i2l3992
i2u389_40:
	goto	i2l3998
	
i2l469:
	line	539
	
i2l3998:
;usb_device.c: 536: }
;usb_device.c: 539: pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT+08h)	;volatile
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh
	line	541
;usb_device.c: 541: UEP0 = 0x06|0x10;
	movlw	low(016h)
	movwf	((c:3952)),c	;volatile
	line	543
;usb_device.c: 543: BDT[0].ADR = ((WORD)(&SetupPkt));
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movlb	_BDT>>8	; () unknown bank
	movwf	(1+(_BDT+02h))&0ffh	;volatile
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movlb	_BDT>>8	; () unknown bank
	movwf	(0+(_BDT+02h))&0ffh	;volatile
	line	544
;usb_device.c: 544: BDT[0].CNT = 8;
	movlw	low(08h)
	movlb	_BDT>>8	; () unknown bank
	movwf	(0+(_BDT+01h))&0ffh	;volatile
	line	545
;usb_device.c: 545: BDT[0].STAT.Val = 0x80|0x00|0x04;
	movlw	low(084h)
	movlb	_BDT>>8	; () unknown bank
	movlb	_BDT>>8	; () unknown bank
	movwf	((_BDT))&0ffh	;volatile
	line	548
;usb_device.c: 548: USBActiveConfiguration = 0;
	movlw	low(0)
	movwf	((c:_USBActiveConfiguration)),c	;volatile
	line	551
;usb_device.c: 551: USBDeviceState = DETACHED_STATE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	552
	
i2l470:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_ofi2_USBDeviceInit
	__end_ofi2_USBDeviceInit:
	signat	i2_USBDeviceInit,88
	global	_USBCtrlEPService

;; *************** function _USBCtrlEPService *****************
;; Defined at:
;;		line 2523 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  setup_cnt       1   43[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       2       0       0       0       0
;;      Totals:         0       3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_USBCtrlTrfSetupHandler
;;		_USBCtrlTrfOutHandler
;;		_USBCtrlTrfInHandler
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
global __ptext17
__ptext17:
psect	text17
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2523
	global	__size_of_USBCtrlEPService
	__size_of_USBCtrlEPService	equ	__end_of_USBCtrlEPService-_USBCtrlEPService
	
_USBCtrlEPService:; BSR set to: 0

;incstack = 0
	opt	stack 16
;incstack = 0
	line	2528
	
i2l3434:
;usb_device.c: 2528: USBStatusStageTimeoutCounter = (BYTE)45;
	movlw	low(02Dh)
	movwf	((c:_USBStatusStageTimeoutCounter)),c	;volatile
	line	2532
	
i2l3436:
;usb_device.c: 2532: if((USTATcopy.Val & ~0x02) == 0x00)
	movf	((c:_USTATcopy)),c,w	;volatile
	andlw	low(0FDh)
	btfss	status,2
	goto	i2u311_41
	goto	i2u311_40
i2u311_41:
	goto	i2l3466
i2u311_40:
	line	2536
	
i2l3438:
;usb_device.c: 2533: {
;usb_device.c: 2536: pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[(USTATcopy.Val & 0x7E)>>1];
	movff	(c:_USTATcopy),??_USBCtrlEPService+0+0	;volatile
	bcf	status,0
	rrcf	(??_USBCtrlEPService+0+0),c

	movlw	03Fh
	andwf	(??_USBCtrlEPService+0+0),c
	movf	(??_USBCtrlEPService+0+0),c,w
	mullw	04h
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT)	;volatile
	addwf	(prodl),c,w
	
	movwf	((c:_pBDTEntryEP0OutCurrent)),c
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT)	;volatile
	addwfc	prod+1,w
	movwf	1+((c:_pBDTEntryEP0OutCurrent)),c
	line	2544
	
i2l3440:
;usb_device.c: 2544: pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;
	movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)
	movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)
	line	2546
	
i2l3442:
;usb_device.c: 2546: ((BYTE_VAL*)&pBDTEntryEP0OutNext)->Val ^= 0x0004;
	movlw	(04h)&0ffh
	xorwf	((c:_pBDTEntryEP0OutNext)),c
	line	2549
	
i2l3444:
;usb_device.c: 2549: if(pBDTEntryEP0OutCurrent->STAT.PID == 0xD)
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	rrcf	(indf2),c,w
	rrcf	wreg,f
	andlw	(1<<4)-1
	xorlw	0Dh
	btfss	status,2
	goto	i2u312_41
	goto	i2u312_40
i2u312_41:
	goto	i2l3464
i2u312_40:
	line	2557
	
i2l3446:
;usb_device.c: 2550: {
;usb_device.c: 2551: unsigned char setup_cnt;
;usb_device.c: 2557: for(setup_cnt = 0; setup_cnt < 8u; setup_cnt++)
	movwf	(??_USBCtrlEPService+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:USBCtrlEPService@setup_cnt)),c
	movf	(??_USBCtrlEPService+0+0)&0ffh,c,w
	
i2l3448:
	movlw	(08h-1)
	cpfsgt	((c:USBCtrlEPService@setup_cnt)),c
	goto	i2u313_41
	goto	i2u313_40
i2u313_41:
	goto	i2l3452
i2u313_40:
	goto	i2l3460
	
i2l3450:
	goto	i2l3460
	line	2558
	
i2l640:
	line	2559
	
i2l3452:
;usb_device.c: 2558: {
;usb_device.c: 2559: *(BYTE*)((BYTE*)&SetupPkt + setup_cnt) = *(BYTE*)((void *)(pBDTEntryEP0OutCurrent->ADR));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movff	postinc2,??_USBCtrlEPService+0+0
	movff	postdec2,??_USBCtrlEPService+0+0+1
	movff	??_USBCtrlEPService+0+0,fsr2l
	movff	??_USBCtrlEPService+0+1,fsr2h
	movf	((c:USBCtrlEPService@setup_cnt)),c,w
	mullw	01h
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	2560
	
i2l3454:
;usb_device.c: 2560: pBDTEntryEP0OutCurrent->ADR++;
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	2557
	
i2l3456:
	incf	((c:USBCtrlEPService@setup_cnt)),c
	
i2l3458:
	movlw	(08h-1)
	cpfsgt	((c:USBCtrlEPService@setup_cnt)),c
	goto	i2u314_41
	goto	i2u314_40
i2u314_41:
	goto	i2l3452
i2u314_40:
	goto	i2l3460
	
i2l641:
	line	2562
	
i2l3460:
;usb_device.c: 2561: }
;usb_device.c: 2562: pBDTEntryEP0OutCurrent->ADR = ((WORD)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movwf	postinc2
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movwf	postdec2
	line	2565
	
i2l3462:
;usb_device.c: 2565: USBCtrlTrfSetupHandler();
	call	_USBCtrlTrfSetupHandler	;wreg free
	line	2566
;usb_device.c: 2566: }
	goto	i2l645
	line	2567
	
i2l639:
	line	2570
	
i2l3464:
;usb_device.c: 2567: else
;usb_device.c: 2568: {
;usb_device.c: 2570: USBCtrlTrfOutHandler();
	call	_USBCtrlTrfOutHandler	;wreg free
	goto	i2l645
	line	2571
	
i2l642:
	line	2572
;usb_device.c: 2571: }
;usb_device.c: 2572: }
	goto	i2l645
	line	2573
	
i2l638:
	
i2l3466:
;usb_device.c: 2573: else if((USTATcopy.Val & ~0x02) == 0x04)
	movf	((c:_USTATcopy)),c,w	;volatile
	andlw	low(0FDh)
	xorlw	04h
	btfss	status,2
	goto	i2u315_41
	goto	i2u315_40
i2u315_41:
	goto	i2l645
i2u315_40:
	line	2577
	
i2l3468:
;usb_device.c: 2574: {
;usb_device.c: 2577: USBCtrlTrfInHandler();
	call	_USBCtrlTrfInHandler	;wreg free
	goto	i2l645
	line	2578
	
i2l644:
	goto	i2l645
	line	2580
	
i2l643:
	
i2l645:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPService
	__end_of_USBCtrlEPService:
	signat	_USBCtrlEPService,88
	global	_USBCtrlTrfInHandler

;; *************** function _USBCtrlTrfInHandler *****************
;; Defined at:
;;		line 2748 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lastDTS         1    3[config] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Absolute function
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
global __ptext18
__ptext18:
psect	text18
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2748
	global	__size_of_USBCtrlTrfInHandler
	__size_of_USBCtrlTrfInHandler	equ	__end_of_USBCtrlTrfInHandler-_USBCtrlTrfInHandler
	
_USBCtrlTrfInHandler:
;incstack = 0
	opt	stack 22
;incstack = 0
	line	2751
	
i2l3790:
;usb_device.c: 2749: BYTE lastDTS;
;usb_device.c: 2751: lastDTS = pBDTEntryIn[0]->STAT.DTS;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlb	0	; () banked
	swapf	(indf2)&0ffh,w
	rrcf	wreg,f
	rrcf	wreg,f
	andlw	(1<<1)-1
	movlb	USBCtrlTrfInHandler@lastDTS>>8	; () unknown bank
	movlb	USBCtrlTrfInHandler@lastDTS>>8	; () unknown bank
	movwf	((USBCtrlTrfInHandler@lastDTS))&0ffh
	line	2754
	
i2l3792:
;usb_device.c: 2754: ((BYTE_VAL*)&pBDTEntryIn[0])->Val ^= 0x0004;
	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh
	line	2759
	
i2l3794:; BSR set to: 0

;usb_device.c: 2759: if(USBDeviceState == ADR_PENDING_STATE)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	8

	btfss	status,2
	goto	i2u358_41
	goto	i2u358_40
i2u358_41:
	goto	i2l3804
i2u358_40:
	line	2761
	
i2l3796:; BSR set to: 0

;usb_device.c: 2760: {
;usb_device.c: 2761: UADDR = SetupPkt.bDevADR.Val;
	movff	0+(_SetupPkt+02h),(c:3950)	;volatile
	line	2762
	
i2l3798:; BSR set to: 0

;usb_device.c: 2762: if(UADDR != 0u)
	movf	((c:3950)),c,w	;volatile
	btfsc	status,2
	goto	i2u359_41
	goto	i2u359_40
i2u359_41:
	goto	i2l3802
i2u359_40:
	line	2764
	
i2l3800:; BSR set to: 0

;usb_device.c: 2763: {
;usb_device.c: 2764: USBDeviceState=ADDRESS_STATE;
	movlw	low(010h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2765
;usb_device.c: 2765: }
	goto	i2l3804
	line	2766
	
i2l659:; BSR set to: 0

	line	2768
	
i2l3802:; BSR set to: 0

;usb_device.c: 2766: else
;usb_device.c: 2767: {
;usb_device.c: 2768: USBDeviceState=DEFAULT_STATE;
	movlw	low(04h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l3804
	line	2769
	
i2l660:; BSR set to: 0

	goto	i2l3804
	line	2770
	
i2l658:; BSR set to: 0

	line	2773
	
i2l3804:; BSR set to: 0

;usb_device.c: 2769: }
;usb_device.c: 2770: }
;usb_device.c: 2773: if(controlTransferState == 1)
	decf	((c:_controlTransferState)),c,w	;volatile

	btfss	status,2
	goto	i2u360_41
	goto	i2u360_40
i2u360_41:
	goto	i2l661
i2u360_40:
	line	2775
	
i2l3806:; BSR set to: 0

;usb_device.c: 2774: {
;usb_device.c: 2775: pBDTEntryIn[0]->ADR = ((WORD)(CtrlTrfData));
	movlb	0	; () banked
	lfsr	2,02h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	low(_CtrlTrfData)	;volatile
	movwf	postinc2
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	high(_CtrlTrfData)	;volatile
	movwf	postdec2
	line	2776
	
i2l3808:
;usb_device.c: 2776: USBCtrlTrfTxService();
	call	_USBCtrlTrfTxService	;wreg free
	line	2782
	
i2l3810:
;usb_device.c: 2782: if(shortPacketStatus == 2)
	movf	((c:_shortPacketStatus)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u361_41
	goto	i2u361_40
i2u361_41:
	goto	i2l662
i2u361_40:
	line	2786
	
i2l3812:
;usb_device.c: 2783: {
;usb_device.c: 2786: pBDTEntryIn[0]->STAT.Val = 0x80|0x04;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(084h)
	movwf	indf2
	line	2787
;usb_device.c: 2787: }
	goto	i2l669
	line	2788
	
i2l662:
	line	2790
;usb_device.c: 2788: else
;usb_device.c: 2789: {
;usb_device.c: 2790: if(lastDTS == 0)
	movlb	USBCtrlTrfInHandler@lastDTS>>8	; () unknown bank
	movlb	USBCtrlTrfInHandler@lastDTS>>8	; () unknown bank
	tstfsz	((USBCtrlTrfInHandler@lastDTS))&0ffh
	goto	i2u362_41
	goto	i2u362_40
i2u362_41:
	goto	i2l3816
i2u362_40:
	line	2792
	
i2l3814:
;usb_device.c: 2791: {
;usb_device.c: 2792: pBDTEntryIn[0]->STAT.Val = 0x80|0x40|(0x08 & 0x08);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(0C8h)
	movwf	indf2
	line	2793
;usb_device.c: 2793: }
	goto	i2l669
	line	2794
	
i2l664:
	line	2796
	
i2l3816:
;usb_device.c: 2794: else
;usb_device.c: 2795: {
;usb_device.c: 2796: pBDTEntryIn[0]->STAT.Val = 0x80|0x00|(0x08 & 0x08);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(088h)
	movwf	indf2
	goto	i2l669
	line	2797
	
i2l665:
	goto	i2l669
	line	2798
	
i2l663:
	line	2799
;usb_device.c: 2797: }
;usb_device.c: 2798: }
;usb_device.c: 2799: }
	goto	i2l669
	line	2800
	
i2l661:; BSR set to: 0

	line	2805
;usb_device.c: 2800: else
;usb_device.c: 2801: {
;usb_device.c: 2805: if(outPipes[0].info.bits.busy == 1)
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2u363_41
	goto	i2u363_40
i2u363_41:
	goto	i2l3824
i2u363_40:
	line	2807
	
i2l3818:; BSR set to: 0

;usb_device.c: 2806: {
;usb_device.c: 2807: if(outPipes[0].pFunc != (0))
	movlb	0	; () banked
	lfsr	2,_outPipes+06h	;volatile
	movf	postinc2,w
	iorwf	postinc2,w
	iorwf	postdec2,w
	btfsc	status,2
	goto	i2u364_41
	goto	i2u364_40
i2u364_41:
	goto	i2l3822
i2u364_40:
	line	2809
	
i2l3820:; BSR set to: 0

;usb_device.c: 2808: {
;usb_device.c: 2809: outPipes[0].pFunc();
	movlb	0	; () banked
	lfsr	2,_outPipes+06h	;volatile
	call	i2u365_48
	goto	i2u365_49
i2u365_48:
	push
	movwf	pclath
	movf	postinc2,w
	movwf	tosl
	movf	postinc2,w
	movwf	tosl+1
	movf	postinc2,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u365_49:
	goto	i2l3822
	line	2810
	
i2l668:
	line	2811
	
i2l3822:
;usb_device.c: 2810: }
;usb_device.c: 2811: outPipes[0].info.bits.busy = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2l3824
	line	2812
	
i2l667:; BSR set to: 0

	line	2814
	
i2l3824:; BSR set to: 0

;usb_device.c: 2812: }
;usb_device.c: 2814: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	goto	i2l669
	line	2817
	
i2l666:; BSR set to: 0

	line	2819
	
i2l669:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfInHandler
	__end_of_USBCtrlTrfInHandler:
	signat	_USBCtrlTrfInHandler,88
	global	_USBCtrlTrfOutHandler

;; *************** function _USBCtrlTrfOutHandler *****************
;; Defined at:
;;		line 2695 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBCtrlTrfRxService
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
global __ptext19
__ptext19:
psect	text19
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2695
	global	__size_of_USBCtrlTrfOutHandler
	__size_of_USBCtrlTrfOutHandler	equ	__end_of_USBCtrlTrfOutHandler-_USBCtrlTrfOutHandler
	
_USBCtrlTrfOutHandler:
;incstack = 0
	opt	stack 21
;incstack = 0
	line	2696
	
i2l3776:
;usb_device.c: 2696: if(controlTransferState == 2)
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u356_41
	goto	i2u356_40
i2u356_41:
	goto	i2l3780
i2u356_40:
	line	2698
	
i2l3778:
;usb_device.c: 2697: {
;usb_device.c: 2698: USBCtrlTrfRxService();
	call	_USBCtrlTrfRxService	;wreg free
	line	2699
;usb_device.c: 2699: }
	goto	i2l655
	line	2700
	
i2l651:
	line	2704
	
i2l3780:
;usb_device.c: 2700: else
;usb_device.c: 2701: {
;usb_device.c: 2704: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	line	2711
	
i2l3782:
;usb_device.c: 2711: if(BothEP0OutUOWNsSet == FALSE)
	tstfsz	((c:_BothEP0OutUOWNsSet)),c	;volatile
	goto	i2u357_41
	goto	i2u357_40
i2u357_41:
	goto	i2l3788
i2u357_40:
	line	2713
	
i2l3784:
;usb_device.c: 2712: {
;usb_device.c: 2713: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2714
;usb_device.c: 2714: pBDTEntryEP0OutNext->ADR = ((WORD)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movwf	postinc2
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movwf	postdec2
	line	2715
	
i2l3786:
;usb_device.c: 2715: pBDTEntryEP0OutNext->STAT.Val = 0x80|0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(08Ch)
	movwf	indf2
	line	2716
;usb_device.c: 2716: }
	goto	i2l655
	line	2717
	
i2l653:
	line	2719
	
i2l3788:
;usb_device.c: 2717: else
;usb_device.c: 2718: {
;usb_device.c: 2719: BothEP0OutUOWNsSet = FALSE;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	goto	i2l655
	line	2720
	
i2l654:
	goto	i2l655
	line	2721
	
i2l652:
	line	2722
	
i2l655:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfOutHandler
	__end_of_USBCtrlTrfOutHandler:
	signat	_USBCtrlTrfOutHandler,88
	global	_USBCtrlTrfRxService

;; *************** function _USBCtrlTrfRxService *****************
;; Defined at:
;;		line 2019 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToRead      1    3[config] unsigned char 
;;  i               1    2[config] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Absolute function
;;		_USBCtrlEPAllowStatusStage
;; This function is called by:
;;		_USBCtrlTrfOutHandler
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
global __ptext20
__ptext20:
psect	text20
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2019
	global	__size_of_USBCtrlTrfRxService
	__size_of_USBCtrlTrfRxService	equ	__end_of_USBCtrlTrfRxService-_USBCtrlTrfRxService
	
_USBCtrlTrfRxService:
;incstack = 0
	opt	stack 21
;incstack = 0
	line	2025
	
i2l3620:
;usb_device.c: 2020: BYTE byteToRead;
;usb_device.c: 2021: BYTE i;
;usb_device.c: 2025: byteToRead = pBDTEntryEP0OutCurrent->CNT;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	USBCtrlTrfRxService@byteToRead>>8	; () unknown bank
	movlb	USBCtrlTrfRxService@byteToRead>>8	; () unknown bank
	movwf	((USBCtrlTrfRxService@byteToRead))&0ffh
	line	2031
	
i2l3622:
;usb_device.c: 2031: if(byteToRead > outPipes[0].wCount.Val)
	movlb	USBCtrlTrfRxService@byteToRead>>8	; () unknown bank
	movf	((USBCtrlTrfRxService@byteToRead))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_outPipes+04h))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_outPipes+04h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u336_41
	goto	i2u336_40
i2u336_41:
	goto	i2l3626
i2u336_40:
	line	2033
	
i2l3624:; BSR set to: 0

;usb_device.c: 2032: {
;usb_device.c: 2033: byteToRead = outPipes[0].wCount.Val;
	movff	0+(_outPipes+04h),(USBCtrlTrfRxService@byteToRead)	;volatile
	goto	i2l3626
	line	2034
	
i2l578:; BSR set to: 0

	line	2036
	
i2l3626:; BSR set to: 0

;usb_device.c: 2034: }
;usb_device.c: 2036: outPipes[0].wCount.Val = outPipes[0].wCount.Val - byteToRead;
	movlb	USBCtrlTrfRxService@byteToRead>>8	; () unknown bank
	movlb	USBCtrlTrfRxService@byteToRead>>8	; () unknown bank
	movf	((USBCtrlTrfRxService@byteToRead))&0ffh,w
	movwf	(??_USBCtrlTrfRxService+0+0)&0ffh
	clrf	(??_USBCtrlTrfRxService+0+0+1)&0ffh

	comf	(??_USBCtrlTrfRxService+0+0)&0ffh
	comf	(??_USBCtrlTrfRxService+0+1)&0ffh
	infsnz	(??_USBCtrlTrfRxService+0+0)&0ffh
	incf	(??_USBCtrlTrfRxService+0+1)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_outPipes+04h))&0ffh,w	;volatile
	addwf	(??_USBCtrlTrfRxService+0+0)&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+(_outPipes+04h))&0ffh,w	;volatile
	addwfc	(??_USBCtrlTrfRxService+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(0+(_outPipes+04h))&0ffh	;volatile
	line	2040
	
i2l3628:; BSR set to: 0

;usb_device.c: 2040: for(i=0;i<byteToRead;i++)
	movwf	(??_USBCtrlTrfRxService+0+0)&0ffh
	movlw	low(0)
	movlb	USBCtrlTrfRxService@i>>8	; () unknown bank
	movlb	USBCtrlTrfRxService@i>>8	; () unknown bank
	movwf	((USBCtrlTrfRxService@i))&0ffh
	movf	(??_USBCtrlTrfRxService+0+0)&0ffh,w
	goto	i2l3636
	line	2041
	
i2l580:
	line	2042
	
i2l3630:
;usb_device.c: 2041: {
;usb_device.c: 2042: *outPipes[0].pDst.bRam++ = CtrlTrfData[i];
	movlb	USBCtrlTrfRxService@i>>8	; () unknown bank
	movlb	USBCtrlTrfRxService@i>>8	; () unknown bank
	movf	((USBCtrlTrfRxService@i))&0ffh,w
	mullw	01h
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	low(_CtrlTrfData)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	high(_CtrlTrfData)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(_outPipes),fsr1l	;volatile
	movff	(_outPipes+1),fsr1h	;volatile
	movff	indf2,indf1
	
i2l3632:
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_outPipes))&0ffh	;volatile
	incf	((_outPipes+1))&0ffh	;volatile
	line	2040
	
i2l3634:; BSR set to: 0

	movlb	USBCtrlTrfRxService@i>>8	; () unknown bank
	movlb	USBCtrlTrfRxService@i>>8	; () unknown bank
	incf	((USBCtrlTrfRxService@i))&0ffh
	goto	i2l3636
	
i2l579:
	
i2l3636:
	movlb	USBCtrlTrfRxService@byteToRead>>8	; () unknown bank
	movlb	USBCtrlTrfRxService@byteToRead>>8	; () unknown bank
	movf	((USBCtrlTrfRxService@byteToRead))&0ffh,w
	movlb	USBCtrlTrfRxService@i>>8	; () unknown bank
	movlb	USBCtrlTrfRxService@i>>8	; () unknown bank
	subwf	((USBCtrlTrfRxService@i))&0ffh,w
	btfss	status,0
	goto	i2u337_41
	goto	i2u337_40
i2u337_41:
	goto	i2l3630
i2u337_40:
	goto	i2l3638
	
i2l581:
	line	2047
	
i2l3638:
;usb_device.c: 2043: }
;usb_device.c: 2047: if(outPipes[0].wCount.Val > 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+(_outPipes+04h))&0ffh,w	;volatile
	iorwf (0+(_outPipes+04h))&0ffh,w	;volatile

	btfsc	status,2
	goto	i2u338_41
	goto	i2u338_40
i2u338_41:
	goto	i2l3646
i2u338_40:
	line	2049
	
i2l3640:; BSR set to: 0

;usb_device.c: 2048: {
;usb_device.c: 2049: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2050
;usb_device.c: 2050: pBDTEntryEP0OutNext->ADR = ((WORD)(&CtrlTrfData));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	low(_CtrlTrfData)	;volatile
	movwf	postinc2
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	high(_CtrlTrfData)	;volatile
	movwf	postdec2
	line	2051
;usb_device.c: 2051: if(pBDTEntryEP0OutCurrent->STAT.DTS == 0)
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movf	indf2,w
	movwf	(??_USBCtrlTrfRxService+0+0)&0ffh
	
	btfsc	((??_USBCtrlTrfRxService+0+0))&0ffh,6
	goto	i2u339_41
	goto	i2u339_40
i2u339_41:
	goto	i2l3644
i2u339_40:
	line	2053
	
i2l3642:
;usb_device.c: 2052: {
;usb_device.c: 2053: pBDTEntryEP0OutNext->STAT.Val = 0x80|0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0C8h)
	movwf	indf2
	line	2054
;usb_device.c: 2054: }
	goto	i2l588
	line	2055
	
i2l583:
	line	2057
	
i2l3644:
;usb_device.c: 2055: else
;usb_device.c: 2056: {
;usb_device.c: 2057: pBDTEntryEP0OutNext->STAT.Val = 0x80|0x00|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(088h)
	movwf	indf2
	goto	i2l588
	line	2058
	
i2l584:
	line	2059
;usb_device.c: 2058: }
;usb_device.c: 2059: }
	goto	i2l588
	line	2060
	
i2l582:
	line	2065
	
i2l3646:
;usb_device.c: 2060: else
;usb_device.c: 2061: {
;usb_device.c: 2065: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	2066
;usb_device.c: 2066: pBDTEntryEP0OutNext->ADR = ((WORD)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movwf	postinc2
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movwf	postdec2
	line	2070
	
i2l3648:
;usb_device.c: 2070: pBDTEntryEP0OutNext->STAT.Val = 0x80|0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(084h)
	movwf	indf2
	line	2077
	
i2l3650:
;usb_device.c: 2077: if(outPipes[0].pFunc != (0))
	movlb	0	; () banked
	lfsr	2,_outPipes+06h	;volatile
	movf	postinc2,w
	iorwf	postinc2,w
	iorwf	postdec2,w
	btfsc	status,2
	goto	i2u340_41
	goto	i2u340_40
i2u340_41:
	goto	i2l3654
i2u340_40:
	line	2084
	
i2l3652:; BSR set to: 0

;usb_device.c: 2078: {
;usb_device.c: 2084: outPipes[0].pFunc();
	movlb	0	; () banked
	lfsr	2,_outPipes+06h	;volatile
	call	i2u341_48
	goto	i2u341_49
i2u341_48:
	push
	movwf	pclath
	movf	postinc2,w
	movwf	tosl
	movf	postinc2,w
	movwf	tosl+1
	movf	postinc2,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u341_49:
	goto	i2l3654
	line	2089
	
i2l586:
	line	2090
	
i2l3654:
;usb_device.c: 2089: }
;usb_device.c: 2090: outPipes[0].info.bits.busy = 0;
	movlb	0	; () banked
	movlb	0	; () banked
	bcf	(0+(_outPipes+03h))&0ffh,7	;volatile
	line	2104
	
i2l3656:; BSR set to: 0

;usb_device.c: 2104: if(USBDeferStatusStagePacket == FALSE)
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u342_41
	goto	i2u342_40
i2u342_41:
	goto	i2l588
i2u342_40:
	line	2106
	
i2l3658:; BSR set to: 0

;usb_device.c: 2105: {
;usb_device.c: 2106: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l588
	line	2107
	
i2l587:
	goto	i2l588
	line	2108
	
i2l585:
	line	2110
	
i2l588:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfRxService
	__end_of_USBCtrlTrfRxService:
	signat	_USBCtrlTrfRxService,88
	global	_USBCtrlTrfSetupHandler

;; *************** function _USBCtrlTrfSetupHandler *****************
;; Defined at:
;;		line 2623 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		_USBCtrlEPServiceComplete
;;		_USBCheckStdRequest
;; This function is called by:
;;		_USBCtrlEPService
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
global __ptext21
__ptext21:
psect	text21
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2623
	global	__size_of_USBCtrlTrfSetupHandler
	__size_of_USBCtrlTrfSetupHandler	equ	__end_of_USBCtrlTrfSetupHandler-_USBCtrlTrfSetupHandler
	
_USBCtrlTrfSetupHandler:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	2627
	
i2l3750:
;usb_device.c: 2627: shortPacketStatus = 0;
	movlw	low(0)
	movwf	((c:_shortPacketStatus)),c	;volatile
	line	2628
;usb_device.c: 2628: USBDeferStatusStagePacket = FALSE;
	movlw	low(0)
	movwf	((c:_USBDeferStatusStagePacket)),c	;volatile
	line	2629
;usb_device.c: 2629: USBDeferINDataStagePackets = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeferINDataStagePackets))&0ffh	;volatile
	line	2630
;usb_device.c: 2630: USBDeferOUTDataStagePackets = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	line	2631
;usb_device.c: 2631: BothEP0OutUOWNsSet = FALSE;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	2632
;usb_device.c: 2632: controlTransferState = 0;
	movlw	low(0)
	movwf	((c:_controlTransferState)),c	;volatile
	line	2641
	
i2l3752:; BSR set to: 0

;usb_device.c: 2641: pBDTEntryIn[0]->STAT.Val &= ~(0x80);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2642
	
i2l3754:; BSR set to: 0

;usb_device.c: 2642: ((BYTE_VAL*)&pBDTEntryIn[0])->Val ^= 0x0004;
	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh
	line	2643
	
i2l3756:; BSR set to: 0

;usb_device.c: 2643: pBDTEntryIn[0]->STAT.Val &= ~(0x80);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2644
	
i2l3758:; BSR set to: 0

;usb_device.c: 2644: ((BYTE_VAL*)&pBDTEntryIn[0])->Val ^= 0x0004;
	movlw	(04h)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_pBDTEntryIn))&0ffh
	line	2645
	
i2l3760:; BSR set to: 0

;usb_device.c: 2645: pBDTEntryEP0OutNext->STAT.Val &= ~(0x80);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	2647
	
i2l3762:; BSR set to: 0

;usb_device.c: 2647: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2648
	
i2l3764:; BSR set to: 0

;usb_device.c: 2648: inPipes[0].wCount.Val = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2649
	
i2l3766:; BSR set to: 0

;usb_device.c: 2649: outPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_outPipes+03h))&0ffh	;volatile
	line	2650
	
i2l3768:; BSR set to: 0

;usb_device.c: 2650: outPipes[0].wCount.Val = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_outPipes+04h))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	(0+(_outPipes+04h))&0ffh	;volatile
	line	2656
	
i2l3770:; BSR set to: 0

;usb_device.c: 2656: USBCheckStdRequest();
	call	_USBCheckStdRequest	;wreg free
	line	2657
	
i2l3772:
;usb_device.c: 2657: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_EP0_REQUEST,0,0);
	movlw	high(03h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(03h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2670
	
i2l3774:
;usb_device.c: 2670: USBCtrlEPServiceComplete();
	call	_USBCtrlEPServiceComplete	;wreg free
	line	2671
	
i2l648:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfSetupHandler
	__end_of_USBCtrlTrfSetupHandler:
	signat	_USBCtrlTrfSetupHandler,88
	global	_USBCheckStdRequest

;; *************** function _USBCheckStdRequest *****************
;; Defined at:
;;		line 2839 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0
;;      Totals:         0       2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		_USBStdSetCfgHandler
;;		_USBStdGetDscHandler
;;		_USBStdGetStatusHandler
;;		_USBStdFeatureReqHandler
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
global __ptext22
__ptext22:
psect	text22
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2839
	global	__size_of_USBCheckStdRequest
	__size_of_USBCheckStdRequest	equ	__end_of_USBCheckStdRequest-_USBCheckStdRequest
	
_USBCheckStdRequest:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	2840
	
i2l3826:
;usb_device.c: 2840: if(SetupPkt.RequestType != (0x00>>5)) return;
	movlb	_SetupPkt>>8	; () unknown bank
	swapf	((_SetupPkt))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	iorlw	0
	btfsc	status,2
	goto	i2u366_41
	goto	i2u366_40
i2u366_41:
	goto	i2l3860
i2u366_40:
	goto	i2l673
	
i2l3828:
	goto	i2l673
	
i2l672:
	line	2842
;usb_device.c: 2842: switch(SetupPkt.bRequest)
	goto	i2l3860
	line	2844
;usb_device.c: 2843: {
;usb_device.c: 2844: case 5:
	
i2l675:
	line	2845
;usb_device.c: 2845: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2846
	
i2l3830:; BSR set to: 0

;usb_device.c: 2846: USBDeviceState = ADR_PENDING_STATE;
	movlw	low(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2848
;usb_device.c: 2848: break;
	goto	i2l673
	line	2849
;usb_device.c: 2849: case 6:
	
i2l677:; BSR set to: 0

	line	2850
	
i2l3832:
;usb_device.c: 2850: USBStdGetDscHandler();
	call	_USBStdGetDscHandler	;wreg free
	line	2851
;usb_device.c: 2851: break;
	goto	i2l673
	line	2852
;usb_device.c: 2852: case 9:
	
i2l678:
	line	2853
	
i2l3834:
;usb_device.c: 2853: USBStdSetCfgHandler();
	call	_USBStdSetCfgHandler	;wreg free
	line	2854
;usb_device.c: 2854: break;
	goto	i2l673
	line	2855
;usb_device.c: 2855: case 8:
	
i2l679:
	line	2856
	
i2l3836:
;usb_device.c: 2856: inPipes[0].pSrc.bRam = (BYTE*)&USBActiveConfiguration;
	movlw	low((c:_USBActiveConfiguration))	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile
	movlw	high((c:_USBActiveConfiguration))	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	20h
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+2))&0ffh	;volatile

	line	2857
	
i2l3838:; BSR set to: 0

;usb_device.c: 2857: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2858
;usb_device.c: 2858: inPipes[0].wCount.v[0] = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2859
	
i2l3840:; BSR set to: 0

;usb_device.c: 2859: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2860
;usb_device.c: 2860: break;
	goto	i2l673
	line	2861
;usb_device.c: 2861: case 0:
	
i2l680:; BSR set to: 0

	line	2862
	
i2l3842:
;usb_device.c: 2862: USBStdGetStatusHandler();
	call	_USBStdGetStatusHandler	;wreg free
	line	2863
;usb_device.c: 2863: break;
	goto	i2l673
	line	2864
;usb_device.c: 2864: case 1:
	
i2l681:
	goto	i2l3844
	line	2865
	
i2l682:
	line	2866
	
i2l3844:
;usb_device.c: 2865: case 3:
;usb_device.c: 2866: USBStdFeatureReqHandler();
	call	_USBStdFeatureReqHandler	;wreg free
	line	2867
;usb_device.c: 2867: break;
	goto	i2l673
	line	2868
;usb_device.c: 2868: case 10:
	
i2l683:
	line	2869
	
i2l3846:
;usb_device.c: 2869: inPipes[0].pSrc.bRam = (BYTE*)&USBAlternateInterface[SetupPkt.bIntfID];
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	mullw	01h
	movlw	low((c:_USBAlternateInterface))	;volatile
	addwf	(prodl),c,w
	movwf	(??_USBCheckStdRequest+0+0)&0ffh,c
	movlw	high((c:_USBAlternateInterface))	;volatile
	addwfc	prod+1,w
	movwf	1+(??_USBCheckStdRequest+0+0)&0ffh,c
	movf	(??_USBCheckStdRequest+0+0),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile
	movf	(??_USBCheckStdRequest+0+1),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	20h
	movlb	0	; () banked
	movwf	((_inPipes+2))&0ffh	;volatile
	line	2870
	
i2l3848:; BSR set to: 0

;usb_device.c: 2870: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2871
	
i2l3850:; BSR set to: 0

;usb_device.c: 2871: inPipes[0].wCount.v[0] = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2872
	
i2l3852:; BSR set to: 0

;usb_device.c: 2872: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2873
;usb_device.c: 2873: break;
	goto	i2l673
	line	2874
;usb_device.c: 2874: case 11:
	
i2l684:
	line	2875
;usb_device.c: 2875: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2876
	
i2l3854:; BSR set to: 0

;usb_device.c: 2876: USBAlternateInterface[SetupPkt.bIntfID] = SetupPkt.bAltID;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	mullw	01h
	movlw	low((c:_USBAlternateInterface))	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_USBAlternateInterface))	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	_SetupPkt>>8	; () unknown bank
	movff	0+(_SetupPkt+02h),indf2	;volatile

	line	2877
;usb_device.c: 2877: break;
	goto	i2l673
	line	2878
;usb_device.c: 2878: case 7:
	
i2l685:
	line	2879
	
i2l3856:
;usb_device.c: 2879: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SET_DESCRIPTOR,0,0);
	movlw	high(02h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(02h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2880
;usb_device.c: 2880: break;
	goto	i2l673
	line	2881
;usb_device.c: 2881: case 12:
	
i2l686:
	goto	i2l673
	line	2882
;usb_device.c: 2882: default:
	
i2l687:
	line	2883
;usb_device.c: 2883: break;
	goto	i2l673
	line	2884
	
i2l3858:
;usb_device.c: 2884: }
	goto	i2l673
	line	2842
	
i2l674:
	
i2l3860:
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 0 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l3842
	xorlw	1^0	; case 1
	skipnz
	goto	i2l3844
	xorlw	3^1	; case 3
	skipnz
	goto	i2l3844
	xorlw	5^3	; case 5
	skipnz
	goto	i2l675
	xorlw	6^5	; case 6
	skipnz
	goto	i2l3832
	xorlw	7^6	; case 7
	skipnz
	goto	i2l3856
	xorlw	8^7	; case 8
	skipnz
	goto	i2l3836
	xorlw	9^8	; case 9
	skipnz
	goto	i2l3834
	xorlw	10^9	; case 10
	skipnz
	goto	i2l3846
	xorlw	11^10	; case 11
	skipnz
	goto	i2l684
	xorlw	12^11	; case 12
	skipnz
	goto	i2l673
	goto	i2l673

	line	2884
	
i2l676:
	line	2885
	
i2l673:
	return
	opt stack 0
GLOBAL	__end_of_USBCheckStdRequest
	__end_of_USBCheckStdRequest:
	signat	_USBCheckStdRequest,88
	global	_USBStdFeatureReqHandler

;; *************** function _USBStdFeatureReqHandler *****************
;; Defined at:
;;		line 2907 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2   37[COMRAM] PTR struct __BDT
;;		 -> BDT(48), NULL(0), 
;;  pUEP            2   34[COMRAM] PTR unsigned char 
;;		 -> UEP0(1), 
;;  current_ep_d    1   36[COMRAM] struct .
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0
;;      Temps:          0       3       0       0       0       0
;;      Totals:         0       8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
global __ptext23
__ptext23:
psect	text23
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2907
	global	__size_of_USBStdFeatureReqHandler
	__size_of_USBStdFeatureReqHandler	equ	__end_of_USBStdFeatureReqHandler-_USBStdFeatureReqHandler
	
_USBStdFeatureReqHandler:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	2952
	
i2l3862:
;usb_device.c: 2908: BDT_ENTRY *p;
;usb_device.c: 2909: EP_STATUS current_ep_data;
;usb_device.c: 2913: unsigned char* pUEP;
;usb_device.c: 2951: if((SetupPkt.bFeature == 1)&&
;usb_device.c: 2952: (SetupPkt.Recipient == (0x00)))
	movlb	_SetupPkt>>8	; () unknown bank
	decf	(0+(_SetupPkt+02h))&0ffh,w	;volatile

	btfss	status,2
	goto	i2u367_41
	goto	i2u367_40
i2u367_41:
	goto	i2l3874
i2u367_40:
	
i2l3864:
	movlb	_SetupPkt>>8	; () unknown bank
	movf	((_SetupPkt))&0ffh,w	;volatile
	andlw	(1<<5)-1
	iorlw	0
	btfss	status,2
	goto	i2u368_41
	goto	i2u368_40
i2u368_41:
	goto	i2l3874
i2u368_40:
	line	2954
	
i2l3866:
;usb_device.c: 2953: {
;usb_device.c: 2954: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2955
	
i2l3868:; BSR set to: 0

;usb_device.c: 2955: if(SetupPkt.bRequest == 3)
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+01h))&0ffh,w	;volatile
	xorlw	3

	btfss	status,2
	goto	i2u369_41
	goto	i2u369_40
i2u369_41:
	goto	i2l3872
i2u369_40:
	line	2956
	
i2l3870:
;usb_device.c: 2956: RemoteWakeup = TRUE;
	movlw	low(01h)
	movwf	((c:_RemoteWakeup)),c	;volatile
	goto	i2l3874
	line	2957
	
i2l691:
	line	2958
	
i2l3872:
;usb_device.c: 2957: else
;usb_device.c: 2958: RemoteWakeup = FALSE;
	movlw	low(0)
	movwf	((c:_RemoteWakeup)),c	;volatile
	goto	i2l3874
	
i2l692:
	goto	i2l3874
	line	2959
	
i2l690:
	line	2965
	
i2l3874:
;usb_device.c: 2959: }
;usb_device.c: 2962: if((SetupPkt.bFeature == 0)&&
;usb_device.c: 2963: (SetupPkt.Recipient == (0x02))&&
;usb_device.c: 2964: (SetupPkt.EPNum != 0) && (SetupPkt.EPNum <= 2)&&
;usb_device.c: 2965: (USBDeviceState == CONFIGURED_STATE))
	movlb	_SetupPkt>>8	; () unknown bank
	tstfsz	(0+(_SetupPkt+02h))&0ffh	;volatile
	goto	i2u370_41
	goto	i2u370_40
i2u370_41:
	goto	i2l713
i2u370_40:
	
i2l3876:
	movlb	_SetupPkt>>8	; () unknown bank
	movf	((_SetupPkt))&0ffh,w	;volatile
	andlw	(1<<5)-1
	xorlw	02h
	btfss	status,2
	goto	i2u371_41
	goto	i2u371_40
i2u371_41:
	goto	i2l713
i2u371_40:
	
i2l3878:
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	iorlw	0
	btfsc	status,2
	goto	i2u372_41
	goto	i2u372_40
i2u372_41:
	goto	i2l713
i2u372_40:
	
i2l3880:
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movlw	(03h)&0ffh
	subwf	((??_USBStdFeatureReqHandler+0+0)),c,w
	btfsc	status,0
	goto	i2u373_41
	goto	i2u373_40
i2u373_41:
	goto	i2l713
i2u373_40:
	
i2l3882:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_USBDeviceState))&0ffh,w	;volatile
	xorlw	32

	btfss	status,2
	goto	i2u374_41
	goto	i2u374_40
i2u374_41:
	goto	i2l713
i2u374_40:
	line	2969
	
i2l3884:; BSR set to: 0

;usb_device.c: 2966: {
;usb_device.c: 2969: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2972
;usb_device.c: 2972: if(SetupPkt.EPDir == 0)
	
	movlb	_SetupPkt>>8	; () unknown bank
	btfsc	(0+(_SetupPkt+04h))&0ffh,7	;volatile
	goto	i2u375_41
	goto	i2u375_40
i2u375_41:
	goto	i2l3888
i2u375_40:
	line	2974
	
i2l3886:
;usb_device.c: 2973: {
;usb_device.c: 2974: p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2975
;usb_device.c: 2975: current_ep_data.Val = ep_data_out[SetupPkt.EPNum].Val;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data)),c
	line	2976
;usb_device.c: 2976: }
	goto	i2l3890
	line	2977
	
i2l694:; BSR set to: 0

	line	2979
	
i2l3888:
;usb_device.c: 2977: else
;usb_device.c: 2978: {
;usb_device.c: 2979: p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:USBStdFeatureReqHandler@p)
	movff	postdec2,(c:USBStdFeatureReqHandler@p+1)
	line	2980
;usb_device.c: 2980: current_ep_data.Val = ep_data_in[SetupPkt.EPNum].Val;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USBStdFeatureReqHandler@current_ep_data)),c
	goto	i2l3890
	line	2981
	
i2l695:; BSR set to: 0

	line	2987
	
i2l3890:; BSR set to: 0

;usb_device.c: 2981: }
;usb_device.c: 2987: if(current_ep_data.bits.ping_pong_state == 0)
	
	btfsc	((c:USBStdFeatureReqHandler@current_ep_data)),c,0
	goto	i2u376_41
	goto	i2u376_40
i2u376_41:
	goto	i2l3894
i2u376_40:
	line	2989
	
i2l3892:; BSR set to: 0

;usb_device.c: 2988: {
;usb_device.c: 2989: {((BYTE_VAL*)&p)->Val &= ~0x0004;};
	bcf	(0+(2/8)+(c:USBStdFeatureReqHandler@p)),c,(2)&7
	line	2990
;usb_device.c: 2990: }
	goto	i2l3896
	line	2991
	
i2l696:; BSR set to: 0

	line	2993
	
i2l3894:; BSR set to: 0

;usb_device.c: 2991: else
;usb_device.c: 2992: {
;usb_device.c: 2993: {((BYTE_VAL*)&p)->Val |= 0x0004;};
	bsf	(0+(2/8)+(c:USBStdFeatureReqHandler@p)),c,(2)&7
	goto	i2l3896
	line	2994
	
i2l697:; BSR set to: 0

	line	2999
	
i2l3896:; BSR set to: 0

;usb_device.c: 2994: }
;usb_device.c: 2999: if(SetupPkt.EPDir == 0)
	
	movlb	_SetupPkt>>8	; () unknown bank
	btfsc	(0+(_SetupPkt+04h))&0ffh,7	;volatile
	goto	i2u377_41
	goto	i2u377_40
i2u377_41:
	goto	i2l3900
i2u377_40:
	line	3001
	
i2l3898:
;usb_device.c: 3000: {
;usb_device.c: 3001: pBDTEntryOut[SetupPkt.EPNum] = (volatile BDT_ENTRY *)p;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	line	3002
;usb_device.c: 3002: }
	goto	i2l3902
	line	3003
	
i2l698:; BSR set to: 0

	line	3005
	
i2l3900:
;usb_device.c: 3003: else
;usb_device.c: 3004: {
;usb_device.c: 3005: pBDTEntryIn[SetupPkt.EPNum] = (volatile BDT_ENTRY *)p;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USBStdFeatureReqHandler@p),postinc2
	movff	(c:USBStdFeatureReqHandler@p+1),postdec2
	goto	i2l3902
	line	3006
	
i2l699:; BSR set to: 0

	line	3009
	
i2l3902:; BSR set to: 0

;usb_device.c: 3006: }
;usb_device.c: 3009: if(SetupPkt.bRequest == 3)
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+01h))&0ffh,w	;volatile
	xorlw	3

	btfss	status,2
	goto	i2u378_41
	goto	i2u378_40
i2u378_41:
	goto	i2l3914
i2u378_40:
	line	3011
	
i2l3904:
;usb_device.c: 3010: {
;usb_device.c: 3011: if(p->STAT.UOWN == 1)
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movf	indf2,w
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	
	btfss	((??_USBStdFeatureReqHandler+0+0)),c,7
	goto	i2u379_41
	goto	i2u379_40
i2u379_41:
	goto	i2l3912
i2u379_40:
	line	3015
	
i2l3906:
;usb_device.c: 3012: {
;usb_device.c: 3015: if(SetupPkt.EPDir == 0)
	
	movlb	_SetupPkt>>8	; () unknown bank
	btfsc	(0+(_SetupPkt+04h))&0ffh,7	;volatile
	goto	i2u380_41
	goto	i2u380_40
i2u380_41:
	goto	i2l3910
i2u380_40:
	line	3017
	
i2l3908:
;usb_device.c: 3016: {
;usb_device.c: 3017: ep_data_out[SetupPkt.EPNum].bits.transfer_terminated = 1;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(01h & ((1<<1)-1))<<1
	movlb	0	; () banked
	iorwf	(indf2)&0ffh
	line	3018
;usb_device.c: 3018: }
	goto	i2l3912
	line	3019
	
i2l702:; BSR set to: 0

	line	3021
	
i2l3910:
;usb_device.c: 3019: else
;usb_device.c: 3020: {
;usb_device.c: 3021: ep_data_in[SetupPkt.EPNum].bits.transfer_terminated = 1;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(01h & ((1<<1)-1))<<1
	movlb	0	; () banked
	iorwf	(indf2)&0ffh
	goto	i2l3912
	line	3022
	
i2l703:; BSR set to: 0

	goto	i2l3912
	line	3023
	
i2l701:; BSR set to: 0

	line	3026
	
i2l3912:
;usb_device.c: 3022: }
;usb_device.c: 3023: }
;usb_device.c: 3026: p->STAT.Val |= 0x80|0x04;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	084h
	iorwf	indf2
	line	3027
;usb_device.c: 3027: }
	goto	i2l713
	line	3028
	
i2l700:
	line	3033
	
i2l3914:
;usb_device.c: 3028: else
;usb_device.c: 3029: {
;usb_device.c: 3033: ((BYTE_VAL*)&p)->Val ^= 0x0004;;
	movlw	(04h)&0ffh
	xorwf	((c:USBStdFeatureReqHandler@p)),c
	line	3035
	
i2l3916:
;usb_device.c: 3035: if(p->STAT.UOWN == 1)
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movf	indf2,w
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	
	btfss	((??_USBStdFeatureReqHandler+0+0)),c,7
	goto	i2u381_41
	goto	i2u381_40
i2u381_41:
	goto	i2l3924
i2u381_40:
	line	3039
	
i2l3918:
;usb_device.c: 3036: {
;usb_device.c: 3039: p->STAT.Val &= (~0x80);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	07Fh
	andwf	indf2
	line	3040
	
i2l3920:
;usb_device.c: 3040: p->STAT.Val |= 0x40;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	line	3041
	
i2l3922:
;usb_device.c: 3041: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER_TERMINATED,p,sizeof(p));
	movlw	high(05h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(05h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movff	(c:USBStdFeatureReqHandler@p),0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)
	movff	(c:USBStdFeatureReqHandler@p+1),1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)
	movlw	high(02h)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(02h)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	3042
;usb_device.c: 3042: }
	goto	i2l3926
	line	3043
	
i2l705:
	line	3046
	
i2l3924:
;usb_device.c: 3043: else
;usb_device.c: 3044: {
;usb_device.c: 3046: p->STAT.Val |= 0x40;
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	0+(6/8)
	bsf	plusw2,(6)&7
	goto	i2l3926
	line	3047
	
i2l706:
	line	3051
	
i2l3926:
;usb_device.c: 3047: }
;usb_device.c: 3051: ((BYTE_VAL*)&p)->Val ^= 0x0004;;
	movlw	(04h)&0ffh
	xorwf	((c:USBStdFeatureReqHandler@p)),c
	line	3057
	
i2l3928:
;usb_device.c: 3057: if((current_ep_data.bits.transfer_terminated != 0) || (p->STAT.UOWN == 1))
	
	btfsc	((c:USBStdFeatureReqHandler@current_ep_data)),c,1
	goto	i2u382_41
	goto	i2u382_40
i2u382_41:
	goto	i2l709
i2u382_40:
	
i2l3930:
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movf	indf2,w
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	
	btfss	((??_USBStdFeatureReqHandler+0+0)),c,7
	goto	i2u383_41
	goto	i2u383_40
i2u383_41:
	goto	i2l3940
i2u383_40:
	
i2l709:
	line	3059
;usb_device.c: 3058: {
;usb_device.c: 3059: if(SetupPkt.EPDir == 0)
	
	movlb	_SetupPkt>>8	; () unknown bank
	btfsc	(0+(_SetupPkt+04h))&0ffh,7	;volatile
	goto	i2u384_41
	goto	i2u384_40
i2u384_41:
	goto	i2l3934
i2u384_40:
	line	3061
	
i2l3932:
;usb_device.c: 3060: {
;usb_device.c: 3061: ep_data_out[SetupPkt.EPNum].bits.transfer_terminated = 0;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	((0 & ((1<<1)-1))<<1)|not (((1<<1)-1)<<1)
	movlb	0	; () banked
	andwf	(indf2)&0ffh
	line	3062
;usb_device.c: 3062: }
	goto	i2l3936
	line	3063
	
i2l710:; BSR set to: 0

	line	3065
	
i2l3934:
;usb_device.c: 3063: else
;usb_device.c: 3064: {
;usb_device.c: 3065: ep_data_in[SetupPkt.EPNum].bits.transfer_terminated = 0;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	((0 & ((1<<1)-1))<<1)|not (((1<<1)-1)<<1)
	movlb	0	; () banked
	andwf	(indf2)&0ffh
	goto	i2l3936
	line	3066
	
i2l711:; BSR set to: 0

	line	3068
	
i2l3936:; BSR set to: 0

;usb_device.c: 3066: }
;usb_device.c: 3068: p->STAT.Val &= ~(0x80 | 0x40 | 0x04);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	line	3071
	
i2l3938:; BSR set to: 0

;usb_device.c: 3071: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_TRANSFER_TERMINATED,p,sizeof(p));
	movlw	high(05h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(05h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movff	(c:USBStdFeatureReqHandler@p),0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)
	movff	(c:USBStdFeatureReqHandler@p+1),1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)
	movlw	high(02h)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(02h)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	3072
;usb_device.c: 3072: }
	goto	i2l3942
	line	3073
	
i2l707:
	line	3076
	
i2l3940:
;usb_device.c: 3073: else
;usb_device.c: 3074: {
;usb_device.c: 3076: p->STAT.Val &= ~(0x80 | 0x40 | 0x04);
	movff	(c:USBStdFeatureReqHandler@p),fsr2l
	movff	(c:USBStdFeatureReqHandler@p+1),fsr2h
	movlw	03Bh
	andwf	indf2
	goto	i2l3942
	line	3077
	
i2l712:
	line	3124
	
i2l3942:
;usb_device.c: 3077: }
;usb_device.c: 3124: pUEP = (unsigned char*)(&UEP0+SetupPkt.EPNum);
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdFeatureReqHandler+0+0)&0ffh,c
	movf	((??_USBStdFeatureReqHandler+0+0)),c,w
	mullw	01h
	movlw	low((c:3952))	;volatile
	addwf	(prodl),c,w
	movwf	(??_USBStdFeatureReqHandler+1+0)&0ffh,c
	movlw	high((c:3952))	;volatile
	addwfc	prod+1,w
	movwf	1+(??_USBStdFeatureReqHandler+1+0)&0ffh,c
	movff	??_USBStdFeatureReqHandler+1+0,(c:USBStdFeatureReqHandler@pUEP)
	movff	??_USBStdFeatureReqHandler+1+1,(c:USBStdFeatureReqHandler@pUEP+1)
	line	3128
	
i2l3944:
;usb_device.c: 3128: *pUEP &= ~0x0001;
	movff	(c:USBStdFeatureReqHandler@pUEP),fsr2l
	movff	(c:USBStdFeatureReqHandler@pUEP+1),fsr2h
	movlw	0FEh
	andwf	indf2
	goto	i2l713
	line	3129
	
i2l704:
	goto	i2l713
	line	3130
	
i2l693:
	line	3131
	
i2l713:
	return
	opt stack 0
GLOBAL	__end_of_USBStdFeatureReqHandler
	__end_of_USBStdFeatureReqHandler:
	signat	_USBStdFeatureReqHandler,88
	global	_USBStdGetStatusHandler

;; *************** function _USBStdGetStatusHandler *****************
;; Defined at:
;;		line 2283 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               2    1[config] PTR struct __BDT
;;		 -> BDT(48), NULL(0), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
global __ptext24
__ptext24:
psect	text24
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2283
	global	__size_of_USBStdGetStatusHandler
	__size_of_USBStdGetStatusHandler	equ	__end_of_USBStdGetStatusHandler-_USBStdGetStatusHandler
	
_USBStdGetStatusHandler:
;incstack = 0
	opt	stack 21
;incstack = 0
	line	2284
	
i2l3724:
;usb_device.c: 2284: CtrlTrfData[0] = 0;
	movlw	low(0)
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlb	_CtrlTrfData>>8	; () unknown bank
	movwf	((_CtrlTrfData))&0ffh	;volatile
	line	2285
;usb_device.c: 2285: CtrlTrfData[1] = 0;
	movlw	low(0)
	movlb	_CtrlTrfData>>8	; () unknown bank
	movwf	(0+(_CtrlTrfData+01h))&0ffh	;volatile
	line	2287
;usb_device.c: 2287: switch(SetupPkt.Recipient)
	goto	i2l3744
	line	2289
;usb_device.c: 2288: {
;usb_device.c: 2289: case (0x00):
	
i2l611:
	line	2290
;usb_device.c: 2295: if(1 == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2297
	
i2l3726:; BSR set to: 0

;usb_device.c: 2296: {
;usb_device.c: 2297: CtrlTrfData[0]|=0x01;
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlb	_CtrlTrfData>>8	; () unknown bank
	bsf	(0+(0/8)+(_CtrlTrfData))&0ffh,(0)&7	;volatile
	goto	i2l3728
	line	2298
	
i2l612:
	line	2300
	
i2l3728:
;usb_device.c: 2298: }
;usb_device.c: 2300: if(RemoteWakeup == TRUE)
	decf	((c:_RemoteWakeup)),c,w	;volatile

	btfss	status,2
	goto	i2u351_41
	goto	i2u351_40
i2u351_41:
	goto	i2l614
i2u351_40:
	line	2302
	
i2l3730:
;usb_device.c: 2301: {
;usb_device.c: 2302: CtrlTrfData[0]|=0x02;
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlb	_CtrlTrfData>>8	; () unknown bank
	bsf	(0+(1/8)+(_CtrlTrfData))&0ffh,(1)&7	;volatile
	goto	i2l614
	line	2303
	
i2l613:
	line	2304
;usb_device.c: 2303: }
;usb_device.c: 2304: break;
	goto	i2l614
	line	2305
;usb_device.c: 2305: case (0x01):
	
i2l615:
	line	2306
;usb_device.c: 2306: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2307
;usb_device.c: 2307: break;
	goto	i2l614
	line	2308
;usb_device.c: 2308: case (0x02):
	
i2l616:
	line	2309
;usb_device.c: 2309: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2316
;usb_device.c: 2313: {
;usb_device.c: 2314: BDT_ENTRY *p;
;usb_device.c: 2316: if(SetupPkt.EPDir == 0)
	
	movlb	_SetupPkt>>8	; () unknown bank
	btfsc	(0+(_SetupPkt+04h))&0ffh,7	;volatile
	goto	i2u352_41
	goto	i2u352_40
i2u352_41:
	goto	i2l3734
i2u352_40:
	line	2318
	
i2l3732:
;usb_device.c: 2317: {
;usb_device.c: 2318: p = (BDT_ENTRY*)pBDTEntryOut[SetupPkt.EPNum];
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh
	movf	((??_USBStdGetStatusHandler+0+0))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	USBStdGetStatusHandler@p>>8	; () unknown bank
	movff	postinc2,(USBStdGetStatusHandler@p)
	movlb	USBStdGetStatusHandler@p>>8	; () unknown bank
	movff	postdec2,(USBStdGetStatusHandler@p+1)
	line	2319
;usb_device.c: 2319: }
	goto	i2l3736
	line	2320
	
i2l617:
	line	2322
	
i2l3734:
;usb_device.c: 2320: else
;usb_device.c: 2321: {
;usb_device.c: 2322: p = (BDT_ENTRY*)pBDTEntryIn[SetupPkt.EPNum];
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	andlw	(1<<4)-1
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh
	movf	((??_USBStdGetStatusHandler+0+0))&0ffh,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	USBStdGetStatusHandler@p>>8	; () unknown bank
	movff	postinc2,(USBStdGetStatusHandler@p)
	movlb	USBStdGetStatusHandler@p>>8	; () unknown bank
	movff	postdec2,(USBStdGetStatusHandler@p+1)
	goto	i2l3736
	line	2323
	
i2l618:
	line	2325
	
i2l3736:
;usb_device.c: 2323: }
;usb_device.c: 2325: if((p->STAT.UOWN == 1) && (p->STAT.BSTALL == 1))
	movff	(USBStdGetStatusHandler@p),fsr2l
	movff	(USBStdGetStatusHandler@p+1),fsr2h
	movf	indf2,w
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh
	
	btfss	((??_USBStdGetStatusHandler+0+0))&0ffh,7
	goto	i2u353_41
	goto	i2u353_40
i2u353_41:
	goto	i2l614
i2u353_40:
	
i2l3738:
	movff	(USBStdGetStatusHandler@p),fsr2l
	movff	(USBStdGetStatusHandler@p+1),fsr2h
	movf	indf2,w
	movwf	(??_USBStdGetStatusHandler+0+0)&0ffh
	
	btfss	((??_USBStdGetStatusHandler+0+0))&0ffh,2
	goto	i2u354_41
	goto	i2u354_40
i2u354_41:
	goto	i2l614
i2u354_40:
	line	2326
	
i2l3740:
;usb_device.c: 2326: CtrlTrfData[0]=0x01;
	movlw	low(01h)
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlb	_CtrlTrfData>>8	; () unknown bank
	movwf	((_CtrlTrfData))&0ffh	;volatile
	goto	i2l614
	
i2l619:
	line	2327
;usb_device.c: 2327: break;
	goto	i2l614
	line	2329
	
i2l3742:
;usb_device.c: 2328: }
;usb_device.c: 2329: }
	goto	i2l614
	line	2287
	
i2l610:
	
i2l3744:
	movlb	_SetupPkt>>8	; () unknown bank
	movf	((_SetupPkt))&0ffh,w	;volatile
	andlw	(1<<5)-1
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l611
	xorlw	1^0	; case 1
	skipnz
	goto	i2l615
	xorlw	2^1	; case 2
	skipnz
	goto	i2l616
	goto	i2l614

	line	2329
	
i2l614:
	line	2331
;usb_device.c: 2331: if(inPipes[0].info.bits.busy == 1)
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	(0+(_inPipes+03h))&0ffh,7	;volatile
	goto	i2u355_41
	goto	i2u355_40
i2u355_41:
	goto	i2l621
i2u355_40:
	line	2333
	
i2l3746:; BSR set to: 0

;usb_device.c: 2332: {
;usb_device.c: 2333: inPipes[0].pSrc.bRam = (BYTE*)&CtrlTrfData;
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	low(_CtrlTrfData)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	high(_CtrlTrfData)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	20h
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+2))&0ffh	;volatile

	line	2334
	
i2l3748:; BSR set to: 0

;usb_device.c: 2334: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	2335
;usb_device.c: 2335: inPipes[0].wCount.v[0] = 2;
	movlw	low(02h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	goto	i2l621
	line	2336
	
i2l620:; BSR set to: 0

	line	2337
	
i2l621:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBStdGetStatusHandler
	__end_of_USBStdGetStatusHandler:
	signat	_USBStdGetStatusHandler,88
	global	_USBStdGetDscHandler

;; *************** function _USBStdGetDscHandler *****************
;; Defined at:
;;		line 2207 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
global __ptext25
__ptext25:
psect	text25
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2207
	global	__size_of_USBStdGetDscHandler
	__size_of_USBStdGetDscHandler	equ	__end_of_USBStdGetDscHandler-_USBStdGetDscHandler
	
_USBStdGetDscHandler:; BSR set to: 0

;incstack = 0
	opt	stack 21
;incstack = 0
	line	2208
	
i2l3698:
;usb_device.c: 2208: if(SetupPkt.bmRequestType == 0x80)
	movlb	_SetupPkt>>8	; () unknown bank
	movlb	_SetupPkt>>8	; () unknown bank
	movf	((_SetupPkt))&0ffh,w	;volatile
	xorlw	128

	btfss	status,2
	goto	i2u346_41
	goto	i2u346_40
i2u346_41:
	goto	i2l607
i2u346_40:
	line	2210
	
i2l3700:
;usb_device.c: 2209: {
;usb_device.c: 2210: inPipes[0].info.Val = 0x00 | 0x80 | 0x40;
	movlw	low(0C0h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2212
;usb_device.c: 2212: switch(SetupPkt.bDescriptorType)
	goto	i2l3722
	line	2214
;usb_device.c: 2213: {
;usb_device.c: 2214: case 0x01:
	
i2l600:; BSR set to: 0

	line	2218
	
i2l3702:
;usb_device.c: 2218: inPipes[0].pSrc.bRom = (rom BYTE*)&device_dsc;
	movlw	low(_device_dsc)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile
	movlw	high(_device_dsc)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	low highword(_device_dsc)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+2))&0ffh	;volatile

	line	2220
;usb_device.c: 2220: inPipes[0].wCount.Val = sizeof(device_dsc);
	movlw	high(012h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(012h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2221
;usb_device.c: 2221: break;
	goto	i2l607
	line	2222
;usb_device.c: 2222: case 0x02:
	
i2l602:; BSR set to: 0

	line	2226
	
i2l3704:
;usb_device.c: 2226: inPipes[0].pSrc.bRom = *(USB_CD_Ptr+SetupPkt.bDscIndex);
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+02h))&0ffh,w	;volatile
	mullw	03h
	movlw	low((_USB_CD_Ptr))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_USB_CD_Ptr))
	addwfc	(prodh),c,w
	movwf	tblptrh
	clrf	tblptru
	movlw	low highword((_USB_CD_Ptr))
	addwfc	tblptru
	tblrd*+
	
	movlb	0	; () banked
	movff	tablat,(_inPipes)	;volatile
	tblrd*+
	
	movlb	0	; () banked
	movff	tablat,(_inPipes+1)	;volatile
	tblrd*-
	
	movlb	0	; () banked
	movff	tablat,(_inPipes+2)	;volatile

	line	2232
	
i2l3706:; BSR set to: 0

;usb_device.c: 2232: inPipes[0].wCount.byte.LB = *(inPipes[0].pSrc.bRom+2);
	movlw	02h
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh
	clrf	(??_USBStdGetDscHandler+0+0+1)&0ffh
	movf	(??_USBStdGetDscHandler+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((_inPipes))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+2+0)&0ffh
	movf	(??_USBStdGetDscHandler+0+1)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_inPipes+1))&0ffh,w
	movwf	1+(??_USBStdGetDscHandler+2+0)&0ffh	;volatile
	
	movlw	0
	btfsc	(??_USBStdGetDscHandler+0+1)&0ffh,7
	movlw	0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_inPipes+2))&0ffh,w
	movwf	2+(??_USBStdGetDscHandler+2+0)&0ffh	;volatile

	movff	??_USBStdGetDscHandler+2+0,tblptrl
	movff	??_USBStdGetDscHandler+2+1,tblptrh
	movff	??_USBStdGetDscHandler+2+2,tblptru
	
	btfsc	tblptru,5
	bra	i2u347_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u347_40
i2u347_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u347_40:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	2233
	
i2l3708:; BSR set to: 0

;usb_device.c: 2233: inPipes[0].wCount.byte.HB = *(inPipes[0].pSrc.bRom+3);
	movlw	03h
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh
	clrf	(??_USBStdGetDscHandler+0+0+1)&0ffh
	movf	(??_USBStdGetDscHandler+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((_inPipes))&0ffh,w	;volatile
	movwf	(??_USBStdGetDscHandler+2+0)&0ffh
	movf	(??_USBStdGetDscHandler+0+1)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_inPipes+1))&0ffh,w
	movwf	1+(??_USBStdGetDscHandler+2+0)&0ffh	;volatile
	
	movlw	0
	btfsc	(??_USBStdGetDscHandler+0+1)&0ffh,7
	movlw	0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_inPipes+2))&0ffh,w
	movwf	2+(??_USBStdGetDscHandler+2+0)&0ffh	;volatile

	movff	??_USBStdGetDscHandler+2+0,tblptrl
	movff	??_USBStdGetDscHandler+2+1,tblptrh
	movff	??_USBStdGetDscHandler+2+2,tblptru
	
	btfsc	tblptru,5
	bra	i2u348_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u348_40
i2u348_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u348_40:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+05h))&0ffh	;volatile
	line	2234
;usb_device.c: 2234: break;
	goto	i2l607
	line	2235
;usb_device.c: 2235: case 0x03:
	
i2l603:; BSR set to: 0

	line	2239
	
i2l3710:
;usb_device.c: 2239: if(SetupPkt.bDscIndex<3)
	movlw	(03h)&0ffh
	movlb	_SetupPkt>>8	; () unknown bank
	cpfslt	(0+(_SetupPkt+02h))&0ffh	;volatile
	goto	i2u349_41
	goto	i2u349_40
i2u349_41:
	goto	i2l3716
i2u349_40:
	line	2242
	
i2l3712:
;usb_device.c: 2240: {
;usb_device.c: 2242: inPipes[0].pSrc.bRom = *(USB_SD_Ptr+SetupPkt.bDscIndex);
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+02h))&0ffh,w	;volatile
	mullw	03h
	movlw	low((_USB_SD_Ptr))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_USB_SD_Ptr))
	addwfc	(prodh),c,w
	movwf	tblptrh
	clrf	tblptru
	movlw	low highword((_USB_SD_Ptr))
	addwfc	tblptru
	tblrd*+
	
	movlb	0	; () banked
	movff	tablat,(_inPipes)	;volatile
	tblrd*+
	
	movlb	0	; () banked
	movff	tablat,(_inPipes+1)	;volatile
	tblrd*-
	
	movlb	0	; () banked
	movff	tablat,(_inPipes+2)	;volatile

	line	2244
	
i2l3714:; BSR set to: 0

;usb_device.c: 2244: inPipes[0].wCount.Val = *inPipes[0].pSrc.bRom;
	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	movlb	0	; () banked
	movff	(_inPipes+2),tblptru	;volatile
	
	btfsc	tblptru,5
	bra	i2u350_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u350_40
i2u350_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u350_40:
	movwf	(??_USBStdGetDscHandler+0+0)&0ffh
	movf	((??_USBStdGetDscHandler+0+0))&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	movlb	0	; () banked
	clrf	(1+(_inPipes+04h))&0ffh	;volatile
	line	2245
;usb_device.c: 2245: }
	goto	i2l607
	line	2255
	
i2l604:; BSR set to: 0

	line	2257
	
i2l3716:
;usb_device.c: 2255: else
;usb_device.c: 2256: {
;usb_device.c: 2257: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	goto	i2l607
	line	2258
	
i2l605:; BSR set to: 0

	line	2259
;usb_device.c: 2258: }
;usb_device.c: 2259: break;
	goto	i2l607
	line	2260
;usb_device.c: 2260: default:
	
i2l606:; BSR set to: 0

	line	2261
	
i2l3718:
;usb_device.c: 2261: inPipes[0].info.Val = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	2262
;usb_device.c: 2262: break;
	goto	i2l607
	line	2263
	
i2l3720:; BSR set to: 0

;usb_device.c: 2263: }
	goto	i2l607
	line	2212
	
i2l599:; BSR set to: 0

	
i2l3722:; BSR set to: 0

	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+03h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i2l3702
	xorlw	2^1	; case 2
	skipnz
	goto	i2l3704
	xorlw	3^2	; case 3
	skipnz
	goto	i2l3710
	goto	i2l3718

	line	2263
	
i2l601:
	goto	i2l607
	line	2264
	
i2l598:
	line	2265
	
i2l607:
	return
	opt stack 0
GLOBAL	__end_of_USBStdGetDscHandler
	__end_of_USBStdGetDscHandler:
	signat	_USBStdGetDscHandler,88
	global	_USBStdSetCfgHandler

;; *************** function _USBStdSetCfgHandler *****************
;; Defined at:
;;		line 2132 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		i2_memset
;; This function is called by:
;;		_USBCheckStdRequest
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
global __ptext26
__ptext26:
psect	text26
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2132
	global	__size_of_USBStdSetCfgHandler
	__size_of_USBStdSetCfgHandler	equ	__end_of_USBStdSetCfgHandler-_USBStdSetCfgHandler
	
_USBStdSetCfgHandler:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	2136
	
i2l3660:
;usb_device.c: 2133: BYTE i;
;usb_device.c: 2136: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	2139
	
i2l3662:; BSR set to: 0

;usb_device.c: 2139: memset((void*)&UEP1,0x00,(2));;
	movlw	high((c:3953))	;volatile
	movwf	((c:?i2_memset+1)),c
	movlw	low((c:3953))	;volatile
	movwf	((c:?i2_memset)),c
	movlw	high(0)
	movwf	(1+((c:?i2_memset)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?i2_memset)+02h)),c
	movlw	high(02h)
	movwf	(1+((c:?i2_memset)+04h)),c
	movlw	low(02h)
	movwf	(0+((c:?i2_memset)+04h)),c
	call	i2_memset	;wreg free
	line	2142
;usb_device.c: 2142: memset((void*)&BDT[0], 0x00, sizeof(BDT));
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT)	;volatile
	movwf	((c:?i2_memset+1)),c
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT)	;volatile
	movwf	((c:?i2_memset)),c
	movlw	high(0)
	movwf	(1+((c:?i2_memset)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?i2_memset)+02h)),c
	movlw	high(030h)
	movwf	(1+((c:?i2_memset)+04h)),c
	movlw	low(030h)
	movwf	(0+((c:?i2_memset)+04h)),c
	call	i2_memset	;wreg free
	line	2145
	
i2l3664:
;usb_device.c: 2145: UCONbits.PPBRST = 1;
	bsf	((c:3949)),c,6	;volatile
	line	2150
	
i2l3666:
;usb_device.c: 2150: for(i = 0; i < (BYTE)(2+1u); i++)
	movwf	(??_USBStdSetCfgHandler+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:USBStdSetCfgHandler@i)),c
	movf	(??_USBStdSetCfgHandler+0+0)&0ffh,c,w
	
i2l3668:
	movlw	(03h-1)
	cpfsgt	((c:USBStdSetCfgHandler@i)),c
	goto	i2u343_41
	goto	i2u343_40
i2u343_41:
	goto	i2l3672
i2u343_40:
	goto	i2l3678
	
i2l3670:
	goto	i2l3678
	line	2151
	
i2l591:
	line	2152
	
i2l3672:
;usb_device.c: 2151: {
;usb_device.c: 2152: ep_data_in[i].Val = 0u;
	movf	((c:USBStdSetCfgHandler@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_in)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_in)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	2153
;usb_device.c: 2153: ep_data_out[i].Val = 0u;
	movf	((c:USBStdSetCfgHandler@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_ep_data_out)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_ep_data_out)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	2150
	
i2l3674:; BSR set to: 0

	incf	((c:USBStdSetCfgHandler@i)),c
	
i2l3676:; BSR set to: 0

	movlw	(03h-1)
	cpfsgt	((c:USBStdSetCfgHandler@i)),c
	goto	i2u344_41
	goto	i2u344_40
i2u344_41:
	goto	i2l3672
i2u344_40:
	goto	i2l3678
	
i2l592:; BSR set to: 0

	line	2157
	
i2l3678:
;usb_device.c: 2154: }
;usb_device.c: 2157: memset((void*)&USBAlternateInterface,0x00,2);
	movlw	high((c:_USBAlternateInterface))	;volatile
	movwf	((c:?i2_memset+1)),c
	movlw	low((c:_USBAlternateInterface))	;volatile
	movwf	((c:?i2_memset)),c
	movlw	high(0)
	movwf	(1+((c:?i2_memset)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?i2_memset)+02h)),c
	movlw	high(02h)
	movwf	(1+((c:?i2_memset)+04h)),c
	movlw	low(02h)
	movwf	(0+((c:?i2_memset)+04h)),c
	call	i2_memset	;wreg free
	line	2160
	
i2l3680:
;usb_device.c: 2160: UCONbits.PPBRST = 0;
	bcf	((c:3949)),c,6	;volatile
	line	2162
	
i2l3682:
;usb_device.c: 2162: pBDTEntryIn[0] = (volatile BDT_ENTRY*)&BDT[2];
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT+08h)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_pBDTEntryIn+1))&0ffh
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT+08h)	;volatile
	movlb	0	; () banked
	movwf	((_pBDTEntryIn))&0ffh
	line	2165
	
i2l3684:; BSR set to: 0

;usb_device.c: 2165: pBDTEntryEP0OutCurrent = (volatile BDT_ENTRY*)&BDT[0];
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT)	;volatile
	movwf	((c:_pBDTEntryEP0OutCurrent+1)),c
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT)	;volatile
	movwf	((c:_pBDTEntryEP0OutCurrent)),c
	line	2166
	
i2l3686:
;usb_device.c: 2166: pBDTEntryEP0OutNext = pBDTEntryEP0OutCurrent;
	movff	(c:_pBDTEntryEP0OutCurrent),(c:_pBDTEntryEP0OutNext)
	movff	(c:_pBDTEntryEP0OutCurrent+1),(c:_pBDTEntryEP0OutNext+1)
	line	2169
	
i2l3688:
;usb_device.c: 2169: USBActiveConfiguration = SetupPkt.bConfigurationValue;
	movff	0+(_SetupPkt+02h),(c:_USBActiveConfiguration)	;volatile
	line	2172
	
i2l3690:
;usb_device.c: 2172: if(USBActiveConfiguration == 0)
	tstfsz	((c:_USBActiveConfiguration)),c	;volatile
	goto	i2u345_41
	goto	i2u345_40
i2u345_41:
	goto	i2l3694
i2u345_40:
	line	2175
	
i2l3692:
;usb_device.c: 2173: {
;usb_device.c: 2175: USBDeviceState = ADDRESS_STATE;
	movlw	low(010h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	line	2176
;usb_device.c: 2176: }
	goto	i2l595
	line	2177
	
i2l593:; BSR set to: 0

	line	2180
	
i2l3694:
;usb_device.c: 2177: else
;usb_device.c: 2178: {
;usb_device.c: 2180: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_CONFIGURED,(void*)&USBActiveConfiguration,1);
	movlw	high(01h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(01h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movlw	high((c:_USBActiveConfiguration))	;volatile
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	low((c:_USBActiveConfiguration))	;volatile
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	high(01h)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(01h)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2185
	
i2l3696:
;usb_device.c: 2185: USBDeviceState = CONFIGURED_STATE;
	movlw	low(020h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeviceState))&0ffh	;volatile
	goto	i2l595
	line	2186
	
i2l594:; BSR set to: 0

	line	2187
	
i2l595:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBStdSetCfgHandler
	__end_of_USBStdSetCfgHandler:
	signat	_USBStdSetCfgHandler,88
	global	i2_memset

;; *************** function i2_memset *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\Microchip\xc8\v1.20\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  memset          2   17[COMRAM] PTR void 
;;		 -> USBAlternateInterface(2), BDT(48), UEP1(1), 
;;  memset          2   19[COMRAM] int 
;;  memset          2   21[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  memset          2    0[config] PTR char 
;;		 -> USBAlternateInterface(2), BDT(48), UEP1(1), 
;; Return value:  Size  Location     Type
;;                  2   17[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       6       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       6       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBStdSetCfgHandler
;;		i2_USBDeviceInit
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
global __ptext27
__ptext27:
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.20\sources\common\memset.c"
	line	10
	global	__size_ofi2_memset
	__size_ofi2_memset	equ	__end_ofi2_memset-i2_memset
	
i2_memset:; BSR set to: 0

;incstack = 0
	opt	stack 23
;incstack = 0
	line	18
	
i2l4028:
	movff	(c:i2memset@p1),(i2memset@p)
	movff	(c:i2memset@p1+1),(i2memset@p+1)
	line	19
	goto	i2l4034
	
i2l1250:
	line	20
	
i2l4030:
	movff	(i2memset@p),fsr2l
	movff	(i2memset@p+1),fsr2h
	movff	(c:i2memset@c),indf2

	
i2l4032:
	movlb	i2memset@p>>8	; () unknown bank
	movlb	i2memset@p>>8	; () unknown bank
	infsnz	((i2memset@p))&0ffh
	incf	((i2memset@p+1))&0ffh
	goto	i2l4034
	
i2l1249:
	line	19
	
i2l4034:
	decf	((c:i2memset@n)),c
	btfss	status,0
	decf	((c:i2memset@n+1)),c
	incf	((c:i2memset@n))&0ffh,w
	btfsc	status,2
	incf ((c:i2memset@n+1))&0ffh,w

	btfss	status,2
	goto	i2u393_41
	goto	i2u393_40
i2u393_41:
	goto	i2l4030
i2u393_40:
	goto	i2l1252
	
i2l1251:
	line	22
;	Return value of i2_memset is never used
	
i2l1252:
	return
	opt stack 0
GLOBAL	__end_ofi2_memset
	__end_ofi2_memset:
	signat	i2_memset,90
	global	_USBCtrlEPServiceComplete

;; *************** function _USBCtrlEPServiceComplete *****************
;; Defined at:
;;		line 1786 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBCtrlEPAllowStatusStage
;;		_USBCtrlEPAllowDataStage
;; This function is called by:
;;		_USBCtrlTrfSetupHandler
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
global __ptext28
__ptext28:
psect	text28
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1786
	global	__size_of_USBCtrlEPServiceComplete
	__size_of_USBCtrlEPServiceComplete	equ	__end_of_USBCtrlEPServiceComplete-_USBCtrlEPServiceComplete
	
_USBCtrlEPServiceComplete:
;incstack = 0
	opt	stack 20
;incstack = 0
	line	1791
	
i2l3570:
;usb_device.c: 1791: UCONbits.PKTDIS = 0;
	bcf	((c:3949)),c,4	;volatile
	line	1797
;usb_device.c: 1797: if(inPipes[0].info.bits.busy == 0)
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	(0+(_inPipes+03h))&0ffh,7	;volatile
	goto	i2u329_41
	goto	i2u329_40
i2u329_41:
	goto	i2l550
i2u329_40:
	line	1799
	
i2l3572:; BSR set to: 0

;usb_device.c: 1798: {
;usb_device.c: 1799: if(outPipes[0].info.bits.busy == 1)
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	(0+(_outPipes+03h))&0ffh,7	;volatile
	goto	i2u330_41
	goto	i2u330_40
i2u330_41:
	goto	i2l3584
i2u330_40:
	line	1801
	
i2l3574:; BSR set to: 0

;usb_device.c: 1800: {
;usb_device.c: 1801: controlTransferState = 2;
	movlw	low(02h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1812
	
i2l3576:; BSR set to: 0

;usb_device.c: 1812: if(USBDeferOUTDataStagePackets == FALSE)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	goto	i2u331_41
	goto	i2u331_40
i2u331_41:
	goto	i2l3580
i2u331_40:
	line	1814
	
i2l3578:; BSR set to: 0

;usb_device.c: 1813: {
;usb_device.c: 1814: USBCtrlEPAllowDataStage();
	call	_USBCtrlEPAllowDataStage	;wreg free
	goto	i2l3580
	line	1815
	
i2l552:
	line	1819
	
i2l3580:
;usb_device.c: 1815: }
;usb_device.c: 1819: USBStatusStageEnabledFlag2 = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag2))&0ffh	;volatile
	line	1820
	
i2l3582:; BSR set to: 0

;usb_device.c: 1820: USBStatusStageEnabledFlag1 = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag1))&0ffh	;volatile
	line	1821
;usb_device.c: 1821: }
	goto	i2l560
	line	1822
	
i2l551:; BSR set to: 0

	line	1828
	
i2l3584:; BSR set to: 0

;usb_device.c: 1822: else
;usb_device.c: 1823: {
;usb_device.c: 1828: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1829
;usb_device.c: 1829: pBDTEntryEP0OutNext->ADR = ((WORD)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movwf	postinc2
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movwf	postdec2
	line	1830
	
i2l3586:
;usb_device.c: 1830: pBDTEntryEP0OutNext->STAT.Val = 0x80|0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(08Ch)
	movwf	indf2
	line	1831
	
i2l3588:
;usb_device.c: 1831: pBDTEntryIn[0]->STAT.Val = 0x80|0x04;
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(084h)
	movwf	indf2
	goto	i2l560
	line	1832
	
i2l553:
	line	1833
;usb_device.c: 1832: }
;usb_device.c: 1833: }
	goto	i2l560
	line	1834
	
i2l550:; BSR set to: 0

	line	1836
;usb_device.c: 1834: else
;usb_device.c: 1835: {
;usb_device.c: 1836: if(SetupPkt.DataDir == (0x80>>7))
	movlb	_SetupPkt>>8	; () unknown bank
	
	movlb	_SetupPkt>>8	; () unknown bank
	btfss	((_SetupPkt))&0ffh,7	;volatile
	goto	i2u332_41
	goto	i2u332_40
i2u332_41:
	goto	i2l3604
i2u332_40:
	line	1838
	
i2l3590:
;usb_device.c: 1837: {
;usb_device.c: 1838: controlTransferState = 1;
	movlw	low(01h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1852
	
i2l3592:
;usb_device.c: 1852: if(USBDeferINDataStagePackets == FALSE)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBDeferINDataStagePackets))&0ffh	;volatile
	goto	i2u333_41
	goto	i2u333_40
i2u333_41:
	goto	i2l3596
i2u333_40:
	line	1854
	
i2l3594:; BSR set to: 0

;usb_device.c: 1853: {
;usb_device.c: 1854: USBCtrlEPAllowDataStage();
	call	_USBCtrlEPAllowDataStage	;wreg free
	goto	i2l3596
	line	1855
	
i2l556:
	line	1877
	
i2l3596:
;usb_device.c: 1855: }
;usb_device.c: 1877: USBStatusStageEnabledFlag2 = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag2))&0ffh	;volatile
	line	1878
	
i2l3598:; BSR set to: 0

;usb_device.c: 1878: USBStatusStageEnabledFlag1 = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag1))&0ffh	;volatile
	line	1879
	
i2l3600:; BSR set to: 0

;usb_device.c: 1879: if(USBDeferStatusStagePacket == FALSE)
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u334_41
	goto	i2u334_40
i2u334_41:
	goto	i2l560
i2u334_40:
	line	1881
	
i2l3602:; BSR set to: 0

;usb_device.c: 1880: {
;usb_device.c: 1881: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l560
	line	1882
	
i2l557:
	line	1883
;usb_device.c: 1882: }
;usb_device.c: 1883: }
	goto	i2l560
	line	1884
	
i2l555:
	line	1896
	
i2l3604:
;usb_device.c: 1884: else
;usb_device.c: 1885: {
;usb_device.c: 1896: controlTransferState = 2;
	movlw	low(02h)
	movwf	((c:_controlTransferState)),c	;volatile
	line	1899
	
i2l3606:
;usb_device.c: 1899: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1900
	
i2l3608:
;usb_device.c: 1900: pBDTEntryEP0OutNext->ADR = ((WORD)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movwf	postinc2
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movwf	postdec2
	line	1901
	
i2l3610:
;usb_device.c: 1901: pBDTEntryEP0OutNext->STAT.Val = 0x80|0x04;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(084h)
	movwf	indf2
	line	1904
	
i2l3612:
;usb_device.c: 1904: USBStatusStageEnabledFlag2 = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag2))&0ffh	;volatile
	line	1905
	
i2l3614:; BSR set to: 0

;usb_device.c: 1905: USBStatusStageEnabledFlag1 = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag1))&0ffh	;volatile
	line	1906
	
i2l3616:; BSR set to: 0

;usb_device.c: 1906: if(USBDeferStatusStagePacket == FALSE)
	tstfsz	((c:_USBDeferStatusStagePacket)),c	;volatile
	goto	i2u335_41
	goto	i2u335_40
i2u335_41:
	goto	i2l560
i2u335_40:
	line	1908
	
i2l3618:; BSR set to: 0

;usb_device.c: 1907: {
;usb_device.c: 1908: USBCtrlEPAllowStatusStage();
	call	_USBCtrlEPAllowStatusStage	;wreg free
	goto	i2l560
	line	1909
	
i2l559:
	goto	i2l560
	line	1910
	
i2l558:
	goto	i2l560
	line	1912
	
i2l554:
	line	1914
	
i2l560:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPServiceComplete
	__end_of_USBCtrlEPServiceComplete:
	signat	_USBCtrlEPServiceComplete,88
	global	_USBCtrlEPAllowDataStage

;; *************** function _USBCtrlEPAllowDataStage *****************
;; Defined at:
;;		line 1660 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCtrlTrfTxService
;; This function is called by:
;;		_USBCtrlEPServiceComplete
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
global __ptext29
__ptext29:
psect	text29
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1660
	global	__size_of_USBCtrlEPAllowDataStage
	__size_of_USBCtrlEPAllowDataStage	equ	__end_of_USBCtrlEPAllowDataStage-_USBCtrlEPAllowDataStage
	
_USBCtrlEPAllowDataStage:
;incstack = 0
	opt	stack 20
;incstack = 0
	line	1661
	
i2l3510:
;usb_device.c: 1661: USBDeferINDataStagePackets = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeferINDataStagePackets))&0ffh	;volatile
	line	1662
;usb_device.c: 1662: USBDeferOUTDataStagePackets = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBDeferOUTDataStagePackets))&0ffh	;volatile
	line	1664
	
i2l3512:; BSR set to: 0

;usb_device.c: 1664: if(controlTransferState == 2)
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u319_41
	goto	i2u319_40
i2u319_41:
	goto	i2l3518
i2u319_40:
	line	1667
	
i2l3514:; BSR set to: 0

;usb_device.c: 1665: {
;usb_device.c: 1667: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1668
;usb_device.c: 1668: pBDTEntryEP0OutNext->ADR = ((WORD)(&CtrlTrfData));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	low(_CtrlTrfData)	;volatile
	movwf	postinc2
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	high(_CtrlTrfData)	;volatile
	movwf	postdec2
	line	1669
	
i2l3516:
;usb_device.c: 1669: pBDTEntryEP0OutNext->STAT.Val = 0x80|0x40|(0x08 & 0x08);
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(0C8h)
	movwf	indf2
	line	1670
;usb_device.c: 1670: }
	goto	i2l542
	line	1671
	
i2l539:
	line	1675
	
i2l3518:
;usb_device.c: 1671: else
;usb_device.c: 1672: {
;usb_device.c: 1675: if(SetupPkt.wLength < inPipes[0].wCount.Val)
	movlb	0	; () banked
	lfsr	2,_inPipes+04h	;volatile
	movlb	_SetupPkt>>8	; () unknown bank
	lfsr	1,_SetupPkt+06h	;volatile
	movf	postinc1
	movf	postinc2
	movf	postdec2,w
	subwf	postdec1,w
	bnz	i2u320_45
	movf	indf2,w
	subwf	indf1,w
i2u320_45:

	btfsc	status,0
	goto	i2u320_41
	goto	i2u320_40
i2u320_41:
	goto	i2l3522
i2u320_40:
	line	1677
	
i2l3520:
;usb_device.c: 1676: {
;usb_device.c: 1677: inPipes[0].wCount.Val = SetupPkt.wLength;
	movff	0+(_SetupPkt+06h),0+(_inPipes+04h)	;volatile
	movff	1+(_SetupPkt+06h),1+(_inPipes+04h)	;volatile
	goto	i2l3522
	line	1678
	
i2l541:
	line	1679
	
i2l3522:
;usb_device.c: 1678: }
;usb_device.c: 1679: USBCtrlTrfTxService();
	call	_USBCtrlTrfTxService	;wreg free
	line	1684
	
i2l3524:
;usb_device.c: 1684: pBDTEntryIn[0]->ADR = ((WORD)(&CtrlTrfData));
	movlb	0	; () banked
	lfsr	2,02h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	low(_CtrlTrfData)	;volatile
	movwf	postinc2
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	high(_CtrlTrfData)	;volatile
	movwf	postdec2
	line	1685
	
i2l3526:
;usb_device.c: 1685: pBDTEntryIn[0]->STAT.Val = 0x80|0x40|(0x08 & 0x08);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(0C8h)
	movwf	indf2
	goto	i2l542
	line	1686
	
i2l540:
	line	1687
	
i2l542:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPAllowDataStage
	__end_of_USBCtrlEPAllowDataStage:
	signat	_USBCtrlEPAllowDataStage,88
	global	_USBCtrlTrfTxService

;; *************** function _USBCtrlTrfTxService *****************
;; Defined at:
;;		line 1938 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byteToSend      1    2[config] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCtrlEPAllowDataStage
;;		_USBCtrlTrfInHandler
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
global __ptext30
__ptext30:
psect	text30
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1938
	global	__size_of_USBCtrlTrfTxService
	__size_of_USBCtrlTrfTxService	equ	__end_of_USBCtrlTrfTxService-_USBCtrlTrfTxService
	
_USBCtrlTrfTxService:
;incstack = 0
	opt	stack 22
;incstack = 0
	line	1943
	
i2l3528:
;usb_device.c: 1939: BYTE byteToSend;
;usb_device.c: 1943: byteToSend = 8;
	movwf	(??_USBCtrlTrfTxService+0+0)&0ffh
	movlw	low(08h)
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movwf	((USBCtrlTrfTxService@byteToSend))&0ffh
	movf	(??_USBCtrlTrfTxService+0+0)&0ffh,w
	line	1944
	
i2l3530:
;usb_device.c: 1944: if(inPipes[0].wCount.Val < (BYTE)8)
	movlw	08h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	(0+(_inPipes+04h))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	(1+(_inPipes+04h))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u321_41
	goto	i2u321_40
i2u321_41:
	goto	i2l3540
i2u321_40:
	line	1946
	
i2l3532:; BSR set to: 0

;usb_device.c: 1945: {
;usb_device.c: 1946: byteToSend = inPipes[0].wCount.Val;
	movff	0+(_inPipes+04h),(USBCtrlTrfTxService@byteToSend)	;volatile
	line	1953
;usb_device.c: 1953: if(shortPacketStatus == 0)
	tstfsz	((c:_shortPacketStatus)),c	;volatile
	goto	i2u322_41
	goto	i2u322_40
i2u322_41:
	goto	i2l3536
i2u322_40:
	line	1955
	
i2l3534:; BSR set to: 0

;usb_device.c: 1954: {
;usb_device.c: 1955: shortPacketStatus = 1;
	movlw	low(01h)
	movwf	((c:_shortPacketStatus)),c	;volatile
	line	1956
;usb_device.c: 1956: }
	goto	i2l3540
	line	1957
	
i2l564:; BSR set to: 0

	
i2l3536:; BSR set to: 0

;usb_device.c: 1957: else if(shortPacketStatus == 1)
	decf	((c:_shortPacketStatus)),c,w	;volatile

	btfss	status,2
	goto	i2u323_41
	goto	i2u323_40
i2u323_41:
	goto	i2l3540
i2u323_40:
	line	1959
	
i2l3538:; BSR set to: 0

;usb_device.c: 1958: {
;usb_device.c: 1959: shortPacketStatus = 2;
	movlw	low(02h)
	movwf	((c:_shortPacketStatus)),c	;volatile
	goto	i2l3540
	line	1960
	
i2l566:; BSR set to: 0

	goto	i2l3540
	line	1961
	
i2l565:; BSR set to: 0

	goto	i2l3540
	
i2l563:; BSR set to: 0

	line	1965
	
i2l3540:; BSR set to: 0

;usb_device.c: 1960: }
;usb_device.c: 1961: }
;usb_device.c: 1965: inPipes[0].wCount.Val = inPipes[0].wCount.Val - byteToSend;
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movf	((USBCtrlTrfTxService@byteToSend))&0ffh,w
	movwf	(??_USBCtrlTrfTxService+0+0)&0ffh
	clrf	(??_USBCtrlTrfTxService+0+0+1)&0ffh

	comf	(??_USBCtrlTrfTxService+0+0)&0ffh
	comf	(??_USBCtrlTrfTxService+0+1)&0ffh
	infsnz	(??_USBCtrlTrfTxService+0+0)&0ffh
	incf	(??_USBCtrlTrfTxService+0+1)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_inPipes+04h))&0ffh,w	;volatile
	addwf	(??_USBCtrlTrfTxService+0+0)&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(1+(_inPipes+04h))&0ffh,w	;volatile
	addwfc	(??_USBCtrlTrfTxService+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(0+(_inPipes+04h))&0ffh	;volatile
	line	1970
	
i2l3542:; BSR set to: 0

;usb_device.c: 1970: pBDTEntryIn[0]->CNT = byteToSend;
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movff	(USBCtrlTrfTxService@byteToSend),indf2

	line	1974
	
i2l3544:
;usb_device.c: 1974: pDst = (volatile BYTE*)CtrlTrfData;
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	high(_CtrlTrfData)	;volatile
	movwf	((c:_pDst+1)),c
	movlb	_CtrlTrfData>>8	; () unknown bank
	movlw	low(_CtrlTrfData)	;volatile
	movwf	((c:_pDst)),c
	line	1975
	
i2l3546:
;usb_device.c: 1975: if(inPipes[0].info.bits.ctrl_trf_mem == 0x00)
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	(0+(_inPipes+03h))&0ffh,0	;volatile
	goto	i2u324_41
	goto	i2u324_40
i2u324_41:
	goto	i2l3568
i2u324_40:
	goto	i2l3558
	line	1977
	
i2l3548:; BSR set to: 0

;usb_device.c: 1976: {
;usb_device.c: 1977: while(byteToSend)
	goto	i2l3558
	
i2l569:; BSR set to: 0

	line	1979
	
i2l3550:
;usb_device.c: 1978: {
;usb_device.c: 1979: *pDst++ = *inPipes[0].pSrc.bRom++;
	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	movlb	0	; () banked
	movff	(_inPipes+2),tblptru	;volatile
	
	btfsc	tblptru,5
	bra	i2u325_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u325_40
i2u325_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u325_40:
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movwf	indf2

	
i2l3552:
	movlb	0	; () banked
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_inPipes))&0ffh	;volatile
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((_inPipes+1))&0ffh	;volatile
	movlw	low highword(01h)
	movlb	0	; () banked
	addwfc	((_inPipes+2))&0ffh	;volatile
	
i2l3554:; BSR set to: 0

	infsnz	((c:_pDst)),c
	incf	((c:_pDst+1)),c
	line	1980
	
i2l3556:; BSR set to: 0

;usb_device.c: 1980: byteToSend--;
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	decf	((USBCtrlTrfTxService@byteToSend))&0ffh
	goto	i2l3558
	line	1981
	
i2l568:
	line	1977
	
i2l3558:
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	tstfsz	((USBCtrlTrfTxService@byteToSend))&0ffh
	goto	i2u326_41
	goto	i2u326_40
i2u326_41:
	goto	i2l3550
i2u326_40:
	goto	i2l575
	
i2l570:
	line	1982
;usb_device.c: 1981: }
;usb_device.c: 1982: }
	goto	i2l575
	line	1983
	
i2l567:
	line	1985
;usb_device.c: 1983: else
;usb_device.c: 1984: {
;usb_device.c: 1985: while(byteToSend)
	goto	i2l3568
	
i2l573:
	line	1987
	
i2l3560:
;usb_device.c: 1986: {
;usb_device.c: 1987: *pDst++ = *inPipes[0].pSrc.bRam++;
	movlb	0	; () banked
	movff	(_inPipes),tblptrl	;volatile
	movlb	0	; () banked
	movff	(_inPipes+1),tblptrh	;volatile
	movlb	0	; () banked
	movff	(_inPipes+2),tblptru	;volatile
	
	btfsc	tblptru,5
	bra	i2u327_47
	tblrd	*
	
	movf	tablat,w
	bra	i2u327_40
i2u327_47:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
i2u327_40:
	movff	(c:_pDst),fsr2l
	movff	(c:_pDst+1),fsr2h
	movwf	indf2

	
i2l3562:
	movlb	0	; () banked
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_inPipes))&0ffh	;volatile
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((_inPipes+1))&0ffh	;volatile
	movlw	low highword(01h)
	movlb	0	; () banked
	addwfc	((_inPipes+2))&0ffh	;volatile
	
i2l3564:; BSR set to: 0

	infsnz	((c:_pDst)),c
	incf	((c:_pDst+1)),c
	line	1988
	
i2l3566:; BSR set to: 0

;usb_device.c: 1988: byteToSend--;
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	decf	((USBCtrlTrfTxService@byteToSend))&0ffh
	goto	i2l3568
	line	1989
	
i2l572:
	line	1985
	
i2l3568:
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	movlb	USBCtrlTrfTxService@byteToSend>>8	; () unknown bank
	tstfsz	((USBCtrlTrfTxService@byteToSend))&0ffh
	goto	i2u328_41
	goto	i2u328_40
i2u328_41:
	goto	i2l3560
i2u328_40:
	goto	i2l575
	
i2l574:
	goto	i2l575
	line	1990
	
i2l571:
	line	1991
	
i2l575:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlTrfTxService
	__end_of_USBCtrlTrfTxService:
	signat	_USBCtrlTrfTxService,88
	global	_USBCtrlEPAllowStatusStage

;; *************** function _USBCtrlEPAllowStatusStage *****************
;; Defined at:
;;		line 1590 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBCtrlEPServiceComplete
;;		_USBCtrlTrfRxService
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
global __ptext31
__ptext31:
psect	text31
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1590
	global	__size_of_USBCtrlEPAllowStatusStage
	__size_of_USBCtrlEPAllowStatusStage	equ	__end_of_USBCtrlEPAllowStatusStage-_USBCtrlEPAllowStatusStage
	
_USBCtrlEPAllowStatusStage:
;incstack = 0
	opt	stack 21
;incstack = 0
	line	1596
	
i2l3392:
;usb_device.c: 1596: if(USBStatusStageEnabledFlag1 == FALSE)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBStatusStageEnabledFlag1))&0ffh	;volatile
	goto	i2u304_41
	goto	i2u304_40
i2u304_41:
	goto	i2l536
i2u304_40:
	line	1598
	
i2l3394:; BSR set to: 0

;usb_device.c: 1597: {
;usb_device.c: 1598: USBStatusStageEnabledFlag1 = TRUE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag1))&0ffh	;volatile
	line	1599
	
i2l3396:; BSR set to: 0

;usb_device.c: 1599: if(USBStatusStageEnabledFlag2 == FALSE)
	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((_USBStatusStageEnabledFlag2))&0ffh	;volatile
	goto	i2u305_41
	goto	i2u305_40
i2u305_41:
	goto	i2l536
i2u305_40:
	line	1601
	
i2l3398:; BSR set to: 0

;usb_device.c: 1600: {
;usb_device.c: 1601: USBStatusStageEnabledFlag2 = TRUE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBStatusStageEnabledFlag2))&0ffh	;volatile
	line	1605
	
i2l3400:; BSR set to: 0

;usb_device.c: 1605: if(controlTransferState == 2)
	movf	((c:_controlTransferState)),c,w	;volatile
	xorlw	2

	btfss	status,2
	goto	i2u306_41
	goto	i2u306_40
i2u306_41:
	goto	i2l3406
i2u306_40:
	line	1607
	
i2l3402:; BSR set to: 0

;usb_device.c: 1606: {
;usb_device.c: 1607: pBDTEntryIn[0]->CNT = 0;
	movlb	0	; () banked
	lfsr	2,01h
	movlb	0	; () banked
	movf	((_pBDTEntryIn))&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	((_pBDTEntryIn+1))&0ffh,w
	addwfc	fsr2h
	movlw	low(0)
	movwf	indf2
	line	1608
	
i2l3404:; BSR set to: 0

;usb_device.c: 1608: pBDTEntryIn[0]->STAT.Val = 0x80|0x40|(0x08 & 0x08);
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	movlw	low(0C8h)
	movwf	indf2
	line	1609
;usb_device.c: 1609: }
	goto	i2l536
	line	1610
	
i2l533:; BSR set to: 0

	
i2l3406:; BSR set to: 0

;usb_device.c: 1610: else if(controlTransferState == 1)
	decf	((c:_controlTransferState)),c,w	;volatile

	btfss	status,2
	goto	i2u307_41
	goto	i2u307_40
i2u307_41:
	goto	i2l536
i2u307_40:
	line	1612
	
i2l3408:; BSR set to: 0

;usb_device.c: 1611: {
;usb_device.c: 1612: BothEP0OutUOWNsSet = FALSE;
	movlw	low(0)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	1617
	
i2l3410:; BSR set to: 0

;usb_device.c: 1617: pBDTEntryEP0OutCurrent->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1618
	
i2l3412:; BSR set to: 0

;usb_device.c: 1618: pBDTEntryEP0OutCurrent->ADR = ((WORD)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutCurrent)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutCurrent+1)),c,w
	addwfc	fsr2h
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movwf	postinc2
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movwf	postdec2
	line	1619
	
i2l3414:
;usb_device.c: 1619: pBDTEntryEP0OutCurrent->STAT.Val = 0x80|0x04;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(084h)
	movwf	indf2
	line	1620
	
i2l3416:
;usb_device.c: 1620: BothEP0OutUOWNsSet = TRUE;
	movlw	low(01h)
	movwf	((c:_BothEP0OutUOWNsSet)),c	;volatile
	line	1624
	
i2l3418:
;usb_device.c: 1624: pBDTEntryEP0OutNext->CNT = 8;
	lfsr	2,01h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlw	low(08h)
	movwf	indf2
	line	1625
	
i2l3420:
;usb_device.c: 1625: pBDTEntryEP0OutNext->ADR = ((WORD)(&SetupPkt));
	lfsr	2,02h
	movf	((c:_pBDTEntryEP0OutNext)),c,w
	addwf	fsr2l
	movf	((c:_pBDTEntryEP0OutNext+1)),c,w
	addwfc	fsr2h
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	low(_SetupPkt)	;volatile
	movwf	postinc2
	movlb	_SetupPkt>>8	; () unknown bank
	movlw	high(_SetupPkt)	;volatile
	movwf	postdec2
	line	1626
;usb_device.c: 1626: pBDTEntryEP0OutNext->STAT.Val = 0x80;
	movff	(c:_pBDTEntryEP0OutNext),fsr2l
	movff	(c:_pBDTEntryEP0OutNext+1),fsr2h
	movlw	low(080h)
	movwf	indf2
	goto	i2l536
	line	1627
	
i2l535:
	goto	i2l536
	line	1628
	
i2l534:
	goto	i2l536
	
i2l532:
	goto	i2l536
	line	1629
	
i2l531:
	line	1630
	
i2l536:
	return
	opt stack 0
GLOBAL	__end_of_USBCtrlEPAllowStatusStage
	__end_of_USBCtrlEPAllowStatusStage:
	signat	_USBCtrlEPAllowStatusStage,88
	global	_USBStallHandler

;; *************** function _USBStallHandler *****************
;; Defined at:
;;		line 2356 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
global __ptext32
__ptext32:
psect	text32
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2356
	global	__size_of_USBStallHandler
	__size_of_USBStallHandler	equ	__end_of_USBStallHandler-_USBStallHandler
	
_USBStallHandler:
;incstack = 0
	opt	stack 24
;incstack = 0
	line	2368
	
i2l3422:
;usb_device.c: 2368: if(UEP0bits.EPSTALL == 1)
	
	btfss	((c:3952)),c,0	;volatile
	goto	i2u308_41
	goto	i2u308_40
i2u308_41:
	goto	i2l3432
i2u308_40:
	line	2371
	
i2l3424:
;usb_device.c: 2369: {
;usb_device.c: 2371: if((pBDTEntryEP0OutCurrent->STAT.Val == 0x80) && (pBDTEntryIn[0]->STAT.Val == (0x80|0x04)))
	movlw	(080h)&0ffh
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	cpfseq	indf2
	goto	i2u309_41
	goto	i2u309_40
i2u309_41:
	goto	i2l3430
i2u309_40:
	
i2l3426:
	movlw	(084h)&0ffh
	movff	(_pBDTEntryIn),fsr2l
	movff	(_pBDTEntryIn+1),fsr2h
	cpfseq	indf2
	goto	i2u310_41
	goto	i2u310_40
i2u310_41:
	goto	i2l3430
i2u310_40:
	line	2374
	
i2l3428:
;usb_device.c: 2372: {
;usb_device.c: 2374: pBDTEntryEP0OutCurrent->STAT.Val = 0x80|0x00|(0x08 & 0x08)|0x04;
	movff	(c:_pBDTEntryEP0OutCurrent),fsr2l
	movff	(c:_pBDTEntryEP0OutCurrent+1),fsr2h
	movlw	low(08Ch)
	movwf	indf2
	goto	i2l3430
	line	2375
	
i2l625:
	line	2376
	
i2l3430:
;usb_device.c: 2375: }
;usb_device.c: 2376: UEP0bits.EPSTALL = 0;
	bcf	((c:3952)),c,0	;volatile
	goto	i2l3432
	line	2377
	
i2l624:
	line	2379
	
i2l3432:
;usb_device.c: 2377: }
;usb_device.c: 2379: (UIR &= 0xDF);
	bcf	(0+(5/8)+(c:3944)),c,(5)&7	;volatile
	line	2380
	
i2l626:
	return
	opt stack 0
GLOBAL	__end_of_USBStallHandler
	__end_of_USBStallHandler:
	signat	_USBStallHandler,88
	global	_USBSuspend

;; *************** function _USBSuspend *****************
;; Defined at:
;;		line 2399 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
global __ptext33
__ptext33:
psect	text33
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2399
	global	__size_of_USBSuspend
	__size_of_USBSuspend	equ	__end_of_USBSuspend-_USBSuspend
	
_USBSuspend:
;incstack = 0
	opt	stack 19
;incstack = 0
	line	2423
	
i2l3382:
;usb_device.c: 2423: UIEbits.ACTVIE = 1;
	bsf	((c:3945)),c,2	;volatile
	line	2424
	
i2l3384:
;usb_device.c: 2424: (UIR &= 0xEF);
	bcf	(0+(4/8)+(c:3944)),c,(4)&7	;volatile
	line	2427
	
i2l3386:
;usb_device.c: 2427: UCONbits.SUSPND = 1;
	bsf	((c:3949)),c,1	;volatile
	line	2430
	
i2l3388:
;usb_device.c: 2430: USBBusIsSuspended = TRUE;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBBusIsSuspended))&0ffh	;volatile
	line	2437
	
i2l3390:; BSR set to: 0

;usb_device.c: 2437: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_SUSPEND,0,0);
	movlw	high(075h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(075h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2438
	
i2l629:
	return
	opt stack 0
GLOBAL	__end_of_USBSuspend
	__end_of_USBSuspend:
	signat	_USBSuspend,88
	global	_USBWakeFromSuspend

;; *************** function _USBWakeFromSuspend *****************
;; Defined at:
;;		line 2456 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function is called by:
;;		_USBDeviceTasks
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
global __ptext34
__ptext34:
psect	text34
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	2456
	global	__size_of_USBWakeFromSuspend
	__size_of_USBWakeFromSuspend	equ	__end_of_USBWakeFromSuspend-_USBWakeFromSuspend
	
_USBWakeFromSuspend:
;incstack = 0
	opt	stack 19
;incstack = 0
	line	2457
	
i2l3370:
;usb_device.c: 2457: USBBusIsSuspended = FALSE;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_USBBusIsSuspended))&0ffh	;volatile
	line	2463
	
i2l3372:; BSR set to: 0

;usb_device.c: 2463: USER_USB_CALLBACK_EVENT_HANDLER(EVENT_RESUME,0,0);
	movlw	high(074h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER+1)),c
	movlw	low(074h)
	movwf	((c:?_USER_USB_CALLBACK_EVENT_HANDLER)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+02h)),c
	movlw	high(0)
	movwf	(1+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	movlw	low(0)
	movwf	(0+((c:?_USER_USB_CALLBACK_EVENT_HANDLER)+04h)),c
	call	_USER_USB_CALLBACK_EVENT_HANDLER	;wreg free
	line	2470
	
i2l3374:
;usb_device.c: 2470: UCONbits.SUSPND = 0;
	bcf	((c:3949)),c,1	;volatile
	line	2475
	
i2l3376:
;usb_device.c: 2475: UIEbits.ACTVIE = 0;
	bcf	((c:3945)),c,2	;volatile
	line	2493
;usb_device.c: 2493: while(UIRbits.ACTVIF)
	goto	i2l3380
	
i2l633:
	line	2496
	
i2l3378:
;usb_device.c: 2495: {
;usb_device.c: 2496: (UIR &= 0xFB);
	bcf	(0+(2/8)+(c:3944)),c,(2)&7	;volatile
	goto	i2l3380
	line	2497
	
i2l632:
	line	2493
	
i2l3380:
	
	btfsc	((c:3944)),c,2	;volatile
	goto	i2u303_41
	goto	i2u303_40
i2u303_41:
	goto	i2l3378
i2u303_40:
	goto	i2l635
	
i2l634:
	line	2499
	
i2l635:
	return
	opt stack 0
GLOBAL	__end_of_USBWakeFromSuspend
	__end_of_USBWakeFromSuspend:
	signat	_USBWakeFromSuspend,88
	global	_USER_USB_CALLBACK_EVENT_HANDLER

;; *************** function _USER_USB_CALLBACK_EVENT_HANDLER *****************
;; Defined at:
;;		line 1428 in file "main.c"
;; Parameters:    Size  Location     Type
;;  event           2   25[COMRAM] int 
;;  pdata           2   27[COMRAM] PTR void 
;;		 -> USTATcopy(1), USBActiveConfiguration(1), BDT(48), NULL(0), 
;;  size            2   29[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E5
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       6       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         2       6       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USBCBSuspend
;;		_USBCBWakeFromSuspend
;;		_USBCB_SOF_Handler
;;		_USBCBErrorHandler
;;		_USBCBCheckOtherReq
;;		_USBCBStdSetDscHandler
;;		_USBCBInitEP
;; This function is called by:
;;		_USBDeviceTasks
;;		_USBStdSetCfgHandler
;;		_USBSuspend
;;		_USBWakeFromSuspend
;;		_USBCtrlTrfSetupHandler
;;		_USBCheckStdRequest
;;		_USBStdFeatureReqHandler
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
global __ptext35
__ptext35:
psect	text35
	file	"main.c"
	line	1428
	global	__size_of_USER_USB_CALLBACK_EVENT_HANDLER
	__size_of_USER_USB_CALLBACK_EVENT_HANDLER	equ	__end_of_USER_USB_CALLBACK_EVENT_HANDLER-_USER_USB_CALLBACK_EVENT_HANDLER
	
_USER_USB_CALLBACK_EVENT_HANDLER:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	1429
	
i2l3252:
;main.c: 1429: switch( event )
	goto	i2l3270
	line	1431
;main.c: 1430: {
;main.c: 1431: case EVENT_TRANSFER:
	
i2l199:
	line	1433
;main.c: 1433: break;
	goto	i2l210
	line	1434
;main.c: 1434: case EVENT_SOF:
	
i2l201:
	line	1435
	
i2l3254:
;main.c: 1435: USBCB_SOF_Handler();
	call	_USBCB_SOF_Handler	;wreg free
	line	1436
;main.c: 1436: break;
	goto	i2l210
	line	1437
;main.c: 1437: case EVENT_SUSPEND:
	
i2l202:
	line	1438
	
i2l3256:
;main.c: 1438: USBCBSuspend();
	call	_USBCBSuspend	;wreg free
	line	1439
;main.c: 1439: break;
	goto	i2l210
	line	1440
;main.c: 1440: case EVENT_RESUME:
	
i2l203:
	line	1441
	
i2l3258:
;main.c: 1441: USBCBWakeFromSuspend();
	call	_USBCBWakeFromSuspend	;wreg free
	line	1442
;main.c: 1442: break;
	goto	i2l210
	line	1443
;main.c: 1443: case EVENT_CONFIGURED:
	
i2l204:
	line	1444
	
i2l3260:
;main.c: 1444: USBCBInitEP();
	call	_USBCBInitEP	;wreg free
	line	1445
;main.c: 1445: break;
	goto	i2l210
	line	1446
;main.c: 1446: case EVENT_SET_DESCRIPTOR:
	
i2l205:
	line	1447
	
i2l3262:
;main.c: 1447: USBCBStdSetDscHandler();
	call	_USBCBStdSetDscHandler	;wreg free
	line	1448
;main.c: 1448: break;
	goto	i2l210
	line	1449
;main.c: 1449: case EVENT_EP0_REQUEST:
	
i2l206:
	line	1450
	
i2l3264:
;main.c: 1450: USBCBCheckOtherReq();
	call	_USBCBCheckOtherReq	;wreg free
	line	1451
;main.c: 1451: break;
	goto	i2l210
	line	1452
;main.c: 1452: case EVENT_BUS_ERROR:
	
i2l207:
	line	1453
	
i2l3266:
;main.c: 1453: USBCBErrorHandler();
	call	_USBCBErrorHandler	;wreg free
	line	1454
;main.c: 1454: break;
	goto	i2l210
	line	1455
;main.c: 1455: case EVENT_TRANSFER_TERMINATED:
	
i2l208:
	line	1464
;main.c: 1464: break;
	goto	i2l210
	line	1465
;main.c: 1465: default:
	
i2l209:
	line	1466
;main.c: 1466: break;
	goto	i2l210
	line	1467
	
i2l3268:
;main.c: 1467: }
	goto	i2l210
	line	1429
	
i2l198:
	
i2l3270:
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0
	movff	(c:USER_USB_CALLBACK_EVENT_HANDLER@event+1),??_USER_USB_CALLBACK_EVENT_HANDLER+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 127
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movlb	USER_USB_CALLBACK_EVENT_HANDLER@event>>8	; () unknown bank
	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+1&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	i2l4424
	xorlw	127^0	; case 127
	skipnz
	goto	i2l4426
	goto	i2l210
	
i2l4424:
; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 1 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
;	Chosen strategy is simple_byte

	movlb	USER_USB_CALLBACK_EVENT_HANDLER@event>>8	; () unknown bank
	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0&0ffh,w
	xorlw	1^0	; case 1
	skipnz
	goto	i2l3260
	xorlw	2^1	; case 2
	skipnz
	goto	i2l3262
	xorlw	3^2	; case 3
	skipnz
	goto	i2l3264
	xorlw	5^3	; case 5
	skipnz
	goto	i2l210
	xorlw	114^5	; case 114
	skipnz
	goto	i2l210
	xorlw	115^114	; case 115
	skipnz
	goto	i2l3254
	xorlw	116^115	; case 116
	skipnz
	goto	i2l3258
	xorlw	117^116	; case 117
	skipnz
	goto	i2l3256
	goto	i2l210
	
i2l4426:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 255 to 255
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movlb	USER_USB_CALLBACK_EVENT_HANDLER@event>>8	; () unknown bank
	movf ??_USER_USB_CALLBACK_EVENT_HANDLER+0+0&0ffh,w
	xorlw	255^0	; case 255
	skipnz
	goto	i2l3266
	goto	i2l210

	line	1467
	
i2l200:
	line	1469
;main.c: 1468: return TRUE;
;	Return value of _USER_USB_CALLBACK_EVENT_HANDLER is never used
	
i2l210:
	return
	opt stack 0
GLOBAL	__end_of_USER_USB_CALLBACK_EVENT_HANDLER
	__end_of_USER_USB_CALLBACK_EVENT_HANDLER:
	signat	_USER_USB_CALLBACK_EVENT_HANDLER,12409
	global	_USBCBInitEP

;; *************** function _USBCBInitEP *****************
;; Defined at:
;;		line 1230 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_CDCInitEP
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
global __ptext36
__ptext36:
psect	text36
	file	"main.c"
	line	1230
	global	__size_of_USBCBInitEP
	__size_of_USBCBInitEP	equ	__end_of_USBCBInitEP-_USBCBInitEP
	
_USBCBInitEP:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	1232
	
i2l3212:
;main.c: 1232: CDCInitEP();
	call	_CDCInitEP	;wreg free
	line	1233
	
i2l184:
	return
	opt stack 0
GLOBAL	__end_of_USBCBInitEP
	__end_of_USBCBInitEP:
	signat	_USBCBInitEP,88
	global	_CDCInitEP

;; *************** function _CDCInitEP *****************
;; Defined at:
;;		line 417 in file "..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, btemp, btemp+1, btemp+2, btemp+3, btemp+4, btemp+5, btemp+6, btemp+7, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0
;;      Totals:         0       3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USBEnableEndpoint
;;		i2_USBTransferOnePacket
;; This function is called by:
;;		_USBCBInitEP
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
global __ptext37
__ptext37:
psect	text37
	file	"..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
	line	417
	global	__size_of_CDCInitEP
	__size_of_CDCInitEP	equ	__end_of_CDCInitEP-_CDCInitEP
	
_CDCInitEP:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	419
	
i2l3214:
;usb_function_cdc.c: 419: line_coding.dwDTERate.Val = 19200;
	movlw	low(04B00h)
	movlb	5	; () banked
	movlb	5	; () banked
	movwf	((1408))&0ffh	;volatile
	movlw	high(04B00h)
	movlb	5	; () banked
	movwf	((1408+1))&0ffh	;volatile
	movlw	low highword(04B00h)
	movlb	5	; () banked
	movwf	((1408+2))&0ffh	;volatile
	movlw	high highword(04B00h)
	movlb	5	; () banked
	movwf	((1408+3))&0ffh	;volatile
	line	420
;usb_function_cdc.c: 420: line_coding.bCharFormat = 0x00;
	movlw	low(0)
	movlb	5	; () banked
	movlb	5	; () banked
	movwf	(0+(1408+04h))&0ffh	;volatile
	line	421
;usb_function_cdc.c: 421: line_coding.bParityType = 0x00;
	movlw	low(0)
	movlb	5	; () banked
	movlb	5	; () banked
	movwf	(0+(1408+05h))&0ffh	;volatile
	line	422
;usb_function_cdc.c: 422: line_coding.bDataBits = 0x08;
	movlw	low(08h)
	movlb	5	; () banked
	movlb	5	; () banked
	movwf	(0+(1408+06h))&0ffh	;volatile
	line	424
	
i2l3216:; BSR set to: 5

;usb_function_cdc.c: 424: cdc_rx_len = 0;
	movwf	(??_CDCInitEP+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_rx_len))&0ffh
	movf	(??_CDCInitEP+0+0)&0ffh,c,w
	line	437
	
i2l3218:; BSR set to: 0

;usb_function_cdc.c: 437: USBEnableEndpoint(1,0x02|0x10|0x08);
	movwf	(??_CDCInitEP+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:?_USBEnableEndpoint)),c
	movf	(??_CDCInitEP+0+0)&0ffh,c,w
	movwf	(??_CDCInitEP+1+0)&0ffh,c
	movlw	low(01Ah)
	movwf	(0+((c:?_USBEnableEndpoint)+01h)),c
	movf	(??_CDCInitEP+1+0)&0ffh,c,w
	call	_USBEnableEndpoint	;wreg free
	line	438
	
i2l3220:
;usb_function_cdc.c: 438: USBEnableEndpoint(2,0x02|0x04|0x10|0x08);
	movwf	(??_CDCInitEP+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?_USBEnableEndpoint)),c
	movf	(??_CDCInitEP+0+0)&0ffh,c,w
	movwf	(??_CDCInitEP+1+0)&0ffh,c
	movlw	low(01Eh)
	movwf	(0+((c:?_USBEnableEndpoint)+01h)),c
	movf	(??_CDCInitEP+1+0)&0ffh,c,w
	call	_USBEnableEndpoint	;wreg free
	line	440
	
i2l3222:
;usb_function_cdc.c: 440: CDCDataOutHandle = USBTransferOnePacket(2,0,(BYTE*)&cdc_data_rx,sizeof(cdc_data_rx));
	movwf	(??_CDCInitEP+0+0)&0ffh,c
	movlw	low(02h)
	movwf	((c:?i2_USBTransferOnePacket)),c
	movf	(??_CDCInitEP+0+0)&0ffh,c,w
	movwf	(??_CDCInitEP+1+0)&0ffh,c
	movlw	low(0)
	movwf	(0+((c:?i2_USBTransferOnePacket)+01h)),c
	movf	(??_CDCInitEP+1+0)&0ffh,c,w
	movlb	5	; () banked
	movlw	high(1344)	;volatile
	movwf	(1+((c:?i2_USBTransferOnePacket)+02h)),c
	movlb	5	; () banked
	movlw	low(1344)	;volatile
	movwf	(0+((c:?i2_USBTransferOnePacket)+02h)),c
	movwf	(??_CDCInitEP+2+0)&0ffh,c
	movlw	low(040h)
	movwf	(0+((c:?i2_USBTransferOnePacket)+04h)),c
	movf	(??_CDCInitEP+2+0)&0ffh,c,w
	call	i2_USBTransferOnePacket	;wreg free
	movff	0+?i2_USBTransferOnePacket,(_CDCDataOutHandle)
	movff	1+?i2_USBTransferOnePacket,(_CDCDataOutHandle+1)
	line	441
	
i2l3224:
;usb_function_cdc.c: 441: CDCDataInHandle = (0);
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_CDCDataInHandle+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_CDCDataInHandle))&0ffh
	line	468
	
i2l3226:; BSR set to: 0

;usb_function_cdc.c: 468: cdc_trf_state = 0;
	movwf	(??_CDCInitEP+0+0)&0ffh,c
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_cdc_trf_state))&0ffh
	movf	(??_CDCInitEP+0+0)&0ffh,c,w
	line	469
	
i2l267:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_CDCInitEP
	__end_of_CDCInitEP:
	signat	_CDCInitEP,88
	global	i2_USBTransferOnePacket

;; *************** function i2_USBTransferOnePacket *****************
;; Defined at:
;;		line 1173 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;  USBTransferO    1   17[COMRAM] unsigned char 
;;  USBTransferO    1   18[COMRAM] unsigned char 
;;  USBTransferO    2   19[COMRAM] PTR unsigned char 
;;		 -> cdc_data_tx(64), NULL(0), cdc_data_rx(64), 
;;  USBTransferO    1   21[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  USBTransferO    2    0[config] PTR volatile struct __BD
;;		 -> BDT(48), NULL(0), 
;; Return value:  Size  Location     Type
;;                  2   17[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       5       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       5       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CDCInitEP
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
global __ptext38
__ptext38:
psect	text38
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1173
	global	__size_ofi2_USBTransferOnePacket
	__size_ofi2_USBTransferOnePacket	equ	__end_ofi2_USBTransferOnePacket-i2_USBTransferOnePacket
	
i2_USBTransferOnePacket:; BSR set to: 0

;incstack = 0
	opt	stack 17
;incstack = 0
	line	1177
	
i2l4000:
;usb_device.c: 1174: volatile BDT_ENTRY* handle;
;usb_device.c: 1177: if(dir != 0)
	movf	((c:i2USBTransferOnePacket@dir)),c,w
	btfsc	status,2
	goto	i2u390_41
	goto	i2u390_40
i2u390_41:
	goto	i2l4004
i2u390_40:
	line	1180
	
i2l4002:
;usb_device.c: 1178: {
;usb_device.c: 1180: handle = pBDTEntryIn[ep];
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movff	postinc2,(i2USBTransferOnePacket@handle)
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movff	postdec2,(i2USBTransferOnePacket@handle+1)
	line	1181
;usb_device.c: 1181: }
	goto	i2l4006
	line	1182
	
i2l503:
	line	1185
	
i2l4004:
;usb_device.c: 1182: else
;usb_device.c: 1183: {
;usb_device.c: 1185: handle = pBDTEntryOut[ep];
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movff	postinc2,(i2USBTransferOnePacket@handle)
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movff	postdec2,(i2USBTransferOnePacket@handle+1)
	goto	i2l4006
	line	1186
	
i2l504:
	line	1190
	
i2l4006:
;usb_device.c: 1186: }
;usb_device.c: 1190: if(handle == 0)
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movf	((i2USBTransferOnePacket@handle+1))&0ffh,w
	iorwf ((i2USBTransferOnePacket@handle))&0ffh,w

	btfss	status,2
	goto	i2u391_41
	goto	i2u391_40
i2u391_41:
	goto	i2l4012
i2u391_40:
	line	1192
	
i2l4008:
;usb_device.c: 1191: {
;usb_device.c: 1192: return 0;
	movlw	high(0)
	movwf	((c:?i2_USBTransferOnePacket+1)),c
	movlw	low(0)
	movwf	((c:?i2_USBTransferOnePacket)),c
	goto	i2l506
	
i2l4010:
	goto	i2l506
	line	1193
	
i2l505:
	line	1206
	
i2l4012:
;usb_device.c: 1193: }
;usb_device.c: 1206: handle->ADR = ((WORD)(data));
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	lfsr	2,02h
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movf	((i2USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movf	((i2USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movff	(c:i2USBTransferOnePacket@data),postinc2
	movff	(c:i2USBTransferOnePacket@data+1),postdec2
	line	1207
;usb_device.c: 1207: handle->CNT = len;
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	lfsr	2,01h
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movf	((i2USBTransferOnePacket@handle))&0ffh,w
	addwf	fsr2l
	movlb	i2USBTransferOnePacket@handle>>8	; () unknown bank
	movf	((i2USBTransferOnePacket@handle+1))&0ffh,w
	addwfc	fsr2h
	movff	(c:i2USBTransferOnePacket@len),indf2

	line	1208
	
i2l4014:
;usb_device.c: 1208: handle->STAT.Val &= 0x40;
	movff	(i2USBTransferOnePacket@handle),fsr2l
	movff	(i2USBTransferOnePacket@handle+1),fsr2h
	movlw	040h
	andwf	indf2
	line	1209
	
i2l4016:
;usb_device.c: 1209: handle->STAT.Val |= 0x80 | (0x08 & 0x08);
	movff	(i2USBTransferOnePacket@handle),fsr2l
	movff	(i2USBTransferOnePacket@handle+1),fsr2h
	movlw	088h
	iorwf	indf2
	line	1212
	
i2l4018:
;usb_device.c: 1212: if(dir != 0)
	movf	((c:i2USBTransferOnePacket@dir)),c,w
	btfsc	status,2
	goto	i2u392_41
	goto	i2u392_40
i2u392_41:
	goto	i2l4022
i2u392_40:
	line	1215
	
i2l4020:
;usb_device.c: 1213: {
;usb_device.c: 1215: ((BYTE_VAL*)&pBDTEntryIn[ep])->Val ^= 0x0004;;
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	line	1216
;usb_device.c: 1216: }
	goto	i2l4024
	line	1217
	
i2l507:; BSR set to: 0

	line	1220
	
i2l4022:
;usb_device.c: 1217: else
;usb_device.c: 1218: {
;usb_device.c: 1220: ((BYTE_VAL*)&pBDTEntryOut[ep])->Val ^= 0x0004;;
	movf	((c:i2USBTransferOnePacket@ep)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	04h
	xorwf	indf2
	goto	i2l4024
	line	1221
	
i2l508:; BSR set to: 0

	line	1222
	
i2l4024:; BSR set to: 0

;usb_device.c: 1221: }
;usb_device.c: 1222: return (void*)handle;
	movff	(i2USBTransferOnePacket@handle),(c:?i2_USBTransferOnePacket)
	movff	(i2USBTransferOnePacket@handle+1),(c:?i2_USBTransferOnePacket+1)
	goto	i2l506
	
i2l4026:; BSR set to: 0

	line	1223
	
i2l506:
	return
	opt stack 0
GLOBAL	__end_ofi2_USBTransferOnePacket
	__end_ofi2_USBTransferOnePacket:
	signat	i2_USBTransferOnePacket,90
	global	_USBEnableEndpoint

;; *************** function _USBEnableEndpoint *****************
;; Defined at:
;;		line 1056 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;  ep              1   19[COMRAM] unsigned char 
;;  options         1   20[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  p               2   10[config] PTR unsigned char 
;;		 -> UEP0(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       2       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         4       2       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBConfigureEndpoint
;; This function is called by:
;;		_CDCInitEP
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
global __ptext39
__ptext39:
psect	text39
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1056
	global	__size_of_USBEnableEndpoint
	__size_of_USBEnableEndpoint	equ	__end_of_USBEnableEndpoint-_USBEnableEndpoint
	
_USBEnableEndpoint:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	1061
	
i2l3276:
;usb_device.c: 1057: unsigned char* p;
;usb_device.c: 1061: if(options & 0x04)
	
	btfss	((c:USBEnableEndpoint@options)),c,(2)&7
	goto	i2u292_41
	goto	i2u292_40
i2u292_41:
	goto	i2l3280
i2u292_40:
	line	1063
	
i2l3278:
;usb_device.c: 1062: {
;usb_device.c: 1063: USBConfigureEndpoint(ep, 0);
	movff	(c:USBEnableEndpoint@ep),(c:?_USBConfigureEndpoint)
	movwf	(??_USBEnableEndpoint+0+0)&0ffh
	movlw	low(0)
	movwf	(0+((c:?_USBConfigureEndpoint)+01h)),c
	movf	(??_USBEnableEndpoint+0+0)&0ffh,w
	call	_USBConfigureEndpoint	;wreg free
	goto	i2l3280
	line	1064
	
i2l498:
	line	1065
	
i2l3280:
;usb_device.c: 1064: }
;usb_device.c: 1065: if(options & 0x02)
	
	btfss	((c:USBEnableEndpoint@options)),c,(1)&7
	goto	i2u293_41
	goto	i2u293_40
i2u293_41:
	goto	i2l3284
i2u293_40:
	line	1067
	
i2l3282:
;usb_device.c: 1066: {
;usb_device.c: 1067: USBConfigureEndpoint(ep, 1);
	movff	(c:USBEnableEndpoint@ep),(c:?_USBConfigureEndpoint)
	movwf	(??_USBEnableEndpoint+0+0)&0ffh
	movlw	low(01h)
	movwf	(0+((c:?_USBConfigureEndpoint)+01h)),c
	movf	(??_USBEnableEndpoint+0+0)&0ffh,w
	call	_USBConfigureEndpoint	;wreg free
	goto	i2l3284
	line	1068
	
i2l499:
	line	1076
	
i2l3284:
;usb_device.c: 1068: }
;usb_device.c: 1076: p = (unsigned char*)(&UEP0+ep);
	movf	((c:USBEnableEndpoint@ep)),c,w
	mullw	01h
	movlw	low((c:3952))	;volatile
	addwf	(prodl),c,w
	movwf	(??_USBEnableEndpoint+0+0)&0ffh
	movlw	high((c:3952))	;volatile
	addwfc	prod+1,w
	movwf	1+(??_USBEnableEndpoint+0+0)&0ffh
	movff	??_USBEnableEndpoint+0+0,(USBEnableEndpoint@p)
	movff	??_USBEnableEndpoint+0+1,(USBEnableEndpoint@p+1)
	line	1078
	
i2l3286:
;usb_device.c: 1078: *p = options;
	movff	(USBEnableEndpoint@p),fsr2l
	movff	(USBEnableEndpoint@p+1),fsr2h
	movff	(c:USBEnableEndpoint@options),indf2

	line	1079
	
i2l500:
	return
	opt stack 0
GLOBAL	__end_of_USBEnableEndpoint
	__end_of_USBEnableEndpoint:
	signat	_USBEnableEndpoint,8312
	global	_USBConfigureEndpoint

;; *************** function _USBConfigureEndpoint *****************
;; Defined at:
;;		line 1713 in file "..\..\..\Microchip\USB\usb_device.c"
;; Parameters:    Size  Location     Type
;;  EPNum           1   17[COMRAM] unsigned char 
;;  direction       1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  handle          2    6[config] PTR volatile struct __BD
;;		 -> BDT(48), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       2       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          6       0       0       0       0       0
;;      Totals:         8       2       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBEnableEndpoint
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
global __ptext40
__ptext40:
psect	text40
	file	"..\..\..\Microchip\USB\usb_device.c"
	line	1713
	global	__size_of_USBConfigureEndpoint
	__size_of_USBConfigureEndpoint	equ	__end_of_USBConfigureEndpoint-_USBConfigureEndpoint
	
_USBConfigureEndpoint:
;incstack = 0
	opt	stack 16
;incstack = 0
	line	1718
	
i2l3470:
;usb_device.c: 1714: volatile BDT_ENTRY* handle;
;usb_device.c: 1718: handle = (volatile BDT_ENTRY*)&BDT[0];
	movlb	_BDT>>8	; () unknown bank
	movlw	high(_BDT)	;volatile
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movwf	((USBConfigureEndpoint@handle+1))&0ffh
	movlb	_BDT>>8	; () unknown bank
	movlw	low(_BDT)	;volatile
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movwf	((USBConfigureEndpoint@handle))&0ffh
	line	1719
	
i2l3472:
;usb_device.c: 1719: handle += (4*EPNum+2*direction+0u);
	bcf	status,0
	rlcf	((c:USBConfigureEndpoint@direction)),c,w
	movwf	(??_USBConfigureEndpoint+0+0)&0ffh
	clrf	1+(??_USBConfigureEndpoint+0+0)&0ffh
	rlcf	1+(??_USBConfigureEndpoint+0+0)&0ffh
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	movwf	(??_USBConfigureEndpoint+2+0)&0ffh
	clrf	(??_USBConfigureEndpoint+2+0+1)&0ffh

	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0)&0ffh
	rlcf	(??_USBConfigureEndpoint+2+1)&0ffh
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+2+0)&0ffh
	rlcf	(??_USBConfigureEndpoint+2+1)&0ffh
	movf	(??_USBConfigureEndpoint+0+0)&0ffh,w
	addwf	(??_USBConfigureEndpoint+2+0)&0ffh,w
	movwf	(??_USBConfigureEndpoint+4+0)&0ffh
	movf	(??_USBConfigureEndpoint+0+1)&0ffh,w
	addwfc	(??_USBConfigureEndpoint+2+1)&0ffh,w
	movwf	1+(??_USBConfigureEndpoint+4+0)&0ffh
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+4+0)&0ffh
	rlcf	(??_USBConfigureEndpoint+4+1)&0ffh
	bcf	status,0
	rlcf	(??_USBConfigureEndpoint+4+0)&0ffh
	rlcf	(??_USBConfigureEndpoint+4+1)&0ffh
	movf	(??_USBConfigureEndpoint+4+0)&0ffh,w
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	addwf	((USBConfigureEndpoint@handle))&0ffh
	movf	(??_USBConfigureEndpoint+4+1)&0ffh,w
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	addwfc	((USBConfigureEndpoint@handle+1))&0ffh

	line	1721
	
i2l3474:
;usb_device.c: 1721: handle->STAT.UOWN = 0;
	movff	(USBConfigureEndpoint@handle),fsr2l
	movff	(USBConfigureEndpoint@handle+1),fsr2h
	movlw	((0 & ((1<<1)-1))<<7)|not (((1<<1)-1)<<7)
	andwf	(indf2)&0ffh
	line	1726
	
i2l3476:
;usb_device.c: 1726: if(direction == 0)
	tstfsz	((c:USBConfigureEndpoint@direction)),c
	goto	i2u316_41
	goto	i2u316_40
i2u316_41:
	goto	i2l3480
i2u316_40:
	line	1728
	
i2l3478:
;usb_device.c: 1727: {
;usb_device.c: 1728: pBDTEntryOut[EPNum] = handle;
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryOut)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryOut)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movff	(USBConfigureEndpoint@handle),postinc2
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movff	(USBConfigureEndpoint@handle+1),postdec2
	line	1729
;usb_device.c: 1729: }
	goto	i2l3482
	line	1730
	
i2l545:
	line	1732
	
i2l3480:
;usb_device.c: 1730: else
;usb_device.c: 1731: {
;usb_device.c: 1732: pBDTEntryIn[EPNum] = handle;
	movf	((c:USBConfigureEndpoint@EPNum)),c,w
	mullw	02h
	movlb	0	; () banked
	movlw	low(_pBDTEntryIn)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_pBDTEntryIn)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movff	(USBConfigureEndpoint@handle),postinc2
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movff	(USBConfigureEndpoint@handle+1),postdec2
	goto	i2l3482
	line	1733
	
i2l546:
	line	1736
	
i2l3482:
;usb_device.c: 1733: }
;usb_device.c: 1736: handle->STAT.DTS = 0;
	movff	(USBConfigureEndpoint@handle),fsr2l
	movff	(USBConfigureEndpoint@handle+1),fsr2h
	movlw	((0 & ((1<<1)-1))<<6)|not (((1<<1)-1)<<6)
	andwf	(indf2)&0ffh
	line	1737
	
i2l3484:
;usb_device.c: 1737: (handle+1)->STAT.DTS = 1;
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	lfsr	2,04h
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movf	((USBConfigureEndpoint@handle))&0ffh,w
	addwf	fsr2l
	movlb	USBConfigureEndpoint@handle>>8	; () unknown bank
	movf	((USBConfigureEndpoint@handle+1))&0ffh,w
	addwfc	fsr2h
	movlw	(01h & ((1<<1)-1))<<6
	iorwf	(indf2)&0ffh
	line	1754
	
i2l547:
	return
	opt stack 0
GLOBAL	__end_of_USBConfigureEndpoint
	__end_of_USBConfigureEndpoint:
	signat	_USBConfigureEndpoint,8312
	global	_USBCBStdSetDscHandler

;; *************** function _USBCBStdSetDscHandler *****************
;; Defined at:
;;		line 1204 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
global __ptext41
__ptext41:
psect	text41
	file	"main.c"
	line	1204
	global	__size_of_USBCBStdSetDscHandler
	__size_of_USBCBStdSetDscHandler	equ	__end_of_USBCBStdSetDscHandler-_USBCBStdSetDscHandler
	
_USBCBStdSetDscHandler:
;incstack = 0
	opt	stack 19
;incstack = 0
	line	1206
	
i2l181:
	return
	opt stack 0
GLOBAL	__end_of_USBCBStdSetDscHandler
	__end_of_USBCBStdSetDscHandler:
	signat	_USBCBStdSetDscHandler,88
	global	_USBCBCheckOtherReq

;; *************** function _USBCBCheckOtherReq *****************
;; Defined at:
;;		line 1179 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USBCheckCDCRequest
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
global __ptext42
__ptext42:
psect	text42
	file	"main.c"
	line	1179
	global	__size_of_USBCBCheckOtherReq
	__size_of_USBCBCheckOtherReq	equ	__end_of_USBCBCheckOtherReq-_USBCBCheckOtherReq
	
_USBCBCheckOtherReq:
;incstack = 0
	opt	stack 18
;incstack = 0
	line	1180
	
i2l3174:
;main.c: 1180: USBCheckCDCRequest();
	call	_USBCheckCDCRequest	;wreg free
	line	1181
	
i2l178:
	return
	opt stack 0
GLOBAL	__end_of_USBCBCheckOtherReq
	__end_of_USBCBCheckOtherReq:
	signat	_USBCBCheckOtherReq,88
	global	_USBCheckCDCRequest

;; *************** function _USBCheckCDCRequest *****************
;; Defined at:
;;		line 270 in file "..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USBCBCheckOtherReq
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
global __ptext43
__ptext43:
psect	text43
	file	"..\..\..\Microchip\USB\CDC Device Driver\usb_function_cdc.c"
	line	270
	global	__size_of_USBCheckCDCRequest
	__size_of_USBCheckCDCRequest	equ	__end_of_USBCheckCDCRequest-_USBCheckCDCRequest
	
_USBCheckCDCRequest:
;incstack = 0
	opt	stack 18
;incstack = 0
	line	274
	
i2l3176:
;usb_function_cdc.c: 274: if(SetupPkt.Recipient != (0x01)) return;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	((_SetupPkt))&0ffh,w	;volatile
	andlw	(1<<5)-1
	movwf	(??_USBCheckCDCRequest+0+0)&0ffh
	decf	((??_USBCheckCDCRequest+0+0))&0ffh,w
	btfsc	status,2
	goto	i2u284_41
	goto	i2u284_40
i2u284_41:
	goto	i2l3180
i2u284_40:
	goto	i2l254
	
i2l3178:
	goto	i2l254
	
i2l253:
	line	279
	
i2l3180:
;usb_function_cdc.c: 279: if(SetupPkt.RequestType != (0x20>>5)) return;
	movlb	_SetupPkt>>8	; () unknown bank
	swapf	((_SetupPkt))&0ffh,w	;volatile
	rrcf	wreg,f
	andlw	(1<<2)-1
	movwf	(??_USBCheckCDCRequest+0+0)&0ffh
	decf	((??_USBCheckCDCRequest+0+0))&0ffh,w
	btfsc	status,2
	goto	i2u285_41
	goto	i2u285_40
i2u285_41:
	goto	i2l3184
i2u285_40:
	goto	i2l254
	
i2l3182:
	goto	i2l254
	
i2l255:
	line	286
	
i2l3184:
;usb_function_cdc.c: 285: if((SetupPkt.bIntfID != 0x0)&&
;usb_function_cdc.c: 286: (SetupPkt.bIntfID != 0x01)) return;
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+04h))&0ffh,w	;volatile
	btfsc	status,2
	goto	i2u286_41
	goto	i2u286_40
i2u286_41:
	goto	i2l3210
i2u286_40:
	
i2l3186:
	movlb	_SetupPkt>>8	; () unknown bank
	decf	(0+(_SetupPkt+04h))&0ffh,w	;volatile

	btfsc	status,2
	goto	i2u287_41
	goto	i2u287_40
i2u287_41:
	goto	i2l3210
i2u287_40:
	goto	i2l254
	
i2l3188:
	goto	i2l254
	
i2l256:
	line	288
;usb_function_cdc.c: 288: switch(SetupPkt.bRequest)
	goto	i2l3210
	line	291
;usb_function_cdc.c: 289: {
;usb_function_cdc.c: 291: case 0x00:
	
i2l258:
	line	293
	
i2l3190:
;usb_function_cdc.c: 293: inPipes[0].pSrc.bRam = (BYTE*)&dummy_encapsulated_cmd_response;
	movlb	0	; () banked
	movlw	low(_dummy_encapsulated_cmd_response)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile
	movlb	0	; () banked
	movlw	high(_dummy_encapsulated_cmd_response)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	20h
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+2))&0ffh	;volatile

	line	294
;usb_function_cdc.c: 294: inPipes[0].wCount.Val = 0x08;
	movlw	high(08h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(08h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	line	295
	
i2l3192:; BSR set to: 0

;usb_function_cdc.c: 295: inPipes[0].info.bits.ctrl_trf_mem = 0x01;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,0	;volatile
	line	296
	
i2l3194:; BSR set to: 0

;usb_function_cdc.c: 296: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	297
;usb_function_cdc.c: 297: break;
	goto	i2l254
	line	298
;usb_function_cdc.c: 298: case 0x01:
	
i2l260:; BSR set to: 0

	line	300
	
i2l3196:
;usb_function_cdc.c: 300: inPipes[0].pSrc.bRam = (BYTE*)&dummy_encapsulated_cmd_response;
	movlb	0	; () banked
	movlw	low(_dummy_encapsulated_cmd_response)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile
	movlb	0	; () banked
	movlw	high(_dummy_encapsulated_cmd_response)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	20h
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+2))&0ffh	;volatile

	line	301
	
i2l3198:; BSR set to: 0

;usb_function_cdc.c: 301: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	302
;usb_function_cdc.c: 302: break;
	goto	i2l254
	line	306
;usb_function_cdc.c: 306: case 0x20:
	
i2l261:
	line	307
;usb_function_cdc.c: 307: outPipes[0].wCount.Val = SetupPkt.wLength;
	movff	0+(_SetupPkt+06h),0+(_outPipes+04h)	;volatile
	movff	1+(_SetupPkt+06h),1+(_outPipes+04h)	;volatile
	line	308
	
i2l3200:
;usb_function_cdc.c: 308: outPipes[0].pDst.bRam = (BYTE*)&line_coding._byte[0];
	movlb	5	; () banked
	movlw	high(1408)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_outPipes+1))&0ffh	;volatile
	movlb	5	; () banked
	movlw	low(1408)	;volatile
	movlb	0	; () banked
	movwf	((_outPipes))&0ffh	;volatile
	line	309
	
i2l3202:; BSR set to: 0

;usb_function_cdc.c: 309: outPipes[0].pFunc = (0);
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(0+(_outPipes+06h))&0ffh	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(1+(_outPipes+06h))&0ffh	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	clrf	(2+(_outPipes+06h))&0ffh	;volatile
	line	310
	
i2l3204:; BSR set to: 0

;usb_function_cdc.c: 310: outPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_outPipes+03h))&0ffh,7	;volatile
	line	311
;usb_function_cdc.c: 311: break;
	goto	i2l254
	line	313
;usb_function_cdc.c: 313: case 0x21:
	
i2l262:; BSR set to: 0

	line	314
	
i2l3206:
;usb_function_cdc.c: 314: { inPipes[0].pSrc.bRam = (BYTE*)&line_coding; inPipes[0].wCount.Val = 0x07; inPipes[0].info.Val = 0x40 | 0x80 | 0x01; };
	movlb	5	; () banked
	movlw	low(1408)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes))&0ffh	;volatile
	movlb	5	; () banked
	movlw	high(1408)	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+1))&0ffh	;volatile
	movlw	20h
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_inPipes+2))&0ffh	;volatile

	movlw	high(07h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(1+(_inPipes+04h))&0ffh	;volatile
	movlw	low(07h)
	movlb	0	; () banked
	movwf	(0+(_inPipes+04h))&0ffh	;volatile
	movlw	low(0C1h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_inPipes+03h))&0ffh	;volatile
	line	318
;usb_function_cdc.c: 318: break;
	goto	i2l254
	line	320
;usb_function_cdc.c: 320: case 0x22:
	
i2l263:
	line	321
;usb_function_cdc.c: 321: control_signal_bitmap._byte = (BYTE)SetupPkt.W_Value.v[0];
	movff	0+(_SetupPkt+02h),(c:_control_signal_bitmap)	;volatile
	line	353
;usb_function_cdc.c: 353: inPipes[0].info.bits.busy = 1;
	movlb	0	; () banked
	movlb	0	; () banked
	bsf	(0+(_inPipes+03h))&0ffh,7	;volatile
	line	354
;usb_function_cdc.c: 354: break;
	goto	i2l254
	line	378
;usb_function_cdc.c: 378: default:
	
i2l264:; BSR set to: 0

	line	379
;usb_function_cdc.c: 379: break;
	goto	i2l254
	line	380
	
i2l3208:; BSR set to: 0

;usb_function_cdc.c: 380: }
	goto	i2l254
	line	288
	
i2l257:; BSR set to: 0

	
i2l3210:
	movlb	_SetupPkt>>8	; () unknown bank
	movf	(0+(_SetupPkt+01h))&0ffh,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 34
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l3190
	xorlw	1^0	; case 1
	skipnz
	goto	i2l3196
	xorlw	32^1	; case 32
	skipnz
	goto	i2l261
	xorlw	33^32	; case 33
	skipnz
	goto	i2l3206
	xorlw	34^33	; case 34
	skipnz
	goto	i2l263
	goto	i2l254

	line	380
	
i2l259:
	line	382
	
i2l254:
	return
	opt stack 0
GLOBAL	__end_of_USBCheckCDCRequest
	__end_of_USBCheckCDCRequest:
	signat	_USBCheckCDCRequest,88
	global	_USBCBErrorHandler

;; *************** function _USBCBErrorHandler *****************
;; Defined at:
;;		line 1128 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
global __ptext44
__ptext44:
psect	text44
	file	"main.c"
	line	1128
	global	__size_of_USBCBErrorHandler
	__size_of_USBCBErrorHandler	equ	__end_of_USBCBErrorHandler-_USBCBErrorHandler
	
_USBCBErrorHandler:
;incstack = 0
	opt	stack 19
;incstack = 0
	line	1147
	
i2l175:
	return
	opt stack 0
GLOBAL	__end_of_USBCBErrorHandler
	__end_of_USBCBErrorHandler:
	signat	_USBCBErrorHandler,88
	global	_USBCB_SOF_Handler

;; *************** function _USBCB_SOF_Handler *****************
;; Defined at:
;;		line 1081 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
global __ptext45
__ptext45:
psect	text45
	file	"main.c"
	line	1081
	global	__size_of_USBCB_SOF_Handler
	__size_of_USBCB_SOF_Handler	equ	__end_of_USBCB_SOF_Handler-_USBCB_SOF_Handler
	
_USBCB_SOF_Handler:
;incstack = 0
	opt	stack 19
;incstack = 0
	line	1086
	
i2l3162:
;main.c: 1086: if(buttonPressed == PORTBbits.RB4)
	swapf	((c:3969)),c,w	;volatile
	andlw	(1<<1)-1
	movlb	0	; () banked
	movlb	0	; () banked
	xorwf	((_buttonPressed))&0ffh,w	;volatile
	btfss	status,2
	goto	i2u280_41
	goto	i2u280_40
i2u280_41:
	goto	i2l3170
i2u280_40:
	line	1088
	
i2l3164:; BSR set to: 0

;main.c: 1087: {
;main.c: 1088: if(buttonCount != 0)
	movf	((c:_buttonCount)),c,w	;volatile
	btfsc	status,2
	goto	i2u281_41
	goto	i2u281_40
i2u281_41:
	goto	i2l3168
i2u281_40:
	line	1090
	
i2l3166:; BSR set to: 0

;main.c: 1089: {
;main.c: 1090: buttonCount--;
	decf	((c:_buttonCount)),c	;volatile
	line	1091
;main.c: 1091: }
	goto	i2l172
	line	1092
	
i2l168:; BSR set to: 0

	line	1095
	
i2l3168:; BSR set to: 0

;main.c: 1092: else
;main.c: 1093: {
;main.c: 1095: buttonPressed = !PORTBbits.RB4;
	
	btfss	((c:3969)),c,4	;volatile
	goto	i2u282_41
	goto	i2u282_40
i2u282_41:
	movlw	1
	goto	i2u282_46
i2u282_40:
	movlw	0
i2u282_46:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_buttonPressed))&0ffh	;volatile
	line	1098
;main.c: 1098: buttonCount = 100;
	movlw	low(064h)
	movwf	((c:_buttonCount)),c	;volatile
	goto	i2l172
	line	1099
	
i2l169:; BSR set to: 0

	line	1100
;main.c: 1099: }
;main.c: 1100: }
	goto	i2l172
	line	1101
	
i2l167:; BSR set to: 0

	line	1103
	
i2l3170:; BSR set to: 0

;main.c: 1101: else
;main.c: 1102: {
;main.c: 1103: if(buttonCount != 0)
	movf	((c:_buttonCount)),c,w	;volatile
	btfsc	status,2
	goto	i2u283_41
	goto	i2u283_40
i2u283_41:
	goto	i2l172
i2u283_40:
	line	1105
	
i2l3172:; BSR set to: 0

;main.c: 1104: {
;main.c: 1105: buttonCount--;
	decf	((c:_buttonCount)),c	;volatile
	goto	i2l172
	line	1106
	
i2l171:; BSR set to: 0

	goto	i2l172
	line	1107
	
i2l170:; BSR set to: 0

	line	1108
	
i2l172:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_USBCB_SOF_Handler
	__end_of_USBCB_SOF_Handler:
	signat	_USBCB_SOF_Handler,88
	global	_USBCBWakeFromSuspend

;; *************** function _USBCBWakeFromSuspend *****************
;; Defined at:
;;		line 1049 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;;		_USBCBSendResume
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
global __ptext46
__ptext46:
psect	text46
	file	"main.c"
	line	1049
	global	__size_of_USBCBWakeFromSuspend
	__size_of_USBCBWakeFromSuspend	equ	__end_of_USBCBWakeFromSuspend-_USBCBWakeFromSuspend
	
_USBCBWakeFromSuspend:; BSR set to: 0

;incstack = 0
	opt	stack 19
;incstack = 0
	line	1060
	
i2l164:
	return
	opt stack 0
GLOBAL	__end_of_USBCBWakeFromSuspend
	__end_of_USBCBWakeFromSuspend:
	signat	_USBCBWakeFromSuspend,88
	global	_USBCBSuspend

;; *************** function _USBCBSuspend *****************
;; Defined at:
;;		line 1004 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     config  COMRAM   BANK0   BANK1   BANK2   BANK3
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_USB_CALLBACK_EVENT_HANDLER
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2
global __ptext47
__ptext47:
psect	text47
	file	"main.c"
	line	1004
	global	__size_of_USBCBSuspend
	__size_of_USBCBSuspend	equ	__end_of_USBCBSuspend-_USBCBSuspend
	
_USBCBSuspend:
;incstack = 0
	opt	stack 19
;incstack = 0
	line	1025
	
i2l161:
	return
	opt stack 0
GLOBAL	__end_of_USBCBSuspend
	__end_of_USBCBSuspend:
	signat	_USBCBSuspend,88
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	3
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
;;
;; C18 inline assembly external references
;;
UEIE equ _UEIE
UEIR equ _UEIR
UCON equ _UCON
UADDR equ _UADDR
UIE equ _UIE
UIR equ _UIR
TRISD equ _TRISD
LATD equ _LATD
ADCON1 equ _ADCON1
YourHighPriorityISRCode equ _YourHighPriorityISRCode
YourLowPriorityISRCode equ _YourLowPriorityISRCode
USTAT equ _USTAT
UCFG equ _UCFG
UEP0 equ _UEP0
UEP1 equ _UEP1
	end
