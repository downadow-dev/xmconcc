;; изменить знак числа
__1_neg:
	dec %R_FA_19%
	
	ild %R_FA_19%, %R_FA_10%
	tnp %R_FA_10%
	isv %R_FA_10%, %R_FA_19%
	
	inc %R_FA_19%
	
	jmp %R_FA_18%

