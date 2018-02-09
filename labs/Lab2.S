			;R7		= a, R8 = b, R9 = b, R10 = c. R11 = d, R12 = e
			;R0		= return value
			;R5		= step counter
			
			MOV		R5, #0
			
MAIN
			CMP		R5, #0
			BEQ		STEPA
			CMP		R5, #1
			BEQ		STEPB
			CMP		R5, #2
			BEQ		STEPC
			CMP		R5, #3
			BEQ		STEPD
			CMP		R5, #4
			BEQ		STEPE
			CMP		R5, #5
			BEQ		DONE
			
STEPA
			MOV		R1, #2
			MOV		R2, #3
			MOV		R3, #4
			MOV		R4, #5
			ADD		R5, R5, #1
			B		DIFFOFSUMS
			
STEPB
			MOV		R7, R0
			MOV		R1, #3
			MOV		R2, #4
			MOV		R3, #5
			MOV		R4, #2
			ADD		R5, R5, #1
			B		DIFFOFSUMS
			
STEPC
			MOV		R8, R0
			MOV		R1, #4
			MOV		R2, #5
			MOV		R3, #2
			MOV		R4, #3
			ADD		R5, R5, #1
			B		DIFFOFSUMS
			
STEPD
			MOV		R9, R0
			MOV		R1, #5
			MOV		R2, #2
			MOV		R3, #3
			MOV		R4, #4
			ADD		R5, R5, #1
			B		DIFFOFSUMS
			
STEPE
			MOV		R10, R0
			MOV		R1, R7
			MOV		R2, R8
			MOV		R3, R9
			MOV		R4, R10
			ADD		R5, R5, #1
			B		DIFFOFSUMS
			
DIFFOFSUMS
			ADD		R1, R1, R2
			ADD		R2, R3, R4
			SUB		R0, R1, R2
			B		MAIN
			
DONE
			MOV		R11, R0
