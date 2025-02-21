################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/draw/lv_draw.c \
../App/lvgl-master/src/draw/lv_draw_arc.c \
../App/lvgl-master/src/draw/lv_draw_buf.c \
../App/lvgl-master/src/draw/lv_draw_image.c \
../App/lvgl-master/src/draw/lv_draw_label.c \
../App/lvgl-master/src/draw/lv_draw_line.c \
../App/lvgl-master/src/draw/lv_draw_mask.c \
../App/lvgl-master/src/draw/lv_draw_rect.c \
../App/lvgl-master/src/draw/lv_draw_triangle.c \
../App/lvgl-master/src/draw/lv_draw_vector.c \
../App/lvgl-master/src/draw/lv_image_decoder.c 

OBJS += \
./App/lvgl-master/src/draw/lv_draw.o \
./App/lvgl-master/src/draw/lv_draw_arc.o \
./App/lvgl-master/src/draw/lv_draw_buf.o \
./App/lvgl-master/src/draw/lv_draw_image.o \
./App/lvgl-master/src/draw/lv_draw_label.o \
./App/lvgl-master/src/draw/lv_draw_line.o \
./App/lvgl-master/src/draw/lv_draw_mask.o \
./App/lvgl-master/src/draw/lv_draw_rect.o \
./App/lvgl-master/src/draw/lv_draw_triangle.o \
./App/lvgl-master/src/draw/lv_draw_vector.o \
./App/lvgl-master/src/draw/lv_image_decoder.o 

C_DEPS += \
./App/lvgl-master/src/draw/lv_draw.d \
./App/lvgl-master/src/draw/lv_draw_arc.d \
./App/lvgl-master/src/draw/lv_draw_buf.d \
./App/lvgl-master/src/draw/lv_draw_image.d \
./App/lvgl-master/src/draw/lv_draw_label.d \
./App/lvgl-master/src/draw/lv_draw_line.d \
./App/lvgl-master/src/draw/lv_draw_mask.d \
./App/lvgl-master/src/draw/lv_draw_rect.d \
./App/lvgl-master/src/draw/lv_draw_triangle.d \
./App/lvgl-master/src/draw/lv_draw_vector.d \
./App/lvgl-master/src/draw/lv_image_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/draw/%.o App/lvgl-master/src/draw/%.su App/lvgl-master/src/draw/%.cyclo: ../App/lvgl-master/src/draw/%.c App/lvgl-master/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-draw

clean-App-2f-lvgl-2d-master-2f-src-2f-draw:
	-$(RM) ./App/lvgl-master/src/draw/lv_draw.cyclo ./App/lvgl-master/src/draw/lv_draw.d ./App/lvgl-master/src/draw/lv_draw.o ./App/lvgl-master/src/draw/lv_draw.su ./App/lvgl-master/src/draw/lv_draw_arc.cyclo ./App/lvgl-master/src/draw/lv_draw_arc.d ./App/lvgl-master/src/draw/lv_draw_arc.o ./App/lvgl-master/src/draw/lv_draw_arc.su ./App/lvgl-master/src/draw/lv_draw_buf.cyclo ./App/lvgl-master/src/draw/lv_draw_buf.d ./App/lvgl-master/src/draw/lv_draw_buf.o ./App/lvgl-master/src/draw/lv_draw_buf.su ./App/lvgl-master/src/draw/lv_draw_image.cyclo ./App/lvgl-master/src/draw/lv_draw_image.d ./App/lvgl-master/src/draw/lv_draw_image.o ./App/lvgl-master/src/draw/lv_draw_image.su ./App/lvgl-master/src/draw/lv_draw_label.cyclo ./App/lvgl-master/src/draw/lv_draw_label.d ./App/lvgl-master/src/draw/lv_draw_label.o ./App/lvgl-master/src/draw/lv_draw_label.su ./App/lvgl-master/src/draw/lv_draw_line.cyclo ./App/lvgl-master/src/draw/lv_draw_line.d ./App/lvgl-master/src/draw/lv_draw_line.o ./App/lvgl-master/src/draw/lv_draw_line.su ./App/lvgl-master/src/draw/lv_draw_mask.cyclo ./App/lvgl-master/src/draw/lv_draw_mask.d ./App/lvgl-master/src/draw/lv_draw_mask.o ./App/lvgl-master/src/draw/lv_draw_mask.su ./App/lvgl-master/src/draw/lv_draw_rect.cyclo ./App/lvgl-master/src/draw/lv_draw_rect.d ./App/lvgl-master/src/draw/lv_draw_rect.o ./App/lvgl-master/src/draw/lv_draw_rect.su ./App/lvgl-master/src/draw/lv_draw_triangle.cyclo ./App/lvgl-master/src/draw/lv_draw_triangle.d ./App/lvgl-master/src/draw/lv_draw_triangle.o ./App/lvgl-master/src/draw/lv_draw_triangle.su ./App/lvgl-master/src/draw/lv_draw_vector.cyclo ./App/lvgl-master/src/draw/lv_draw_vector.d ./App/lvgl-master/src/draw/lv_draw_vector.o ./App/lvgl-master/src/draw/lv_draw_vector.su ./App/lvgl-master/src/draw/lv_image_decoder.cyclo ./App/lvgl-master/src/draw/lv_image_decoder.d ./App/lvgl-master/src/draw/lv_image_decoder.o ./App/lvgl-master/src/draw/lv_image_decoder.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-draw

