;; напечатать Си-строку
__1_puts:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	LIB_1_puts_loop:
		ild %R_FA_10%, %R_FA_11%
		inc %R_FA_10%
		mov2 %R_FA_12%, <LIB_1_puts_endloop>
		if %R_FA_11% == %R_ZERO%, %R_FA_12%
		
		; %R_FA_24% --- указатель вывода
		vsv %R_FA_11%, %R_FA_24%
		inc %R_FA_24%
		
		mov2 %R_FA_12%, <LIB_1_puts_loop>
		jmp %R_FA_12%
	
	LIB_1_puts_endloop:
		updd
		jmp %R_FA_18%

