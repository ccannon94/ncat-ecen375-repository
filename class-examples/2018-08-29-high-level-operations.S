		MOV		R0, #4
		ADD		R1, R0, R0
		CMP		R0, R1
		BEQ		THERE
		ORR		R1, R1, #1
		
THERE
		ADD		R1, R1, #78
