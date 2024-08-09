;; напечатать значение из стека
__0_putn:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	vsvan %R_FA_0%, %R_FA_24%
	updd
	mov %R_FA_0%, 9
	add %R_FA_24% %R_FA_0%, %R_FA_24%
	jmp %R_FA_8%

