################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/libs/expat/xmlparse.c \
../App/lvgl-master/src/libs/expat/xmlrole.c \
../App/lvgl-master/src/libs/expat/xmltok.c \
../App/lvgl-master/src/libs/expat/xmltok_impl.c \
../App/lvgl-master/src/libs/expat/xmltok_ns.c 

OBJS += \
./App/lvgl-master/src/libs/expat/xmlparse.o \
./App/lvgl-master/src/libs/expat/xmlrole.o \
./App/lvgl-master/src/libs/expat/xmltok.o \
./App/lvgl-master/src/libs/expat/xmltok_impl.o \
./App/lvgl-master/src/libs/expat/xmltok_ns.o 

C_DEPS += \
./App/lvgl-master/src/libs/expat/xmlparse.d \
./App/lvgl-master/src/libs/expat/xmlrole.d \
./App/lvgl-master/src/libs/expat/xmltok.d \
./App/lvgl-master/src/libs/expat/xmltok_impl.d \
./App/lvgl-master/src/libs/expat/xmltok_ns.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/libs/expat/%.o App/lvgl-master/src/libs/expat/%.su App/lvgl-master/src/libs/expat/%.cyclo: ../App/lvgl-master/src/libs/expat/%.c App/lvgl-master/src/libs/expat/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-libs-2f-expat

clean-App-2f-lvgl-2d-master-2f-src-2f-libs-2f-expat:
	-$(RM) ./App/lvgl-master/src/libs/expat/xmlparse.cyclo ./App/lvgl-master/src/libs/expat/xmlparse.d ./App/lvgl-master/src/libs/expat/xmlparse.o ./App/lvgl-master/src/libs/expat/xmlparse.su ./App/lvgl-master/src/libs/expat/xmlrole.cyclo ./App/lvgl-master/src/libs/expat/xmlrole.d ./App/lvgl-master/src/libs/expat/xmlrole.o ./App/lvgl-master/src/libs/expat/xmlrole.su ./App/lvgl-master/src/libs/expat/xmltok.cyclo ./App/lvgl-master/src/libs/expat/xmltok.d ./App/lvgl-master/src/libs/expat/xmltok.o ./App/lvgl-master/src/libs/expat/xmltok.su ./App/lvgl-master/src/libs/expat/xmltok_impl.cyclo ./App/lvgl-master/src/libs/expat/xmltok_impl.d ./App/lvgl-master/src/libs/expat/xmltok_impl.o ./App/lvgl-master/src/libs/expat/xmltok_impl.su ./App/lvgl-master/src/libs/expat/xmltok_ns.cyclo ./App/lvgl-master/src/libs/expat/xmltok_ns.d ./App/lvgl-master/src/libs/expat/xmltok_ns.o ./App/lvgl-master/src/libs/expat/xmltok_ns.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-libs-2f-expat

