################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/examples/others/gridnav/lv_example_gridnav_1.c \
../App/lvgl-master/examples/others/gridnav/lv_example_gridnav_2.c \
../App/lvgl-master/examples/others/gridnav/lv_example_gridnav_3.c \
../App/lvgl-master/examples/others/gridnav/lv_example_gridnav_4.c \
../App/lvgl-master/examples/others/gridnav/lv_example_gridnav_5.c 

OBJS += \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_1.o \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_2.o \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_3.o \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_4.o \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_5.o 

C_DEPS += \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_1.d \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_2.d \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_3.d \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_4.d \
./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_5.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/examples/others/gridnav/%.o App/lvgl-master/examples/others/gridnav/%.su App/lvgl-master/examples/others/gridnav/%.cyclo: ../App/lvgl-master/examples/others/gridnav/%.c App/lvgl-master/examples/others/gridnav/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-examples-2f-others-2f-gridnav

clean-App-2f-lvgl-2d-master-2f-examples-2f-others-2f-gridnav:
	-$(RM) ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_1.cyclo ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_1.d ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_1.o ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_1.su ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_2.cyclo ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_2.d ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_2.o ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_2.su ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_3.cyclo ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_3.d ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_3.o ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_3.su ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_4.cyclo ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_4.d ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_4.o ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_4.su ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_5.cyclo ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_5.d ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_5.o ./App/lvgl-master/examples/others/gridnav/lv_example_gridnav_5.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-examples-2f-others-2f-gridnav

