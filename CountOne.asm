# BEGIN 0000H
	LXI H,C050
	MOV A,M
	INX H
	MOV B,M
	MVI C,00H

LABEL: 
	INR C
	SUB B
	CMP B
	JNC LABEL
	STA C052
	MOV A,C
	STA C053
	HLT

# ORG C050
#DB 0DH, 03H