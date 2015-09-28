section	.text
    global _ft_isalpha

_ft_isalpha:
	cmp rdi, 'A'
	jae inferior
	mov rax, 0
	ret

inferior:
	cmp rdi, 'Z'
	jbe return_end
	jmp other

other:
	cmp rdi, 'a'
	jae other_inferior
	mov rax, 0
	ret

other_inferior:
	cmp rdi, 'z'
	jbe return_end
	mov rax, 0
	ret

return_end:
	mov rax, 1
	ret