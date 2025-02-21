#ifndef __SD_MMC_H_
#define __SD_MMC_H_

#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#include "sdmmc_bmp.h"

typedef enum
{
    SDMMC_SUCCESS = 0,
    SDMMC_ERROR
} sdmmc_return_e;

typedef struct
{
	//! Flag indicating filesystem is mounted
    bool mounted;
    //! Flag indicating file has been opened
    bool fileOpen;
    //! Buffer to hold opened bitmaps
    bitmapImgBuffer imgBuffer;
} sdmmc_instance_t;

// Function to read bitmap file into image buffer
sdmmc_return_e sdmmc_readBitmap(sdmmc_instance_t *inst, char *filename);

sdmmc_return_e sdmmc_mountFs(sdmmc_instance_t *inst);
sdmmc_return_e sdmmc_openFile(sdmmc_instance_t *inst, const char *filename);
sdmmc_return_e sdmmc_readBitmapHdr(sdmmc_instance_t *inst, uint8_t *widthPx, uint8_t *heightPx);
sdmmc_return_e sdmmc_readBitmapRow(sdmmc_instance_t *inst, uint8_t *buffer);
sdmmc_return_e sdmmc_closeFile(sdmmc_instance_t *inst);
sdmmc_return_e sdmmc_unmountFs(sdmmc_instance_t *inst);

void PlayAudioFileTest(void);

void fs_test();

void fs_test2();

#endif
