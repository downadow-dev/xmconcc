;; дублировать значение из стека в стек
__0_dup:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	inc %R_FA_9%
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%

