ENTRY(_vector_start)

MEMORY {
  VECTORS (rx) : ORIGIN = 0x00100080, LENGTH = 0x80
  RAM     (rwx): ORIGIN = 0x00100000, LENGTH = 0x80
}

SECTIONS {
  .vectors : { *(.vectors) } > VECTORS
  .text    : { *(.text*)   } > RAM
  .data    : { *(.data*)   } > RAM
  .bss     : { *(.bss*) *(COMMON) } > RAM
  _end = .;
}
