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
beq Main
jmp DrawBg

Main: 

PrintA:
lda #0
sta $201,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
sta $260,X
sta $262,X
inx
inx
inx
inx
rts

PrintB:
lda #0
sta $200,X
sta $201,X
sta $220,X
sta $221,X
sta $222,X
sta $240,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintC:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $240,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintD:
lda #0
sta $200,X
sta $201,X
sta $220,X
sta $222,X
sta $240,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintE:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $221,X
sta $240,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintF:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $221,X
sta $240,X
sta $260,X
inx
inx
inx
inx
rts

PrintG:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $240,X
sta $242,X
sta $260,X
sta $261,X
inx
inx
inx
inx
rts

PrintH:
lda #0
sta $200,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
sta $260,X
sta $262,X
inx
inx
inx
inx
rts

PrintI:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $221,X
sta $241,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintJ:
lda #0
sta $202,X
sta $222,X
sta $240,X
sta $242,X
sta $261,X
inx
inx
inx
inx
rts

PrintK:
lda #0
sta $200,X
sta $202,X
sta $220,X
sta $221,X
sta $240,X
sta $242,X
sta $260,X
sta $262,X
inx
inx
inx
inx
rts

PrintL:
lda #0
sta $200,X
sta $220,X
sta $240,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintM:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $221,X
sta $222,X
sta $240,X
sta $242,X
sta $260,X
sta $262,X
inx
inx
inx
inx
rts

PrintN:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $242,X
sta $260,X
sta $262,X
inx
inx
inx
inx
rts

PrintO:
lda #0
sta $200,X
sta $201,X
sta $220,X
sta $222,X
sta $240,X
sta $242,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintP:
lda #0
sta $200,X
sta $201,X
sta $220,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
sta $260,X
inx
inx
inx
inx
rts

PrintQ:
lda #0
sta $200,X
sta $201,X
sta $220,X
sta $222,X
sta $240,X
sta $242,X
sta $261,X
sta $262,X
sta $281,X
inx
inx
inx
inx
rts

PrintR:
lda #0
sta $200,X
sta $201,X
sta $220,X
sta $222,X
sta $240,X
sta $241,X
sta $260,X
sta $262,X
inx
inx
inx
inx
rts

PrintS:
lda #0
sta $200,X
sta $201,X
sta $220,X
sta $221,X
sta $222,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintT:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $221,X
sta $241,X
sta $261,X
inx
inx
inx
inx
rts

PrintU:
lda #0
sta $200,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $242,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintV:
lda #0
sta $200,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $242,X
sta $261,X
inx
inx
inx
inx
rts

PrintW:
lda #0
sta $200,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintX:
lda #0
sta $200,X
sta $202,X
sta $221,X
sta $240,X
sta $242,X
sta $260,X
sta $262,X
inx
inx
inx
inx
rts

PrintY:
lda #0
sta $200,X
sta $202,X
sta $221,X
sta $241,X
sta $261,X
inx
inx
inx
inx
rts

PrintZ:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $222,X
sta $240,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

Print1:
lda #0
sta $200,X
sta $201,X
sta $221,X
sta $241,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

Print2:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $222,X
sta $240,X
sta $241,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

Print3:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $221,X
sta $222,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

Print4:
lda #0
sta $200,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
sta $262,X
inx
inx
inx
inx
rts

Print5:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $221,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

Print6:
lda #0
sta $200,X
sta $220,X
sta $221,X
sta $222,X
sta $240,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

Print7:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $222,X
sta $241,X
sta $261,X
inx
inx
inx
inx
rts

Print8:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $221,X
sta $222,X
sta $240,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx

Print9:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
sta $262,X
inx
inx
inx
inx
rts

Print0:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $222,X
sta $240,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintOB:
lda #0
sta $201,X
sta $202,X
sta $221,X
sta $241,X
sta $261,X
sta $262,X
inx
inx
inx
inx
rts

PrintCB:
lda #0
sta $201,X
sta $200,X
sta $221,X
sta $241,X
sta $261,X
sta $260,X
inx
inx
inx
inx
rts
