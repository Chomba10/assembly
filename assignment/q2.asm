section .data
    msg     db "Sum of numbers from 15 to 25 = ", 0
    msg_len equ $ - msg
    newline db 10, 0

section .bss
    result  resb 20                 

section .text
    global _start

_start:
    mov rbx, 15
    mov rcx, 25
    xor rax, rax                    

add_loop:
    add rax, rbx
    inc rbx
    cmp rbx, rcx
    jbe add_loop

    
    mov rdi, result + 19
    mov rcx, 10
    mov byte [rdi], 0

convert_loop:
    xor rdx, rdx
    div rcx
    add dl, '0'
    dec rdi
    mov [rdi], dl
    test rax, rax
    jnz convert_loop

   
    mov r12, rdi

    
    mov rax, 1          
    mov rdi, 1          
    mov rsi, msg
    mov rdx, msg_len
    syscall

    
    mov rax, 1
    mov rdi, 1
    mov rsi, r12
    lea rdx, [result + 19]
    sub rdx, rsi        
    syscall

   
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

   
    mov rax, 60         
    xor rdi, rdi
    syscall
