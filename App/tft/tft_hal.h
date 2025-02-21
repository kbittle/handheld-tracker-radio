#ifndef __TFT_HAL_H_
#define __TFT_HAL_H_

#include <stdint.h>
#include <stdbool.h>

typedef enum
{
    TFT_HAL_SUCCESS = 0,
    TFT_HAL_ERROR
} tft_hal_return_e;

typedef struct
{
    tft_hal_return_e (*pwrCtrl)(bool enable);
    tft_hal_return_e (*spiBegin)(void);
    tft_hal_return_e (*spiEnd)(void);
    tft_hal_return_e (*spiCmd)(uint8_t cmd);
    tft_hal_return_e (*spiData8)(uint8_t data);
    tft_hal_return_e (*spiData16)(uint16_t data);
    tft_hal_return_e (*spiData32)(uint32_t data);
    tft_hal_return_e (*spiDataDma)(uint8_t *data, uint16_t len);
    tft_hal_return_e (*delay)(uint32_t msec);
} tft_hal_t;

void tft_hal_init(tft_hal_t *hal_inst);

#endif
