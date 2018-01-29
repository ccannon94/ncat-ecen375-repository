		;		Branching Example
		MOV		R0, #4
		ADD		R1, R0, R0
		CMP		R0, R1
		BEQ		THERE ; Branch if equal
		ORR		R1, R1, #1
		;		This is a branch
THERE
		ADD		R1, R1, #78
		
		
		;		Branches can be used to implement higher-level statements like if/else, for/while loops
		;		if (i == j)
		;		f = g + h;
		;		f = f - i;
		
		;		Must assign registers to hold variables
		;		r0 = f, r1 = g; r2 = h; r3 = i; r4 = j;
		CMP		R3, R4
		BNE		OTHERPART ; skipping the conditional statement if NOT equal is easier than the way its done in C
		ADD		R0, R1, R2
		
OTHERPART
		SUB		R0, R0, R3
		
		;		to do the above example without branching
		CMP		R3, R4
		ADDEQ	R0, R1, R2 ; add only if equal
		SUB		R0, R0, R3
		
		
		;		This time, only execute f=f-1 if NOT equal
		;		if (i==j);
		;		f = g + h;
		;		else
		;		f = f - i;
		CMP		R3, R4
		BEQ		EQUAL
		BNE		NOTEQUAL
		
EQUAL
		ADD		R0, R1, R2
		B		DONE ; branch no matter what
		
NOTEQUAL
		SUB		R0, R0, R3
		B		DONE ; branch no matter what
		
DONE ; this label just ends the execution
		
		;		doing the above with mnemonics instead
		CMP		R3, R3
		ADDEQ	R0, R1, R2
		SUBNE	R0, R0, R2
