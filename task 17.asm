
INCLUDE Irvine32.inc

.data
    A   SDWORD 100
    B   SDWORD 50
    C   SDWORD 75
    R   SDWORD ?
    R2  SDWORD ?

.code
main PROC

    MOV EAX, A
    ADD EAX, B
    SUB EAX, C
    MOV R, EAX

    call DumpRegs

    MOV EAX, A
    NEG EAX

    MOV EBX, B
    SUB EBX, C

    ADD EAX, EBX
    MOV R2, EAX

    call DumpRegs

    exit
main ENDP
END main
