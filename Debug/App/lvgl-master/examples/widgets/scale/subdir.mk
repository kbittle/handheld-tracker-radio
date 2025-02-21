################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_1.c \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_2.c \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_3.c \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_4.c \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_5.c \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_6.c \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_7.c \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_8.c \
../App/lvgl-master/examples/widgets/scale/lv_example_scale_9.c 

OBJS += \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_1.o \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_2.o \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_3.o \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_4.o \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_5.o \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_6.o \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_7.o \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_8.o \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_9.o 

C_DEPS += \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_1.d \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_2.d \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_3.d \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_4.d \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_5.d \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_6.d \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_7.d \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_8.d \
./App/lvgl-master/examples/widgets/scale/lv_example_scale_9.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/examples/widgets/scale/%.o App/lvgl-master/examples/widgets/scale/%.su App/lvgl-master/examples/widgets/scale/%.cyclo: ../App/lvgl-master/examples/widgets/scale/%.c App/lvgl-master/examples/widgets/scale/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-examples-2f-widgets-2f-scale

clean-App-2f-lvgl-2d-master-2f-examples-2f-widgets-2f-scale:
	-$(RM) ./App/lvgl-master/examples/widgets/scale/lv_example_scale_1.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_1.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_1.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_1.su ./App/lvgl-master/examples/widgets/scale/lv_example_scale_2.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_2.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_2.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_2.su ./App/lvgl-master/examples/widgets/scale/lv_example_scale_3.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_3.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_3.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_3.su ./App/lvgl-master/examples/widgets/scale/lv_example_scale_4.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_4.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_4.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_4.su ./App/lvgl-master/examples/widgets/scale/lv_example_scale_5.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_5.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_5.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_5.su ./App/lvgl-master/examples/widgets/scale/lv_example_scale_6.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_6.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_6.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_6.su ./App/lvgl-master/examples/widgets/scale/lv_example_scale_7.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_7.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_7.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_7.su ./App/lvgl-master/examples/widgets/scale/lv_example_scale_8.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_8.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_8.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_8.su ./App/lvgl-master/examples/widgets/scale/lv_example_scale_9.cyclo ./App/lvgl-master/examples/widgets/scale/lv_example_scale_9.d ./App/lvgl-master/examples/widgets/scale/lv_example_scale_9.o ./App/lvgl-master/examples/widgets/scale/lv_example_scale_9.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-examples-2f-widgets-2f-scale

