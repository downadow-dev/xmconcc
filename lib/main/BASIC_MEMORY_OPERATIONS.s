;; вставить в память значение из стека
__0_=:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	isv %R_FA_1%, %R_FA_0%
	
	jmp %R_FA_8%

;; загрузить из памяти значение в стек
__0_.:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	ild %R_FA_0%, %R_FA_0%
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%

