
#BEGIN 0000H
	LXI H, C050
	MOV C,M
	INX H
	MOV E,M
	MOV D,M
LABEL1:
	MOV A,E
	CMP M
	JC LABEL2
	MOV E,M
LABEL2:
	MOV A,D
	CMP M
	JNC LABEL3
	MOV D,M
LABEL3:
	INX H
	DCR C
	JNZ LABEL1
	MOV A,D
	STA C057
	MOV A,E
	STA C058
	HLT
	

# ORG C050
#DB 06H, 0EH, 09H, DFH, 04H, 09H,02H