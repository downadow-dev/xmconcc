;; получить символ от пользователя
__0_getc:
	mov %R_KEY%, 0
	LIB_getc_loop:
		mov %R_FA_0%, 30
		lslp %R_FA_0%
		mov2 %R_FA_0%, <LIB_getc_loop>
		if %R_KEY% == %R_ZERO%, %R_FA_0%
		mov2 %R_FA_1%, 0065535
		if %R_KEY% == %R_FA_1%, %R_FA_0%
	isv %R_KEY%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

