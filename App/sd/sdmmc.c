#include "sdmmc.h"
#include "main.h"
#include "fatfs.h"
#include "logging.h"
#include "audio.h"

extern osMutexId_t sdCardAccessLockHandle;

extern SAI_HandleTypeDef hsai_BlockA1;
extern DMA_HandleTypeDef hdma_sai1_a;

#define DMA_TX_CNT 256

// Attempting to double buffer the SAI
static uint8_t audioBuffer1[DMA_TX_CNT] = { 0 };
static uint8_t audioBuffer2[DMA_TX_CNT] = { 0 };
static int activeAudioBuffer = 0;
static bool txComplete = false;
extern volatile bool dmaComplete;

void PlayAudioFileTest(void) {
	FRESULT res;

	osMutexAcquire(sdCardAccessLockHandle, osWaitForever);
	DebugLogPrintf(__FUNCTION__, "start");

	// mount the default drive
	res = f_mount(&SDFatFS, (TCHAR const*) SDPath, 0);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_mount() failed, res = %d", res);
		return;
	}

	DebugLogPrintf(__FUNCTION__, "f_mount() done!");

	// Open file for writing (Create)
	// res = f_open(&SDFile, "/music/love_letters.wav", FA_OPEN_EXISTING | FA_READ); // 32KHz
	res = f_open(&SDFile, "/music/Audio Sample.wav",
	FA_OPEN_EXISTING | FA_READ);
	// res = f_open(&SDFile, "/music/Scifi.wav", FA_OPEN_EXISTING | FA_READ);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_open error = %d", res);
		// Error_Handler();
		return;
	}

	DebugLogPrintf(__FUNCTION__, "f_open() done!");

	// Read audio data into audio_data buffer in chunks
	uint32_t bytesRead = 0;

	// Skip the WAV header (44 bytes for standard PCM WAV)
	uint8_t header[44];
	res = f_read(&SDFile, header, sizeof(header), (UINT*) &bytesRead);
	if (res != FR_OK || bytesRead != sizeof(header)) {
		DebugLogPrintf(__FUNCTION__, "Error reading WAV header");
		f_close(&SDFile);
		f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
		osMutexRelease(sdCardAccessLockHandle);
		return;
	}

	// Print WAV header fields
	printWavHeader(header);

	txComplete = false;
	dmaComplete = true;

	activeAudioBuffer = 1;
	res = f_read(&SDFile, &audioBuffer1, DMA_TX_CNT, (UINT*) &bytesRead);
	if (res != FR_OK || bytesRead == 0) {
		// If no more data is read, stop playing
		DebugLogPrintf(__FUNCTION__, "End of file reached or error: %d", res);
		f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
		osMutexRelease(sdCardAccessLockHandle);
		return;
	}

	while (!txComplete) {
		if (dmaComplete) {
			dmaComplete = false;

			HAL_StatusTypeDef stat = HAL_SAI_Transmit_DMA(&hsai_BlockA1,
					activeAudioBuffer == 1 ?
							(uint8_t*) &audioBuffer1 : (uint8_t*) &audioBuffer2,
					DMA_TX_CNT);
			if (stat != HAL_OK) {
				HAL_SAI_DMAStop(&hsai_BlockA1);

				HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);

				DebugLogPrintf(__FUNCTION__, "error status = %d, code = %d",
						stat, HAL_DMA_GetError(hsai_BlockA1.hdmatx)); // HAL_DMA_GetError(haudio_out_sai.hdmatx));

				txComplete = true;
			}

			if (activeAudioBuffer == 1) {
				res = f_read(&SDFile, &audioBuffer2, DMA_TX_CNT,
						(UINT*) &bytesRead);
				activeAudioBuffer = 2;
			} else {
				res = f_read(&SDFile, &audioBuffer1, DMA_TX_CNT,
						(UINT*) &bytesRead);
				activeAudioBuffer = 1;
			}
			if (res != FR_OK || bytesRead == 0) {
				// If no more data is read, stop playing
				DebugLogPrintf(__FUNCTION__, "End of file reached or error: %d",
						res);
				txComplete = true;
				break;
			}
		}
		osDelay(1);
	}

	DebugLogPrintf(__FUNCTION__, "tx complete");

	HAL_SAI_DMAStop(&hsai_BlockA1);

	// Unmount
	res = f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
	osMutexRelease(sdCardAccessLockHandle);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "Unmount failed, res = %d", res);
		return;
	}
}

