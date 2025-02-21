/*
This is a modified version of the Adafruit GFX library. Trimmed from the
version located at: https://github.com/adafruit/Adafruit-GFX-Library/tree/master

Copyright (c) 2013 Adafruit Industries.  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

- Redistributions of source code must retain the above copyright notice,
  this list of conditions and the following disclaimer.
- Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

Adafruit invests time and resources providing this open source code, please
support Adafruit & open-source hardware by purchasing products from Adafruit!
 */

#ifndef __TFT_ST7789_H_
#define __TFT_ST7789_H_

#include "tft_hal.h"

#include <stdint.h>
#include <stdbool.h>

typedef enum
{
    ST77XX_SUCCESS = 0,
    ST77XX_ERROR,
    ST77XX_HAL_ERROR
} ST77XX_Return_e;

#define ST77XX_NOP 0x00
#define ST77XX_SWRESET 0x01
#define ST77XX_RDDID 0x04
#define ST77XX_RDDST 0x09

#define ST77XX_SLPIN 0x10
#define ST77XX_SLPOUT 0x11
#define ST77XX_PTLON 0x12
#define ST77XX_NORON 0x13

#define ST77XX_INVOFF 0x20
#define ST77XX_INVON 0x21
#define ST77XX_DISPOFF 0x28
#define ST77XX_DISPON 0x29
#define ST77XX_CASET 0x2A
#define ST77XX_RASET 0x2B
#define ST77XX_RAMWR 0x2C
#define ST77XX_RAMRD 0x2E

#define ST77XX_PTLAR 0x30
#define ST77XX_TEOFF 0x34
#define ST77XX_TEON 0x35
#define ST77XX_MADCTL 0x36
#define ST77XX_COLMOD 0x3A

#define ST77XX_MADCTL_MY 0x80
#define ST77XX_MADCTL_MX 0x40
#define ST77XX_MADCTL_MV 0x20
#define ST77XX_MADCTL_ML 0x10
#define ST77XX_MADCTL_RGB 0x00

#define ST77XX_RDID1 0xDA
#define ST77XX_RDID2 0xDB
#define ST77XX_RDID3 0xDC
#define ST77XX_RDID4 0xDD

// Some ready-made 16-bit ('565') color settings:
#define ST77XX_BLACK 0x0000
#define ST77XX_WHITE 0xFFFF
#define ST77XX_RED 0xF800
#define ST77XX_GREEN 0x07E0
#define ST77XX_BLUE 0x001F
#define ST77XX_CYAN 0x07FF
#define ST77XX_MAGENTA 0xF81F
#define ST77XX_YELLOW 0xFFE0
#define ST77XX_ORANGE 0xFC00

typedef struct
{
    // Configured max window size
    uint16_t windowWidth;
    uint16_t windowHeight;

    // Vars used for window size, these can change due to rotation.
    uint16_t width;
    uint16_t height;

    uint8_t _colstart;  ///< Some displays need this changed to offset
    uint8_t _rowstart;  ///< Some displays need this changed to offset
    uint8_t _colstart2; ///< Offset from the right
    uint8_t _rowstart2; ///< Offset from the bottom

    uint8_t rotation;
    uint8_t xstart;
    uint8_t ystart;

    // Vars for text pointer
    uint16_t cacheIndexRow;
    uint16_t cacheIndexCol;

    uint8_t fontSize; 

    // HAL function pointers
    tft_hal_t hal;
    
} tft_st7789_instance_t;

/*!
    @brief  Initialization code common to all ST7789 displays
    @param  width  Display width
    @param  height Display height
*/
ST77XX_Return_e tft_st7789_init
(
    tft_st7789_instance_t *inst,
    uint16_t width, 
    uint16_t height
);

/*!
    @brief  Set origin of (0,0) and orientation of TFT display
    @param  m  The index for rotation, from 0-3 inclusive
*/
ST77XX_Return_e tft_st7789_setRotation
(
    tft_st7789_instance_t *inst,
    uint8_t m
);

/*!
 @brief  Change whether display is on or off
 @param  enable True if you want the display ON, false OFF
 */
ST77XX_Return_e tft_st7789_enableDisplay
(
    tft_st7789_instance_t *inst,
    bool enable
);

/*!
    @brief  Draw a single pixel to the display at requested coordinates.
            Self-contained and provides its own transaction as needed
            (see writePixel(x,y,color) for a lower-level variant).
            Edge clipping is performed here.
    @param  x      Horizontal position (0 = left).
    @param  y      Vertical position   (0 = top).
    @param  color  16-bit pixel color in '565' RGB format.
*/
ST77XX_Return_e tft_st7789_drawPixel
(
    tft_st7789_instance_t *inst, 
    int16_t x, 
    int16_t y, 
    uint16_t color
);

/*!
    @brief  Draw a filled rectangle to the display. Self-contained and
            provides its own transaction as needed (see writeFillRect() or
            writeFillRectPreclipped() for lower-level variants). Edge
            clipping and rejection is performed here.
    @param  x      Horizontal position of first corner.
    @param  y      Vertical position of first corner.
    @param  w      Rectangle width in pixels (positive = right of first
                   corner, negative = left of first corner).
    @param  h      Rectangle height in pixels (positive = below first
                   corner, negative = above first corner).
    @param  color  16-bit fill color in '565' RGB format.
    @note   This repeats the writeFillRect() function almost in its entirety,
            with the addition of a transaction start/end. It's done this way
            (rather than starting the transaction and calling writeFillRect()
            to handle clipping and so forth) so that the transaction isn't
            performed at all if the rectangle is rejected. It's really not
            that much code.
*/
ST77XX_Return_e tft_st7789_fillRect
(
    tft_st7789_instance_t *inst,
    int16_t x,
    int16_t y,
    int16_t w,
    int16_t h,
    uint16_t color
);

