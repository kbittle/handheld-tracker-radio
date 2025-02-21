################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/examples/event/lv_example_event_bubble.c \
../App/lvgl-master/examples/event/lv_example_event_button.c \
../App/lvgl-master/examples/event/lv_example_event_click.c \
../App/lvgl-master/examples/event/lv_example_event_draw.c \
../App/lvgl-master/examples/event/lv_example_event_streak.c 

OBJS += \
./App/lvgl-master/examples/event/lv_example_event_bubble.o \
./App/lvgl-master/examples/event/lv_example_event_button.o \
./App/lvgl-master/examples/event/lv_example_event_click.o \
./App/lvgl-master/examples/event/lv_example_event_draw.o \
./App/lvgl-master/examples/event/lv_example_event_streak.o 

C_DEPS += \
./App/lvgl-master/examples/event/lv_example_event_bubble.d \
./App/lvgl-master/examples/event/lv_example_event_button.d \
./App/lvgl-master/examples/event/lv_example_event_click.d \
./App/lvgl-master/examples/event/lv_example_event_draw.d \
./App/lvgl-master/examples/event/lv_example_event_streak.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/examples/event/%.o App/lvgl-master/examples/event/%.su App/lvgl-master/examples/event/%.cyclo: ../App/lvgl-master/examples/event/%.c App/lvgl-master/examples/event/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-examples-2f-event

clean-App-2f-lvgl-2d-master-2f-examples-2f-event:
	-$(RM) ./App/lvgl-master/examples/event/lv_example_event_bubble.cyclo ./App/lvgl-master/examples/event/lv_example_event_bubble.d ./App/lvgl-master/examples/event/lv_example_event_bubble.o ./App/lvgl-master/examples/event/lv_example_event_bubble.su ./App/lvgl-master/examples/event/lv_example_event_button.cyclo ./App/lvgl-master/examples/event/lv_example_event_button.d ./App/lvgl-master/examples/event/lv_example_event_button.o ./App/lvgl-master/examples/event/lv_example_event_button.su ./App/lvgl-master/examples/event/lv_example_event_click.cyclo ./App/lvgl-master/examples/event/lv_example_event_click.d ./App/lvgl-master/examples/event/lv_example_event_click.o ./App/lvgl-master/examples/event/lv_example_event_click.su ./App/lvgl-master/examples/event/lv_example_event_draw.cyclo ./App/lvgl-master/examples/event/lv_example_event_draw.d ./App/lvgl-master/examples/event/lv_example_event_draw.o ./App/lvgl-master/examples/event/lv_example_event_draw.su ./App/lvgl-master/examples/event/lv_example_event_streak.cyclo ./App/lvgl-master/examples/event/lv_example_event_streak.d ./App/lvgl-master/examples/event/lv_example_event_streak.o ./App/lvgl-master/examples/event/lv_example_event_streak.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-examples-2f-event

