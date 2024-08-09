;; завершение программы с кодом из стека
__0_exit:
	dec %R_FA_9%
	ild %R_FA_9%, %R_RETURN_CODE%
	%__END_THE_APP__%

