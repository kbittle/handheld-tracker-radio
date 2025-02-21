################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/src/drivers/glfw/lv_glfw_window.c \
../App/lvgl-master/src/drivers/glfw/lv_opengles_debug.c \
../App/lvgl-master/src/drivers/glfw/lv_opengles_driver.c \
../App/lvgl-master/src/drivers/glfw/lv_opengles_texture.c 

OBJS += \
./App/lvgl-master/src/drivers/glfw/lv_glfw_window.o \
./App/lvgl-master/src/drivers/glfw/lv_opengles_debug.o \
./App/lvgl-master/src/drivers/glfw/lv_opengles_driver.o \
./App/lvgl-master/src/drivers/glfw/lv_opengles_texture.o 

C_DEPS += \
./App/lvgl-master/src/drivers/glfw/lv_glfw_window.d \
./App/lvgl-master/src/drivers/glfw/lv_opengles_debug.d \
./App/lvgl-master/src/drivers/glfw/lv_opengles_driver.d \
./App/lvgl-master/src/drivers/glfw/lv_opengles_texture.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/src/drivers/glfw/%.o App/lvgl-master/src/drivers/glfw/%.su App/lvgl-master/src/drivers/glfw/%.cyclo: ../App/lvgl-master/src/drivers/glfw/%.c App/lvgl-master/src/drivers/glfw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-src-2f-drivers-2f-glfw

clean-App-2f-lvgl-2d-master-2f-src-2f-drivers-2f-glfw:
	-$(RM) ./App/lvgl-master/src/drivers/glfw/lv_glfw_window.cyclo ./App/lvgl-master/src/drivers/glfw/lv_glfw_window.d ./App/lvgl-master/src/drivers/glfw/lv_glfw_window.o ./App/lvgl-master/src/drivers/glfw/lv_glfw_window.su ./App/lvgl-master/src/drivers/glfw/lv_opengles_debug.cyclo ./App/lvgl-master/src/drivers/glfw/lv_opengles_debug.d ./App/lvgl-master/src/drivers/glfw/lv_opengles_debug.o ./App/lvgl-master/src/drivers/glfw/lv_opengles_debug.su ./App/lvgl-master/src/drivers/glfw/lv_opengles_driver.cyclo ./App/lvgl-master/src/drivers/glfw/lv_opengles_driver.d ./App/lvgl-master/src/drivers/glfw/lv_opengles_driver.o ./App/lvgl-master/src/drivers/glfw/lv_opengles_driver.su ./App/lvgl-master/src/drivers/glfw/lv_opengles_texture.cyclo ./App/lvgl-master/src/drivers/glfw/lv_opengles_texture.d ./App/lvgl-master/src/drivers/glfw/lv_opengles_texture.o ./App/lvgl-master/src/drivers/glfw/lv_opengles_texture.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-src-2f-drivers-2f-glfw

