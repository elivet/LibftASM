section	.text
    global _ft_tolower

_ft_tolower:
	cmp rdi, 65
	jae inferior
	mov rax, rdi
	ret

inferior:
	cmp rdi, 90
	jbe return_end
	mov rax, rdi
	ret


return_end:
	add rdi, 32
	mov rax, rdi
	ret
