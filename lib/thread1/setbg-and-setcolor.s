;; установить цвет фона
__1_setbg:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	vsv %R_FA_10%, 1998
	
	jmp %R_FA_18%

;; установить цвет следующего текста
__1_setcolor:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	mov %R_FA_11%, 255
	add %R_FA_10% %R_FA_11%, %R_FA_10%
	vsv %R_FA_10%, %R_FA_24%
	inc %R_FA_24%
	
	jmp %R_FA_18%

