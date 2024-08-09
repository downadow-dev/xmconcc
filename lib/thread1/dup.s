;; дублировать значение из стека в стек
__1_dup:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	inc %R_FA_19%
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%

