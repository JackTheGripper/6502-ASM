ldx #1
stx $00
stx $01
ldx #0
fibonacci:
lda $00,x
adc $01,x
sta $02,x
cpx #$a
beq done
clc
inx
jmp fibonacci
done:
