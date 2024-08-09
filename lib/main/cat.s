;; функция сцепления значений
__0_cat:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_5%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_4%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_3%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_2%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov3 %R_FA_6%, %R_FA_0% %R_FA_1% %R_FA_2% %R_FA_3% %R_FA_4% %R_FA_5%
	
	isv %R_FA_6%, %R_FA_9%
	
	inc %R_FA_9%
	
	jmp %R_FA_8%

