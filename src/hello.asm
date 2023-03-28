// hello.asm
// Testing Kick Assembler VS Code Integration

// BASIC Loader
BasicUpstart2(main)

// Constants
    .const zero = $00
    .const cr = $0d
    .const clr = 147
    .const black = $00
    .const pink = $04
    .const bgcolor = $d020
    .const fgcolor = $d021
    .const poscolor = 646
    .const cursorcolor = 647

// Kernal Routines
    .const chrout = $ffd2


main:
    lda #black
    sta bgcolor
    sta fgcolor
    lda #pink
    sta poscolor

    lda #clr
    jsr chrout

// Print demo message
    ldx #zero
    lda msg, x
!loop:
    jsr chrout
    inx
    lda msg, x
    bne !loop-

    lda #cr
    jsr chrout
    jsr chrout
    jsr chrout

    rts


// Data

.encoding "petscii_mixed"

msg:
    .text   "this is simple demo code."
    .byte   0
