################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/draw/sw/lv_draw_sw.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_arc.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_border.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_box_shadow.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_fill.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_gradient.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_img.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_letter.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_line.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_mask.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_mask_rect.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_transform.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_triangle.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_utils.c \
../App/lvgl-master/src/draw/sw/lv_draw_sw_vector.c 

OBJS += \
./App/lvgl-master/src/draw/sw/lv_draw_sw.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_arc.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_border.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_box_shadow.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_fill.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_gradient.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_img.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_letter.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_line.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_mask.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_mask_rect.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_transform.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_triangle.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_utils.o \
./App/lvgl-master/src/draw/sw/lv_draw_sw_vector.o 

C_DEPS += \
./App/lvgl-master/src/draw/sw/lv_draw_sw.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_arc.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_border.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_box_shadow.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_fill.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_gradient.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_img.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_letter.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_line.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_mask.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_mask_rect.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_transform.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_triangle.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_utils.d \
./App/lvgl-master/src/draw/sw/lv_draw_sw_vector.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/draw/sw/%.o App/lvgl-master/src/draw/sw/%.su App/lvgl-master/src/draw/sw/%.cyclo: ../App/lvgl-master/src/draw/sw/%.c App/lvgl-master/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-draw-2f-sw

clean-App-2f-lvgl-2d-master-2f-src-2f-draw-2f-sw:
	-$(RM) ./App/lvgl-master/src/draw/sw/lv_draw_sw.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw.d ./App/lvgl-master/src/draw/sw/lv_draw_sw.o ./App/lvgl-master/src/draw/sw/lv_draw_sw.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_arc.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_arc.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_arc.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_arc.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_border.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_border.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_border.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_border.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_box_shadow.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_box_shadow.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_box_shadow.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_box_shadow.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_fill.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_fill.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_fill.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_fill.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_gradient.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_gradient.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_gradient.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_gradient.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_img.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_img.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_img.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_img.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_letter.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_letter.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_letter.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_letter.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_line.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_line.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_line.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_line.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_mask.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_mask.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_mask.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_mask.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_mask_rect.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_mask_rect.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_mask_rect.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_mask_rect.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_transform.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_transform.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_transform.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_transform.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_triangle.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_triangle.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_triangle.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_triangle.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_utils.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_utils.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_utils.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_utils.su ./App/lvgl-master/src/draw/sw/lv_draw_sw_vector.cyclo ./App/lvgl-master/src/draw/sw/lv_draw_sw_vector.d ./App/lvgl-master/src/draw/sw/lv_draw_sw_vector.o ./App/lvgl-master/src/draw/sw/lv_draw_sw_vector.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-draw-2f-sw

