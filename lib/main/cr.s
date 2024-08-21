;; переход к началу строки
__0_cr:
	mov %R_FA_0%, 63
	sub %R_FA_24% %R_FA_0%, %R_FA_24%
	mov2 %R_FA_0%, <__0_newline>
	jmp %R_FA_0%

