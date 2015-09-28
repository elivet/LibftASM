section	.text
    global _ft_strcpy
    extern _ft_strlen
    extern _ft_memcpy

_ft_strcpy:
	mov r11, rdi
	mov rdi, rsi
	call _ft_strlen
	mov rdx, rax
	mov rdi, r11
	call _ft_memcpy
	ret
	
