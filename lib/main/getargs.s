;; скопировать аргументы командной строки в заданную область памяти
__0_getargs:
	dec %R_FA_9%
	
	ild %R_FA_9%, %R_FA_1%
	
	mov %R_FA_0%, %ARGS_ST%
	
	mov %R_FA_2%, %OUT_ST%
	mov2 %R_FA_3%, <LIB_getargs_loop>
	
	LIB_getargs_loop:
		vld %R_FA_0%, %R_FA_4%
		isv %R_FA_4%, %R_FA_1%
		
		inc %R_FA_0%
		inc %R_FA_1%
		
		if %R_FA_0% < %R_FA_2%, %R_FA_3%
	jmp %R_FA_8%

