################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/demos/high_res/lv_demo_high_res.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_api_example.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_app_about.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_app_ev_charging.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_home.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_meter.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_app_thermostat.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_home.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_top_margin.c \
../App/lvgl-master/demos/high_res/lv_demo_high_res_util.c 

OBJS += \
./App/lvgl-master/demos/high_res/lv_demo_high_res.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_api_example.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_about.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_ev_charging.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_home.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_meter.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_thermostat.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_home.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_top_margin.o \
./App/lvgl-master/demos/high_res/lv_demo_high_res_util.o 

C_DEPS += \
./App/lvgl-master/demos/high_res/lv_demo_high_res.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_api_example.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_about.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_ev_charging.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_home.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_meter.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_app_thermostat.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_home.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_top_margin.d \
./App/lvgl-master/demos/high_res/lv_demo_high_res_util.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/demos/high_res/%.o App/lvgl-master/demos/high_res/%.su App/lvgl-master/demos/high_res/%.cyclo: ../App/lvgl-master/demos/high_res/%.c App/lvgl-master/demos/high_res/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-demos-2f-high_res

clean-App-2f-lvgl-2d-master-2f-demos-2f-high_res:
	-$(RM) ./App/lvgl-master/demos/high_res/lv_demo_high_res.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res.d ./App/lvgl-master/demos/high_res/lv_demo_high_res.o ./App/lvgl-master/demos/high_res/lv_demo_high_res.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_api_example.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_api_example.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_api_example.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_api_example.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_about.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_about.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_about.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_about.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_ev_charging.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_ev_charging.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_ev_charging.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_ev_charging.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_home.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_home.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_home.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_home.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_meter.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_meter.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_meter.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_smart_meter.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_thermostat.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_thermostat.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_thermostat.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_app_thermostat.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_home.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_home.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_home.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_home.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_top_margin.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_top_margin.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_top_margin.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_top_margin.su ./App/lvgl-master/demos/high_res/lv_demo_high_res_util.cyclo ./App/lvgl-master/demos/high_res/lv_demo_high_res_util.d ./App/lvgl-master/demos/high_res/lv_demo_high_res_util.o ./App/lvgl-master/demos/high_res/lv_demo_high_res_util.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-demos-2f-high_res

