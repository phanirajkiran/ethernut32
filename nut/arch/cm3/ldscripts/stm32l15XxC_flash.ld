/******************************************************************************
 *
 *  stm32f105xB_flash.ld - linker script for nutos on cortex-m3 STM32F105xB
 *
 *****************************************************************************/

ENTRY(NutInit)
SEARCH_DIR(.)

MEMORY
{
    FLASH0 (rx) : ORIGIN = 0x08000000, LENGTH = 256K
    SRAM0 (rwx) : ORIGIN = 0x20000000, LENGTH = 32K
    EEPROM0(rw) : ORIGIN = 0x08080000, LENGTH = 8K
}

INCLUDE stm32f10x_flash.ld
