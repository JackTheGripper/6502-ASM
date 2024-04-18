lda #$01
DrawBg:
sta $0200,Y
sta $0300,Y
sta $0400,Y
sta $0500,Y
iny
cpy $00
beq drawLines
jmp DrawBg

drawLines:
lda #$00
sta $0400
sta $0401
sta $0402
sta $0403
sta $0404
sta $0405
sta $0406
sta $0407
sta $0408
sta $0409
sta $040a
sta $040b
sta $040c
sta $040d
sta $040e
sta $040f
sta $0410
sta $0411
sta $0412
sta $0413
sta $0414
sta $0415
sta $0416
sta $0417
sta $0418
sta $0419
sta $041a
sta $041b
sta $041c
sta $041d
sta $041e
sta $041f
sta $020f
sta $022f
sta $024f
sta $026f
sta $028f
sta $02af
sta $02cf
sta $02ef
sta $030f
sta $032f
sta $034f
sta $036f
sta $038f
sta $03af
sta $03cf
sta $03ef
sta $040f
sta $042f
sta $044f
sta $046f
sta $048f
sta $04af
sta $04cf
sta $04ef
sta $050f
sta $052f
sta $054f
sta $056f
sta $058f
sta $05af
sta $05cf
sta $05ef
jmp graphprep

graphprep:
ldx #0
ldy #0
jmp multiply

multiply:
clc
txa
sta $20
adc $00,x
sta $00,x
iny
cpy $20
beq done
jmp multiply
done:
ldy #0
sta $00,x
inx
cpx #$10
beq drawValsPrep
jmp multiply

drawValsPrep:
ldx #0
ldy #0

drawVals:
lda #$f
ldx $00,y

sta $0300,X
iny
cpy #$10
beq doneGraphing
jmp drawVals

doneGraphing:
