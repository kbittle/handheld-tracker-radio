################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/libs/fsdrv/lv_fs_cbfs.c \
../App/lvgl-master/src/libs/fsdrv/lv_fs_fatfs.c \
../App/lvgl-master/src/libs/fsdrv/lv_fs_littlefs.c \
../App/lvgl-master/src/libs/fsdrv/lv_fs_memfs.c \
../App/lvgl-master/src/libs/fsdrv/lv_fs_posix.c \
../App/lvgl-master/src/libs/fsdrv/lv_fs_stdio.c \
../App/lvgl-master/src/libs/fsdrv/lv_fs_uefi.c \
../App/lvgl-master/src/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./App/lvgl-master/src/libs/fsdrv/lv_fs_cbfs.o \
./App/lvgl-master/src/libs/fsdrv/lv_fs_fatfs.o \
./App/lvgl-master/src/libs/fsdrv/lv_fs_littlefs.o \
./App/lvgl-master/src/libs/fsdrv/lv_fs_memfs.o \
./App/lvgl-master/src/libs/fsdrv/lv_fs_posix.o \
./App/lvgl-master/src/libs/fsdrv/lv_fs_stdio.o \
./App/lvgl-master/src/libs/fsdrv/lv_fs_uefi.o \
./App/lvgl-master/src/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./App/lvgl-master/src/libs/fsdrv/lv_fs_cbfs.d \
./App/lvgl-master/src/libs/fsdrv/lv_fs_fatfs.d \
./App/lvgl-master/src/libs/fsdrv/lv_fs_littlefs.d \
./App/lvgl-master/src/libs/fsdrv/lv_fs_memfs.d \
./App/lvgl-master/src/libs/fsdrv/lv_fs_posix.d \
./App/lvgl-master/src/libs/fsdrv/lv_fs_stdio.d \
./App/lvgl-master/src/libs/fsdrv/lv_fs_uefi.d \
./App/lvgl-master/src/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/libs/fsdrv/%.o App/lvgl-master/src/libs/fsdrv/%.su App/lvgl-master/src/libs/fsdrv/%.cyclo: ../App/lvgl-master/src/libs/fsdrv/%.c App/lvgl-master/src/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-libs-2f-fsdrv

clean-App-2f-lvgl-2d-master-2f-src-2f-libs-2f-fsdrv:
	-$(RM) ./App/lvgl-master/src/libs/fsdrv/lv_fs_cbfs.cyclo ./App/lvgl-master/src/libs/fsdrv/lv_fs_cbfs.d ./App/lvgl-master/src/libs/fsdrv/lv_fs_cbfs.o ./App/lvgl-master/src/libs/fsdrv/lv_fs_cbfs.su ./App/lvgl-master/src/libs/fsdrv/lv_fs_fatfs.cyclo ./App/lvgl-master/src/libs/fsdrv/lv_fs_fatfs.d ./App/lvgl-master/src/libs/fsdrv/lv_fs_fatfs.o ./App/lvgl-master/src/libs/fsdrv/lv_fs_fatfs.su ./App/lvgl-master/src/libs/fsdrv/lv_fs_littlefs.cyclo ./App/lvgl-master/src/libs/fsdrv/lv_fs_littlefs.d ./App/lvgl-master/src/libs/fsdrv/lv_fs_littlefs.o ./App/lvgl-master/src/libs/fsdrv/lv_fs_littlefs.su ./App/lvgl-master/src/libs/fsdrv/lv_fs_memfs.cyclo ./App/lvgl-master/src/libs/fsdrv/lv_fs_memfs.d ./App/lvgl-master/src/libs/fsdrv/lv_fs_memfs.o ./App/lvgl-master/src/libs/fsdrv/lv_fs_memfs.su ./App/lvgl-master/src/libs/fsdrv/lv_fs_posix.cyclo ./App/lvgl-master/src/libs/fsdrv/lv_fs_posix.d ./App/lvgl-master/src/libs/fsdrv/lv_fs_posix.o ./App/lvgl-master/src/libs/fsdrv/lv_fs_posix.su ./App/lvgl-master/src/libs/fsdrv/lv_fs_stdio.cyclo ./App/lvgl-master/src/libs/fsdrv/lv_fs_stdio.d ./App/lvgl-master/src/libs/fsdrv/lv_fs_stdio.o ./App/lvgl-master/src/libs/fsdrv/lv_fs_stdio.su ./App/lvgl-master/src/libs/fsdrv/lv_fs_uefi.cyclo ./App/lvgl-master/src/libs/fsdrv/lv_fs_uefi.d ./App/lvgl-master/src/libs/fsdrv/lv_fs_uefi.o ./App/lvgl-master/src/libs/fsdrv/lv_fs_uefi.su ./App/lvgl-master/src/libs/fsdrv/lv_fs_win32.cyclo ./App/lvgl-master/src/libs/fsdrv/lv_fs_win32.d ./App/lvgl-master/src/libs/fsdrv/lv_fs_win32.o ./App/lvgl-master/src/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-libs-2f-fsdrv

