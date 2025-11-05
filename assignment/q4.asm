section .data
    msg     db "Factorial of %d is %d", 10, 0    ; Format string with newline

section .text
    global factorial        ; Export factorial function

factorial:
    cmp rdi, 1             ; Compare input with 1
    jbe .base_case         ; If input <= 1, jump to base case
    push rdi               ; Save current number
    dec rdi                ; n-1
    call factorial         ; Recursive call
    pop rbx                ; Restore original number
    imul rax, rbx         ; Multiply result
    ret

.base_case:
    mov rax, 1            ; Return 1 for input <= 1
    ret

section .note.GNU-stack noalloc noexec nowrite progbits ; Add GNU stack marking
