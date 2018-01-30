		;		Arithmetic Instructions
		MOV		R1,  #0xB7
		ORR		R1,  R1, #0xF100
		ORR		R1, R1, #0xA10000
		ORR		R1, R1, #0x46000000
		MOV		R2, #0xFF0000
		ORR		R2, R2, #0xFF
		
		ADD		R3, R1, R2
		SUB		R4, R1, R2
		
		;		Logical Instructions
		MOV		R1, #0xB7
		ORR		R1, R1, #0xF100
		ORR		R1, R1, #0xA10000
		ORR		R1, R1, #0x46000000
		MOV		R2, #0xFF0000
		ORR		R2, R2, #0xFF000000
		
		AND		R3, R1, R2
		ORR		R4, R1, R2
		EOR		R5, R1, R2
		BIC		R6, R1, R2
		MVN		R7, R2
		
		;		Shift Instructions
		MOV		R5, #0xE7
		ORR		R5, R5, #0x1000
		ORR		R5, R5, #0x1C0000
		ORR		R5, R5, #0xFF000000
		
		LSL		R0, R5, #7
		LSR		R1, R5, #17
		ASR		R2, R5, #3
		ROR		R3, R5, #21
