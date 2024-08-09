;; сложение
__1_+:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	add %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; вычитание
__1_-:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	sub %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; умножение
__1_*:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	mul %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; деление
__1_/:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	div %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; возведение
__1_**:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	exp %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; получение остатка
__1_mod:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	mod %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; И
__1_and:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	and %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; ИЛИ
__1_|:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	or %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; Исключающее ИЛИ
__1_^:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	xor %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; левый сдвиг
__1_lsh:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	lshift %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; и правый
__1_rsh:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_11%
	
	rshift %R_FA_11% %R_FA_10%, %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; декремент
__1_--:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	dec %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

;; инкремент
__1_++:
	dec %R_FA_19%
	ild %R_FA_19%, %R_FA_10%
	
	inc %R_FA_10%
	
	isv %R_FA_10%, %R_FA_19%
	inc %R_FA_19%
	
	jmp %R_FA_18%

