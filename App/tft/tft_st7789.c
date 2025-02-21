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

#include "tft_st7789.h"
#include "tft_hal.h"
#include <string.h>
#include <math.h>

#include "app.h" // for constants

//------------------------------------------------------------------------
// Private prototypes
//------------------------------------------------------------------------

/*!
    @brief  Initialization code common to all ST77XX displays
    @param  cmdList  Flash memory array with commands and data to send
*/
ST77XX_Return_e tft_st7789_startupConfig(
    tft_st7789_instance_t *inst);



//------------------------------------------------------------------------
// Public Functions
//------------------------------------------------------------------------

ST77XX_Return_e tft_st7789_init(tft_st7789_instance_t *inst, uint16_t width, uint16_t height)
{
    inst->_rowstart = 0; // inst->_rowstart2 = (int)((320 - height) / 2);
    inst->_colstart = 0; // inst->_colstart2 = (int)((240 - width) / 2);

    inst->windowWidth = width;
    inst->windowHeight = height;

    // Link HAL
    tft_hal_init((tft_hal_t *)&(inst->hal));

    // Take device out of reset
    if (inst->hal.pwrCtrl == 0)
        return ST77XX_ERROR;
    inst->hal.pwrCtrl(true);

    // Execute init commands for ST7789 screen
    if (tft_st7789_startupConfig(inst) != ST77XX_SUCCESS)
    {
        return ST77XX_ERROR;
    }

    if (tft_st7789_setRotation(inst, 0) != ST77XX_SUCCESS)
    {
        return ST77XX_ERROR;
    }

    return ST77XX_SUCCESS;
}

ST77XX_Return_e tft_st7789_setRotation(tft_st7789_instance_t *inst, uint8_t m)
{
    uint8_t madctl = 0;

    inst->rotation = m & 3; // can't be higher than 3

    switch (inst->rotation)
    {
    case 0:
        madctl = ST77XX_MADCTL_MX | ST77XX_MADCTL_MY | ST77XX_MADCTL_RGB;
        inst->xstart = inst->_colstart;
        inst->ystart = inst->_rowstart;
        inst->width = inst->windowWidth;
        inst->height = inst->windowHeight;
        break;
    case 1:
        madctl = ST77XX_MADCTL_MY | ST77XX_MADCTL_MV | ST77XX_MADCTL_RGB;
        inst->xstart = inst->_rowstart;
        inst->ystart = inst->_colstart2;
        inst->height = inst->windowWidth;
        inst->width = inst->windowHeight;
        break;
    case 2:
        madctl = ST77XX_MADCTL_RGB;
        inst->xstart = inst->_colstart2;
        inst->ystart = inst->_rowstart2;
        inst->width = inst->windowWidth;
        inst->height = inst->windowHeight;
        break;
    case 3:
        madctl = ST77XX_MADCTL_MX | ST77XX_MADCTL_MV | ST77XX_MADCTL_RGB;
        inst->xstart = inst->_rowstart2;
        inst->ystart = inst->_colstart;
        inst->height = inst->windowWidth;
        inst->width = inst->windowHeight;
        break;
    }

    if ((inst->hal.spiBegin == 0) ||
        (inst->hal.spiCmd == 0) ||
        (inst->hal.spiData8 == 0) ||
        (inst->hal.spiEnd == 0))
        return ST77XX_ERROR;

    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_MADCTL);
    inst->hal.spiData8(madctl);
    inst->hal.spiEnd();

    return ST77XX_SUCCESS;
}

ST77XX_Return_e tft_st7789_enableDisplay(tft_st7789_instance_t *inst, bool enable)
{
    if (inst->hal.spiBegin == 0)
        return ST77XX_ERROR;
    inst->hal.spiBegin();

    if (inst->hal.spiCmd == 0)
        return ST77XX_ERROR;
    inst->hal.spiCmd(enable ? ST77XX_DISPON : ST77XX_DISPOFF);

    if (inst->hal.spiEnd == 0)
        return ST77XX_ERROR;
    inst->hal.spiEnd();

    return ST77XX_SUCCESS;
}

