section .data
	back_slash db 10
	error_msg db "(null)"

section	.text
    global _ft_puts

_ft_puts:
	cmp rdi, 0
	je null_end 
	mov r11, rdi
	mov r12, 0
	jmp end

end:
	cmp byte [rdi], 0
	je return_end
	inc rdi
	add r12, 1
	jmp	end

return_end:
	cmp r12, 0
	je null_end
	mov rax, 0x2000004
    mov rdi, 1
    mov rsi, r11
    mov rdx, r12
    syscall
    jmp slash

null_end:
	mov rax, 0x2000004
    mov rdi, 1
    lea rsi, [rel error_msg]
    mov rdx, 6
    syscall
    mov rax, 10
	jmp slash

slash:
	mov rax, 0x2000004
    mov rdi, 1
    lea rsi, [rel back_slash]
    mov rdx, 1
    syscall
    mov rax, 10
    ret