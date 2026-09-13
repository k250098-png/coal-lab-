
INCLUDE Irvine32.inc

ROWS = 4
COLS = 5
TOTAL_SEATS EQU <ROWS * COLS>

.data
    seats   BYTE TOTAL_SEATS DUP(0)

.code
main PROC

    MOV ESI, 0
    MOV seats[ESI], 1

    MOV ESI, 5
    MOV seats[ESI], 1

    MOV ESI, 12
    MOV seats[ESI], 1

    MOV EAX, TOTAL_SEATS
    MOV EBX, LENGTHOF seats
    MOV ECX, SIZEOF seats

    call DumpRegs

    exit
main ENDP
END main
