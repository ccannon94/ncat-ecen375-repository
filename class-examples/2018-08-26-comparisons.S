		mov		R5, #0x3
		mov		R6, #0x5
		
		;		Performs R5-R6, sets the flags, does not save result
		CMP		R5, R6
		;		Performs and SAVES R5-R6, and saves result
		SUBS		R1, R5, R6
		;		Works for other operations too
		ADDS		R2, R5, R6
		
		
		;		Conditional Execution
		;		NE: Will perform _only if_ operands are not equal
		SUBNE	R3, R6, R5
