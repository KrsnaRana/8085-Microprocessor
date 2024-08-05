// ADDITION OF TWO 8 BIT NUMBERS
// Manually strore 1st no in the memory location C050
// Manually store 2nd no in the memory location C051
// Result is stored in C053
# BEGIN 0000H
	   LXI H,C050
	MOV A,M
	INX H
	MOV B,M
	CMP B
	   JC LABEL
	   SUB B
	   STA C052
	   HLT

LABEL:
	SUB B
	CMA
	INR A
	STA C052h
	HLT
// EXAMPLE-> C050 = 55H, C051 =66H
// ANSWER -> C052 = BBH
#ORG C050
#DB 55H, 76H
