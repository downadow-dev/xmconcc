;; установить цвет фона
__0_setbg:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	vsv %R_FA_0%, 1998
	
	jmp %R_FA_8%

;; установить цвет следующего текста
__0_setcolor:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	mov2 %R_FA_1%, 0000255
	add %R_FA_0% %R_FA_1%, %R_FA_0%
	vsv %R_FA_0%, %R_FA_24%
	inc %R_FA_24%
	
	jmp %R_FA_8%

