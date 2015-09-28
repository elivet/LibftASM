section	.text
    global _ft_islower

_ft_islower:
	cmp rdi, 'a'
	jae inferior
	mov rax, 0
	ret

inferior:
	cmp rdi, 'z'
	jbe return_end
	mov rax, 0
	ret

return_end:
	mov rax, 1
	ret