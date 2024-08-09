;; получить символ от пользователя
__1_getc:
	mov %R_KEY%, 0
	LIB_1_getc_loop:
		mov %R_FA_10%, 30
		lslp %R_FA_10%
		mov2 %R_FA_10%, <LIB_1_getc_loop>
		if %R_KEY% == %R_ZERO%, %R_FA_10%
		mov2 %R_FA_11%, 0065535
		if %R_KEY% == %R_FA_11%, %R_FA_10%
	isv %R_KEY%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

