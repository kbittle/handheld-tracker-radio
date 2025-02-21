#include "main.h"
#include "logging.h"
#include "audio.h"
#include "sdmmc.h"
#include "sdmmc_bmp.h"
#include "app.h"

volatile bool dmaComplete;

void main_app_setup(void)
{
    DebugLogPrintf(__FUNCTION__, "Begin");

    //osDelay(10000);

    //fs_test2(); this is taking lots of stack???
    //PlayAudio();
    //PlayAudioFileTest();


    DebugLogPrintf(__FUNCTION__, "End");
}

void main_app_update(void)
{
	//DebugLogPrintf(__FUNCTION__, "Loop");

	//HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
	//osDelay(1000);

	HAL_GPIO_TogglePin(USER_LED_GPIO_Port, USER_LED_Pin);
	osDelay(200);
	HAL_GPIO_TogglePin(USER_LED2_GPIO_Port, USER_LED2_Pin);
	osDelay(200);
	HAL_GPIO_TogglePin(USER_LED3_GPIO_Port, USER_LED3_Pin);
	osDelay(200);

}

void HAL_SAI_TxHalfCpltCallback(SAI_HandleTypeDef *hsai)
{
	//dmaComplete = true;
}

void HAL_SAI_TxCpltCallback(SAI_HandleTypeDef *hsai)
{
	dmaComplete = true;
}

