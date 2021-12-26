%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor     eax, eax
    xor     ESI, ESI
    LEA     ESI, [a]
    MOV     ECX,  8
    
     
    PUSH    ECX
    PUSH    ESI
loop1:
    MOV     DL, [ESI]
    MOV     EBX,  ESI
    MOV     EDI,  8
    SUB     EDI,  ECX

wl:
    CMP     EDI, 0
    JZ      skip
    MOV     DH, [EBX-4]
    CMP     DH, DL
    JL      skip
    JMP     swap
dc:
    DEC     EDI
    SUB     EBX,4
    JMP     wl
    
         
swap:
    MOV     AL, [EBX]
    MOV    [EBX], DH
    MOV    [EBX-4], AL  
    JMP     dc  
    
skip:
    MOV     [EBX], DL
    ADD     ESI, 4
    
    LOOP    loop1
    
    POP     ESI
    POP     ECX
        
    
    ret
    
    
    
    
    
    
    
    
    
    
    
section .data
a:  DD 1,4,7,5,9,0,2,3