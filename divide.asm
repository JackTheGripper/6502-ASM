;Divides two numbers

divPrep: ;only whole number results
ldx #1
ldy #40 ;numerator
sty $00
lda #5 ;denominator
sta $01
divLoop:
inx
adc $01
cmp $00
beq doneDiv
jmp divLoop
doneDiv:
stx $00
jmp divPrep
