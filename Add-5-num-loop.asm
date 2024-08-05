// ADDITION OF TWO 8 BIT NUMBERS
// Manually strore 1st no in the memory location C050
// Manually store 2nd no in the memory location C051
// Result is stored in C053
# BEGIN 0000H
	   LXI H,C050
	INX H
	MVI C,04H

LABEL:
	ADD M
	INX H
	DCR C
                     JNZ label
                    STA C055
	HLT

// EXAMPLE-> C050 = 55H, C051 =66H
// ANSWER -> C052 = BBH
#ORG C050
#DB 11H, 33H, 22H, 11H, 22H
