;; получить длину строки
__0_strlen:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov %R_FA_5%, 0
	
	LIB_strlen_loop:
		ild %R_FA_0%, %R_FA_1%
		inc %R_FA_0%
		mov2 %R_FA_2%, <LIB_strlen_endloop>
		if %R_FA_1% == %R_ZERO%, %R_FA_2%
		
		inc %R_FA_5%
		
		mov2 %R_FA_2%, <LIB_strlen_loop>
		jmp %R_FA_2%
	
	LIB_strlen_endloop:
		updd
		isv %R_FA_5%, %R_FA_9%
		inc %R_FA_9%
		
		jmp %R_FA_8%

