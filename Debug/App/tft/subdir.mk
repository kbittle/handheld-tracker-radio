################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/tft/tft_hal.c \
../App/tft/tft_st7789.c \
../App/tft/tft_st7789_text.c 

OBJS += \
./App/tft/tft_hal.o \
./App/tft/tft_st7789.o \
./App/tft/tft_st7789_text.o 

C_DEPS += \
./App/tft/tft_hal.d \
./App/tft/tft_st7789.d \
./App/tft/tft_st7789_text.d 


# Each subdirectory must supply rules for building sources it contributes
App/tft/%.o App/tft/%.su App/tft/%.cyclo: ../App/tft/%.c App/tft/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-tft

clean-App-2f-tft:
	-$(RM) ./App/tft/tft_hal.cyclo ./App/tft/tft_hal.d ./App/tft/tft_hal.o ./App/tft/tft_hal.su ./App/tft/tft_st7789.cyclo ./App/tft/tft_st7789.d ./App/tft/tft_st7789.o ./App/tft/tft_st7789.su ./App/tft/tft_st7789_text.cyclo ./App/tft/tft_st7789_text.d ./App/tft/tft_st7789_text.o ./App/tft/tft_st7789_text.su

.PHONY: clean-App-2f-tft

