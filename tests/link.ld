ENTRY(_start)

MEMORY {
  RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 0x100000
}

SECTIONS {
  .text : { *(.text*) } > RAM
  . = ALIGN(4);
  .data : { *(.data*) } > RAM
  . = ALIGN(4);
  .bss  : { *(.bss*) *(COMMON) } > RAM
  . = ALIGN(4);
  _end = .;
}

