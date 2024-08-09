;; очистить вывод и сбросить указатель вывода
__0_clear_output:
	vrst
	mov %R_FA_24%, 0
	updd
	jmp %R_FA_8%

