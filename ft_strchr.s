section	.text
    global _ft_strchr

_ft_strchr:
	jmp loop

loop:
	cmp byte [rdi] , sil
	je return_found
	cmp byte [rdi], 0
	je return_not_found
	inc rdi
	jmp loop

return_found:
	mov rax, rdi
	ret

return_not_found:
	mov rax, 0
	ret