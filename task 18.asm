
INCLUDE Irvine32.inc

.data
    energyCost   SDWORD 3200
    fixedCharge  SDWORD 500
    discount     SDWORD 300
    finalBill    SDWORD ?

    paidAmount   SDWORD 3000
    balance      SDWORD ?

.code
main PROC

    MOV EAX, energyCost
    ADD EAX, fixedCharge
    SUB EAX, discount
    MOV finalBill, EAX

    call DumpRegs

    MOV EBX, finalBill
    SUB EBX, paidAmount
    MOV balance, EBX

    call DumpRegs

    exit
main ENDP
END main
