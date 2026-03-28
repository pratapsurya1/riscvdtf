ENTRY(_vector_start)

MEMORY {
  SRAM (rwx) : ORIGIN = 0x00100000, LENGTH = 0x100000
}

SECTIONS {
  . = 0x00100000;
  .padding : { . = . + 0x80; } > SRAM

  . = 0x00100080;
  .vectors : { *(.vectors) } > SRAM

  . = 0x00100200;
  .text : { *(.text*) } > SRAM

  . = ALIGN(4);
  .data : { *(.data*) } > SRAM
  .bss  : { *(.bss*) *(COMMON) } > SRAM
  _end = .;
}
