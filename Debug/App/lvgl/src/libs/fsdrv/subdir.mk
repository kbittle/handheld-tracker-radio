################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/libs/fsdrv/lv_fs_cbfs.c \
../App/lvgl/src/libs/fsdrv/lv_fs_fatfs.c \
../App/lvgl/src/libs/fsdrv/lv_fs_littlefs.c \
../App/lvgl/src/libs/fsdrv/lv_fs_memfs.c \
../App/lvgl/src/libs/fsdrv/lv_fs_posix.c \
../App/lvgl/src/libs/fsdrv/lv_fs_stdio.c \
../App/lvgl/src/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./App/lvgl/src/libs/fsdrv/lv_fs_cbfs.o \
./App/lvgl/src/libs/fsdrv/lv_fs_fatfs.o \
./App/lvgl/src/libs/fsdrv/lv_fs_littlefs.o \
./App/lvgl/src/libs/fsdrv/lv_fs_memfs.o \
./App/lvgl/src/libs/fsdrv/lv_fs_posix.o \
./App/lvgl/src/libs/fsdrv/lv_fs_stdio.o \
./App/lvgl/src/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./App/lvgl/src/libs/fsdrv/lv_fs_cbfs.d \
./App/lvgl/src/libs/fsdrv/lv_fs_fatfs.d \
./App/lvgl/src/libs/fsdrv/lv_fs_littlefs.d \
./App/lvgl/src/libs/fsdrv/lv_fs_memfs.d \
./App/lvgl/src/libs/fsdrv/lv_fs_posix.d \
./App/lvgl/src/libs/fsdrv/lv_fs_stdio.d \
./App/lvgl/src/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/libs/fsdrv/%.o App/lvgl/src/libs/fsdrv/%.su App/lvgl/src/libs/fsdrv/%.cyclo: ../App/lvgl/src/libs/fsdrv/%.c App/lvgl/src/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-libs-2f-fsdrv

clean-App-2f-lvgl-2f-src-2f-libs-2f-fsdrv:
	-$(RM) ./App/lvgl/src/libs/fsdrv/lv_fs_cbfs.cyclo ./App/lvgl/src/libs/fsdrv/lv_fs_cbfs.d ./App/lvgl/src/libs/fsdrv/lv_fs_cbfs.o ./App/lvgl/src/libs/fsdrv/lv_fs_cbfs.su ./App/lvgl/src/libs/fsdrv/lv_fs_fatfs.cyclo ./App/lvgl/src/libs/fsdrv/lv_fs_fatfs.d ./App/lvgl/src/libs/fsdrv/lv_fs_fatfs.o ./App/lvgl/src/libs/fsdrv/lv_fs_fatfs.su ./App/lvgl/src/libs/fsdrv/lv_fs_littlefs.cyclo ./App/lvgl/src/libs/fsdrv/lv_fs_littlefs.d ./App/lvgl/src/libs/fsdrv/lv_fs_littlefs.o ./App/lvgl/src/libs/fsdrv/lv_fs_littlefs.su ./App/lvgl/src/libs/fsdrv/lv_fs_memfs.cyclo ./App/lvgl/src/libs/fsdrv/lv_fs_memfs.d ./App/lvgl/src/libs/fsdrv/lv_fs_memfs.o ./App/lvgl/src/libs/fsdrv/lv_fs_memfs.su ./App/lvgl/src/libs/fsdrv/lv_fs_posix.cyclo ./App/lvgl/src/libs/fsdrv/lv_fs_posix.d ./App/lvgl/src/libs/fsdrv/lv_fs_posix.o ./App/lvgl/src/libs/fsdrv/lv_fs_posix.su ./App/lvgl/src/libs/fsdrv/lv_fs_stdio.cyclo ./App/lvgl/src/libs/fsdrv/lv_fs_stdio.d ./App/lvgl/src/libs/fsdrv/lv_fs_stdio.o ./App/lvgl/src/libs/fsdrv/lv_fs_stdio.su ./App/lvgl/src/libs/fsdrv/lv_fs_win32.cyclo ./App/lvgl/src/libs/fsdrv/lv_fs_win32.d ./App/lvgl/src/libs/fsdrv/lv_fs_win32.o ./App/lvgl/src/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-libs-2f-fsdrv

