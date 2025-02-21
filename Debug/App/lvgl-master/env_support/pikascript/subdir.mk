################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/env_support/pikascript/pika_lv_point_t.c \
../App/lvgl-master/env_support/pikascript/pika_lv_timer_t.c \
../App/lvgl-master/env_support/pikascript/pika_lv_wegit.c \
../App/lvgl-master/env_support/pikascript/pika_lvgl.c \
../App/lvgl-master/env_support/pikascript/pika_lvgl_indev_t.c \
../App/lvgl-master/env_support/pikascript/pika_lvgl_lv_event.c \
../App/lvgl-master/env_support/pikascript/pika_lvgl_lv_obj.c \
../App/lvgl-master/env_support/pikascript/pika_lvgl_lv_style_t.c 

OBJS += \
./App/lvgl-master/env_support/pikascript/pika_lv_point_t.o \
./App/lvgl-master/env_support/pikascript/pika_lv_timer_t.o \
./App/lvgl-master/env_support/pikascript/pika_lv_wegit.o \
./App/lvgl-master/env_support/pikascript/pika_lvgl.o \
./App/lvgl-master/env_support/pikascript/pika_lvgl_indev_t.o \
./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_event.o \
./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_obj.o \
./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_style_t.o 

C_DEPS += \
./App/lvgl-master/env_support/pikascript/pika_lv_point_t.d \
./App/lvgl-master/env_support/pikascript/pika_lv_timer_t.d \
./App/lvgl-master/env_support/pikascript/pika_lv_wegit.d \
./App/lvgl-master/env_support/pikascript/pika_lvgl.d \
./App/lvgl-master/env_support/pikascript/pika_lvgl_indev_t.d \
./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_event.d \
./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_obj.d \
./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_style_t.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/env_support/pikascript/%.o App/lvgl-master/env_support/pikascript/%.su App/lvgl-master/env_support/pikascript/%.cyclo: ../App/lvgl-master/env_support/pikascript/%.c App/lvgl-master/env_support/pikascript/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-env_support-2f-pikascript

clean-App-2f-lvgl-2d-master-2f-env_support-2f-pikascript:
	-$(RM) ./App/lvgl-master/env_support/pikascript/pika_lv_point_t.cyclo ./App/lvgl-master/env_support/pikascript/pika_lv_point_t.d ./App/lvgl-master/env_support/pikascript/pika_lv_point_t.o ./App/lvgl-master/env_support/pikascript/pika_lv_point_t.su ./App/lvgl-master/env_support/pikascript/pika_lv_timer_t.cyclo ./App/lvgl-master/env_support/pikascript/pika_lv_timer_t.d ./App/lvgl-master/env_support/pikascript/pika_lv_timer_t.o ./App/lvgl-master/env_support/pikascript/pika_lv_timer_t.su ./App/lvgl-master/env_support/pikascript/pika_lv_wegit.cyclo ./App/lvgl-master/env_support/pikascript/pika_lv_wegit.d ./App/lvgl-master/env_support/pikascript/pika_lv_wegit.o ./App/lvgl-master/env_support/pikascript/pika_lv_wegit.su ./App/lvgl-master/env_support/pikascript/pika_lvgl.cyclo ./App/lvgl-master/env_support/pikascript/pika_lvgl.d ./App/lvgl-master/env_support/pikascript/pika_lvgl.o ./App/lvgl-master/env_support/pikascript/pika_lvgl.su ./App/lvgl-master/env_support/pikascript/pika_lvgl_indev_t.cyclo ./App/lvgl-master/env_support/pikascript/pika_lvgl_indev_t.d ./App/lvgl-master/env_support/pikascript/pika_lvgl_indev_t.o ./App/lvgl-master/env_support/pikascript/pika_lvgl_indev_t.su ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_event.cyclo ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_event.d ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_event.o ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_event.su ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_obj.cyclo ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_obj.d ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_obj.o ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_obj.su ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_style_t.cyclo ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_style_t.d ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_style_t.o ./App/lvgl-master/env_support/pikascript/pika_lvgl_lv_style_t.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-env_support-2f-pikascript

