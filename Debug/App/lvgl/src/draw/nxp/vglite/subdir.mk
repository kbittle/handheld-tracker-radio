################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.c \
../App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.c \
../App/lvgl/src/draw/nxp/vglite/lv_vglite_buf.c \
../App/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.c \
../App/lvgl/src/draw/nxp/vglite/lv_vglite_path.c \
../App/lvgl/src/draw/nxp/vglite/lv_vglite_utils.c 

OBJS += \
./App/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.o \
./App/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o \
./App/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o \
./App/lvgl/src/draw/nxp/vglite/lv_vglite_path.o \
./App/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o 

C_DEPS += \
./App/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d \
./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.d \
./App/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d \
./App/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d \
./App/lvgl/src/draw/nxp/vglite/lv_vglite_path.d \
./App/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/draw/nxp/vglite/%.o App/lvgl/src/draw/nxp/vglite/%.su App/lvgl/src/draw/nxp/vglite/%.cyclo: ../App/lvgl/src/draw/nxp/vglite/%.c App/lvgl/src/draw/nxp/vglite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

clean-App-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite:
	-$(RM) ./App/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_buf_vglite.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_arc.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_border.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_fill.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_img.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_label.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_layer.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_line.su ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.d ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.o ./App/lvgl/src/draw/nxp/vglite/lv_draw_vglite_triangle.su ./App/lvgl/src/draw/nxp/vglite/lv_vglite_buf.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_vglite_buf.d ./App/lvgl/src/draw/nxp/vglite/lv_vglite_buf.o ./App/lvgl/src/draw/nxp/vglite/lv_vglite_buf.su ./App/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.d ./App/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.o ./App/lvgl/src/draw/nxp/vglite/lv_vglite_matrix.su ./App/lvgl/src/draw/nxp/vglite/lv_vglite_path.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_vglite_path.d ./App/lvgl/src/draw/nxp/vglite/lv_vglite_path.o ./App/lvgl/src/draw/nxp/vglite/lv_vglite_path.su ./App/lvgl/src/draw/nxp/vglite/lv_vglite_utils.cyclo ./App/lvgl/src/draw/nxp/vglite/lv_vglite_utils.d ./App/lvgl/src/draw/nxp/vglite/lv_vglite_utils.o ./App/lvgl/src/draw/nxp/vglite/lv_vglite_utils.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-vglite

