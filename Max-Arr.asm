# BEGIN 0000H
	LXI H,C050
	MOV C,M
	INX H
	MOV A,M

LABEL: 
	CMP M
	JNC LABEL2
	MOV A,M
LABEL2:
	INX H
	DCR C
	JNZ LABEL
	STA C056
	HLT

# ORG C050
#DB 05H, 0EH, 03H, 0FH, 04H, 09H
