
INCLUDE Irvine32.inc

.code
main PROC

    MOV AL, 255
    ADD AL, 1
    call DumpRegs

    MOV AL, 127
    ADD AL, 1
    call DumpRegs

    MOV AL, 0
    DEC AL
    call DumpRegs

    MOV AL, 5
    SUB AL, 5
    call DumpRegs

    MOV AL, 5
    SUB AL, 8
    call DumpRegs

    exit
main ENDP
END main
