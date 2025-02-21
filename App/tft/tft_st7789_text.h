#ifndef __TFT_ST7789_TEXT_H_
#define __TFT_ST7789_TEXT_H_

#include "tft_st7789.h"

#include <stdint.h>
#include <stdbool.h>

// Font size in pixels
#define CHARS_COLS_LENGTH 5
#define CHARS_ROWS_LENGTH 8

/**
 * @desc    Set text position x, y
 *
 * @param   uint8_t x - position
 * @param   uint8_t y - position
 *
 * @return  char
 */
ST77XX_Return_e tft_st7789_setPosition
(
    tft_st7789_instance_t *inst, 
    uint8_t x, 
    uint8_t y
);

/**
 * @desc    Set text size
 *
 * @param   uint8_t size - new font size
 *
 * @return  char
 */
ST77XX_Return_e tft_st7789_setFontSize
(
    tft_st7789_instance_t *inst, 
    uint8_t size
);

/**
 * @desc    Draw String
 *
 * @param   struct st7789 *
 * @param   char * string 
 * @param   uint16_t color
 * @param   enum S_SIZE (X1, X2, X3)
 *
 * @return  uint8_t
 */
ST77XX_Return_e tft_st7789_drawString
(
    tft_st7789_instance_t *inst, 
    char *str, 
    uint16_t color
);

/**
 * @desc    Draw character
 *
 * @param   struct st7789 *
 * @param   char character
 * @param   uint16_t color
 *
 * @return  void
 */
ST77XX_Return_e tft_st7789_drawChar
(
    tft_st7789_instance_t *inst, 
    char character, 
    uint16_t color
);

#endif