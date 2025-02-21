################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/tests/src/test_cases/draw/test_bg_image.c \
../App/lvgl-master/tests/src/test_cases/draw/test_clip_corner.c \
../App/lvgl-master/tests/src/test_cases/draw/test_draw_blend.c \
../App/lvgl-master/tests/src/test_cases/draw/test_draw_label.c \
../App/lvgl-master/tests/src/test_cases/draw/test_draw_layer.c \
../App/lvgl-master/tests/src/test_cases/draw/test_draw_letter.c \
../App/lvgl-master/tests/src/test_cases/draw/test_draw_svg.c \
../App/lvgl-master/tests/src/test_cases/draw/test_draw_sw_post_process.c \
../App/lvgl-master/tests/src/test_cases/draw/test_draw_vector.c \
../App/lvgl-master/tests/src/test_cases/draw/test_image_formats.c \
../App/lvgl-master/tests/src/test_cases/draw/test_layer_transform.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_al88.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb1555.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb2222.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb4444.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb8888.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_i1.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_l8.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb565.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb888.c \
../App/lvgl-master/tests/src/test_cases/draw/test_render_to_xrgb8888.c 

OBJS += \
./App/lvgl-master/tests/src/test_cases/draw/test_bg_image.o \
./App/lvgl-master/tests/src/test_cases/draw/test_clip_corner.o \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_blend.o \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_label.o \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_layer.o \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_letter.o \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_svg.o \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_sw_post_process.o \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_vector.o \
./App/lvgl-master/tests/src/test_cases/draw/test_image_formats.o \
./App/lvgl-master/tests/src/test_cases/draw/test_layer_transform.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_al88.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb1555.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb2222.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb4444.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb8888.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_i1.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_l8.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb565.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb888.o \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_xrgb8888.o 

C_DEPS += \
./App/lvgl-master/tests/src/test_cases/draw/test_bg_image.d \
./App/lvgl-master/tests/src/test_cases/draw/test_clip_corner.d \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_blend.d \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_label.d \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_layer.d \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_letter.d \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_svg.d \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_sw_post_process.d \
./App/lvgl-master/tests/src/test_cases/draw/test_draw_vector.d \
./App/lvgl-master/tests/src/test_cases/draw/test_image_formats.d \
./App/lvgl-master/tests/src/test_cases/draw/test_layer_transform.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_al88.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb1555.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb2222.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb4444.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb8888.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_i1.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_l8.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb565.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb888.d \
./App/lvgl-master/tests/src/test_cases/draw/test_render_to_xrgb8888.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/tests/src/test_cases/draw/%.o App/lvgl-master/tests/src/test_cases/draw/%.su App/lvgl-master/tests/src/test_cases/draw/%.cyclo: ../App/lvgl-master/tests/src/test_cases/draw/%.c App/lvgl-master/tests/src/test_cases/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-draw

clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-draw:
	-$(RM) ./App/lvgl-master/tests/src/test_cases/draw/test_bg_image.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_bg_image.d ./App/lvgl-master/tests/src/test_cases/draw/test_bg_image.o ./App/lvgl-master/tests/src/test_cases/draw/test_bg_image.su ./App/lvgl-master/tests/src/test_cases/draw/test_clip_corner.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_clip_corner.d ./App/lvgl-master/tests/src/test_cases/draw/test_clip_corner.o ./App/lvgl-master/tests/src/test_cases/draw/test_clip_corner.su ./App/lvgl-master/tests/src/test_cases/draw/test_draw_blend.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_draw_blend.d ./App/lvgl-master/tests/src/test_cases/draw/test_draw_blend.o ./App/lvgl-master/tests/src/test_cases/draw/test_draw_blend.su ./App/lvgl-master/tests/src/test_cases/draw/test_draw_label.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_draw_label.d ./App/lvgl-master/tests/src/test_cases/draw/test_draw_label.o ./App/lvgl-master/tests/src/test_cases/draw/test_draw_label.su ./App/lvgl-master/tests/src/test_cases/draw/test_draw_layer.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_draw_layer.d ./App/lvgl-master/tests/src/test_cases/draw/test_draw_layer.o ./App/lvgl-master/tests/src/test_cases/draw/test_draw_layer.su ./App/lvgl-master/tests/src/test_cases/draw/test_draw_letter.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_draw_letter.d ./App/lvgl-master/tests/src/test_cases/draw/test_draw_letter.o ./App/lvgl-master/tests/src/test_cases/draw/test_draw_letter.su ./App/lvgl-master/tests/src/test_cases/draw/test_draw_svg.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_draw_svg.d ./App/lvgl-master/tests/src/test_cases/draw/test_draw_svg.o ./App/lvgl-master/tests/src/test_cases/draw/test_draw_svg.su ./App/lvgl-master/tests/src/test_cases/draw/test_draw_sw_post_process.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_draw_sw_post_process.d ./App/lvgl-master/tests/src/test_cases/draw/test_draw_sw_post_process.o ./App/lvgl-master/tests/src/test_cases/draw/test_draw_sw_post_process.su ./App/lvgl-master/tests/src/test_cases/draw/test_draw_vector.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_draw_vector.d ./App/lvgl-master/tests/src/test_cases/draw/test_draw_vector.o ./App/lvgl-master/tests/src/test_cases/draw/test_draw_vector.su ./App/lvgl-master/tests/src/test_cases/draw/test_image_formats.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_image_formats.d ./App/lvgl-master/tests/src/test_cases/draw/test_image_formats.o ./App/lvgl-master/tests/src/test_cases/draw/test_image_formats.su ./App/lvgl-master/tests/src/test_cases/draw/test_layer_transform.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_layer_transform.d ./App/lvgl-master/tests/src/test_cases/draw/test_layer_transform.o ./App/lvgl-master/tests/src/test_cases/draw/test_layer_transform.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_al88.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_al88.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_al88.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_al88.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb1555.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb1555.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb1555.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb1555.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb2222.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb2222.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb2222.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb2222.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb4444.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb4444.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb4444.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb4444.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb8888.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb8888.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb8888.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_argb8888.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_i1.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_i1.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_i1.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_i1.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_l8.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_l8.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_l8.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_l8.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb565.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb565.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb565.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb565.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb888.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb888.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb888.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_rgb888.su ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_xrgb8888.cyclo ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_xrgb8888.d ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_xrgb8888.o ./App/lvgl-master/tests/src/test_cases/draw/test_render_to_xrgb8888.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-draw