void fs_test() {
	FRESULT res; /* FatFs function common result code */
	uint32_t byteswritten; /* File write/read counts */
	uint8_t wtext[] = "STM32 FATFS works great!"; /* File write buffer */
	uint8_t rtext[_MAX_SS]; /* File read buffer */

	DebugLogPrintf(__FUNCTION__, "start");
	if (f_mount(&SDFatFS, (TCHAR const*) SDPath, 0) != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_mount error");
		// Error_Handler();
	} else {
		DebugLogPrintf(__FUNCTION__, "f_mount success");
		res = f_mkfs((TCHAR const*) SDPath, FM_ANY, 0, rtext, sizeof(rtext));
		if (res != FR_OK) {
			DebugLogPrintf(__FUNCTION__, "f_mkfs error = %d", res);
			// Error_Handler();
		}
		// else
		{
			// Open file for writing (Create)
			res = f_open(&SDFile, "STM32.TXT", FA_CREATE_ALWAYS | FA_WRITE);
			// res = f_open(&SDFile, "test.txt", FA_CREATE_ALWAYS | FA_WRITE);
			if (res != FR_OK) {
				DebugLogPrintf(__FUNCTION__, "f_open error = %d", res);
				// Error_Handler();
			} else {
				DebugLogPrintf(__FUNCTION__, "f_open success");
				// Write to the text file
				res = f_write(&SDFile, wtext, strlen((char*) wtext),
						(void*) &byteswritten);
				if ((byteswritten == 0) || (res != FR_OK)) {
					DebugLogPrintf(__FUNCTION__, "f_write error");
					// Error_Handler();
				} else {

					f_close(&SDFile);
				}
			}
		}
	}
	f_mount(&SDFatFS, (TCHAR const*) NULL, 0);
	DebugLogPrintf(__FUNCTION__, "end");
}

void fs_test2() {
	FATFS fs;
	FRESULT res;
	DebugLogPrintf(__FUNCTION__, "Ready!");

	// mount the default drive
	res = f_mount(&fs, "", 0);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_mount() failed, res = %d", res);
		return;
	}

	DebugLogPrintf(__FUNCTION__, "f_mount() done!");

	uint32_t freeClust;
	FATFS *fs_ptr = &fs;
	res = f_getfree("", &freeClust, &fs_ptr); // Warning! This fills fs.n_fatent and fs.csize!
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_getfree() failed, res = %d", res);
		return;
	}

	DebugLogPrintf(__FUNCTION__, "f_getfree() done!");

	uint32_t totalBlocks = (fs.n_fatent - 2) * fs.csize;
	uint32_t freeBlocks = freeClust * fs.csize;

	DebugLogPrintf(__FUNCTION__, "Total blocks: %lu (%lu Mb)", totalBlocks,
			totalBlocks / 2000);
	DebugLogPrintf(__FUNCTION__, "Free blocks: %lu (%lu Mb)", freeBlocks,
			freeBlocks / 2000);

	DIR dir;
	res = f_opendir(&dir, "/");
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_opendir() failed, res = %d", res);
		return;
	}

	FILINFO fileInfo;
	uint32_t totalFiles = 0;
	uint32_t totalDirs = 0;
	DebugLogPrintf(__FUNCTION__, "--------");
	DebugLogPrintf(__FUNCTION__, "Root directory:");
	for (;;) {
		res = f_readdir(&dir, &fileInfo);
		if ((res != FR_OK) || (fileInfo.fname[0] == '\0')) {
			break;
		}

		if (fileInfo.fattrib & AM_DIR) {
			DebugLogPrintf(__FUNCTION__, "  DIR  %s", fileInfo.fname);
			totalDirs++;
		} else {
			DebugLogPrintf(__FUNCTION__, "  FILE %s", fileInfo.fname);
			totalFiles++;
		}
	}

	DebugLogPrintf(__FUNCTION__, "(total: %lu dirs, %lu files)", totalDirs,
			totalFiles);

	res = f_closedir(&dir);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_closedir() failed, res = %d", res);
		return;
	}

	DebugLogPrintf(__FUNCTION__, "Writing to log.txt...");

	char writeBuff[128];
	snprintf(writeBuff, sizeof(writeBuff),
			"Total blocks: %lu (%lu Mb); Free blocks: %lu (%lu Mb)",
			totalBlocks, totalBlocks / 2000, freeBlocks, freeBlocks / 2000);

	FIL logFile;
	res = f_open(&logFile, "log.txt", FA_OPEN_APPEND | FA_WRITE);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_open() failed, res = %d", res);
		return;
	}

	unsigned int bytesToWrite = strlen(writeBuff);
	unsigned int bytesWritten;
	res = f_write(&logFile, writeBuff, bytesToWrite, &bytesWritten);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_write() failed, res = %d", res);
		return;
	}

	if (bytesWritten < bytesToWrite) {
		DebugLogPrintf(__FUNCTION__,
				"WARNING! Disk is full, bytesToWrite = %lu, bytesWritten = %lu",
				bytesToWrite, bytesWritten);
	}

	res = f_close(&logFile);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_close() failed, res = %d", res);
		return;
	}

	DebugLogPrintf(__FUNCTION__, "Reading file...");
	FIL msgFile;
	res = f_open(&msgFile, "log.txt", FA_READ);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_open() failed, res = %d", res);
		return;
	}

	char readBuff[128];
	unsigned int bytesRead;
	res = f_read(&msgFile, readBuff, sizeof(readBuff) - 1, &bytesRead);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_read() failed, res = %d", res);
		return;
	}

	readBuff[bytesRead] = '\0';
	DebugLogPrintf(__FUNCTION__, "```\r\n%s\r\n```", readBuff);

	res = f_close(&msgFile);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "f_close() failed, res = %d", res);
		return;
	}

	// Unmount
	res = f_mount(NULL, "", 0);
	if (res != FR_OK) {
		DebugLogPrintf(__FUNCTION__, "Unmount failed, res = %d", res);
		return;
	}

	DebugLogPrintf(__FUNCTION__, "Done!");
}
