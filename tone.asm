;Toggling PORTB in Assembly Language for Dragon12 Plus Trainer Board 
;with HCS12 Serial Monitor Program installed. This code is for CodeWarrior IDE
;In Dragon12+ RAM address is from $1000-3FFF 
;We use RAM addresses starting at $1000 for scratch pad (variables) and $3FFF for Stack 
;Make sure you are in HCS12 Serial Monitor Mode before downloading 
;and also make sure SW7=LOAD (SW7 is 2-bit red DIP Switch on bottom right side of the board and must be 00, or LOAD) 
;Press F7 (to Make), then F5(Debug) to downLOAD,and F5 once more to start the program execution
   
        ABSENTRY Entry        ; for absolute assembly: mark this as application entry point
    
; Include derivative-specific definitions 
		INCLUDE 'mc9s12dp256.inc'     ;CPU used by Dragon12+ board
 
 

;code section
        ORG   $4000     ;Flash ROM address for Dragon12+
Entry:
                         ;Write your code here between entry and end labels
        LDX   #10
loop:
        INCA
        DEX
        BNE   x,loop
        
      END
           
      

            
;**************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************
            ORG   $FFFE
            DC.W  Entry     ;Reset Vector. CPU wakes here and it is sent to start of the code at $4000
