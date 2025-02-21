################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/others/xml/parsers/lv_xml_button_parser.c \
../App/lvgl-master/src/others/xml/parsers/lv_xml_chart_parser.c \
../App/lvgl-master/src/others/xml/parsers/lv_xml_dropdown_parser.c \
../App/lvgl-master/src/others/xml/parsers/lv_xml_image_parser.c \
../App/lvgl-master/src/others/xml/parsers/lv_xml_label_parser.c \
../App/lvgl-master/src/others/xml/parsers/lv_xml_obj_parser.c \
../App/lvgl-master/src/others/xml/parsers/lv_xml_slider_parser.c \
../App/lvgl-master/src/others/xml/parsers/lv_xml_table_parser.c \
../App/lvgl-master/src/others/xml/parsers/lv_xml_tabview_parser.c 

OBJS += \
./App/lvgl-master/src/others/xml/parsers/lv_xml_button_parser.o \
./App/lvgl-master/src/others/xml/parsers/lv_xml_chart_parser.o \
./App/lvgl-master/src/others/xml/parsers/lv_xml_dropdown_parser.o \
./App/lvgl-master/src/others/xml/parsers/lv_xml_image_parser.o \
./App/lvgl-master/src/others/xml/parsers/lv_xml_label_parser.o \
./App/lvgl-master/src/others/xml/parsers/lv_xml_obj_parser.o \
./App/lvgl-master/src/others/xml/parsers/lv_xml_slider_parser.o \
./App/lvgl-master/src/others/xml/parsers/lv_xml_table_parser.o \
./App/lvgl-master/src/others/xml/parsers/lv_xml_tabview_parser.o 

C_DEPS += \
./App/lvgl-master/src/others/xml/parsers/lv_xml_button_parser.d \
./App/lvgl-master/src/others/xml/parsers/lv_xml_chart_parser.d \
./App/lvgl-master/src/others/xml/parsers/lv_xml_dropdown_parser.d \
./App/lvgl-master/src/others/xml/parsers/lv_xml_image_parser.d \
./App/lvgl-master/src/others/xml/parsers/lv_xml_label_parser.d \
./App/lvgl-master/src/others/xml/parsers/lv_xml_obj_parser.d \
./App/lvgl-master/src/others/xml/parsers/lv_xml_slider_parser.d \
./App/lvgl-master/src/others/xml/parsers/lv_xml_table_parser.d \
./App/lvgl-master/src/others/xml/parsers/lv_xml_tabview_parser.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/others/xml/parsers/%.o App/lvgl-master/src/others/xml/parsers/%.su App/lvgl-master/src/others/xml/parsers/%.cyclo: ../App/lvgl-master/src/others/xml/parsers/%.c App/lvgl-master/src/others/xml/parsers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-xml-2f-parsers

clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-xml-2f-parsers:
	-$(RM) ./App/lvgl-master/src/others/xml/parsers/lv_xml_button_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_button_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_button_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_button_parser.su ./App/lvgl-master/src/others/xml/parsers/lv_xml_chart_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_chart_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_chart_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_chart_parser.su ./App/lvgl-master/src/others/xml/parsers/lv_xml_dropdown_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_dropdown_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_dropdown_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_dropdown_parser.su ./App/lvgl-master/src/others/xml/parsers/lv_xml_image_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_image_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_image_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_image_parser.su ./App/lvgl-master/src/others/xml/parsers/lv_xml_label_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_label_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_label_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_label_parser.su ./App/lvgl-master/src/others/xml/parsers/lv_xml_obj_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_obj_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_obj_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_obj_parser.su ./App/lvgl-master/src/others/xml/parsers/lv_xml_slider_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_slider_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_slider_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_slider_parser.su ./App/lvgl-master/src/others/xml/parsers/lv_xml_table_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_table_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_table_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_table_parser.su ./App/lvgl-master/src/others/xml/parsers/lv_xml_tabview_parser.cyclo ./App/lvgl-master/src/others/xml/parsers/lv_xml_tabview_parser.d ./App/lvgl-master/src/others/xml/parsers/lv_xml_tabview_parser.o ./App/lvgl-master/src/others/xml/parsers/lv_xml_tabview_parser.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-others-2f-xml-2f-parsers

