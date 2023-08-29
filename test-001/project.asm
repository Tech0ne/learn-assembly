section .text
    global _start
_start:
    mov rax, 1                                      ; set syscall to sys_write
    mov rdi, 1                                      ; set output to STDOUT
    mov rsi, msg                                    ; set message to our actual message
    mov rdx, len                                    ; set length to our message length
    syscall                                         ; run syscall

    mov rax, 60                                     ; set syscall to sys_exit
    mov rdi, 0                                      ; output => 0
    syscall                                         ; run syscall


section .rodata
    msg: db "Sample bell !", 0x07, 0x0a             ; set our message (so, 0x07 is \a and 0x0a is \n, so the actual displayed message is "Sample bell !\a\n")
    len: equ $ - msg                                ; get the message length