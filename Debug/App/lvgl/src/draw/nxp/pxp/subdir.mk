################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.c \
../App/lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
../App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.c \
../App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.c \
../App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.c \
../App/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.c \
../App/lvgl/src/draw/nxp/pxp/lv_pxp_osa.c \
../App/lvgl/src/draw/nxp/pxp/lv_pxp_utils.c 

OBJS += \
./App/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o \
./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o \
./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o \
./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o \
./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o \
./App/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o \
./App/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o \
./App/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o 

C_DEPS += \
./App/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d \
./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d \
./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d \
./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d \
./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d \
./App/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d \
./App/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d \
./App/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/draw/nxp/pxp/%.o App/lvgl/src/draw/nxp/pxp/%.su App/lvgl/src/draw/nxp/pxp/%.cyclo: ../App/lvgl/src/draw/nxp/pxp/%.c App/lvgl/src/draw/nxp/pxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

clean-App-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./App/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.cyclo ./App/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d ./App/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o ./App/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.su ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp.cyclo ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp.su ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.cyclo ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.su ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.cyclo ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.su ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.cyclo ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o ./App/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.su ./App/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.cyclo ./App/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d ./App/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o ./App/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.su ./App/lvgl/src/draw/nxp/pxp/lv_pxp_osa.cyclo ./App/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d ./App/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o ./App/lvgl/src/draw/nxp/pxp/lv_pxp_osa.su ./App/lvgl/src/draw/nxp/pxp/lv_pxp_utils.cyclo ./App/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d ./App/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o ./App/lvgl/src/draw/nxp/pxp/lv_pxp_utils.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

