;Wolfram Elementary Cellular Automata By: JackTheGripper
;this code is very non optimized partially because I made it at 4:00 AM, and im just not the best programmer

initDrawBg: ;setup for the background filler
ldy #$00
lda #$01
ldx #0
stx $00
jmp DrawBg

DrawBg: ;fills background with white
sta $0200,Y
sta $0300,Y
sta $0400,Y
sta $0500,Y
iny
cpy $00
beq setup ;once the background is filled jumps to the setup
jmp DrawBg

setup:

ldy #$1

sty $1d ;starting input for the automaton

jmp start ;jumps to the starting point of the program that runs the calculations for the automaton

;below are the rules for the automaton, rule 110 is in by default
R1:
jmp o0
R2:
jmp o1
R3:
jmp o1
R4:
jmp o0
R5:
jmp o1
R6:
jmp o1
R7:
jmp o1
R8:
jmp o0

start: ;starting/loopback point for the code that computes what the automaton should do 

;the below code tells the program when to go on to computing the next line (horribly inneficient cuz im lazy)
cpx #$d
beq NxtItt
cpx #$1d
beq NxtItt
cpx #$2d
beq NxtItt
cpx #$3d
beq NxtItt
cpx #$4d
beq NxtItt
cpx #$5d
beq NxtItt
cpx #$6d
beq NxtItt
cpx #$7d
beq NxtItt
cpx #$8d
beq NxtItt
cpx #$9d
beq NxtItt
cpx #$ad
beq NxtItt
cpx #$bd
beq NxtItt
cpx #$cd
beq end

;the below code determines what should be output based on the states of the adjacent cells and the given rules (once again horribly ineficient cuz im lazy)

lda $10,X
cmp #$1
beq c1
jmp c0

c1:
lda $11,X
cmp #$1
beq c11
jmp c01

c11:
lda $12,X
cmp #$1
beq R1
jmp R2

c01:
lda $12,X
cmp #$1
beq R3
jmp R4

c0:
lda $11,X
cmp #$1
beq c10
jmp c00

c10:
lda $12,X
cmp #$1
beq R5
jmp R6

c00:
lda $12,X
cmp #$1
beq R7
jmp R8

NxtItt: ;just increments x three times to go to the next line
inx
inx
inx

;outputs

o0: ;output =0
inx 
jmp start

o1: ;output =1
sty $21,X
inx
jmp start

end: ;stopping point for the automaton, moves on to draw the results on the screen

;all of the below just draws the results on the screen (atrociously inneficient cuz im lazy)

drawresultssetup1:
ldx #$0
ldy #$0

drawresults1:
lda $10,X
sta $200,Y
inx
iny
cpy #$f
beq NxtIttDrw1
cpy #$2f
beq NxtIttDrw1
cpy #$4f
beq NxtIttDrw1
cpy #$6f
beq NxtIttDrw1
cpy #$8f
beq NxtIttDrw1
cpy #$af
beq NxtIttDrw1
cpy #$cf
beq NxtIttDrw1
cpy #$ef
beq drawresultssetup2
jmp drawresults1

NxtIttDrw1:
inx
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
jmp drawresults1

drawresultssetup2:
ldx #$0
ldy #$0

drawresults2:
lda $90,X
sta $300,Y
inx
iny
cpy #$f
beq NxtIttDrw2
cpy #$2f
beq NxtIttDrw2
cpy #$4f
beq NxtIttDrw2
cpy #$6f
beq NxtIttDrw2
cpy #$8f
beq NxtIttDrw2
cpy #$af
beq done
jmp drawresults2

NxtIttDrw2:
inx
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
iny
jmp drawresults2

done: ;the end of my program thanks for using and/or reading my code, have a great day!
