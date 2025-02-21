################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/drivers/display/st7735/lv_st7735.c 

OBJS += \
./App/lvgl/src/drivers/display/st7735/lv_st7735.o 

C_DEPS += \
./App/lvgl/src/drivers/display/st7735/lv_st7735.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/drivers/display/st7735/%.o App/lvgl/src/drivers/display/st7735/%.su App/lvgl/src/drivers/display/st7735/%.cyclo: ../App/lvgl/src/drivers/display/st7735/%.c App/lvgl/src/drivers/display/st7735/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-drivers-2f-display-2f-st7735

clean-App-2f-lvgl-2f-src-2f-drivers-2f-display-2f-st7735:
	-$(RM) ./App/lvgl/src/drivers/display/st7735/lv_st7735.cyclo ./App/lvgl/src/drivers/display/st7735/lv_st7735.d ./App/lvgl/src/drivers/display/st7735/lv_st7735.o ./App/lvgl/src/drivers/display/st7735/lv_st7735.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-drivers-2f-display-2f-st7735

