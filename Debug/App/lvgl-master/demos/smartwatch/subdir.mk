################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch.c \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_control.c \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_easter_egg.c \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_home.c \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_list.c \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_notifications.c \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_qr.c \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_settings.c \
../App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_weather.c 

OBJS += \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch.o \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_control.o \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_easter_egg.o \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_home.o \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_list.o \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_notifications.o \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_qr.o \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_settings.o \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_weather.o 

C_DEPS += \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch.d \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_control.d \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_easter_egg.d \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_home.d \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_list.d \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_notifications.d \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_qr.d \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_settings.d \
./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_weather.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/demos/smartwatch/%.o App/lvgl-master/demos/smartwatch/%.su App/lvgl-master/demos/smartwatch/%.cyclo: ../App/lvgl-master/demos/smartwatch/%.c App/lvgl-master/demos/smartwatch/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-demos-2f-smartwatch

clean-App-2f-lvgl-2d-master-2f-demos-2f-smartwatch:
	-$(RM) ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch.su ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_control.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_control.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_control.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_control.su ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_easter_egg.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_easter_egg.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_easter_egg.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_easter_egg.su ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_home.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_home.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_home.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_home.su ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_list.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_list.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_list.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_list.su ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_notifications.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_notifications.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_notifications.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_notifications.su ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_qr.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_qr.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_qr.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_qr.su ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_settings.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_settings.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_settings.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_settings.su ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_weather.cyclo ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_weather.d ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_weather.o ./App/lvgl-master/demos/smartwatch/lv_demo_smartwatch_weather.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-demos-2f-smartwatch

