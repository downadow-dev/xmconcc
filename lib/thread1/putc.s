;; напечатать значение из стека (символ)
__1_putc:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	vsv %R_FA_10%, %R_FA_24%
	updd
	inc %R_FA_24%
	jmp %R_FA_18%

