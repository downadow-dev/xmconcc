;;; функции задержки выполнения


__1_sleep:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	slp %R_FA_10%
	
	jmp %R_FA_18%

__1_msleep:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	lslp %R_FA_10%
	
	jmp %R_FA_18%

