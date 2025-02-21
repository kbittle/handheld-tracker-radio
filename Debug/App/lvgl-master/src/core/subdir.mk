################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/core/lv_group.c \
../App/lvgl-master/src/core/lv_obj.c \
../App/lvgl-master/src/core/lv_obj_class.c \
../App/lvgl-master/src/core/lv_obj_draw.c \
../App/lvgl-master/src/core/lv_obj_event.c \
../App/lvgl-master/src/core/lv_obj_id_builtin.c \
../App/lvgl-master/src/core/lv_obj_pos.c \
../App/lvgl-master/src/core/lv_obj_property.c \
../App/lvgl-master/src/core/lv_obj_scroll.c \
../App/lvgl-master/src/core/lv_obj_style.c \
../App/lvgl-master/src/core/lv_obj_style_gen.c \
../App/lvgl-master/src/core/lv_obj_tree.c \
../App/lvgl-master/src/core/lv_refr.c 

OBJS += \
./App/lvgl-master/src/core/lv_group.o \
./App/lvgl-master/src/core/lv_obj.o \
./App/lvgl-master/src/core/lv_obj_class.o \
./App/lvgl-master/src/core/lv_obj_draw.o \
./App/lvgl-master/src/core/lv_obj_event.o \
./App/lvgl-master/src/core/lv_obj_id_builtin.o \
./App/lvgl-master/src/core/lv_obj_pos.o \
./App/lvgl-master/src/core/lv_obj_property.o \
./App/lvgl-master/src/core/lv_obj_scroll.o \
./App/lvgl-master/src/core/lv_obj_style.o \
./App/lvgl-master/src/core/lv_obj_style_gen.o \
./App/lvgl-master/src/core/lv_obj_tree.o \
./App/lvgl-master/src/core/lv_refr.o 

C_DEPS += \
./App/lvgl-master/src/core/lv_group.d \
./App/lvgl-master/src/core/lv_obj.d \
./App/lvgl-master/src/core/lv_obj_class.d \
./App/lvgl-master/src/core/lv_obj_draw.d \
./App/lvgl-master/src/core/lv_obj_event.d \
./App/lvgl-master/src/core/lv_obj_id_builtin.d \
./App/lvgl-master/src/core/lv_obj_pos.d \
./App/lvgl-master/src/core/lv_obj_property.d \
./App/lvgl-master/src/core/lv_obj_scroll.d \
./App/lvgl-master/src/core/lv_obj_style.d \
./App/lvgl-master/src/core/lv_obj_style_gen.d \
./App/lvgl-master/src/core/lv_obj_tree.d \
./App/lvgl-master/src/core/lv_refr.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/core/%.o App/lvgl-master/src/core/%.su App/lvgl-master/src/core/%.cyclo: ../App/lvgl-master/src/core/%.c App/lvgl-master/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-core

clean-App-2f-lvgl-2d-master-2f-src-2f-core:
	-$(RM) ./App/lvgl-master/src/core/lv_group.cyclo ./App/lvgl-master/src/core/lv_group.d ./App/lvgl-master/src/core/lv_group.o ./App/lvgl-master/src/core/lv_group.su ./App/lvgl-master/src/core/lv_obj.cyclo ./App/lvgl-master/src/core/lv_obj.d ./App/lvgl-master/src/core/lv_obj.o ./App/lvgl-master/src/core/lv_obj.su ./App/lvgl-master/src/core/lv_obj_class.cyclo ./App/lvgl-master/src/core/lv_obj_class.d ./App/lvgl-master/src/core/lv_obj_class.o ./App/lvgl-master/src/core/lv_obj_class.su ./App/lvgl-master/src/core/lv_obj_draw.cyclo ./App/lvgl-master/src/core/lv_obj_draw.d ./App/lvgl-master/src/core/lv_obj_draw.o ./App/lvgl-master/src/core/lv_obj_draw.su ./App/lvgl-master/src/core/lv_obj_event.cyclo ./App/lvgl-master/src/core/lv_obj_event.d ./App/lvgl-master/src/core/lv_obj_event.o ./App/lvgl-master/src/core/lv_obj_event.su ./App/lvgl-master/src/core/lv_obj_id_builtin.cyclo ./App/lvgl-master/src/core/lv_obj_id_builtin.d ./App/lvgl-master/src/core/lv_obj_id_builtin.o ./App/lvgl-master/src/core/lv_obj_id_builtin.su ./App/lvgl-master/src/core/lv_obj_pos.cyclo ./App/lvgl-master/src/core/lv_obj_pos.d ./App/lvgl-master/src/core/lv_obj_pos.o ./App/lvgl-master/src/core/lv_obj_pos.su ./App/lvgl-master/src/core/lv_obj_property.cyclo ./App/lvgl-master/src/core/lv_obj_property.d ./App/lvgl-master/src/core/lv_obj_property.o ./App/lvgl-master/src/core/lv_obj_property.su ./App/lvgl-master/src/core/lv_obj_scroll.cyclo ./App/lvgl-master/src/core/lv_obj_scroll.d ./App/lvgl-master/src/core/lv_obj_scroll.o ./App/lvgl-master/src/core/lv_obj_scroll.su ./App/lvgl-master/src/core/lv_obj_style.cyclo ./App/lvgl-master/src/core/lv_obj_style.d ./App/lvgl-master/src/core/lv_obj_style.o ./App/lvgl-master/src/core/lv_obj_style.su ./App/lvgl-master/src/core/lv_obj_style_gen.cyclo ./App/lvgl-master/src/core/lv_obj_style_gen.d ./App/lvgl-master/src/core/lv_obj_style_gen.o ./App/lvgl-master/src/core/lv_obj_style_gen.su ./App/lvgl-master/src/core/lv_obj_tree.cyclo ./App/lvgl-master/src/core/lv_obj_tree.d ./App/lvgl-master/src/core/lv_obj_tree.o ./App/lvgl-master/src/core/lv_obj_tree.su ./App/lvgl-master/src/core/lv_refr.cyclo ./App/lvgl-master/src/core/lv_refr.d ./App/lvgl-master/src/core/lv_refr.o ./App/lvgl-master/src/core/lv_refr.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-core

