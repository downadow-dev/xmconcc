
__1_=?:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov2 %R_FA_12%, <LIB_1_=?_continue>
	if %R_FA_10% == %R_FA_11%, %R_FA_12%
	
	mov %R_FA_10%, 0
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%
	
	LIB_1_=?_continue:
	
	mov %R_FA_10%, 1
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%

__1_!?:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov2 %R_FA_12%, <LIB_1_!?_continue>
	if %R_FA_10% != %R_FA_11%, %R_FA_12%
	
	mov %R_FA_10%, 0
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%
	
	LIB_1_!?_continue:
	
	mov %R_FA_10%, 1
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%

__1_lt?:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov2 %R_FA_12%, <LIB_1_lt?_continue>
	if %R_FA_10% < %R_FA_11%, %R_FA_12%
	
	mov %R_FA_10%, 0
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%
	
	LIB_1_lt?_continue:
	
	mov %R_FA_10%, 1
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%

__1_gt?:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov2 %R_FA_12%, <LIB_1_gt?_continue>
	if %R_FA_10% > %R_FA_11%, %R_FA_12%
	
	mov %R_FA_10%, 0
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%
	
	LIB_1_gt?_continue:
	
	mov %R_FA_10%, 1
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	jmp %R_FA_18%


__1_then:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov %R_FA_12%, 1
	if %R_FA_10% == %R_FA_12%, %R_FA_11%
	
	jmp %R_FA_18%

__1_else:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	mov %R_FA_12%, 0
	if %R_FA_10% == %R_FA_12%, %R_FA_11%
	
	jmp %R_FA_18%

