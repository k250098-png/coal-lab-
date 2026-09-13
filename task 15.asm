
INCLUDE Irvine32.inc

.data
    accessCode      BYTE 0F0h
    unsignedResult  DWORD ?
    signedResult    DWORD ?

.code
main PROC

    MOVZX EAX, accessCode
    MOV unsignedResult, EAX

    MOVSX EBX, accessCode
    MOV signedResult, EBX

    call DumpRegs

    exit
main ENDP
END main