ST77XX_Return_e tft_st7789_drawPixel(tft_st7789_instance_t *inst, int16_t x, int16_t y, uint16_t color)
{
    if ((inst->hal.spiBegin == 0) ||
        (inst->hal.spiData16 == 0) ||
        (inst->hal.spiEnd == 0))
        return ST77XX_ERROR;

    // Clip first...
    if ((x >= 0) && (x < inst->width) && (y >= 0) && (y < inst->height))
    {
        // THEN set up transaction (if needed) and draw...

        inst->hal.spiBegin();
        tft_st7789_setAddrWindow(inst, x, y, 1, 1);
        inst->hal.spiData16(color);
        inst->hal.spiEnd();

        return ST77XX_SUCCESS;
    }

    return ST77XX_ERROR;
}

ST77XX_Return_e tft_st7789_fillRect(tft_st7789_instance_t *inst, int16_t x,
                                    int16_t y, int16_t w, int16_t h, uint16_t color)
{
    ST77XX_Return_e returnResult;

    if (w && h)
    { // Nonzero width and height?
        if (w < 0)
        {               // If negative width...
            x += w + 1; //   Move X to left edge
            w = -w;     //   Use positive width
        }
        if (x < inst->width)
        { // Not off right
            if (h < 0)
            {               // If negative height...
                y += h + 1; //   Move Y to top edge
                h = -h;     //   Use positive height
            }
            if (y < inst->height)
            { // Not off bottom
                int16_t x2 = x + w - 1;
                if (x2 >= 0)
                { // Not off left
                    int16_t y2 = y + h - 1;
                    if (y2 >= 0)
                    { // Not off top
                        // Rectangle partly or fully overlaps screen
                        if (x < 0)
                        {
                            x = 0;
                            w = x2 + 1;
                        } // Clip left
                        if (y < 0)
                        {
                            y = 0;
                            h = y2 + 1;
                        } // Clip top
                        if (x2 >= inst->width)
                        {
                            w = inst->width - x;
                        } // Clip right
                        if (y2 >= inst->height)
                        {
                            h = inst->height - y;
                        } // Clip bottom

                        if (inst->hal.spiBegin == 0)
                            return ST77XX_ERROR;
                        inst->hal.spiBegin();

                        returnResult = tft_st7789_writeFillRectPreclipped(inst, x, y, w, h, color);

                        if (inst->hal.spiEnd == 0)
                            return ST77XX_ERROR;
                        inst->hal.spiEnd();

                        return returnResult;
                    }
                }
            }
        }
    }

    return ST77XX_ERROR;
}

ST77XX_Return_e tft_st7789_drawFastHLine(tft_st7789_instance_t *inst, int16_t x,
                                         int16_t y, int16_t w, uint16_t color)
{
    if ((y >= 0) && (y < inst->height) && w)
    { // Y on screen, nonzero width
        if (w < 0)
        {               // If negative width...
            x += w + 1; //   Move X to left edge
            w = -w;     //   Use positive width
        }
        if (x < inst->width)
        { // Not off right
            int16_t x2 = x + w - 1;
            if (x2 >= 0)
            { // Not off left
                // Line partly or fully overlaps screen
                if (x < 0)
                {
                    x = 0;
                    w = x2 + 1;
                } // Clip left
                if (x2 >= inst->width)
                {
                    w = inst->width - x;
                } // Clip right

                if (inst->hal.spiBegin == 0)
                    return ST77XX_ERROR;
                inst->hal.spiBegin();

                tft_st7789_writeFillRectPreclipped(inst, x, y, w, 1, color);

                if (inst->hal.spiEnd == 0)
                    return ST77XX_ERROR;
                inst->hal.spiEnd();

                return ST77XX_SUCCESS;
            }
        }
    }

    return ST77XX_ERROR;
}

ST77XX_Return_e tft_st7789_drawFastVLine(tft_st7789_instance_t *inst, int16_t x,
                                         int16_t y, int16_t h, uint16_t color)
{
    if ((x >= 0) && (x < inst->width) && h)
    { // X on screen, nonzero height
        if (h < 0)
        {               // If negative height...
            y += h + 1; //   Move Y to top edge
            h = -h;     //   Use positive height
        }
        if (y < inst->height)
        { // Not off bottom
            int16_t y2 = y + h - 1;
            if (y2 >= 0)
            { // Not off top
                // Line partly or fully overlaps screen
                if (y < 0)
                {
                    y = 0;
                    h = y2 + 1;
                } // Clip top
                if (y2 >= inst->height)
                {
                    h = inst->height - y;
                } // Clip bottom

                if (inst->hal.spiBegin == 0)
                    return ST77XX_ERROR;
                inst->hal.spiBegin();

                tft_st7789_writeFillRectPreclipped(inst, x, y, 1, h, color);

                if (inst->hal.spiEnd == 0)
                    return ST77XX_ERROR;
                inst->hal.spiEnd();

                return ST77XX_SUCCESS;
            }
        }
    }

    return ST77XX_ERROR;
}

