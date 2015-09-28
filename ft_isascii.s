section	.text
    global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jae inferior
	mov rax, 0
	ret

inferior:
	cmp rdi, 127
	jbe return_end
	mov rax, 0
	ret

return_end:
	mov rax, 1
	ret