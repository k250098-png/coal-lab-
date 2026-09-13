
INCLUDE Irvine32.inc

TOTAL_BEDS = 50

.data
    beds         BYTE TOTAL_BEDS DUP(0)
    occupiedCnt  BYTE 5
    availableCnt BYTE ?

.code
main PROC

    MOV ESI, 0
    MOV beds[ESI], 1

    MOV ESI, 3
    MOV beds[ESI], 1

    MOV ESI, 10
    MOV beds[ESI], 1

    MOV ESI, 25
    MOV beds[ESI], 1

    MOV ESI, 49
    MOV beds[ESI], 1

    MOV AL, TOTAL_BEDS
    SUB AL, occupiedCnt
    MOV availableCnt, AL

    MOV EAX, LENGTHOF beds
    MOV EBX, SIZEOF beds

    call DumpRegs

    exit
main ENDP
END main
