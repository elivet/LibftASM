section	.text
    global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _puts

_ft_strdup:
	xor rax, rax

	mov r12, rdi
	call _ft_strlen
	inc rax
	mov r13, rax

	mov rdi, r13
	call _malloc

	test rax, rax
	je return_null

	mov r14, rax
	mov rdi, rax
	mov rsi, r12

	mov rcx, r13; length
	cld
	rep movsb

	mov rax, r14

	ret

return_null:
	ret