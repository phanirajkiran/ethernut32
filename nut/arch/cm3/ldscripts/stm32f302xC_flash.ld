/******************************************************************************
 *
 *  stm32f302xC_flash.ld - linker script for nutos on cortex-m3 STM32F302xC,
 *  STM32F373xC and  STM32F383xC
 *
 *****************************************************************************/

ENTRY(NutInit)
SEARCH_DIR(.)

"bootloader_offset" = 0x00;

MEMORY
{
    FLASH0 (rx) : ORIGIN = 0x08000000, LENGTH = 256K
    SRAM0 (rwx) : ORIGIN = 0x20000000, LENGTH =  32K
}

INCLUDE stm32f10x_flash.ld
