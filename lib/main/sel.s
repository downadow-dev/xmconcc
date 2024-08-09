;; генерация числа
__0_sel:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	sel %R_FA_0%, %R_FA_1%
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

