section	.text
    global _ft_strrchr

_ft_strrchr:
	mov rax, 0
	jmp loop

loop:
	cmp byte [rdi] , sil
	je do_found
	cmp byte [rdi], 0
	je return_found
	inc rdi
	jmp loop

do_found:
	mov rax, rdi
	cmp byte [rdi], 0
	je return_found
	inc rdi
	jmp loop

return_found:
	ret