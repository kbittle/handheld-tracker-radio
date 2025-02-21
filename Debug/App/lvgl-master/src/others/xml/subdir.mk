################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/others/xml/lv_xml.c \
../App/lvgl-master/src/others/xml/lv_xml_base_types.c \
../App/lvgl-master/src/others/xml/lv_xml_component.c \
../App/lvgl-master/src/others/xml/lv_xml_parser.c \
../App/lvgl-master/src/others/xml/lv_xml_style.c \
../App/lvgl-master/src/others/xml/lv_xml_utils.c \
../App/lvgl-master/src/others/xml/lv_xml_widget.c 

OBJS += \
./App/lvgl-master/src/others/xml/lv_xml.o \
./App/lvgl-master/src/others/xml/lv_xml_base_types.o \
./App/lvgl-master/src/others/xml/lv_xml_component.o \
./App/lvgl-master/src/others/xml/lv_xml_parser.o \
./App/lvgl-master/src/others/xml/lv_xml_style.o \
./App/lvgl-master/src/others/xml/lv_xml_utils.o \
./App/lvgl-master/src/others/xml/lv_xml_widget.o 

C_DEPS += \
./App/lvgl-master/src/others/xml/lv_xml.d \
./App/lvgl-master/src/others/xml/lv_xml_base_types.d \
./App/lvgl-master/src/others/xml/lv_xml_component.d \
./App/lvgl-master/src/others/xml/lv_xml_parser.d \
./App/lvgl-master/src/others/xml/lv_xml_style.d \
./App/lvgl-master/src/others/xml/lv_xml_utils.d \
./App/lvgl-master/src/others/xml/lv_xml_widget.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/others/xml/%.o App/lvgl-master/src/others/xml/%.su App/lvgl-master/src/others/xml/%.cyclo: ../App/lvgl-master/src/others/xml/%.c App/lvgl-master/src/others/xml/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-xml

clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-xml:
	-$(RM) ./App/lvgl-master/src/others/xml/lv_xml.cyclo ./App/lvgl-master/src/others/xml/lv_xml.d ./App/lvgl-master/src/others/xml/lv_xml.o ./App/lvgl-master/src/others/xml/lv_xml.su ./App/lvgl-master/src/others/xml/lv_xml_base_types.cyclo ./App/lvgl-master/src/others/xml/lv_xml_base_types.d ./App/lvgl-master/src/others/xml/lv_xml_base_types.o ./App/lvgl-master/src/others/xml/lv_xml_base_types.su ./App/lvgl-master/src/others/xml/lv_xml_component.cyclo ./App/lvgl-master/src/others/xml/lv_xml_component.d ./App/lvgl-master/src/others/xml/lv_xml_component.o ./App/lvgl-master/src/others/xml/lv_xml_component.su ./App/lvgl-master/src/others/xml/lv_xml_parser.cyclo ./App/lvgl-master/src/others/xml/lv_xml_parser.d ./App/lvgl-master/src/others/xml/lv_xml_parser.o ./App/lvgl-master/src/others/xml/lv_xml_parser.su ./App/lvgl-master/src/others/xml/lv_xml_style.cyclo ./App/lvgl-master/src/others/xml/lv_xml_style.d ./App/lvgl-master/src/others/xml/lv_xml_style.o ./App/lvgl-master/src/others/xml/lv_xml_style.su ./App/lvgl-master/src/others/xml/lv_xml_utils.cyclo ./App/lvgl-master/src/others/xml/lv_xml_utils.d ./App/lvgl-master/src/others/xml/lv_xml_utils.o ./App/lvgl-master/src/others/xml/lv_xml_utils.su ./App/lvgl-master/src/others/xml/lv_xml_widget.cyclo ./App/lvgl-master/src/others/xml/lv_xml_widget.d ./App/lvgl-master/src/others/xml/lv_xml_widget.o ./App/lvgl-master/src/others/xml/lv_xml_widget.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-xml

