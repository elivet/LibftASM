section	.text
    global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jae inferior
	mov rax, 0
	ret

inferior:
	cmp rdi, 57
	jbe return_end
	mov rax, 0
	ret

return_end:
	mov rax, 1
	ret