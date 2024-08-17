;; напечатать Си-строку
__0_puts:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	LIB_puts_loop:
		ild %R_FA_0%, %R_FA_1%
		inc %R_FA_0%
		mov2 %R_FA_2%, <LIB_puts_endloop>
		if %R_FA_1% == %R_ZERO%, %R_FA_2%
		
        mov2 %R_FA_4%, <__0_clear_output>
        mov2 %R_FA_5%, 0001764
        if %R_FA_24% > %R_FA_5%, %R_FA_4%
        
		; %R_FA_24% --- указатель вывода
		vsv %R_FA_1%, %R_FA_24%
		inc %R_FA_24%
		
		mov2 %R_FA_2%, <LIB_puts_loop>
		jmp %R_FA_2%
	
	LIB_puts_endloop:
		updd
		jmp %R_FA_8%

