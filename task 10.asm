
INCLUDE Irvine32.inc

.data
    price1  WORD 1200
    price2  WORD 2500

.code
main PROC

    MOV AX, price1
    XCHG AX, price2
    MOV price1, AX

    call DumpRegs

    exit
main ENDP
END main
