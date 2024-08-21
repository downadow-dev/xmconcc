;; переход к началу строки
__1_cr:
	mov %R_FA_10%, 63
	sub %R_FA_24% %R_FA_10%, %R_FA_24%
	mov2 %R_FA_10%, <__1_newline>
	jmp %R_FA_10%

