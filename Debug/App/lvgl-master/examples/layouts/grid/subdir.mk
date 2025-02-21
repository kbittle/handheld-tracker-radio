################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/examples/layouts/grid/lv_example_grid_1.c \
../App/lvgl-master/examples/layouts/grid/lv_example_grid_2.c \
../App/lvgl-master/examples/layouts/grid/lv_example_grid_3.c \
../App/lvgl-master/examples/layouts/grid/lv_example_grid_4.c \
../App/lvgl-master/examples/layouts/grid/lv_example_grid_5.c \
../App/lvgl-master/examples/layouts/grid/lv_example_grid_6.c 

OBJS += \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_1.o \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_2.o \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_3.o \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_4.o \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_5.o \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_6.o 

C_DEPS += \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_1.d \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_2.d \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_3.d \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_4.d \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_5.d \
./App/lvgl-master/examples/layouts/grid/lv_example_grid_6.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/examples/layouts/grid/%.o App/lvgl-master/examples/layouts/grid/%.su App/lvgl-master/examples/layouts/grid/%.cyclo: ../App/lvgl-master/examples/layouts/grid/%.c App/lvgl-master/examples/layouts/grid/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-examples-2f-layouts-2f-grid

clean-App-2f-lvgl-2d-master-2f-examples-2f-layouts-2f-grid:
	-$(RM) ./App/lvgl-master/examples/layouts/grid/lv_example_grid_1.cyclo ./App/lvgl-master/examples/layouts/grid/lv_example_grid_1.d ./App/lvgl-master/examples/layouts/grid/lv_example_grid_1.o ./App/lvgl-master/examples/layouts/grid/lv_example_grid_1.su ./App/lvgl-master/examples/layouts/grid/lv_example_grid_2.cyclo ./App/lvgl-master/examples/layouts/grid/lv_example_grid_2.d ./App/lvgl-master/examples/layouts/grid/lv_example_grid_2.o ./App/lvgl-master/examples/layouts/grid/lv_example_grid_2.su ./App/lvgl-master/examples/layouts/grid/lv_example_grid_3.cyclo ./App/lvgl-master/examples/layouts/grid/lv_example_grid_3.d ./App/lvgl-master/examples/layouts/grid/lv_example_grid_3.o ./App/lvgl-master/examples/layouts/grid/lv_example_grid_3.su ./App/lvgl-master/examples/layouts/grid/lv_example_grid_4.cyclo ./App/lvgl-master/examples/layouts/grid/lv_example_grid_4.d ./App/lvgl-master/examples/layouts/grid/lv_example_grid_4.o ./App/lvgl-master/examples/layouts/grid/lv_example_grid_4.su ./App/lvgl-master/examples/layouts/grid/lv_example_grid_5.cyclo ./App/lvgl-master/examples/layouts/grid/lv_example_grid_5.d ./App/lvgl-master/examples/layouts/grid/lv_example_grid_5.o ./App/lvgl-master/examples/layouts/grid/lv_example_grid_5.su ./App/lvgl-master/examples/layouts/grid/lv_example_grid_6.cyclo ./App/lvgl-master/examples/layouts/grid/lv_example_grid_6.d ./App/lvgl-master/examples/layouts/grid/lv_example_grid_6.o ./App/lvgl-master/examples/layouts/grid/lv_example_grid_6.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-examples-2f-layouts-2f-grid

