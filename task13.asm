
INCLUDE Irvine32.inc

.data
    stock   WORD 25, 40, 15, 60, 30

.code
main PROC

    ADD stock[0], 10
    SUB stock[2], 5
    ADD stock[4], 20

    MOV AX, stock[6]
    XCHG AX, stock[8]
    MOV stock[6], AX

    call DumpRegs

    exit
main ENDP
END main
