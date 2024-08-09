;; генерация числа
__1_sel:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	sel %R_FA_10%, %R_FA_11%
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

