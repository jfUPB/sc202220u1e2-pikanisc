// while (true)
(START)			// while (true)
	@KBD
	D=M
	@FILLORCLEAR	// if (kbd != 0)
	D;JNE
	@START
	0;JMP

(FILLORCLEAR)
// if key = f --> draw else if key = c --> clear
	@j
	M = D // save key
	@0  // press f
	D = D-M
	@FILL
	D;JEQ
	@j
	D = M
	@1
	D = D - M
	@CLEAR
	D;JEQ
	@START
	0;JMP
 
(FILL)
	@value // @17
	M = -1
	@DRAW
	0;JMP

(CLEAR)
	@value // @17
	M = 0
	@DRAW
	0;JMP

(DRAW)
	@SCREEN
	D = A
	@i  // @18
	M = D

(LOOP)
	@value // @17
	D = M
	@i     // @18
	A = M
	M = D
	@i   //@18
	M = M + 1
	@24576
	D = A
	@i   //@18
	D = M - D
	@LOOP
	D;JNE
	@START
	0;JMP

@START
0;JMP