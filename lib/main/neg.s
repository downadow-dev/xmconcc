;; изменить знак числа
__0_neg:
	dec %R_FA_9%
	
	ild %R_FA_9%, %R_FA_0%
	tnp %R_FA_0%
	isv %R_FA_0%, %R_FA_9%
	
	inc %R_FA_9%
	
	jmp %R_FA_8%

