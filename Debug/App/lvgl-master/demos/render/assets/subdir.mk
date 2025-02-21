################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/demos/render/assets/img_render_arc_bg.c \
../App/lvgl-master/demos/render/assets/img_render_lvgl_logo_argb8888.c \
../App/lvgl-master/demos/render/assets/img_render_lvgl_logo_i1.c \
../App/lvgl-master/demos/render/assets/img_render_lvgl_logo_l8.c \
../App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565.c \
../App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565a8.c \
../App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb888.c \
../App/lvgl-master/demos/render/assets/img_render_lvgl_logo_xrgb8888.c 

OBJS += \
./App/lvgl-master/demos/render/assets/img_render_arc_bg.o \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_argb8888.o \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_i1.o \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_l8.o \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565.o \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565a8.o \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb888.o \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_xrgb8888.o 

C_DEPS += \
./App/lvgl-master/demos/render/assets/img_render_arc_bg.d \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_argb8888.d \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_i1.d \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_l8.d \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565.d \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565a8.d \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb888.d \
./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_xrgb8888.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/demos/render/assets/%.o App/lvgl-master/demos/render/assets/%.su App/lvgl-master/demos/render/assets/%.cyclo: ../App/lvgl-master/demos/render/assets/%.c App/lvgl-master/demos/render/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-demos-2f-render-2f-assets

clean-App-2f-lvgl-2d-master-2f-demos-2f-render-2f-assets:
	-$(RM) ./App/lvgl-master/demos/render/assets/img_render_arc_bg.cyclo ./App/lvgl-master/demos/render/assets/img_render_arc_bg.d ./App/lvgl-master/demos/render/assets/img_render_arc_bg.o ./App/lvgl-master/demos/render/assets/img_render_arc_bg.su ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_argb8888.cyclo ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_argb8888.d ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_argb8888.o ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_argb8888.su ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_i1.cyclo ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_i1.d ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_i1.o ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_i1.su ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_l8.cyclo ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_l8.d ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_l8.o ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_l8.su ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565.cyclo ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565.d ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565.o ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565.su ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565a8.cyclo ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565a8.d ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565a8.o ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb565a8.su ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb888.cyclo ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb888.d ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb888.o ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_rgb888.su ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_xrgb8888.cyclo ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_xrgb8888.d ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_xrgb8888.o ./App/lvgl-master/demos/render/assets/img_render_lvgl_logo_xrgb8888.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-demos-2f-render-2f-assets

