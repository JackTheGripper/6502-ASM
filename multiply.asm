;multiplys two numbers

multiply: ;result is in memory $00
clc
lda #2 ;first number
adc $00
sta $00
inx
cpx #2 ;second number
beq done
jmp multiply
done:
sta $00
