section .data
	msg db	"hello, world!"

section	.text
    global _ft_strcat

_ft_strcat:
	mov r12,rdi	
	mov r11,rsi
	jmp end	

end:
	cmp byte [rdi], 0
	je add_src
	inc rdi
	jmp	end

add_src:
	cmp byte [rsi], 0
	je return_end
	mov rax, [rsi]
	mov [rdi], al
	inc rdi
	inc rsi
	jmp add_src

return_end:
	mov byte [rdi], 0
	mov rax, r12
	ret