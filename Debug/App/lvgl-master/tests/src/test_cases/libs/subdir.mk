################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/tests/src/test_cases/libs/test_barcode.c \
../App/lvgl-master/tests/src/test_cases/libs/test_bin_decoder.c \
../App/lvgl-master/tests/src/test_cases/libs/test_bmp.c \
../App/lvgl-master/tests/src/test_cases/libs/test_font_stress.c \
../App/lvgl-master/tests/src/test_cases/libs/test_freetype.c \
../App/lvgl-master/tests/src/test_cases/libs/test_libjpeg_turbo.c \
../App/lvgl-master/tests/src/test_cases/libs/test_libpng.c \
../App/lvgl-master/tests/src/test_cases/libs/test_lodepng.c \
../App/lvgl-master/tests/src/test_cases/libs/test_memmove.c \
../App/lvgl-master/tests/src/test_cases/libs/test_qrcode.c \
../App/lvgl-master/tests/src/test_cases/libs/test_tiny_ttf.c \
../App/lvgl-master/tests/src/test_cases/libs/test_tjpgd.c 

OBJS += \
./App/lvgl-master/tests/src/test_cases/libs/test_barcode.o \
./App/lvgl-master/tests/src/test_cases/libs/test_bin_decoder.o \
./App/lvgl-master/tests/src/test_cases/libs/test_bmp.o \
./App/lvgl-master/tests/src/test_cases/libs/test_font_stress.o \
./App/lvgl-master/tests/src/test_cases/libs/test_freetype.o \
./App/lvgl-master/tests/src/test_cases/libs/test_libjpeg_turbo.o \
./App/lvgl-master/tests/src/test_cases/libs/test_libpng.o \
./App/lvgl-master/tests/src/test_cases/libs/test_lodepng.o \
./App/lvgl-master/tests/src/test_cases/libs/test_memmove.o \
./App/lvgl-master/tests/src/test_cases/libs/test_qrcode.o \
./App/lvgl-master/tests/src/test_cases/libs/test_tiny_ttf.o \
./App/lvgl-master/tests/src/test_cases/libs/test_tjpgd.o 

C_DEPS += \
./App/lvgl-master/tests/src/test_cases/libs/test_barcode.d \
./App/lvgl-master/tests/src/test_cases/libs/test_bin_decoder.d \
./App/lvgl-master/tests/src/test_cases/libs/test_bmp.d \
./App/lvgl-master/tests/src/test_cases/libs/test_font_stress.d \
./App/lvgl-master/tests/src/test_cases/libs/test_freetype.d \
./App/lvgl-master/tests/src/test_cases/libs/test_libjpeg_turbo.d \
./App/lvgl-master/tests/src/test_cases/libs/test_libpng.d \
./App/lvgl-master/tests/src/test_cases/libs/test_lodepng.d \
./App/lvgl-master/tests/src/test_cases/libs/test_memmove.d \
./App/lvgl-master/tests/src/test_cases/libs/test_qrcode.d \
./App/lvgl-master/tests/src/test_cases/libs/test_tiny_ttf.d \
./App/lvgl-master/tests/src/test_cases/libs/test_tjpgd.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/tests/src/test_cases/libs/%.o App/lvgl-master/tests/src/test_cases/libs/%.su App/lvgl-master/tests/src/test_cases/libs/%.cyclo: ../App/lvgl-master/tests/src/test_cases/libs/%.c App/lvgl-master/tests/src/test_cases/libs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-libs

clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-libs:
	-$(RM) ./App/lvgl-master/tests/src/test_cases/libs/test_barcode.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_barcode.d ./App/lvgl-master/tests/src/test_cases/libs/test_barcode.o ./App/lvgl-master/tests/src/test_cases/libs/test_barcode.su ./App/lvgl-master/tests/src/test_cases/libs/test_bin_decoder.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_bin_decoder.d ./App/lvgl-master/tests/src/test_cases/libs/test_bin_decoder.o ./App/lvgl-master/tests/src/test_cases/libs/test_bin_decoder.su ./App/lvgl-master/tests/src/test_cases/libs/test_bmp.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_bmp.d ./App/lvgl-master/tests/src/test_cases/libs/test_bmp.o ./App/lvgl-master/tests/src/test_cases/libs/test_bmp.su ./App/lvgl-master/tests/src/test_cases/libs/test_font_stress.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_font_stress.d ./App/lvgl-master/tests/src/test_cases/libs/test_font_stress.o ./App/lvgl-master/tests/src/test_cases/libs/test_font_stress.su ./App/lvgl-master/tests/src/test_cases/libs/test_freetype.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_freetype.d ./App/lvgl-master/tests/src/test_cases/libs/test_freetype.o ./App/lvgl-master/tests/src/test_cases/libs/test_freetype.su ./App/lvgl-master/tests/src/test_cases/libs/test_libjpeg_turbo.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_libjpeg_turbo.d ./App/lvgl-master/tests/src/test_cases/libs/test_libjpeg_turbo.o ./App/lvgl-master/tests/src/test_cases/libs/test_libjpeg_turbo.su ./App/lvgl-master/tests/src/test_cases/libs/test_libpng.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_libpng.d ./App/lvgl-master/tests/src/test_cases/libs/test_libpng.o ./App/lvgl-master/tests/src/test_cases/libs/test_libpng.su ./App/lvgl-master/tests/src/test_cases/libs/test_lodepng.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_lodepng.d ./App/lvgl-master/tests/src/test_cases/libs/test_lodepng.o ./App/lvgl-master/tests/src/test_cases/libs/test_lodepng.su ./App/lvgl-master/tests/src/test_cases/libs/test_memmove.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_memmove.d ./App/lvgl-master/tests/src/test_cases/libs/test_memmove.o ./App/lvgl-master/tests/src/test_cases/libs/test_memmove.su ./App/lvgl-master/tests/src/test_cases/libs/test_qrcode.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_qrcode.d ./App/lvgl-master/tests/src/test_cases/libs/test_qrcode.o ./App/lvgl-master/tests/src/test_cases/libs/test_qrcode.su ./App/lvgl-master/tests/src/test_cases/libs/test_tiny_ttf.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_tiny_ttf.d ./App/lvgl-master/tests/src/test_cases/libs/test_tiny_ttf.o ./App/lvgl-master/tests/src/test_cases/libs/test_tiny_ttf.su ./App/lvgl-master/tests/src/test_cases/libs/test_tjpgd.cyclo ./App/lvgl-master/tests/src/test_cases/libs/test_tjpgd.d ./App/lvgl-master/tests/src/test_cases/libs/test_tjpgd.o ./App/lvgl-master/tests/src/test_cases/libs/test_tjpgd.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-libs

