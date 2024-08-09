;; переход на новую строку
__1_newline:
	mov %R_FA_10%, 63
	mod %R_FA_24% %R_FA_10%, %R_FA_11%
	sub %R_FA_10% %R_FA_11%, %R_FA_10%
	add %R_FA_24% %R_FA_10%, %R_FA_24%
	
	jmp %R_FA_18%

