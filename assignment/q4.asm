
section .text
    global factorial        

factorial:
    cmp rdi, 1              
    jbe .base_case
    push rdi                
    dec rdi                 
    call factorial          
    pop rbx                 
    imul rax, rbx           
    ret

.base_case:
    mov rax, 1              
    ret

section .data
    msg     db "Hello from q4.asm!", 0

section .text
    global get_message
get_message:
    lea rax, [rel msg]    
    ret
