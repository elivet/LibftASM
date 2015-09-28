section	.text
    global _ft_toupper

_ft_toupper:
	cmp rdi, 97
	jae inferior
	mov rax, rdi
	ret

inferior:
	cmp rdi, 122
	jbe return_end
	mov rax, rdi
	ret


return_end:
	sub rdi, 32
	mov rax, rdi
	ret