/*!
    @brief  Draw a horizontal line on the display. Self-contained and
            provides its own transaction as needed (see writeFastHLine() for
            a lower-level variant). Edge clipping and rejection is performed
            here.
    @param  x      Horizontal position of first point.
    @param  y      Vertical position of first point.
    @param  w      Line width in pixels (positive = right of first point,
                   negative = point of first corner).
    @param  color  16-bit line color in '565' RGB format.
    @note   This repeats the writeFastHLine() function almost in its
            entirety, with the addition of a transaction start/end. It's
            done this way (rather than starting the transaction and calling
            writeFastHLine() to handle clipping and so forth) so that the
            transaction isn't performed at all if the line is rejected.
*/
ST77XX_Return_e tft_st7789_drawFastHLine
(
    tft_st7789_instance_t *inst,
    int16_t x,
    int16_t y,
    int16_t w,
    uint16_t color
);

/*!
    @brief  Draw a vertical line on the display. Self-contained and provides
            its own transaction as needed (see writeFastHLine() for a lower-
            level variant). Edge clipping and rejection is performed here.
    @param  x      Horizontal position of first point.
    @param  y      Vertical position of first point.
    @param  h      Line height in pixels (positive = below first point,
                   negative = above first point).
    @param  color  16-bit line color in '565' RGB format.
    @note   This repeats the writeFastVLine() function almost in its
            entirety, with the addition of a transaction start/end. It's
            done this way (rather than starting the transaction and calling
            writeFastVLine() to handle clipping and so forth) so that the
            transaction isn't performed at all if the line is rejected.
*/
ST77XX_Return_e tft_st7789_drawFastVLine
(
    tft_st7789_instance_t *inst,
    int16_t x,
    int16_t y,
    int16_t h,
    uint16_t color
);

/**************************************************************************/
/*!
    @brief  Quarter-circle drawer with fill, used for circles and roundrects
    @param  x0       Center-point x coordinate
    @param  y0       Center-point y coordinate
    @param  r        Radius of circle
    @param  corners  Mask bits indicating which quarters we're doing
    @param  delta    Offset from center-point, used for round-rects
    @param  color    16-bit 5-6-5 Color to fill with
*/
/**************************************************************************/
ST77XX_Return_e tft_st7789_fillCircle
(
    tft_st7789_instance_t *inst,
    int16_t x0, 
    int16_t y0, 
    int16_t r,
    uint8_t corners, 
    int16_t delta,
    uint16_t color
); 

// Function to draw an arc
// center_x, center_y: Center coordinates of the circle
// radius: Radius of the arc
// start_angle: Start angle in degrees (0-360)
// end_angle: End angle in degrees (0-360)
// color: Color of the arc (in 16-bit format)
ST77XX_Return_e tft_st7789_drawArc(
    tft_st7789_instance_t *inst,
    int16_t center_x,
    int16_t center_y,
    int16_t radius,
    int start_angle,
    int end_angle,
    uint16_t color,
    int8_t thicknessPx
);

ST77XX_Return_e tft_st7789_fillArc(
    tft_st7789_instance_t *inst,
    int16_t center_x,
    int16_t center_y,
    int16_t radius,
    int start_angle,
    int end_angle,
    uint16_t color
);

/*!
    @brief  A lower-level version of writeFillRect(). This version requires
            all inputs are in-bounds, that width and height are positive,
            and no part extends offscreen. NO EDGE CLIPPING OR REJECTION IS
            PERFORMED. If higher-level graphics primitives are written to
            handle their own clipping earlier in the drawing process, this
            can avoid unnecessary function calls and repeated clipping
            operations in the lower-level functions.
    @param  x      Horizontal position of first corner. MUST BE WITHIN
                   SCREEN BOUNDS.
    @param  y      Vertical position of first corner. MUST BE WITHIN SCREEN
                   BOUNDS.
    @param  w      Rectangle width in pixels. MUST BE POSITIVE AND NOT
                   EXTEND OFF SCREEN.
    @param  h      Rectangle height in pixels. MUST BE POSITIVE AND NOT
                   EXTEND OFF SCREEN.
    @param  color  16-bit fill color in '565' RGB format.
    @note   This is a new function, no graphics primitives besides rects
            and horizontal/vertical lines are written to best use this yet.
*/
ST77XX_Return_e tft_st7789_writeFillRectPreclipped
(
    tft_st7789_instance_t *inst,
    int16_t x, 
    int16_t y,
    int16_t w, 
    int16_t h,
    uint16_t color
);

/*
    Function to draw bitmap from pre-parsed buffer.
*/
ST77XX_Return_e tft_st7789_drawImage(
    tft_st7789_instance_t *inst,
    int16_t xOffset,
    int16_t yOffset,
    int16_t width,
    int16_t height,
    uint16_t *imageBuffer
);

/*!
  @brief  SPI displays set an address window rectangle for blitting pixels
  @param  x  Top left corner x coordinate
  @param  y  Top left corner x coordinate
  @param  w  Width of window
  @param  h  Height of window
*/
ST77XX_Return_e tft_st7789_setAddrWindow(
    tft_st7789_instance_t *inst,
    uint16_t x,
    uint16_t y,
    uint16_t w,
    uint16_t h);

/*!
    @brief  Issue a series of pixels, all the same color. Not self-
            contained; should follow startWrite() and setAddrWindow() calls.
    @param  color  16-bit pixel color in '565' RGB format.
    @param  len    Number of pixels to draw.
*/
ST77XX_Return_e tft_st7789_writeColor(
    tft_st7789_instance_t *inst,
    uint16_t color,
    uint32_t len);

#endif
