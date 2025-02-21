################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.c \
../App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.c \
../App/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.c \
../App/lvgl/src/draw/vg_lite/lv_vg_lite_grad.c \
../App/lvgl/src/draw/vg_lite/lv_vg_lite_math.c \
../App/lvgl/src/draw/vg_lite/lv_vg_lite_path.c \
../App/lvgl/src/draw/vg_lite/lv_vg_lite_pending.c \
../App/lvgl/src/draw/vg_lite/lv_vg_lite_utils.c 

OBJS += \
./App/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.o \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.o \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.o \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_grad.o \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_math.o \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_path.o \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_pending.o \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_utils.o 

C_DEPS += \
./App/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.d \
./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.d \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.d \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_grad.d \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_math.d \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_path.d \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_pending.d \
./App/lvgl/src/draw/vg_lite/lv_vg_lite_utils.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/draw/vg_lite/%.o App/lvgl/src/draw/vg_lite/%.su App/lvgl/src/draw/vg_lite/%.cyclo: ../App/lvgl/src/draw/vg_lite/%.c App/lvgl/src/draw/vg_lite/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-draw-2f-vg_lite

clean-App-2f-lvgl-2f-src-2f-draw-2f-vg_lite:
	-$(RM) ./App/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.d ./App/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.o ./App/lvgl/src/draw/vg_lite/lv_draw_buf_vg_lite.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_arc.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_border.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_box_shadow.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_fill.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_img.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_label.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_layer.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_line.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_mask_rect.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_triangle.su ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.cyclo ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.d ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.o ./App/lvgl/src/draw/vg_lite/lv_draw_vg_lite_vector.su ./App/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.cyclo ./App/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.d ./App/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.o ./App/lvgl/src/draw/vg_lite/lv_vg_lite_decoder.su ./App/lvgl/src/draw/vg_lite/lv_vg_lite_grad.cyclo ./App/lvgl/src/draw/vg_lite/lv_vg_lite_grad.d ./App/lvgl/src/draw/vg_lite/lv_vg_lite_grad.o ./App/lvgl/src/draw/vg_lite/lv_vg_lite_grad.su ./App/lvgl/src/draw/vg_lite/lv_vg_lite_math.cyclo ./App/lvgl/src/draw/vg_lite/lv_vg_lite_math.d ./App/lvgl/src/draw/vg_lite/lv_vg_lite_math.o ./App/lvgl/src/draw/vg_lite/lv_vg_lite_math.su ./App/lvgl/src/draw/vg_lite/lv_vg_lite_path.cyclo ./App/lvgl/src/draw/vg_lite/lv_vg_lite_path.d ./App/lvgl/src/draw/vg_lite/lv_vg_lite_path.o ./App/lvgl/src/draw/vg_lite/lv_vg_lite_path.su ./App/lvgl/src/draw/vg_lite/lv_vg_lite_pending.cyclo ./App/lvgl/src/draw/vg_lite/lv_vg_lite_pending.d ./App/lvgl/src/draw/vg_lite/lv_vg_lite_pending.o ./App/lvgl/src/draw/vg_lite/lv_vg_lite_pending.su ./App/lvgl/src/draw/vg_lite/lv_vg_lite_utils.cyclo ./App/lvgl/src/draw/vg_lite/lv_vg_lite_utils.d ./App/lvgl/src/draw/vg_lite/lv_vg_lite_utils.o ./App/lvgl/src/draw/vg_lite/lv_vg_lite_utils.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-draw-2f-vg_lite

