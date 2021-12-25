%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
        LEA ESI,[a]
;извлекаем значение с индексом 0
    MOV AL,[ESI]
    MOV DL, 0x3F
    AND AL,DL
    ;PRINT_UDEC 1,AL

;извлекаем значение с индексом 1
    MOV AL,[ESI + 1]
    MOV DL, 0x0F
    AND AL,DL
    SHL AL,2
    MOV BL,AL
    MOV AL,[ESI]
    MOV DL, 0xC0
    AND AL,DL
    SHR AL,6
    OR  BL,AL
    ;PRINT_UDEC 1,BL

;извлекаем значение с индексом 2
    MOV AL,[ESI + 2]
    MOV DL, 0x03
    AND AL,DL
    SHL AL,4
    MOV BL,AL
    MOV AL,[ESI + 1]
    MOV DL, 0xF0
    AND AL,DL
    SHR AL,4
    OR  BL,AL
    ;PRINT_UDEC 1,BL

;извлекаем значение с индексом 3
    MOV AL,[ESI + 2]
    MOV DL, 0xFC
    AND AL,DL
    SHR AL,2
    ;PRINT_UDEC 1,AL

;извлекаем значение с индексом 4
    MOV AL,[ESI + 3]
    MOV DL, 0x3F
    AND AL,DL
    ;PRINT_UDEC 1,AL

;извлекаем значение с индексом 5
    MOV AL,[ESI + 4]
    MOV DL, 0x0F
    AND AL,DL
    SHL AL,2
    MOV BL,AL
    MOV AL,[ESI + 3]
    MOV DL, 0xC0
    AND AL,DL
    SHR AL,6
    OR  BL,AL
    ;PRINT_UDEC 1,BL

;извлекаем значение с индексом 6
    MOV AL,[ESI + 5]
    MOV DL, 0x03
    AND AL,DL
    SHL AL,4
    MOV BL,AL
    MOV AL,[ESI + 4]
    MOV DL, 0xF0
    AND AL,DL
    SHR AL,4
    OR  BL,AL
    ;PRINT_UDEC 1,BL

;извлекаем значение с индексом 7
    MOV AL,[ESI + 5]
    MOV DL, 0xFC
    AND AL,DL
    SHR AL,2
    ;PRINT_UDEC 1,AL

    ret

section .data
;packed array [32, 47, 5, 18, 61, 50, 24, 12]
a: DB 0xE0, 0x5B, 0x48, 0xBD, 0x8C, 0x31
