################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/ui_generated/images/ui_img_background_resized_png.c \
../App/ui_generated/images/ui_img_battery_full_transparent_png.c \
../App/ui_generated/images/ui_img_folder_transparent_resized_outlined_png.c \
../App/ui_generated/images/ui_img_mail_transparent_resized_png.c \
../App/ui_generated/images/ui_img_satellite_transparent_resized_outlined_png.c \
../App/ui_generated/images/ui_img_sd_png.c \
../App/ui_generated/images/ui_img_settings_transparent_resized_outlined_png.c 

OBJS += \
./App/ui_generated/images/ui_img_background_resized_png.o \
./App/ui_generated/images/ui_img_battery_full_transparent_png.o \
./App/ui_generated/images/ui_img_folder_transparent_resized_outlined_png.o \
./App/ui_generated/images/ui_img_mail_transparent_resized_png.o \
./App/ui_generated/images/ui_img_satellite_transparent_resized_outlined_png.o \
./App/ui_generated/images/ui_img_sd_png.o \
./App/ui_generated/images/ui_img_settings_transparent_resized_outlined_png.o 

C_DEPS += \
./App/ui_generated/images/ui_img_background_resized_png.d \
./App/ui_generated/images/ui_img_battery_full_transparent_png.d \
./App/ui_generated/images/ui_img_folder_transparent_resized_outlined_png.d \
./App/ui_generated/images/ui_img_mail_transparent_resized_png.d \
./App/ui_generated/images/ui_img_satellite_transparent_resized_outlined_png.d \
./App/ui_generated/images/ui_img_sd_png.d \
./App/ui_generated/images/ui_img_settings_transparent_resized_outlined_png.d 


# Each subdirectory must supply rules for building sources it contributes
App/ui_generated/images/%.o App/ui_generated/images/%.su App/ui_generated/images/%.cyclo: ../App/ui_generated/images/%.c App/ui_generated/images/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-ui_generated-2f-images

clean-App-2f-ui_generated-2f-images:
	-$(RM) ./App/ui_generated/images/ui_img_background_resized_png.cyclo ./App/ui_generated/images/ui_img_background_resized_png.d ./App/ui_generated/images/ui_img_background_resized_png.o ./App/ui_generated/images/ui_img_background_resized_png.su ./App/ui_generated/images/ui_img_battery_full_transparent_png.cyclo ./App/ui_generated/images/ui_img_battery_full_transparent_png.d ./App/ui_generated/images/ui_img_battery_full_transparent_png.o ./App/ui_generated/images/ui_img_battery_full_transparent_png.su ./App/ui_generated/images/ui_img_folder_transparent_resized_outlined_png.cyclo ./App/ui_generated/images/ui_img_folder_transparent_resized_outlined_png.d ./App/ui_generated/images/ui_img_folder_transparent_resized_outlined_png.o ./App/ui_generated/images/ui_img_folder_transparent_resized_outlined_png.su ./App/ui_generated/images/ui_img_mail_transparent_resized_png.cyclo ./App/ui_generated/images/ui_img_mail_transparent_resized_png.d ./App/ui_generated/images/ui_img_mail_transparent_resized_png.o ./App/ui_generated/images/ui_img_mail_transparent_resized_png.su ./App/ui_generated/images/ui_img_satellite_transparent_resized_outlined_png.cyclo ./App/ui_generated/images/ui_img_satellite_transparent_resized_outlined_png.d ./App/ui_generated/images/ui_img_satellite_transparent_resized_outlined_png.o ./App/ui_generated/images/ui_img_satellite_transparent_resized_outlined_png.su ./App/ui_generated/images/ui_img_sd_png.cyclo ./App/ui_generated/images/ui_img_sd_png.d ./App/ui_generated/images/ui_img_sd_png.o ./App/ui_generated/images/ui_img_sd_png.su ./App/ui_generated/images/ui_img_settings_transparent_resized_outlined_png.cyclo ./App/ui_generated/images/ui_img_settings_transparent_resized_outlined_png.d ./App/ui_generated/images/ui_img_settings_transparent_resized_outlined_png.o ./App/ui_generated/images/ui_img_settings_transparent_resized_outlined_png.su

.PHONY: clean-App-2f-ui_generated-2f-images

