MAIN	START	1000

SCAN1	TD	INDEV	
	JEQ	SCAN1
	RD	INDEV
	STCH	TEST
	
	STS	0
SCAN2	TD	INDEV	
	JEQ	SCAN2
	RD	INDEV
	STCH	DATA
	STS	TMP
	LDA	TMP
	ADD	#1
	COMP	TEST
	JLT	SCAN2
	

PRINT	TD	OUTDEV
	JEQ	PRINT
	LDCH	DATA
	WD	OUTDEV

TEST	RESB	1
INDEV	BYTE	0
OUTDEV	BYTE	1
DATA	RESB	64
TMP	BYTE	1


    