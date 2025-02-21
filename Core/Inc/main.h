/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define B1_Pin GPIO_PIN_13
#define B1_GPIO_Port GPIOC
#define B1_EXTI_IRQn EXTI15_10_IRQn
#define USER_LED3_Pin GPIO_PIN_0
#define USER_LED3_GPIO_Port GPIOC
#define USER_BUTTON_1_Pin GPIO_PIN_1
#define USER_BUTTON_1_GPIO_Port GPIOC
#define USER_BUTTON_1_EXTI_IRQn EXTI1_IRQn
#define TFT_RST_Pin GPIO_PIN_0
#define TFT_RST_GPIO_Port GPIOA
#define TFT_BL_CTRL_Pin GPIO_PIN_1
#define TFT_BL_CTRL_GPIO_Port GPIOA
#define USART_TX_Pin GPIO_PIN_2
#define USART_TX_GPIO_Port GPIOA
#define USART_RX_Pin GPIO_PIN_3
#define USART_RX_GPIO_Port GPIOA
#define TFT_CS_Pin GPIO_PIN_4
#define TFT_CS_GPIO_Port GPIOA
#define LD2_Pin GPIO_PIN_5
#define LD2_GPIO_Port GPIOA
#define USER_BUTTON_2_Pin GPIO_PIN_6
#define USER_BUTTON_2_GPIO_Port GPIOA
#define USER_BUTTON_2_EXTI_IRQn EXTI9_5_IRQn
#define USER_BUTTON_3_Pin GPIO_PIN_7
#define USER_BUTTON_3_GPIO_Port GPIOA
#define USER_BUTTON_3_EXTI_IRQn EXTI9_5_IRQn
#define RADIO_UART_TX_Pin GPIO_PIN_4
#define RADIO_UART_TX_GPIO_Port GPIOC
#define RADIO_UART_RX_Pin GPIO_PIN_5
#define RADIO_UART_RX_GPIO_Port GPIOC
#define GNSS_PWR_CTRL_Pin GPIO_PIN_0
#define GNSS_PWR_CTRL_GPIO_Port GPIOB
#define GNSS_BKUP_PWR_CTRL_Pin GPIO_PIN_1
#define GNSS_BKUP_PWR_CTRL_GPIO_Port GPIOB
#define GNSS_ON_OFF_Pin GPIO_PIN_2
#define GNSS_ON_OFF_GPIO_Port GPIOB
#define TFT_DC_Pin GPIO_PIN_12
#define TFT_DC_GPIO_Port GPIOB
#define USER_LED2_Pin GPIO_PIN_14
#define USER_LED2_GPIO_Port GPIOB
#define USER_LED_Pin GPIO_PIN_6
#define USER_LED_GPIO_Port GPIOC
#define SD_CARD_DETECT_Pin GPIO_PIN_7
#define SD_CARD_DETECT_GPIO_Port GPIOC
#define RADIO_PWR_CTRL_Pin GPIO_PIN_8
#define RADIO_PWR_CTRL_GPIO_Port GPIOA
#define GNSS_UART_TX_Pin GPIO_PIN_9
#define GNSS_UART_TX_GPIO_Port GPIOA
#define GNSS_UART_RX_Pin GPIO_PIN_10
#define GNSS_UART_RX_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
#define SWO_Pin GPIO_PIN_3
#define SWO_GPIO_Port GPIOB
#define SAI_MUTE_Pin GPIO_PIN_8
#define SAI_MUTE_GPIO_Port GPIOB

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
