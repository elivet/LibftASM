section	.text
    global _ft_strlen

_ft_strlen:
	mov r12, rdi
	mov rcx, -1
	mov al, 0
	cld
	repnz scasb
	mov rax, -2
	sub rax, rcx
	ret