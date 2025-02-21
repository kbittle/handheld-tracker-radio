#include "audio.h"
#include "main.h"
#include "logging.h"
#include <stdbool.h>
#include <math.h>
#include "app.h" // for constants

extern SAI_HandleTypeDef hsai_BlockA1;
extern DMA_HandleTypeDef hdma_sai1_a;

//#define SAI_BUFFER_SIZE (46876)
#define SAI_BUFFER_SIZE (100)
// #define SAI_BUFFER_SIZE (20000)
static uint16_t audio_data[SAI_BUFFER_SIZE] = {0};

static int tx_idx = 0;
#define DMA_TX_CNT 256

static bool txComplete = false;
extern volatile bool dmaComplete;


#define AMPLITUDE 32767 // Amplitude for sine wave (half of 65535 for full range)
#define FREQUENCY 440   // Frequency in Hz (e.g., 440 Hz for A4 note)
// #define FREQUENCY 523        // middle c 523 Hz
#define SAMPLING_RATE 32000U // Sampling rate (samples per second)

void populate_sine_wave(uint16_t *audio_data)
{
    // Time step per sample (1 / sampling rate)
    double time_step = 1.0 / SAMPLING_RATE;

    // Fill the audio_data buffer with sine wave samples
    for (int i = 0; i < SAI_BUFFER_SIZE; i++)
    {
        // Calculate the time at this sample index
        double time = i * time_step;

        // Generate sine wave value and scale to uint16_t range
        double sine_value = AMPLITUDE * sin(2 * PI * FREQUENCY * time);

        // Convert to uint16_t and store in the buffer
        audio_data[i] = (uint16_t)(sine_value + AMPLITUDE); // To shift sine wave to positive values
        audio_data[i + 1] = 0;
        i++;
    }
}

// Function to play audio data
void PlayAudio(void)
{

    populate_sine_wave(&audio_data);

    DebugLogPrintf(__FUNCTION__, "Buffer loaded, sampsize=%d", SAI_BUFFER_SIZE);

    DebugLogPrintf(__FUNCTION__, "tx start");

    // Load PCM audio data into buffer
    // For this demo, we assume we have PCM data available. In a real project,
    // you'd either read this from an SD card or from memory.

    if (HAL_DMA_GetState(hsai_BlockA1.hdmatx) != HAL_DMA_STATE_READY)
    {
        DebugLogPrintf(__FUNCTION__, "state = %d", HAL_DMA_GetState(hsai_BlockA1.hdmatx));
        return;
    }
    txComplete = false;
    dmaComplete = true;
    tx_idx = 0;

    while (!txComplete)
    {
        if (dmaComplete)
        {
            dmaComplete = false;

            // Start transmitting audio data using DMA (optional)
            // HAL_StatusTypeDef stat = HAL_SAI_Transmit_DMA(&haudio_out_sai, (uint8_t *)audio_data, sizeof(audio_data) / sizeof(uint16_t));
            // HAL_StatusTypeDef stat = HAL_SAI_Transmit(&haudio_out_sai, (uint8_t *)audio_data, sizeof(audio_data) / sizeof(uint16_t), HAL_MAX_DELAY);
            HAL_StatusTypeDef stat = HAL_SAI_Transmit_DMA(&hsai_BlockA1, (uint8_t *)&audio_data[tx_idx], DMA_TX_CNT);
            if (stat != HAL_OK)
            {
                HAL_SAI_DMAStop(&hsai_BlockA1);

                HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
                // Error_Handler(); // Transmission failed

                DebugLogPrintf(__FUNCTION__, "error status = %d, code = %d",
                               stat, HAL_DMA_GetError(hsai_BlockA1.hdmatx)); // HAL_DMA_GetError(haudio_out_sai.hdmatx));
            }

            if (tx_idx >= SAI_BUFFER_SIZE)
            {
                txComplete = true;
            }
            tx_idx += DMA_TX_CNT;
        }
    }

    DebugLogPrintf(__FUNCTION__, "tx complete");

    /* Enable SAI peripheral to generate MCLK */
    // __HAL_SAI_DISABLE(&haudio_out_sai);
    HAL_SAI_DMAStop(&hsai_BlockA1);
}

void printWavHeader(uint8_t *header) 
{
    // Printing out WAV header fields

    // RIFF Chunk ID
    DebugLogPrintf(__FUNCTION__, "RIFF Chunk ID: %.4s", &header[0]);

    // RIFF Chunk Size (Little Endian)
    uint32_t riffChunkSize = *(uint32_t*)&header[4];
    DebugLogPrintf(__FUNCTION__, "RIFF Chunk Size: %u", riffChunkSize);

    // WAVE format
    DebugLogPrintf(__FUNCTION__, "WAVE Format: %.4s", &header[8]);

    // FMT Chunk ID
    DebugLogPrintf(__FUNCTION__, "FMT Chunk ID: %.4s", &header[12]);

    // FMT Chunk Size
    uint32_t fmtChunkSize = *(uint32_t*)&header[16];
    DebugLogPrintf(__FUNCTION__, "FMT Chunk Size: %u", fmtChunkSize);

    // Audio Format
    uint16_t audioFormat = *(uint16_t*)&header[20];
    DebugLogPrintf(__FUNCTION__, "Audio Format: %u", audioFormat);

    // Number of Channels
    uint16_t numChannels = *(uint16_t*)&header[22];
    DebugLogPrintf(__FUNCTION__, "Number of Channels: %u", numChannels);

    // Sample Rate
    uint32_t sampleRate = *(uint32_t*)&header[24];
    DebugLogPrintf(__FUNCTION__, "Sample Rate: %u", sampleRate);

    // Byte Rate
    uint32_t byteRate = *(uint32_t*)&header[28];
    DebugLogPrintf(__FUNCTION__, "Byte Rate: %u", byteRate);

    // Block Align
    uint16_t blockAlign = *(uint16_t*)&header[32];
    DebugLogPrintf(__FUNCTION__, "Block Align: %u", blockAlign);

    // Bits per Sample
    uint16_t bitsPerSample = *(uint16_t*)&header[34];
    DebugLogPrintf(__FUNCTION__, "Bits per Sample: %u", bitsPerSample);

    // Data Chunk ID
    DebugLogPrintf(__FUNCTION__, "Data Chunk ID: %.4s", &header[36]);

    // Data Chunk Size
    uint32_t dataChunkSize = *(uint32_t*)&header[40];
    DebugLogPrintf(__FUNCTION__, "Data Chunk Size: %u", dataChunkSize);
}
