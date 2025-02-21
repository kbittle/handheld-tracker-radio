################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.c \
../App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.c 

OBJS += \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o 

C_DEPS += \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d \
./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/draw/renesas/dave2d/%.o App/lvgl/src/draw/renesas/dave2d/%.su App/lvgl/src/draw/renesas/dave2d/%.cyclo: ../App/lvgl/src/draw/renesas/dave2d/%.c App/lvgl/src/draw/renesas/dave2d/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

clean-App-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d:
	-$(RM) ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.su ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.cyclo ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o ./App/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

