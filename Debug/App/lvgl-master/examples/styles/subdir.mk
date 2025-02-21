################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/examples/styles/lv_example_style_1.c \
../App/lvgl-master/examples/styles/lv_example_style_10.c \
../App/lvgl-master/examples/styles/lv_example_style_11.c \
../App/lvgl-master/examples/styles/lv_example_style_12.c \
../App/lvgl-master/examples/styles/lv_example_style_13.c \
../App/lvgl-master/examples/styles/lv_example_style_14.c \
../App/lvgl-master/examples/styles/lv_example_style_15.c \
../App/lvgl-master/examples/styles/lv_example_style_16.c \
../App/lvgl-master/examples/styles/lv_example_style_17.c \
../App/lvgl-master/examples/styles/lv_example_style_18.c \
../App/lvgl-master/examples/styles/lv_example_style_2.c \
../App/lvgl-master/examples/styles/lv_example_style_3.c \
../App/lvgl-master/examples/styles/lv_example_style_4.c \
../App/lvgl-master/examples/styles/lv_example_style_5.c \
../App/lvgl-master/examples/styles/lv_example_style_6.c \
../App/lvgl-master/examples/styles/lv_example_style_7.c \
../App/lvgl-master/examples/styles/lv_example_style_8.c \
../App/lvgl-master/examples/styles/lv_example_style_9.c 

OBJS += \
./App/lvgl-master/examples/styles/lv_example_style_1.o \
./App/lvgl-master/examples/styles/lv_example_style_10.o \
./App/lvgl-master/examples/styles/lv_example_style_11.o \
./App/lvgl-master/examples/styles/lv_example_style_12.o \
./App/lvgl-master/examples/styles/lv_example_style_13.o \
./App/lvgl-master/examples/styles/lv_example_style_14.o \
./App/lvgl-master/examples/styles/lv_example_style_15.o \
./App/lvgl-master/examples/styles/lv_example_style_16.o \
./App/lvgl-master/examples/styles/lv_example_style_17.o \
./App/lvgl-master/examples/styles/lv_example_style_18.o \
./App/lvgl-master/examples/styles/lv_example_style_2.o \
./App/lvgl-master/examples/styles/lv_example_style_3.o \
./App/lvgl-master/examples/styles/lv_example_style_4.o \
./App/lvgl-master/examples/styles/lv_example_style_5.o \
./App/lvgl-master/examples/styles/lv_example_style_6.o \
./App/lvgl-master/examples/styles/lv_example_style_7.o \
./App/lvgl-master/examples/styles/lv_example_style_8.o \
./App/lvgl-master/examples/styles/lv_example_style_9.o 

C_DEPS += \
./App/lvgl-master/examples/styles/lv_example_style_1.d \
./App/lvgl-master/examples/styles/lv_example_style_10.d \
./App/lvgl-master/examples/styles/lv_example_style_11.d \
./App/lvgl-master/examples/styles/lv_example_style_12.d \
./App/lvgl-master/examples/styles/lv_example_style_13.d \
./App/lvgl-master/examples/styles/lv_example_style_14.d \
./App/lvgl-master/examples/styles/lv_example_style_15.d \
./App/lvgl-master/examples/styles/lv_example_style_16.d \
./App/lvgl-master/examples/styles/lv_example_style_17.d \
./App/lvgl-master/examples/styles/lv_example_style_18.d \
./App/lvgl-master/examples/styles/lv_example_style_2.d \
./App/lvgl-master/examples/styles/lv_example_style_3.d \
./App/lvgl-master/examples/styles/lv_example_style_4.d \
./App/lvgl-master/examples/styles/lv_example_style_5.d \
./App/lvgl-master/examples/styles/lv_example_style_6.d \
./App/lvgl-master/examples/styles/lv_example_style_7.d \
./App/lvgl-master/examples/styles/lv_example_style_8.d \
./App/lvgl-master/examples/styles/lv_example_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/examples/styles/%.o App/lvgl-master/examples/styles/%.su App/lvgl-master/examples/styles/%.cyclo: ../App/lvgl-master/examples/styles/%.c App/lvgl-master/examples/styles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-examples-2f-styles

