section	.text
    global _ft_isalnum

_ft_isalnum:
	cmp rdi, '0'
	jae inferior
	mov rax, 0
	ret

inferior:
	cmp rdi, '9'
	jbe return_end
	jmp other

other:
	cmp rdi, 'A'
	jae other_inferior
	mov rax, 0
	ret

other_inferior:
	cmp rdi, 'Z'
	jbe return_end
	jmp another

another:
	cmp rdi, 'a'
	jae another_inferior
	mov rax, 0
	ret

another_inferior:
	cmp rdi, 'z'
	jbe return_end
	mov rax, 0
	ret

return_end:
	mov rax, 1
	ret
