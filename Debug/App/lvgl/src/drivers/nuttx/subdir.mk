################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/drivers/nuttx/lv_nuttx_cache.c \
../App/lvgl/src/drivers/nuttx/lv_nuttx_entry.c \
../App/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.c \
../App/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.c \
../App/lvgl/src/drivers/nuttx/lv_nuttx_lcd.c \
../App/lvgl/src/drivers/nuttx/lv_nuttx_libuv.c \
../App/lvgl/src/drivers/nuttx/lv_nuttx_profiler.c \
../App/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.c 

OBJS += \
./App/lvgl/src/drivers/nuttx/lv_nuttx_cache.o \
./App/lvgl/src/drivers/nuttx/lv_nuttx_entry.o \
./App/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o \
./App/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o \
./App/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o \
./App/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o \
./App/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o \
./App/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o 

C_DEPS += \
./App/lvgl/src/drivers/nuttx/lv_nuttx_cache.d \
./App/lvgl/src/drivers/nuttx/lv_nuttx_entry.d \
./App/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d \
./App/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d \
./App/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d \
./App/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d \
./App/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d \
./App/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/drivers/nuttx/%.o App/lvgl/src/drivers/nuttx/%.su App/lvgl/src/drivers/nuttx/%.cyclo: ../App/lvgl/src/drivers/nuttx/%.c App/lvgl/src/drivers/nuttx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-drivers-2f-nuttx

clean-App-2f-lvgl-2f-src-2f-drivers-2f-nuttx:
	-$(RM) ./App/lvgl/src/drivers/nuttx/lv_nuttx_cache.cyclo ./App/lvgl/src/drivers/nuttx/lv_nuttx_cache.d ./App/lvgl/src/drivers/nuttx/lv_nuttx_cache.o ./App/lvgl/src/drivers/nuttx/lv_nuttx_cache.su ./App/lvgl/src/drivers/nuttx/lv_nuttx_entry.cyclo ./App/lvgl/src/drivers/nuttx/lv_nuttx_entry.d ./App/lvgl/src/drivers/nuttx/lv_nuttx_entry.o ./App/lvgl/src/drivers/nuttx/lv_nuttx_entry.su ./App/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.cyclo ./App/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d ./App/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o ./App/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.su ./App/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.cyclo ./App/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d ./App/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o ./App/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.su ./App/lvgl/src/drivers/nuttx/lv_nuttx_lcd.cyclo ./App/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d ./App/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o ./App/lvgl/src/drivers/nuttx/lv_nuttx_lcd.su ./App/lvgl/src/drivers/nuttx/lv_nuttx_libuv.cyclo ./App/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d ./App/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o ./App/lvgl/src/drivers/nuttx/lv_nuttx_libuv.su ./App/lvgl/src/drivers/nuttx/lv_nuttx_profiler.cyclo ./App/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d ./App/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o ./App/lvgl/src/drivers/nuttx/lv_nuttx_profiler.su ./App/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.cyclo ./App/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d ./App/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o ./App/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-drivers-2f-nuttx

