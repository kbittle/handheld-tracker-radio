#include "tft_hal.h"
#include "main.h"
#include "cmsis_os.h"

extern SPI_HandleTypeDef hspi2;

//------------------------------------------------------------------------
// Private prototypes
//------------------------------------------------------------------------

static tft_hal_return_e tft_pwr_ctrl(bool enable);
static tft_hal_return_e tft_cs_begin(void);
static tft_hal_return_e tft_cs_end(void);

static tft_hal_return_e tft_sendCommand(uint8_t cmd);
static tft_hal_return_e tft_sendData8(uint8_t data);
static tft_hal_return_e tft_sendData16(uint16_t data);
static tft_hal_return_e tft_sendData32(uint32_t data);
static tft_hal_return_e tft_sendDataDma(uint8_t *data, uint16_t len);

static tft_hal_return_e tft_delay(uint32_t msec);

//------------------------------------------------------------------------
// Public Functions
//------------------------------------------------------------------------

void tft_hal_init(tft_hal_t *inst)
{
    // Setup HAL function pointers
    inst->pwrCtrl = &tft_pwr_ctrl;
    inst->spiBegin = &tft_cs_begin;
    inst->spiEnd = &tft_cs_end;
    inst->spiCmd = &tft_sendCommand;
    inst->spiData8 = &tft_sendData8;
    inst->spiData16 = &tft_sendData16;
    inst->spiData32 = &tft_sendData32;
    inst->spiDataDma = &tft_sendDataDma;
    inst->delay = &tft_delay;

    // Keep CS always enabled
    HAL_GPIO_WritePin(TFT_CS_GPIO_Port, TFT_CS_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(TFT_BL_CTRL_GPIO_Port, TFT_BL_CTRL_Pin, GPIO_PIN_SET);
}

//------------------------------------------------------------------------
// Private Functions
//------------------------------------------------------------------------

static tft_hal_return_e tft_pwr_ctrl(bool enable)
{
    HAL_GPIO_WritePin(TFT_RST_GPIO_Port, TFT_RST_Pin, GPIO_PIN_RESET);

    if (enable)
    {
        HAL_GPIO_WritePin(TFT_RST_GPIO_Port, TFT_RST_Pin, GPIO_PIN_SET);
        //HAL_Delay(100);
        osDelay(100);
    }

    return TFT_HAL_SUCCESS;
}

static tft_hal_return_e tft_cs_begin(void)
{
    // Enabling chip select breaks the screen
    //HAL_GPIO_WritePin(TFT_CS_GPIO_Port, TFT_CS_Pin, GPIO_PIN_RESET);
    //HAL_Delay(10);

	return TFT_HAL_SUCCESS;
}

static tft_hal_return_e tft_cs_end(void)
{    
    // Enabling chip select breaks the screen
    //HAL_Delay(10);
    //HAL_GPIO_WritePin(TFT_CS_GPIO_Port, TFT_CS_Pin, GPIO_PIN_SET);

	return TFT_HAL_SUCCESS;
}

static tft_hal_return_e tft_sendCommand(uint8_t cmd)
{
	// DC line - Command = 0
    HAL_GPIO_WritePin(TFT_DC_GPIO_Port, TFT_DC_Pin, GPIO_PIN_RESET);

    HAL_StatusTypeDef respStat = HAL_SPI_Transmit(&hspi2, (uint8_t *)&cmd, 1, HAL_MAX_DELAY);
    if (respStat != HAL_OK)
    {
        return TFT_HAL_ERROR;
    }

    // DC line - Data = 1
    HAL_GPIO_WritePin(TFT_DC_GPIO_Port, TFT_DC_Pin, GPIO_PIN_SET);

    return TFT_HAL_SUCCESS;
}

static tft_hal_return_e tft_sendData8(uint8_t data)
{
    HAL_StatusTypeDef respStat = HAL_SPI_Transmit(&hspi2, (uint8_t *)&data, 1, HAL_MAX_DELAY);
    if (respStat != HAL_OK)
    {
        return TFT_HAL_ERROR;
    }

    return TFT_HAL_SUCCESS;
}

static tft_hal_return_e tft_sendData16(uint16_t data)
{
    uint8_t u8buff[2];
    u8buff[0] = data >> 8;
    u8buff[1] = data & 0xff;

    HAL_StatusTypeDef respStat = HAL_SPI_Transmit(&hspi2, (uint8_t *)&u8buff, 2, HAL_MAX_DELAY);
    if (respStat != HAL_OK)
    {
        return TFT_HAL_ERROR;
    }

    return TFT_HAL_SUCCESS;
}

static tft_hal_return_e tft_sendData32(uint32_t data)
{
    uint8_t u8buff[4];
    u8buff[0] = data >> 24;
    u8buff[1] = data >> 16;
    u8buff[2] = data >> 8;
    u8buff[3] = data & 0xff;

    HAL_StatusTypeDef respStat = HAL_SPI_Transmit(&hspi2, (uint8_t *)&u8buff, 4, HAL_MAX_DELAY);
    if (respStat != HAL_OK)
    {
        return TFT_HAL_ERROR;
    }

    return TFT_HAL_SUCCESS;
}

static tft_hal_return_e tft_sendDataDma(uint8_t *data, uint16_t len)
{
    HAL_StatusTypeDef respStat = HAL_SPI_Transmit_DMA(&hspi2, data, len);
    if (respStat != HAL_OK)
    {
        return TFT_HAL_ERROR;
    }

    return TFT_HAL_SUCCESS;
}

static tft_hal_return_e tft_delay(uint32_t msec)
{
    osDelay(msec);
    return TFT_HAL_SUCCESS;
}
