section .bss
    buffer resb 1

section .text
    global _start

_start:
    
    mov eax, 3           
    mov ebx, 0           
    mov ecx, buffer      
    mov edx, 1          
    int 80h             
 
    cmp byte [buffer], 'A'
    jl character_not_uppercase
    cmp byte [buffer], 'Z'
    jg character_not_uppercase

    add byte [buffer], 32  

character_not_uppercase:

    mov eax, 4           
    mov ebx, 1          
    mov ecx, buffer      
    mov edx, 1           
    int 80h            


    mov eax, 1           


