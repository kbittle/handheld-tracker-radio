################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/widgets/property/lv_animimage_properties.c \
../App/lvgl-master/src/widgets/property/lv_dropdown_properties.c \
../App/lvgl-master/src/widgets/property/lv_image_properties.c \
../App/lvgl-master/src/widgets/property/lv_keyboard_properties.c \
../App/lvgl-master/src/widgets/property/lv_label_properties.c \
../App/lvgl-master/src/widgets/property/lv_obj_properties.c \
../App/lvgl-master/src/widgets/property/lv_roller_properties.c \
../App/lvgl-master/src/widgets/property/lv_slider_properties.c \
../App/lvgl-master/src/widgets/property/lv_style_properties.c \
../App/lvgl-master/src/widgets/property/lv_textarea_properties.c 

OBJS += \
./App/lvgl-master/src/widgets/property/lv_animimage_properties.o \
./App/lvgl-master/src/widgets/property/lv_dropdown_properties.o \
./App/lvgl-master/src/widgets/property/lv_image_properties.o \
./App/lvgl-master/src/widgets/property/lv_keyboard_properties.o \
./App/lvgl-master/src/widgets/property/lv_label_properties.o \
./App/lvgl-master/src/widgets/property/lv_obj_properties.o \
./App/lvgl-master/src/widgets/property/lv_roller_properties.o \
./App/lvgl-master/src/widgets/property/lv_slider_properties.o \
./App/lvgl-master/src/widgets/property/lv_style_properties.o \
./App/lvgl-master/src/widgets/property/lv_textarea_properties.o 

C_DEPS += \
./App/lvgl-master/src/widgets/property/lv_animimage_properties.d \
./App/lvgl-master/src/widgets/property/lv_dropdown_properties.d \
./App/lvgl-master/src/widgets/property/lv_image_properties.d \
./App/lvgl-master/src/widgets/property/lv_keyboard_properties.d \
./App/lvgl-master/src/widgets/property/lv_label_properties.d \
./App/lvgl-master/src/widgets/property/lv_obj_properties.d \
./App/lvgl-master/src/widgets/property/lv_roller_properties.d \
./App/lvgl-master/src/widgets/property/lv_slider_properties.d \
./App/lvgl-master/src/widgets/property/lv_style_properties.d \
./App/lvgl-master/src/widgets/property/lv_textarea_properties.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/widgets/property/%.o App/lvgl-master/src/widgets/property/%.su App/lvgl-master/src/widgets/property/%.cyclo: ../App/lvgl-master/src/widgets/property/%.c App/lvgl-master/src/widgets/property/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-widgets-2f-property

clean-App-2f-lvgl-2d-master-2f-src-2f-widgets-2f-property:
	-$(RM) ./App/lvgl-master/src/widgets/property/lv_animimage_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_animimage_properties.d ./App/lvgl-master/src/widgets/property/lv_animimage_properties.o ./App/lvgl-master/src/widgets/property/lv_animimage_properties.su ./App/lvgl-master/src/widgets/property/lv_dropdown_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_dropdown_properties.d ./App/lvgl-master/src/widgets/property/lv_dropdown_properties.o ./App/lvgl-master/src/widgets/property/lv_dropdown_properties.su ./App/lvgl-master/src/widgets/property/lv_image_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_image_properties.d ./App/lvgl-master/src/widgets/property/lv_image_properties.o ./App/lvgl-master/src/widgets/property/lv_image_properties.su ./App/lvgl-master/src/widgets/property/lv_keyboard_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_keyboard_properties.d ./App/lvgl-master/src/widgets/property/lv_keyboard_properties.o ./App/lvgl-master/src/widgets/property/lv_keyboard_properties.su ./App/lvgl-master/src/widgets/property/lv_label_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_label_properties.d ./App/lvgl-master/src/widgets/property/lv_label_properties.o ./App/lvgl-master/src/widgets/property/lv_label_properties.su ./App/lvgl-master/src/widgets/property/lv_obj_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_obj_properties.d ./App/lvgl-master/src/widgets/property/lv_obj_properties.o ./App/lvgl-master/src/widgets/property/lv_obj_properties.su ./App/lvgl-master/src/widgets/property/lv_roller_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_roller_properties.d ./App/lvgl-master/src/widgets/property/lv_roller_properties.o ./App/lvgl-master/src/widgets/property/lv_roller_properties.su ./App/lvgl-master/src/widgets/property/lv_slider_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_slider_properties.d ./App/lvgl-master/src/widgets/property/lv_slider_properties.o ./App/lvgl-master/src/widgets/property/lv_slider_properties.su ./App/lvgl-master/src/widgets/property/lv_style_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_style_properties.d ./App/lvgl-master/src/widgets/property/lv_style_properties.o ./App/lvgl-master/src/widgets/property/lv_style_properties.su ./App/lvgl-master/src/widgets/property/lv_textarea_properties.cyclo ./App/lvgl-master/src/widgets/property/lv_textarea_properties.d ./App/lvgl-master/src/widgets/property/lv_textarea_properties.o ./App/lvgl-master/src/widgets/property/lv_textarea_properties.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-widgets-2f-property

