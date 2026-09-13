
INCLUDE Irvine32.inc

.data
    temperature         BYTE 25
    humidity            BYTE 60
    light               BYTE 200

    adjustedTemperature DWORD ?
    adjustedHumidity    DWORD ?

.code
main PROC

    MOVZX EAX, temperature
    ADD EAX, 5
    MOV adjustedTemperature, EAX

    MOVZX EBX, humidity
    SUB EBX, 10
    MOV adjustedHumidity, EBX

    call DumpRegs

    exit
main ENDP
END main