ST77XX_Return_e tft_st7789_writeFillRectPreclipped(tft_st7789_instance_t *inst,
                                                   int16_t x, int16_t y,
                                                   int16_t w, int16_t h,
                                                   uint16_t color)
{
    ST77XX_Return_e returnResult;

    returnResult = tft_st7789_setAddrWindow(inst, x, y, w, h);
    if (returnResult != ST77XX_SUCCESS)
        return returnResult;

    returnResult = tft_st7789_writeColor(inst, color, (uint32_t)w * h);
    if (returnResult != ST77XX_SUCCESS)
        return returnResult;

    // DebugLogPrintf(__FUNCTION__, "w=%d, h=%d", w, h);

    return ST77XX_SUCCESS;
}

ST77XX_Return_e tft_st7789_fillCircle(
    tft_st7789_instance_t *inst,
    int16_t x0,
    int16_t y0,
    int16_t r,
    uint8_t corners,
    int16_t delta,
    uint16_t color)
{
    int16_t f = 1 - r;
    int16_t ddF_x = 1;
    int16_t ddF_y = -2 * r;
    int16_t x = 0;
    int16_t y = r;
    int16_t px = x;
    int16_t py = y;

    delta++; // Avoid some +1's in the loop

    // Center line
    tft_st7789_drawFastVLine(inst, x0, y0 - r, 2 * r + 1, color);

    while (x < y)
    {
        if (f >= 0)
        {
            y--;
            ddF_y += 2;
            f += ddF_y;
        }
        x++;
        ddF_x += 2;
        f += ddF_x;
        // These checks avoid double-drawing certain lines, important
        // for the SSD1306 library which has an INVERT drawing mode.
        if (x < (y + 1))
        {
            if (corners & 1)
                tft_st7789_drawFastVLine(inst, x0 + x, y0 - y, 2 * y + delta, color);
            if (corners & 2)
                tft_st7789_drawFastVLine(inst, x0 - x, y0 - y, 2 * y + delta, color);
        }
        if (y != py)
        {
            if (corners & 1)
                tft_st7789_drawFastVLine(inst, x0 + py, y0 - px, 2 * px + delta, color);
            if (corners & 2)
                tft_st7789_drawFastVLine(inst, x0 - py, y0 - px, 2 * px + delta, color);
            py = y;
        }
        px = x;
    }

    return ST77XX_SUCCESS;
}

ST77XX_Return_e tft_st7789_drawArc(
    tft_st7789_instance_t *inst,
    int16_t center_x,
    int16_t center_y,
    int16_t radius,
    int start_angle,
    int end_angle,
    uint16_t color,
    int8_t thicknessPx
)
{
    // Convert angles from degrees to radians for math functions
    float start_rad = start_angle * PI / 180.0f;
    float end_rad = end_angle * PI / 180.0f;

    // Loop over the thickness, from radius-thickness/2 to radius+thickness/2
    for (int t = 0; t <= thicknessPx; t++)
    {
        // Adjust radius for the current thickness level
        int16_t current_radius = radius - t;

        // Draw pixels along the arc by iterating over angles
        for (float angle = start_rad; angle <= end_rad; angle += 0.1f)
        {
            int16_t x = center_x + (int16_t)(current_radius * cos(angle));
            int16_t y = center_y + (int16_t)(current_radius * sin(angle));

            // Plot the pixel on the LCD
            tft_st7789_drawPixel(inst, x, y, color);
        }
    }

    return ST77XX_SUCCESS;
}

