        ORG $4000   ;Flash ROM address for Dragon12+
Entry:
                    ;Write your code here between entry and end labels
Count:  EQU $1225
Sum:    EQU $1250
        LDX #10
        STX Count
loop:
        ADDA Count
        DEC Count
        BNE Count,loop
        STAA Sum
        END
