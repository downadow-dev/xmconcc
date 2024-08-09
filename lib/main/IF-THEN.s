
__0_=?:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov2 %R_FA_2%, <LIB_=?_continue>
	if %R_FA_0% == %R_FA_1%, %R_FA_2%
	
	mov %R_FA_0%, 0
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%
	
	LIB_=?_continue:
	
	mov %R_FA_0%, 1
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%

__0_!?:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov2 %R_FA_2%, <LIB_!?_continue>
	if %R_FA_0% != %R_FA_1%, %R_FA_2%
	
	mov %R_FA_0%, 0
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%
	
	LIB_!?_continue:
	
	mov %R_FA_0%, 1
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%

__0_lt?:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov2 %R_FA_2%, <LIB_lt?_continue>
	if %R_FA_0% < %R_FA_1%, %R_FA_2%
	
	mov %R_FA_0%, 0
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%
	
	LIB_lt?_continue:
	
	mov %R_FA_0%, 1
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%

__0_gt?:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov2 %R_FA_2%, <LIB_gt?_continue>
	if %R_FA_0% > %R_FA_1%, %R_FA_2%
	
	mov %R_FA_0%, 0
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%
	
	LIB_gt?_continue:
	
	mov %R_FA_0%, 1
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	jmp %R_FA_8%


__0_then:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov %R_FA_2%, 1
	if %R_FA_0% == %R_FA_2%, %R_FA_1%
	
	jmp %R_FA_8%

__0_else:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	mov %R_FA_2%, 0
	if %R_FA_0% == %R_FA_2%, %R_FA_1%
	
	jmp %R_FA_8%