ST77XX_Return_e tft_st7789_fillArc(
    tft_st7789_instance_t *inst,
    int16_t center_x,
    int16_t center_y,
    int16_t radius,
    int start_angle,
    int end_angle,
    uint16_t color
)
{
    // Draw the filled sector
    for (int16_t angle = start_angle; angle < end_angle; angle++)
    {
        // Calculate sin and cos for the current angle
        float rad = angle * (PI / 180.0);
        int16_t cos_val = (int16_t)(cos(rad) * 1000);  // scale to avoid floating-point operations
        int16_t sin_val = (int16_t)(sin(rad) * 1000);  // scale to avoid floating-point operations

        // Draw the radial lines
        for (int16_t r = 0; r < radius; r++)
        {
            // Calculate x and y for each pixel along the radial line
            int16_t x0 = center_x + (cos_val * r) / 1000;
            int16_t y0 = center_y + (sin_val * r) / 1000;
            tft_st7789_drawPixel(inst, x0, y0, color);
        }
    }

    return ST77XX_SUCCESS;
}



ST77XX_Return_e tft_st7789_drawImage(
    tft_st7789_instance_t *inst,
    int16_t xOffset,
    int16_t yOffset,
    int16_t width,
    int16_t height,
    uint16_t *imageBuffer)
{
    // Iterate over each row of pixels (BMP images are stored bottom-to-top)
    for (int y = height - 1; y >= 0; --y)
    {
        // Iterate over each pixel in the row (BMP is stored as BGR, not RGB)
        for (int x = 0; x < width; ++x)
        {
            // Draw the pixel on the screen at the appropriate offset
            tft_st7789_drawPixel(inst,
                                 xOffset + x,                // X
                                 yOffset + (height - 1 - y), // Y
								 imageBuffer[((y * width) + x)]);
        }
    }

    return ST77XX_SUCCESS;
}

//------------------------------------------------------------------------
// Private Functions
//------------------------------------------------------------------------

ST77XX_Return_e tft_st7789_startupConfig(tft_st7789_instance_t *inst)
{
    if ((inst->hal.spiBegin == 0) ||
        (inst->hal.spiCmd == 0) ||
        (inst->hal.spiData8 == 0) ||
        (inst->hal.spiData16 == 0) ||
        (inst->hal.spiEnd == 0) ||
        (inst->hal.delay == 0))
        return ST77XX_ERROR;

    // Init commands for 7789 screens
    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_SWRESET); //  1: Software reset, no args, w/delay
    inst->hal.spiEnd();
    inst->hal.delay(150); // ~150 ms delay

    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_SLPOUT); //  2: Out of sleep mode, no args, w/delay
    inst->hal.spiEnd();
    inst->hal.delay(10); // ~10 ms delay

    // COLMOD (3Ah): Interface Pixel Format
	//    Bit Description
	//    D7 - Set to ‘0’
	//    D6, D5, D4 - RGB interface color format
	//    	‘101’ = 65K of RGB interface
	//		‘110’ = 262K of RGB interface
	//    D3 - Set to ‘0’
	//    D2, D1, D0 - Control interface color format
	//		‘011’ = 12bit/pixel
	//		‘101’ = 16bit/pixel
	//		‘110’ = 18bit/pixel
	//		‘111’ = 16M truncated
    // Note1: In 12-bit/Pixel, 16-bit/Pixel or 18-bit/Pixel mode, the LUT is applied
    // 	to transfer data into the Frame Memory.
    // Note2: The Command 3Ah should be set at 55h when writing 16-bit/pixel data into
    //	frame memory, but 3Ah should be re-set to 66h when reading pixel data from
    // 	frame memory.
    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_COLMOD); //  3: Set color mode, 1 arg + delay:
    inst->hal.spiData8(0x55);        //     16-bit color
    inst->hal.spiEnd();
    inst->hal.delay(10); // ~10 ms delay

    //  MADCTL (36h): Memory Data Access Control
	//    Bit D7- Page Address Order
	//    	“0” = Top to Bottom (When MADCTL D7=”0”).
	//    	“1” = Bottom to Top (When MADCTL D7=”1”).
	//    Bit D6- Column Address Order
	//    	“0” = Left to Right (When MADCTL D6=”0”).
	//    	“1” = Right to Left (When MADCTL D6=”1”).
	//    Bit D5- Page/Column Order
	//    	“0” = Normal Mode (When MADCTL D5=”0”).
	//    	“1” = Reverse Mode (When MADCTL D5=”1”)
	//    Note: Bits D7 to D5, alse refer to section 8.12 Address Control
	//    Bit D4- Line Address Order
	//    	“0” = LCD Refresh Top to Bottom (When MADCTL D4=”0”)
	//    	“1” = LCD Refresh Bottom to Top (When MADCTL D4=”1”)
	//    Bit D3- RGB/BGR Order
	//    	“0” = RGB (When MADCTL D3=”0”)
	//    	“1” = BGR (When MADCTL D3=”1”)
	//    Bit D2- Display Data Latch Data Order
	//    	“0” = LCD Refresh Left to Right (When MADCTL D2=”0”)
	//    	“1” = LCD Refresh Right to Left (When MADCTL D2=”1”)
    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_MADCTL); //  4: Mem access ctrl (directions), 1 arg:
    inst->hal.spiData8(0x08);        //     Row/col addr, bottom-top refresh
    inst->hal.spiEnd();

    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_CASET);   //  5: Column addr set, 4 args, no delay:
    inst->hal.spiData16(0);           //     XSTART = 0
    inst->hal.spiData16(inst->width - 1); //     XEND = 240
    inst->hal.spiEnd();

    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_RASET);    //  6: Row addr set, 4 args, no delay:
    inst->hal.spiData16(0);            //     YSTART = 0
    inst->hal.spiData16(inst->height - 1); //     YEND = 280
    inst->hal.spiEnd();

    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_INVON); //  7: hack
    inst->hal.spiEnd();
    inst->hal.delay(10); // ~10 ms delay

    inst->hal.spiBegin();
	inst->hal.spiCmd(0xC6); // attempt to increase frame rate
	inst->hal.spiData8(0x00);
	//inst->hal.spiData8(0x00);
	//inst->hal.spiData8(0x00);
	inst->hal.spiEnd();
	inst->hal.delay(10); // ~10 ms delay

    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_NORON); //  8: Normal display on, no args, w/delay
    inst->hal.spiEnd();
    inst->hal.delay(10); // ~10 ms delay

    inst->hal.spiBegin();
    inst->hal.spiCmd(ST77XX_DISPON); //  9: Main screen turn on, no args, delay
    inst->hal.spiEnd();
    inst->hal.delay(10); // ~10 ms delay

    return ST77XX_SUCCESS;
}

