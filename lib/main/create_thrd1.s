;; запуск нового потока
__0_create_thrd1:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	th1 %R_FA_0%
	
	jmp %R_FA_8%

