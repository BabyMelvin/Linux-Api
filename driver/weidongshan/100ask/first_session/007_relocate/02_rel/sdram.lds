SECTIONS {
    .text 0 : { *(.text) }
    .rodata : { *(.rodata) }
    /* 运行地址0x30000000, 保存地址0x800*/
    .data 0x30000000: AT(0x800)
    {
        /* 获取 0x800 为一个变量*/
        data_load_addr = LOADADDR(.data);
        data_start = .;
        *(.data)
        data_end = .;
    }
    .bss : {*(.bss) *(.COMMON)}
}
