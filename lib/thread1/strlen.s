;; получить длину строки
__1_strlen:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov %R_FA_15%, 0
	
	LIB_1_strlen_loop:
		ild %R_FA_10%, %R_FA_11%
		inc %R_FA_10%
		mov2 %R_FA_12%, <LIB_1_strlen_endloop>
		if %R_FA_11% == %R_ZERO%, %R_FA_12%
		
		inc %R_FA_15%
		
		mov2 %R_FA_12%, <LIB_1_strlen_loop>
		jmp %R_FA_12%
	
	LIB_1_strlen_endloop:
		updd
		isv %R_FA_15%, %R_FA_19%
		inc %R_FA_19%
		
		jmp %R_FA_18%

