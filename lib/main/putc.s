;; напечатать значение из стека (символ)
__0_putc:
    mov2 %R_FA_4%, <__0_clear_output>
    mov2 %R_FA_5%, 0001764
    if %R_FA_24% > %R_FA_5%, %R_FA_4%
    
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	vsv %R_FA_0%, %R_FA_24%
	updd
	inc %R_FA_24%
	jmp %R_FA_8%

