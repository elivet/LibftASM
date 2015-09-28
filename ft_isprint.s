section	.text
    global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jae inferior
	mov rax, 0
	ret

inferior:
	cmp rdi, 126
	jbe return_end
	mov rax, 0
	ret

return_end:
	mov rax, 1
	ret