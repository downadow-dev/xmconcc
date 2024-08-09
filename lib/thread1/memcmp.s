__1_memcmp:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_12%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov %R_FA_13%, 0
	mov %R_FA_16%, 0
	
	LIB_1_loop_memcmp:
		ild %R_FA_10%, %R_FA_14%
		ild %R_FA_11%, %R_FA_15%
		sub %R_FA_14% %R_FA_15%, %R_FA_14%
		add %R_FA_13% %R_FA_14%, %R_FA_13%
		
		inc %R_FA_11%
		inc %R_FA_10%
		inc %R_FA_16%
		
		mov2 %R_FA_14%, <LIB_1_loop_memcmp>
		if %R_FA_16% < %R_FA_12%, %R_FA_14%
	
	isv %R_FA_13%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

