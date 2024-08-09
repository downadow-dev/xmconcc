;; скопировать аргументы командной строки в заданную область памяти
__1_getargs:
	dec %R_FA_19%
	
	ild %R_FA_19%, %R_FA_11%
	
	mov %R_FA_10%, %ARGS_ST%
	
	mov %R_FA_12%, %OUT_ST%
	mov2 %R_FA_13%, <LIB_1_getargs_loop>
	
	LIB_1_getargs_loop:
		vld %R_FA_10%, %R_FA_14%
		isv %R_FA_14%, %R_FA_11%
		
		inc %R_FA_10%
		inc %R_FA_11%
		
		if %R_FA_10% < %R_FA_12%, %R_FA_13%
	jmp %R_FA_18%
