;; напечатать значение из стека (символ)
__0_putc:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	vsv %R_FA_0%, %R_FA_24%
	updd
	inc %R_FA_24%
	jmp %R_FA_8%

