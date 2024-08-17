;; напечатать значение из стека
__0_putn:
    mov2 %R_FA_4%, <__0_clear_output>
    mov2 %R_FA_5%, 0001764
    if %R_FA_24% > %R_FA_5%, %R_FA_4%
    
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	vsvan %R_FA_0%, %R_FA_24%
	updd
	mov %R_FA_0%, 9
	add %R_FA_24% %R_FA_0%, %R_FA_24%
	jmp %R_FA_8%

