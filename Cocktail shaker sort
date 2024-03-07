;6502 ASM sorting algorithm (cocktail shaker sort) By: JackTheGripper. Compares the current byte in the array with the one to the right of it and swaps it if the current byte is smaller until it reaches the end of the array then does the same thing but in reverse swapping if the byte to the left of the current byte is bigger. Sorts greatest to least. Only works in 6502js simulator by Skilldrick https://github.com/skilldrick/6502js. (monitor $0000 to $00ff to see array in memory.)

ArrayGenerate: ;fills memory with an array of random 8 bit values.

ldx $fe
stx $00,Y
iny
cpy #$40 ;change this value to change array size
bne ArrayGenerate
jmp sortsetup

sortsetup: ;makes sure both X and Y registers are set to 0 and jumps to sort subroutine.

ldx #$00
ldy #$00
jmp sort

swapdirf: ;swaps directions and checks if any swaps were done in the last pass.
cpx $0101
beq done
stx $0101
jmp sort

swapdirb: ;swaps directions and checks if any swaps were done in the last pass.
ldx #$00
cpx $0101
beq done
stx $0101
ldx #$40
jmp sortb

sortb: ; makes sure x is within set parameters and then compares the current byte of the array with the one to the right of it then swaps if needed.

cpx #$00 
beq swapdirf
lda $00,X
dex
cmp $00,X
inx
beq noSwapb
bcs moreb
jmp noSwapb

noSwapb: ;this will decrement x, clear the carry flag, then jump back to the sortb subroutine.

dex
jmp sortb

moreb: ;If the memory is more than the current bit it will swap the two values locations in the array then decrement x, clear the carry, and jump back to the sortb subroutine.

dex
ldy $00,X
inx
sty $0100
ldy $00,X
dex
sty $00,X
inx
ldy $0100
sty $00,X
dex
inc $0101
jmp sortb


sort: ; makes sure x is within set parameters and then compares the current byte of the array with the one to the right of it then swaps if needed.

cpx #$40 ;Set this equal to array size.
beq swapdirb
lda $00,X
cmp $01,X
beq noSwap
bcs noSwap
jmp less

noSwap: ;this will increment x, clear the carry flag, then jump back to the sort subroutine.

inx
jmp sort

less: ;If the memory is less than the current bit it will swap the two values locations in the array then increment x, clear the carry, and jump back to the sort subroutine.

ldy $00,X
sty $0100
ldy $01,X
sty $00,X
ldy $0100
inx
sty $00,X
inc $0101
jmp sort

done: ;infinite no operation loop, here as a stop point.

nop
jmp done



