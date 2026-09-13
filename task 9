
INCLUDE Irvine32.inc

.data
    accountA    DWORD 25000
    accountB    DWORD 15000
    transferAmt DWORD 5000

.code
main PROC

    MOV EAX, accountA
    MOV EBX, accountB

    SUB EAX, transferAmt
    ADD EBX, transferAmt

    MOV accountA, EAX
    MOV accountB, EBX

    call DumpRegs

    XCHG EAX, EBX

    call DumpRegs

    exit
main ENDP
END main
