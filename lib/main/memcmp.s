__0_memcmp:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_2%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov %R_FA_3%, 0
	mov %R_FA_6%, 0
	
	LIB_loop_memcmp:
		ild %R_FA_0%, %R_FA_4%
		ild %R_FA_1%, %R_FA_5%
		sub %R_FA_4% %R_FA_5%, %R_FA_4%
		add %R_FA_3% %R_FA_4%, %R_FA_3%
		
		inc %R_FA_1%
		inc %R_FA_0%
		inc %R_FA_6%
		
		mov2 %R_FA_4%, <LIB_loop_memcmp>
		if %R_FA_6% < %R_FA_2%, %R_FA_4%
	
	isv %R_FA_3%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

