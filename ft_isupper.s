section	.text
    global _ft_isupper

_ft_isupper:
	cmp rdi, 'A'
	jae inferior
	mov rax, 0
	ret

inferior:
	cmp rdi, 'Z'
	jbe return_end
	mov rax, 0
	ret

return_end:
	mov rax, 1
	ret