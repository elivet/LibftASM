section	.text
    global _ft_bzero

_ft_bzero:
	jmp loop

loop:
	cmp byte [rdi], 0
	je return_end
	mov byte [rdi], 0
	inc rdi	
	jmp	loop

return_end:
	ret