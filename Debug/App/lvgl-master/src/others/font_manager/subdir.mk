################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/others/font_manager/lv_font_manager.c \
../App/lvgl-master/src/others/font_manager/lv_font_manager_recycle.c \
../App/lvgl-master/src/others/font_manager/lv_font_manager_utils.c 

OBJS += \
./App/lvgl-master/src/others/font_manager/lv_font_manager.o \
./App/lvgl-master/src/others/font_manager/lv_font_manager_recycle.o \
./App/lvgl-master/src/others/font_manager/lv_font_manager_utils.o 

C_DEPS += \
./App/lvgl-master/src/others/font_manager/lv_font_manager.d \
./App/lvgl-master/src/others/font_manager/lv_font_manager_recycle.d \
./App/lvgl-master/src/others/font_manager/lv_font_manager_utils.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/others/font_manager/%.o App/lvgl-master/src/others/font_manager/%.su App/lvgl-master/src/others/font_manager/%.cyclo: ../App/lvgl-master/src/others/font_manager/%.c App/lvgl-master/src/others/font_manager/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-font_manager

clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-font_manager:
	-$(RM) ./App/lvgl-master/src/others/font_manager/lv_font_manager.cyclo ./App/lvgl-master/src/others/font_manager/lv_font_manager.d ./App/lvgl-master/src/others/font_manager/lv_font_manager.o ./App/lvgl-master/src/others/font_manager/lv_font_manager.su ./App/lvgl-master/src/others/font_manager/lv_font_manager_recycle.cyclo ./App/lvgl-master/src/others/font_manager/lv_font_manager_recycle.d ./App/lvgl-master/src/others/font_manager/lv_font_manager_recycle.o ./App/lvgl-master/src/others/font_manager/lv_font_manager_recycle.su ./App/lvgl-master/src/others/font_manager/lv_font_manager_utils.cyclo ./App/lvgl-master/src/others/font_manager/lv_font_manager_utils.d ./App/lvgl-master/src/others/font_manager/lv_font_manager_utils.o ./App/lvgl-master/src/others/font_manager/lv_font_manager_utils.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-font_manager

