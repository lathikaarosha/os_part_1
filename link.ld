ENTRY(loader)				/* the name of the entry lable */

SECTIONS {
	. = 0x00100000;			/* the code should be loade at 1 MB */
	
	.text ALIGN (0x1000) :		/* align at 4 KB */
	{
		*(.text)		/* all text sections from all files */
	}
	
	.rodata ALIGN (0x1000) :	/* align at 4 KB */
	{
		*(.rodata*)		/* all read-only data section from all files */
	}
	
	.data ALIGN (0x1000) :		/* align at 4 KB */
	{
		*(.data)		/* all data sections from all files */
	}
	
	.bss ALIGN (0x1000) :		/* align at 4 KB */
	{
		*(COMMON)		/* all COMMON selections from all files */
		*(.bss)			/* all bss sections from all files */
	}
}
