################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/tests/src/test_cases/xml/test_xml_chart.c \
../App/lvgl-master/tests/src/test_cases/xml/test_xml_dropdown.c \
../App/lvgl-master/tests/src/test_cases/xml/test_xml_general.c \
../App/lvgl-master/tests/src/test_cases/xml/test_xml_image.c \
../App/lvgl-master/tests/src/test_cases/xml/test_xml_slider.c \
../App/lvgl-master/tests/src/test_cases/xml/test_xml_table.c \
../App/lvgl-master/tests/src/test_cases/xml/test_xml_tabview.c 

OBJS += \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_chart.o \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_dropdown.o \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_general.o \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_image.o \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_slider.o \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_table.o \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_tabview.o 

C_DEPS += \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_chart.d \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_dropdown.d \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_general.d \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_image.d \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_slider.d \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_table.d \
./App/lvgl-master/tests/src/test_cases/xml/test_xml_tabview.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/tests/src/test_cases/xml/%.o App/lvgl-master/tests/src/test_cases/xml/%.su App/lvgl-master/tests/src/test_cases/xml/%.cyclo: ../App/lvgl-master/tests/src/test_cases/xml/%.c App/lvgl-master/tests/src/test_cases/xml/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-xml

clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-xml:
	-$(RM) ./App/lvgl-master/tests/src/test_cases/xml/test_xml_chart.cyclo ./App/lvgl-master/tests/src/test_cases/xml/test_xml_chart.d ./App/lvgl-master/tests/src/test_cases/xml/test_xml_chart.o ./App/lvgl-master/tests/src/test_cases/xml/test_xml_chart.su ./App/lvgl-master/tests/src/test_cases/xml/test_xml_dropdown.cyclo ./App/lvgl-master/tests/src/test_cases/xml/test_xml_dropdown.d ./App/lvgl-master/tests/src/test_cases/xml/test_xml_dropdown.o ./App/lvgl-master/tests/src/test_cases/xml/test_xml_dropdown.su ./App/lvgl-master/tests/src/test_cases/xml/test_xml_general.cyclo ./App/lvgl-master/tests/src/test_cases/xml/test_xml_general.d ./App/lvgl-master/tests/src/test_cases/xml/test_xml_general.o ./App/lvgl-master/tests/src/test_cases/xml/test_xml_general.su ./App/lvgl-master/tests/src/test_cases/xml/test_xml_image.cyclo ./App/lvgl-master/tests/src/test_cases/xml/test_xml_image.d ./App/lvgl-master/tests/src/test_cases/xml/test_xml_image.o ./App/lvgl-master/tests/src/test_cases/xml/test_xml_image.su ./App/lvgl-master/tests/src/test_cases/xml/test_xml_slider.cyclo ./App/lvgl-master/tests/src/test_cases/xml/test_xml_slider.d ./App/lvgl-master/tests/src/test_cases/xml/test_xml_slider.o ./App/lvgl-master/tests/src/test_cases/xml/test_xml_slider.su ./App/lvgl-master/tests/src/test_cases/xml/test_xml_table.cyclo ./App/lvgl-master/tests/src/test_cases/xml/test_xml_table.d ./App/lvgl-master/tests/src/test_cases/xml/test_xml_table.o ./App/lvgl-master/tests/src/test_cases/xml/test_xml_table.su ./App/lvgl-master/tests/src/test_cases/xml/test_xml_tabview.cyclo ./App/lvgl-master/tests/src/test_cases/xml/test_xml_tabview.d ./App/lvgl-master/tests/src/test_cases/xml/test_xml_tabview.o ./App/lvgl-master/tests/src/test_cases/xml/test_xml_tabview.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-tests-2f-src-2f-test_cases-2f-xml

