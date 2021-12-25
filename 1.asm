%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    XOR     EDX,EDX

    LEA     ESI, [a]
    MOV     ECX, 8
    MOV     BL, 2

next:
    MOV     AL,[ESI]
    DIV     BL
    CMP     AH, 0
    JNZ     summ

next1:
    INC     ESI
    LOOP    next
    JMP     quit

summ:
    XOR     AH,AH
    INC     DL
    JMP     next1



quit:
    PRINT_UDEC 1,DL
    ret








section .data
a: DB 4, 5, 3, 2, 1, 8, 2, 2
