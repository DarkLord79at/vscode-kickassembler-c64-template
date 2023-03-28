; hello.asm
; Testing CC65 VS Code Integration

; Constants
    zero = $00
    cr = $0d
    clr = 147
    black = $00
    pink = $04
    bgcolor = $d020
    fgcolor = $d021
    poscolor = 646
    cursorcolor = 647

; Kernal Routines
    chrout = $ffd2


main:
    lda #black
    sta bgcolor
    sta fgcolor
    lda #pink
    sta poscolor

    lda #clr
    jsr chrout

; Print demo message
    ldx #zero
    lda msg, x
@loop:
    jsr chrout
    inx
    lda msg, x
    bne @loop

    lda #cr
    jsr chrout
    jsr chrout
    jsr chrout

    rts


msg:
    .asciiz   "this is simple demo code."
