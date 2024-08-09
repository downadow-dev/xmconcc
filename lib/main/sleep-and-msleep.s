;;; функции задержки выполнения


__0_sleep:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	slp %R_FA_0%
	
	jmp %R_FA_8%

__0_msleep:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	lslp %R_FA_0%
	
	jmp %R_FA_8%

