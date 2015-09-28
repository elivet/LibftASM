section	.text
    global _ft_cat

_ft_cat:
	mov r9, rdi
	jmp loop
	
loop:
	mov rax, 0x2000003
	mov rdi, r9
	lea rsi, [rel content]
	mov rdx, 101
	syscall
	jc end_file

	cmp rax, 0
	je end_return

	mov r12, rax
	mov rax, 0x2000004
    mov rdi, 1
    lea rsi, [rel content]
    mov rdx, r12
    syscall

    jmp loop

end_file:
	mov r11, rax
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel content]
	mov rdx, r11
	syscall
	ret

end_return:
	ret

section .bss
	content RESB 101