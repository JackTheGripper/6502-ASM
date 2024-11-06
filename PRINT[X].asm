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
jsr PrintP
jsr PrintSpace
jsr PrintR
jsr PrintSpace
jsr PrintI
jsr PrintSpace
jsr PrintN
jsr PrintSpace
jsr PrintT
jsr PrintSpace
jsr PrintOB
jsr PrintSpace
jsr PrintX
jsr PrintSpace
jsr PrintCB
jmp end

PrintSpace:
inx
inx
inx
inx
rts

PrintNoSpace:
inx
inx
inx
rts


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
rts

PrintJ:
lda #0
sta $202,X
sta $222,X
sta $240,X
sta $242,X
sta $261,X
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
rts

PrintL:
lda #0
sta $200,X
sta $220,X
sta $240,X
sta $260,X
sta $261,X
sta $262,X
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
rts

PrintT:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $221,X
sta $241,X
sta $261,X
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
rts

PrintY:
lda #0
sta $200,X
sta $202,X
sta $221,X
sta $241,X
sta $261,X
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
rts

Print7:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $222,X
sta $241,X
sta $261,X
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
rts

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
rts

PrintOB:
lda #0
sta $201,X
sta $202,X
sta $221,X
sta $241,X
sta $261,X
sta $262,X
rts

PrintCB:
lda #0
sta $201,X
sta $200,X
sta $221,X
sta $241,X
sta $261,X
sta $260,X
rts

PrintBlock:
lda #0
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $221,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
rts

PrintLineV:
lda #0
sta $201,X
sta $221,X
sta $241,X
sta $261,X
rts

PrintLineH:
lda #0
sta $220,X
sta $221,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
rts

PrintBS:
lda #0
sta $200,X
sta $221,X
sta $241,X
sta $262,X
rts

PrintFSS:
lda #0
sta $222,X
sta $241,X
sta $240,X
rts

PrintBSS:
lda #0
sta $220,X
sta $242,X
sta $241,X
rts

PrintFS:
lda #0
sta $202,X
sta $221,X
sta $241,X
sta $260,X
rts

PrintClear:
lda #1
sta $200,X
sta $201,X
sta $202,X
sta $220,X
sta $221,X
sta $222,X
sta $240,X
sta $241,X
sta $242,X
sta $260,X
sta $261,X
sta $262,X
rts

end:
