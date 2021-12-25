%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    LEA     EBX, [array]
    lea     eax, [array]
    MOV     ECX, 7


next:
    PUSH    EBX
    PUSH    ECX
    push    eax
l1:
    mov     dl, [ebx]
l2:
    mov     dh, [eax-4]
    cmp     eax, 0
    jz      skip
    cmp     dh, dl
    jl      skip
    mov     [eax], dh
    sub     eax, 4
    jmp     l2

skip:
    mov     [eax], dl
    add     ebx, 4
    loop    l1
    pop eax
    pop ecx
    pop ebx
    ret








section .data
array: DD 8,4,1,2,9,3,5,0
