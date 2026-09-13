
INCLUDE Irvine32.inc

DEPOSIT_LIMIT   = 100000
MAX_WITHDRAWAL  = 60000

.data
    initialBalance  SDWORD 50000
    deposit         SDWORD 10000
    withdrawal      SDWORD 7500
    serviceCharge   SDWORD 500

    finalBalance    SDWORD ?

    secondWithdrawal SDWORD 60000
    negWithdrawal    SDWORD ?

    transactions    SDWORD 5 DUP(0)

.code
main PROC

    MOV EAX, initialBalance
    ADD EAX, deposit
    SUB EAX, withdrawal
    SUB EAX, serviceCharge
    MOV finalBalance, EAX

    call DumpRegs

    MOV EBX, secondWithdrawal
    NEG EBX
    MOV negWithdrawal, EBX

    ADD EAX, EBX
    MOV finalBalance, EAX

    call DumpRegs

    XCHG deposit, withdrawal

    call DumpRegs

    MOV transactions[0], deposit
    MOV transactions[4], withdrawal
    MOV transactions[8], serviceCharge
    MOV transactions[12], secondWithdrawal
    MOV transactions[16], finalBalance

    call DumpRegs

    exit
main ENDP
END main
