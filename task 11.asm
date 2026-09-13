
INCLUDE Irvine32.inc

WORKING_DAYS = 25

.data
    presentDays  BYTE 22
    leaveDays    BYTE 3
    absentDays   BYTE ?
    attendance   BYTE WORKING_DAYS DUP(0)

.code
main PROC

    MOV AL, WORKING_DAYS
    SUB AL, presentDays
    MOV absentDays, AL

    call DumpRegs

    exit
main ENDP
END main