ST77XX_Return_e tft_st7789_setAddrWindow(tft_st7789_instance_t *inst, uint16_t x, uint16_t y, uint16_t w, uint16_t h)
{
    x += inst->xstart;
    y += inst->ystart;

    if ((inst->hal.spiBegin == 0) ||
        (inst->hal.spiCmd == 0) ||
        (inst->hal.spiData16 == 0) ||
        (inst->hal.spiEnd == 0))
        return ST77XX_ERROR;

    inst->hal.spiBegin();

    // Column addr set
    inst->hal.spiCmd(ST77XX_CASET);
    inst->hal.spiData16(x);
    inst->hal.spiData16(x + w - 1);

    // Column addr set
    inst->hal.spiCmd(ST77XX_RASET);
    inst->hal.spiData16(y);
    inst->hal.spiData16(y + h - 1);

    // write to RAM
    inst->hal.spiCmd(ST77XX_RAMWR);

    inst->hal.spiEnd();

    return ST77XX_SUCCESS;
}

ST77XX_Return_e tft_st7789_writeColor(tft_st7789_instance_t *inst, uint16_t color, uint32_t len)
{
    // could look into DMA here?
    // might only want to use this function for larger constant images stored in flash(not SD card)

    // uint16_t test[4000];
    // //memset(&test, color, len);
    // for(int i=0;i<len;i++)
    //     test[i] = color;
    // inst->hal.spiDataDma((uint8_t *) &test, len);

    if ((inst->hal.spiData16 == 0) ||
        (inst->hal.delay == 0))
        return ST77XX_ERROR;

    do
    {
        uint32_t pixelsThisPass = len;
//        if (pixelsThisPass > 256)
//        {
//            pixelsThisPass = 256;
//            inst->hal.delay(1); // Periodic delay on long fills
//        }
        len -= pixelsThisPass;
        while (pixelsThisPass--)
        {
            inst->hal.spiData16(color);
        }
    } while (len);

    return ST77XX_SUCCESS;
}
