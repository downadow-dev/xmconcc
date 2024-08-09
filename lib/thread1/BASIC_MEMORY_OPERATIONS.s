;; вставить в память значение из стека
__1_=:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	isv %R_FA_11%, %R_FA_10%
	
	jmp %R_FA_18%

;; загрузить из памяти значение в стек
__1_.:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	ild %R_FA_10%, %R_FA_10%
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%

