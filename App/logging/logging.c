#include "logging.h"
#include "main.h"
#include "cmsis_os.h"

// The USART2 interface available on PA2 and PA3 of the STM32 microcontroller 
// can be connected to ST-LINK MCU.
extern UART_HandleTypeDef huart2;

extern osMutexId_t debugLockHandle;

#define LOG_BUFFER_SIZE 256
static char dbgBuf[LOG_BUFFER_SIZE];

void DebugLogPrintf(const char *function, const char *format, ...)
{
    osMutexAcquire(debugLockHandle, osWaitForever);

    va_list argptr;
    // Start argument list processing
    va_start(argptr, format);
    // Include the function name in the log string and ensure buffer space is enough
    int cnt = snprintf(dbgBuf, LOG_BUFFER_SIZE, "%s: ", function);
    // Ensure that the snprintf result is not larger than buffer size
    if (cnt >= LOG_BUFFER_SIZE) {
        dbgBuf[LOG_BUFFER_SIZE - 1] = '\0';  // Ensure null termination in case of overflow
    }

    // Append the formatted log message to the buffer
    int remaining = LOG_BUFFER_SIZE - cnt;
    cnt += vsnprintf(dbgBuf + cnt, remaining, format, argptr);
    va_end(argptr);

    // Check for overflow in vsnprintf
    if (cnt >= LOG_BUFFER_SIZE) {
        dbgBuf[LOG_BUFFER_SIZE - 1] = '\0';  // Ensure null termination in case of overflow
    }
    else {
    	// Add new line
    	dbgBuf[cnt++] = '\r';
    	dbgBuf[cnt++] = '\n';
    }

    // Send the log message via UART, transmit all at once
    uint16_t bytesSent = 0;
    while (bytesSent < cnt) {
        uint16_t bytesToSend = (cnt - bytesSent < 64) ? (cnt - bytesSent) : 64; // Send in chunks of 64 bytes
        HAL_UART_Transmit(&huart2, (uint8_t *)&dbgBuf[bytesSent], bytesToSend, 1000);
        bytesSent += bytesToSend;
    }

    osMutexRelease(debugLockHandle);
}

