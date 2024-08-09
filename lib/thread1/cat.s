;; функция сцепления значений
__1_cat:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_15%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_14%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_13%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_12%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov3 %R_FA_16%, %R_FA_10% %R_FA_11% %R_FA_12% %R_FA_13% %R_FA_14% %R_FA_15%
	
	isv %R_FA_16%, %R_FA_19%
	
	inc %R_FA_19%
	
	jmp %R_FA_18%

