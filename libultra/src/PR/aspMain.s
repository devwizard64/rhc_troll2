.globl aspMainTextStart
aspMainTextStart:
.incbin "build/libultra/src/PR/aspMain.text.bin"
.globl aspMainTextEnd
aspMainTextEnd:

.data

.globl aspMainDataStart
aspMainDataStart:
.incbin "build/libultra/src/PR/aspMain.data.bin"
.globl aspMainDataEnd
aspMainDataEnd:
