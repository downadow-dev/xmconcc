;; вставить в память значение из стека
__1_=:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	mov %R_FA_12%, 0
	mov2 %R_FA_13%, <LIB_1_=_continue>
	if %R_USER% == %R_FA_12%, %R_FA_13%
	
	mov %R_RETURN_CODE%, 30
	mov2 %R_FA_12%, 6900000
	if %R_FA_10% < %R_FA_12%, UR17
	
	LIB_1_=_continue:
	
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

