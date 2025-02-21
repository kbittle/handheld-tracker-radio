#include "sdmmc_bmp.h"
#include "sdmmc.h"
#include "main.h"
#include "fatfs.h"
#include "logging.h"

extern osMutexId_t sdCardAccessLockHandle;

//------------------------------------------------------------------------
// Private prototypes
//------------------------------------------------------------------------

unsigned short convert24to16(unsigned char r, unsigned char g, unsigned char b);

//------------------------------------------------------------------------
// Public Functions
//------------------------------------------------------------------------

sdmmc_return_e sdmmc_readBitmap(sdmmc_instance_t *inst, char *filename) {
	FRESULT res;

	osMutexAcquire(sdCardAccessLockHandle, osWaitForever);

	DebugLogPrintf(__FUNCTION__, "Opening %s", filename);

	if (!inst->mounted) {
		// mount the default drive
		res = f_mount(&SDFatFS, "", 0);
		if (res != FR_OK) {
			DebugLogPrintf(__FUNCTION__, "f_mount() failed, res = %d", res);
			osMutexRelease(sdCardAccessLockHandle);
			return SDMMC_ERROR;
		}

		inst->mounted = true;
	}

	// Open file for reading
	res = f_open(&SDFile, filename, FA_OPEN_EXISTING | FA_READ);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_open error = %d", res);
		f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
		inst->mounted = false;
		osMutexRelease(sdCardAccessLockHandle);
		return SDMMC_ERROR;
	}

	// Read the file header
	BITMAPFILEHEADER fileHeader;
	res = f_read(&SDFile, &fileHeader, sizeof(BITMAPFILEHEADER), NULL);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "Error reading bitmap header");
		f_close(&SDFile);
		f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
		inst->mounted = false;
		osMutexRelease(sdCardAccessLockHandle);
		return SDMMC_ERROR;
	}

	// Check if the file is a valid BMP file
	if (fileHeader.bfType != 0x4D42) { // 'BM' in hexadecimal
		DebugLogPrintf(__FUNCTION__, "Error: Not a valid BMP file.");
		f_close(&SDFile);
		f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
		inst->mounted = false;
		osMutexRelease(sdCardAccessLockHandle);
		return SDMMC_ERROR;
	}

	// Read the info header
	BITMAPINFOHEADER infoHeader;
	res = f_read(&SDFile, &infoHeader, sizeof(BITMAPINFOHEADER), NULL);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "Error reading bitmap info header");
		f_close(&SDFile);
		f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
		inst->mounted = false;
		osMutexRelease(sdCardAccessLockHandle);
		return SDMMC_ERROR;
	}

	if (infoHeader.biBitCount != 24) {
		DebugLogPrintf(__FUNCTION__,
				"Error we only support 24bit pixel bitmap files");
		f_close(&SDFile);
		f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
		inst->mounted = false;
		osMutexRelease(sdCardAccessLockHandle);
		return SDMMC_ERROR;
	}

	// Store w/h
	inst->imgBuffer.widthPx = infoHeader.biWidth;
	inst->imgBuffer.heightPx = infoHeader.biHeight;

	// Print information about the BMP file
	// DebugLogPrintf(__FUNCTION__, "Size of the file: %d", fileHeader.bfSize);
	// DebugLogPrintf(__FUNCTION__, "Width: %d pixels", infoHeader.biWidth);
	// DebugLogPrintf(__FUNCTION__, "Height: %d pixels", infoHeader.biHeight);
	// DebugLogPrintf(__FUNCTION__, "Bit Depth: %d", infoHeader.biBitCount);
	// DebugLogPrintf(__FUNCTION__, "Compression: %u", infoHeader.biCompression);
	// DebugLogPrintf(__FUNCTION__, "Image Size: %u bytes", infoHeader.biSizeImage);

	// Move the file pointer to the beginning of pixel data
	res = f_lseek(&SDFile, fileHeader.bfOffBits);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "Error f_lseek");
		f_close(&SDFile);
		f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
		inst->mounted = false;
		osMutexRelease(sdCardAccessLockHandle);
		return SDMMC_ERROR;
	}

	// Read the pixel data and convert from 24bit to 16bit
	for (int row = 0; row < infoHeader.biHeight; row++) {
		uint32_t rowSize = infoHeader.biWidth * 3;
		uint8_t rowData[rowSize];
		res = f_read(&SDFile, &rowData, rowSize, NULL);
		if (res != FR_OK) {
			DebugLogPrintf(__FUNCTION__, "Error reading bitmap pixel data");
			f_close(&SDFile);
			f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
			inst->mounted = false;
			osMutexRelease(sdCardAccessLockHandle);
			return SDMMC_ERROR;
		}

		for (int col = 0; col < infoHeader.biWidth; col++) {
			unsigned char blue = rowData[col * 3];
			unsigned char green = rowData[(col * 3) + 1];
			unsigned char red = rowData[(col * 3) + 2];

			// Convert the 24-bit RGB pixel to 16-bit color
			unsigned short color16 = convert24to16(red, green, blue);

			// Store converted pixel color
			inst->imgBuffer.buffer[(row * infoHeader.biWidth) + col] = color16;
		}
	}

	f_close(&SDFile);
	f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
	inst->mounted = false;
	osMutexRelease(sdCardAccessLockHandle);

	return SDMMC_SUCCESS;
}

// Function to convert a 24-bit RGB pixel to a 16-bit RGB (5-6-5) pixel
unsigned short convert24to16(unsigned char r, unsigned char g, unsigned char b) {
	// Red (8-bit -> 5-bit)
	unsigned short red = (r >> 3) & 0x1F; // 5 bits for red
	// Green (8-bit -> 6-bit)
	unsigned short green = (g >> 2) & 0x3F; // 6 bits for green
	// Blue (8-bit -> 5-bit)
	unsigned short blue = (b >> 3) & 0x1F; // 5 bits for blue

	// Combine into a 16-bit value (5-6-5 format)
	unsigned short pixel16 = (red << 11) | (green << 5) | blue;

	return pixel16;
}
