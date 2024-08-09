;; сложение
__0_+:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	add %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; вычитание
__0_-:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	sub %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; умножение
__0_*:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	mul %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; деление
__0_/:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	div %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; возведение
__0_**:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	exp %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; получение остатка
__0_mod:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	mod %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; И
__0_and:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	and %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; ИЛИ
__0_|:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	or %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; Исключающее ИЛИ
__0_^:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	xor %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; левый сдвиг
__0_lsh:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	lshift %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; и правый
__0_rsh:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_1%
	
	rshift %R_FA_1% %R_FA_0%, %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; декремент
__0_--:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	dec %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

;; инкремент
__0_++:
	dec %R_FA_9%
	ild %R_FA_9%, %R_FA_0%
	
	inc %R_FA_0%
	
	isv %R_FA_0%, %R_FA_9%
	inc %R_FA_9%
	
	jmp %R_FA_8%

