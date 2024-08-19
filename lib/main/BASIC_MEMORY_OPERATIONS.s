;; вставить в память значение из стека
__0_=:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	mov %R_FA_2%, 0
	mov2 %R_FA_3%, <LIB_=_continue>
	if %R_USER% == %R_FA_2%, %R_FA_3%
	
	mov %R_RETURN_CODE%, 30
	mov2 %R_FA_2%, 6900000
	if %R_FA_0% < %R_FA_2%, UR17
	
	LIB_=_continue:
	
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

