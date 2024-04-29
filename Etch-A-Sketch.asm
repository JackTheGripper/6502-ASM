initDrawBg:
ldy #$00
lda #$01
ldx #0
stx $00
jmp DrawBg

DrawBg:
sta $0200,Y
sta $0300,Y
sta $0400,Y
sta $0500,Y
iny
cpy $00
beq init
jmp DrawBg

init:
lda #$00
ldx #0
ldy #0
jmp main

main:
sta $0200,Y
ldx $ff
cpx #$61
beq left
cpx #$77
beq up
cpx #$73
beq down
cpx #$64
beq right
cpx #$31
beq black
cpx #$32
beq white
cpx #$33
beq red
cpx #$34
beq green
cpx #$35
beq blue
jmp main

down:
clc
sta $01
tya
adc #$20
tay
lda $01
ldx #0
stx $ff
jmp main

up:
clc
sta $01
tya
sbc #$1f
tay
lda $01
ldx #0
stx $ff
jmp main

left:
dey
ldx #0
stx $ff
jmp main

right:
iny
ldx #0
stx $ff
jmp main

black:
lda #$0
ldx #0
stx $ff
jmp main

white:
lda #$1
ldx #0
stx $ff
jmp main

red:
lda #$2
ldx #0
stx $ff
jmp main

green:
lda #$5
ldx #0
stx $ff
jmp main

blue:
lda #$6
ldx #0
stx $ff
jmp main
