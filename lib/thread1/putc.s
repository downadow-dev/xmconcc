;; напечатать значение из стека (символ)
__1_putc:
    mov2 %R_FA_14%, <__1_clear_output>
    mov2 %R_FA_15%, 0001764
    if %R_FA_24% > %R_FA_15%, %R_FA_14%
    
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	vsv %R_FA_10%, %R_FA_24%
	updd
	inc %R_FA_24%
	jmp %R_FA_18%

