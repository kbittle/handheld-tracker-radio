################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.c \
../App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_flex_loader.c \
../App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_main.c \
../App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view.c \
../App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_child_node.c \
../App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.c 

OBJS += \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.o \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_flex_loader.o \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_main.o \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view.o \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_child_node.o \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.o 

C_DEPS += \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.d \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_flex_loader.d \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_main.d \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view.d \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_child_node.d \
./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/demos/flex_layout/%.o App/lvgl-master/demos/flex_layout/%.su App/lvgl-master/demos/flex_layout/%.cyclo: ../App/lvgl-master/demos/flex_layout/%.c App/lvgl-master/demos/flex_layout/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-demos-2f-flex_layout

clean-App-2f-lvgl-2d-master-2f-demos-2f-flex_layout:
	-$(RM) ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.cyclo ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.d ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.o ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_ctrl_pad.su ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_flex_loader.cyclo ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_flex_loader.d ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_flex_loader.o ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_flex_loader.su ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_main.cyclo ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_main.d ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_main.o ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_main.su ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view.cyclo ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view.d ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view.o ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view.su ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_child_node.cyclo ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_child_node.d ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_child_node.o ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_child_node.su ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.cyclo ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.d ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.o ./App/lvgl-master/demos/flex_layout/lv_demo_flex_layout_view_ctrl_pad.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-demos-2f-flex_layout