clean-App-2f-lvgl-2d-master-2f-examples-2f-styles:
	-$(RM) ./App/lvgl-master/examples/styles/lv_example_style_1.cyclo ./App/lvgl-master/examples/styles/lv_example_style_1.d ./App/lvgl-master/examples/styles/lv_example_style_1.o ./App/lvgl-master/examples/styles/lv_example_style_1.su ./App/lvgl-master/examples/styles/lv_example_style_10.cyclo ./App/lvgl-master/examples/styles/lv_example_style_10.d ./App/lvgl-master/examples/styles/lv_example_style_10.o ./App/lvgl-master/examples/styles/lv_example_style_10.su ./App/lvgl-master/examples/styles/lv_example_style_11.cyclo ./App/lvgl-master/examples/styles/lv_example_style_11.d ./App/lvgl-master/examples/styles/lv_example_style_11.o ./App/lvgl-master/examples/styles/lv_example_style_11.su ./App/lvgl-master/examples/styles/lv_example_style_12.cyclo ./App/lvgl-master/examples/styles/lv_example_style_12.d ./App/lvgl-master/examples/styles/lv_example_style_12.o ./App/lvgl-master/examples/styles/lv_example_style_12.su ./App/lvgl-master/examples/styles/lv_example_style_13.cyclo ./App/lvgl-master/examples/styles/lv_example_style_13.d ./App/lvgl-master/examples/styles/lv_example_style_13.o ./App/lvgl-master/examples/styles/lv_example_style_13.su ./App/lvgl-master/examples/styles/lv_example_style_14.cyclo ./App/lvgl-master/examples/styles/lv_example_style_14.d ./App/lvgl-master/examples/styles/lv_example_style_14.o ./App/lvgl-master/examples/styles/lv_example_style_14.su ./App/lvgl-master/examples/styles/lv_example_style_15.cyclo ./App/lvgl-master/examples/styles/lv_example_style_15.d ./App/lvgl-master/examples/styles/lv_example_style_15.o ./App/lvgl-master/examples/styles/lv_example_style_15.su ./App/lvgl-master/examples/styles/lv_example_style_16.cyclo ./App/lvgl-master/examples/styles/lv_example_style_16.d ./App/lvgl-master/examples/styles/lv_example_style_16.o ./App/lvgl-master/examples/styles/lv_example_style_16.su ./App/lvgl-master/examples/styles/lv_example_style_17.cyclo ./App/lvgl-master/examples/styles/lv_example_style_17.d ./App/lvgl-master/examples/styles/lv_example_style_17.o ./App/lvgl-master/examples/styles/lv_example_style_17.su ./App/lvgl-master/examples/styles/lv_example_style_18.cyclo ./App/lvgl-master/examples/styles/lv_example_style_18.d ./App/lvgl-master/examples/styles/lv_example_style_18.o ./App/lvgl-master/examples/styles/lv_example_style_18.su ./App/lvgl-master/examples/styles/lv_example_style_2.cyclo ./App/lvgl-master/examples/styles/lv_example_style_2.d ./App/lvgl-master/examples/styles/lv_example_style_2.o ./App/lvgl-master/examples/styles/lv_example_style_2.su ./App/lvgl-master/examples/styles/lv_example_style_3.cyclo ./App/lvgl-master/examples/styles/lv_example_style_3.d ./App/lvgl-master/examples/styles/lv_example_style_3.o ./App/lvgl-master/examples/styles/lv_example_style_3.su ./App/lvgl-master/examples/styles/lv_example_style_4.cyclo ./App/lvgl-master/examples/styles/lv_example_style_4.d ./App/lvgl-master/examples/styles/lv_example_style_4.o ./App/lvgl-master/examples/styles/lv_example_style_4.su ./App/lvgl-master/examples/styles/lv_example_style_5.cyclo ./App/lvgl-master/examples/styles/lv_example_style_5.d ./App/lvgl-master/examples/styles/lv_example_style_5.o ./App/lvgl-master/examples/styles/lv_example_style_5.su ./App/lvgl-master/examples/styles/lv_example_style_6.cyclo ./App/lvgl-master/examples/styles/lv_example_style_6.d ./App/lvgl-master/examples/styles/lv_example_style_6.o ./App/lvgl-master/examples/styles/lv_example_style_6.su ./App/lvgl-master/examples/styles/lv_example_style_7.cyclo ./App/lvgl-master/examples/styles/lv_example_style_7.d ./App/lvgl-master/examples/styles/lv_example_style_7.o ./App/lvgl-master/examples/styles/lv_example_style_7.su ./App/lvgl-master/examples/styles/lv_example_style_8.cyclo ./App/lvgl-master/examples/styles/lv_example_style_8.d ./App/lvgl-master/examples/styles/lv_example_style_8.o ./App/lvgl-master/examples/styles/lv_example_style_8.su ./App/lvgl-master/examples/styles/lv_example_style_9.cyclo ./App/lvgl-master/examples/styles/lv_example_style_9.d ./App/lvgl-master/examples/styles/lv_example_style_9.o ./App/lvgl-master/examples/styles/lv_example_style_9.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-examples-2f-styles

