#ifndef _SDMMC_BMP_H_
#define _SDMMC_BMP_H_

#include <stdint.h>

#pragma pack(push, 1)  // Ensure that structs are packed without padding

// BITMAPFILEHEADER
typedef struct {
    unsigned short bfType;           // File type, should be 'BM'
    unsigned int bfSize;             // Size of the file
    unsigned short bfReserved1;      // Reserved, should be 0
    unsigned short bfReserved2;      // Reserved, should be 0
    unsigned int bfOffBits;          // Offset to start of pixel data
} BITMAPFILEHEADER;

// BITMAPINFOHEADER
typedef struct {
    unsigned int biSize;             // Size of this header
    int biWidth;                     // Image width
    int biHeight;                    // Image height
    unsigned short biPlanes;         // Number of color planes, should be 1
    unsigned short biBitCount;       // Bits per pixel (e.g., 24 for RGB)
    unsigned int biCompression;      // Compression type (0 = no compression)
    unsigned int biSizeImage;        // Size of the image data
    int biXPelsPerMeter;             // Horizontal resolution (pixels per meter)
    int biYPelsPerMeter;             // Vertical resolution (pixels per meter)
    unsigned int biClrUsed;          // Number of colors used (0 means all colors)
    unsigned int biClrImportant;     // Important colors (0 means all are important)
} BITMAPINFOHEADER;

#pragma pack(pop)  // Restore default struct packing

//! Buffer big enough for a 48x48 pixel bitmap of 24bit colors
typedef struct {
	uint8_t widthPx;
	uint8_t heightPx;
    uint16_t buffer[1];//[48*48]; //4.6KB
} bitmapImgBuffer;

// TODO - maybe change this to an open file/read header, read row, and close file functions

#endif
