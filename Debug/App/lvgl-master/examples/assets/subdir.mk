################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/examples/assets/animimg001.c \
../App/lvgl-master/examples/assets/animimg002.c \
../App/lvgl-master/examples/assets/animimg003.c \
../App/lvgl-master/examples/assets/img_caret_down.c \
../App/lvgl-master/examples/assets/img_cogwheel_argb.c \
../App/lvgl-master/examples/assets/img_cogwheel_indexed16.c \
../App/lvgl-master/examples/assets/img_cogwheel_rgb.c \
../App/lvgl-master/examples/assets/img_hand.c \
../App/lvgl-master/examples/assets/img_skew_strip.c \
../App/lvgl-master/examples/assets/img_star.c \
../App/lvgl-master/examples/assets/imgbtn_left.c \
../App/lvgl-master/examples/assets/imgbtn_mid.c \
../App/lvgl-master/examples/assets/imgbtn_right.c 

OBJS += \
./App/lvgl-master/examples/assets/animimg001.o \
./App/lvgl-master/examples/assets/animimg002.o \
./App/lvgl-master/examples/assets/animimg003.o \
./App/lvgl-master/examples/assets/img_caret_down.o \
./App/lvgl-master/examples/assets/img_cogwheel_argb.o \
./App/lvgl-master/examples/assets/img_cogwheel_indexed16.o \
./App/lvgl-master/examples/assets/img_cogwheel_rgb.o \
./App/lvgl-master/examples/assets/img_hand.o \
./App/lvgl-master/examples/assets/img_skew_strip.o \
./App/lvgl-master/examples/assets/img_star.o \
./App/lvgl-master/examples/assets/imgbtn_left.o \
./App/lvgl-master/examples/assets/imgbtn_mid.o \
./App/lvgl-master/examples/assets/imgbtn_right.o 

C_DEPS += \
./App/lvgl-master/examples/assets/animimg001.d \
./App/lvgl-master/examples/assets/animimg002.d \
./App/lvgl-master/examples/assets/animimg003.d \
./App/lvgl-master/examples/assets/img_caret_down.d \
./App/lvgl-master/examples/assets/img_cogwheel_argb.d \
./App/lvgl-master/examples/assets/img_cogwheel_indexed16.d \
./App/lvgl-master/examples/assets/img_cogwheel_rgb.d \
./App/lvgl-master/examples/assets/img_hand.d \
./App/lvgl-master/examples/assets/img_skew_strip.d \
./App/lvgl-master/examples/assets/img_star.d \
./App/lvgl-master/examples/assets/imgbtn_left.d \
./App/lvgl-master/examples/assets/imgbtn_mid.d \
./App/lvgl-master/examples/assets/imgbtn_right.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/examples/assets/%.o App/lvgl-master/examples/assets/%.su App/lvgl-master/examples/assets/%.cyclo: ../App/lvgl-master/examples/assets/%.c App/lvgl-master/examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-examples-2f-assets

clean-App-2f-lvgl-2d-master-2f-examples-2f-assets:
	-$(RM) ./App/lvgl-master/examples/assets/animimg001.cyclo ./App/lvgl-master/examples/assets/animimg001.d ./App/lvgl-master/examples/assets/animimg001.o ./App/lvgl-master/examples/assets/animimg001.su ./App/lvgl-master/examples/assets/animimg002.cyclo ./App/lvgl-master/examples/assets/animimg002.d ./App/lvgl-master/examples/assets/animimg002.o ./App/lvgl-master/examples/assets/animimg002.su ./App/lvgl-master/examples/assets/animimg003.cyclo ./App/lvgl-master/examples/assets/animimg003.d ./App/lvgl-master/examples/assets/animimg003.o ./App/lvgl-master/examples/assets/animimg003.su ./App/lvgl-master/examples/assets/img_caret_down.cyclo ./App/lvgl-master/examples/assets/img_caret_down.d ./App/lvgl-master/examples/assets/img_caret_down.o ./App/lvgl-master/examples/assets/img_caret_down.su ./App/lvgl-master/examples/assets/img_cogwheel_argb.cyclo ./App/lvgl-master/examples/assets/img_cogwheel_argb.d ./App/lvgl-master/examples/assets/img_cogwheel_argb.o ./App/lvgl-master/examples/assets/img_cogwheel_argb.su ./App/lvgl-master/examples/assets/img_cogwheel_indexed16.cyclo ./App/lvgl-master/examples/assets/img_cogwheel_indexed16.d ./App/lvgl-master/examples/assets/img_cogwheel_indexed16.o ./App/lvgl-master/examples/assets/img_cogwheel_indexed16.su ./App/lvgl-master/examples/assets/img_cogwheel_rgb.cyclo ./App/lvgl-master/examples/assets/img_cogwheel_rgb.d ./App/lvgl-master/examples/assets/img_cogwheel_rgb.o ./App/lvgl-master/examples/assets/img_cogwheel_rgb.su ./App/lvgl-master/examples/assets/img_hand.cyclo ./App/lvgl-master/examples/assets/img_hand.d ./App/lvgl-master/examples/assets/img_hand.o ./App/lvgl-master/examples/assets/img_hand.su ./App/lvgl-master/examples/assets/img_skew_strip.cyclo ./App/lvgl-master/examples/assets/img_skew_strip.d ./App/lvgl-master/examples/assets/img_skew_strip.o ./App/lvgl-master/examples/assets/img_skew_strip.su ./App/lvgl-master/examples/assets/img_star.cyclo ./App/lvgl-master/examples/assets/img_star.d ./App/lvgl-master/examples/assets/img_star.o ./App/lvgl-master/examples/assets/img_star.su ./App/lvgl-master/examples/assets/imgbtn_left.cyclo ./App/lvgl-master/examples/assets/imgbtn_left.d ./App/lvgl-master/examples/assets/imgbtn_left.o ./App/lvgl-master/examples/assets/imgbtn_left.su ./App/lvgl-master/examples/assets/imgbtn_mid.cyclo ./App/lvgl-master/examples/assets/imgbtn_mid.d ./App/lvgl-master/examples/assets/imgbtn_mid.o ./App/lvgl-master/examples/assets/imgbtn_mid.su ./App/lvgl-master/examples/assets/imgbtn_right.cyclo ./App/lvgl-master/examples/assets/imgbtn_right.d ./App/lvgl-master/examples/assets/imgbtn_right.o ./App/lvgl-master/examples/assets/imgbtn_right.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-examples-2f-assets

