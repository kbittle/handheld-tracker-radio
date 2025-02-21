################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/draw/sw/blend/lv_draw_sw_blend.c \
../App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.c \
../App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.c \
../App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.c 

OBJS += \
./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o \
./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o \
./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o \
./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o 

C_DEPS += \
./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d \
./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d \
./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d \
./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/draw/sw/blend/%.o App/lvgl/src/draw/sw/blend/%.su App/lvgl/src/draw/sw/blend/%.cyclo: ../App/lvgl/src/draw/sw/blend/%.c App/lvgl/src/draw/sw/blend/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

clean-App-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend:
	-$(RM) ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend.cyclo ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend.d ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend.o ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend.su ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.cyclo ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.d ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.o ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_argb8888.su ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.cyclo ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.d ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.o ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb565.su ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.cyclo ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.d ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.o ./App/lvgl/src/draw/sw/blend/lv_draw_sw_blend_to_rgb888.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend

