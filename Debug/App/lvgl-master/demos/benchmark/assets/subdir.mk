################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/demos/benchmark/assets/img_benchmark_avatar.c \
../App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.c \
../App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.c \
../App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.c \
../App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.c \
../App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.c 

OBJS += \
./App/lvgl-master/demos/benchmark/assets/img_benchmark_avatar.o \
./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.o \
./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.o \
./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.o \
./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.o \
./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.o 

C_DEPS += \
./App/lvgl-master/demos/benchmark/assets/img_benchmark_avatar.d \
./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.d \
./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.d \
./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.d \
./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.d \
./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/demos/benchmark/assets/%.o App/lvgl-master/demos/benchmark/assets/%.su App/lvgl-master/demos/benchmark/assets/%.cyclo: ../App/lvgl-master/demos/benchmark/assets/%.c App/lvgl-master/demos/benchmark/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-demos-2f-benchmark-2f-assets

clean-App-2f-lvgl-2d-master-2f-demos-2f-benchmark-2f-assets:
	-$(RM) ./App/lvgl-master/demos/benchmark/assets/img_benchmark_avatar.cyclo ./App/lvgl-master/demos/benchmark/assets/img_benchmark_avatar.d ./App/lvgl-master/demos/benchmark/assets/img_benchmark_avatar.o ./App/lvgl-master/demos/benchmark/assets/img_benchmark_avatar.su ./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.cyclo ./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.d ./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.o ./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_argb.su ./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.cyclo ./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.d ./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.o ./App/lvgl-master/demos/benchmark/assets/img_benchmark_lvgl_logo_rgb.su ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.cyclo ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.d ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.o ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.su ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.cyclo ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.d ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.o ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.su ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.cyclo ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.d ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.o ./App/lvgl-master/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-demos-2f-benchmark-2f-assets

