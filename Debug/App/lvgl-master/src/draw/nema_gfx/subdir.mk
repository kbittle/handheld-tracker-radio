################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_arc.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_border.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_fill.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_img.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_label.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_layer.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_line.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.c \
../App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_utils.c \
../App/lvgl-master/src/draw/nema_gfx/lv_nema_gfx_path.c 

OBJS += \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_border.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_img.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_label.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_line.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o \
./App/lvgl-master/src/draw/nema_gfx/lv_nema_gfx_path.o 

C_DEPS += \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_border.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_img.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_label.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_line.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d \
./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d \
./App/lvgl-master/src/draw/nema_gfx/lv_nema_gfx_path.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/draw/nema_gfx/%.o App/lvgl-master/src/draw/nema_gfx/%.su App/lvgl-master/src/draw/nema_gfx/%.cyclo: ../App/lvgl-master/src/draw/nema_gfx/%.c App/lvgl-master/src/draw/nema_gfx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-draw-2f-nema_gfx

clean-App-2f-lvgl-2d-master-2f-src-2f-draw-2f-nema_gfx:
	-$(RM) ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_arc.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_arc.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_arc.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_arc.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_border.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_border.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_border.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_border.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_fill.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_fill.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_fill.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_fill.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_img.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_img.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_img.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_img.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_label.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_label.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_label.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_label.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_layer.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_layer.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_layer.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_layer.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_line.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_line.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_line.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_line.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_stm32_hal.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_triangle.su ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_utils.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_utils.d ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_utils.o ./App/lvgl-master/src/draw/nema_gfx/lv_draw_nema_gfx_utils.su ./App/lvgl-master/src/draw/nema_gfx/lv_nema_gfx_path.cyclo ./App/lvgl-master/src/draw/nema_gfx/lv_nema_gfx_path.d ./App/lvgl-master/src/draw/nema_gfx/lv_nema_gfx_path.o ./App/lvgl-master/src/draw/nema_gfx/lv_nema_gfx_path.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-draw-2f-nema_gfx

