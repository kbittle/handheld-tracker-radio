################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl/src/misc/lv_anim.c \
../App/lvgl/src/misc/lv_anim_timeline.c \
../App/lvgl/src/misc/lv_area.c \
../App/lvgl/src/misc/lv_array.c \
../App/lvgl/src/misc/lv_async.c \
../App/lvgl/src/misc/lv_bidi.c \
../App/lvgl/src/misc/lv_color.c \
../App/lvgl/src/misc/lv_color_op.c \
../App/lvgl/src/misc/lv_event.c \
../App/lvgl/src/misc/lv_fs.c \
../App/lvgl/src/misc/lv_ll.c \
../App/lvgl/src/misc/lv_log.c \
../App/lvgl/src/misc/lv_lru.c \
../App/lvgl/src/misc/lv_math.c \
../App/lvgl/src/misc/lv_palette.c \
../App/lvgl/src/misc/lv_profiler_builtin.c \
../App/lvgl/src/misc/lv_rb.c \
../App/lvgl/src/misc/lv_style.c \
../App/lvgl/src/misc/lv_style_gen.c \
../App/lvgl/src/misc/lv_templ.c \
../App/lvgl/src/misc/lv_text.c \
../App/lvgl/src/misc/lv_text_ap.c \
../App/lvgl/src/misc/lv_timer.c \
../App/lvgl/src/misc/lv_utils.c 

OBJS += \
./App/lvgl/src/misc/lv_anim.o \
./App/lvgl/src/misc/lv_anim_timeline.o \
./App/lvgl/src/misc/lv_area.o \
./App/lvgl/src/misc/lv_array.o \
./App/lvgl/src/misc/lv_async.o \
./App/lvgl/src/misc/lv_bidi.o \
./App/lvgl/src/misc/lv_color.o \
./App/lvgl/src/misc/lv_color_op.o \
./App/lvgl/src/misc/lv_event.o \
./App/lvgl/src/misc/lv_fs.o \
./App/lvgl/src/misc/lv_ll.o \
./App/lvgl/src/misc/lv_log.o \
./App/lvgl/src/misc/lv_lru.o \
./App/lvgl/src/misc/lv_math.o \
./App/lvgl/src/misc/lv_palette.o \
./App/lvgl/src/misc/lv_profiler_builtin.o \
./App/lvgl/src/misc/lv_rb.o \
./App/lvgl/src/misc/lv_style.o \
./App/lvgl/src/misc/lv_style_gen.o \
./App/lvgl/src/misc/lv_templ.o \
./App/lvgl/src/misc/lv_text.o \
./App/lvgl/src/misc/lv_text_ap.o \
./App/lvgl/src/misc/lv_timer.o \
./App/lvgl/src/misc/lv_utils.o 

C_DEPS += \
./App/lvgl/src/misc/lv_anim.d \
./App/lvgl/src/misc/lv_anim_timeline.d \
./App/lvgl/src/misc/lv_area.d \
./App/lvgl/src/misc/lv_array.d \
./App/lvgl/src/misc/lv_async.d \
./App/lvgl/src/misc/lv_bidi.d \
./App/lvgl/src/misc/lv_color.d \
./App/lvgl/src/misc/lv_color_op.d \
./App/lvgl/src/misc/lv_event.d \
./App/lvgl/src/misc/lv_fs.d \
./App/lvgl/src/misc/lv_ll.d \
./App/lvgl/src/misc/lv_log.d \
./App/lvgl/src/misc/lv_lru.d \
./App/lvgl/src/misc/lv_math.d \
./App/lvgl/src/misc/lv_palette.d \
./App/lvgl/src/misc/lv_profiler_builtin.d \
./App/lvgl/src/misc/lv_rb.d \
./App/lvgl/src/misc/lv_style.d \
./App/lvgl/src/misc/lv_style_gen.d \
./App/lvgl/src/misc/lv_templ.d \
./App/lvgl/src/misc/lv_text.d \
./App/lvgl/src/misc/lv_text_ap.d \
./App/lvgl/src/misc/lv_timer.d \
./App/lvgl/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/misc/%.o App/lvgl/src/misc/%.su App/lvgl/src/misc/%.cyclo: ../App/lvgl/src/misc/%.c App/lvgl/src/misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/lvgl -I../App/sd -I../App/tft -I../App/ui -I../App/ui_generated -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2f-src-2f-misc

clean-App-2f-lvgl-2f-src-2f-misc:
	-$(RM) ./App/lvgl/src/misc/lv_anim.cyclo ./App/lvgl/src/misc/lv_anim.d ./App/lvgl/src/misc/lv_anim.o ./App/lvgl/src/misc/lv_anim.su ./App/lvgl/src/misc/lv_anim_timeline.cyclo ./App/lvgl/src/misc/lv_anim_timeline.d ./App/lvgl/src/misc/lv_anim_timeline.o ./App/lvgl/src/misc/lv_anim_timeline.su ./App/lvgl/src/misc/lv_area.cyclo ./App/lvgl/src/misc/lv_area.d ./App/lvgl/src/misc/lv_area.o ./App/lvgl/src/misc/lv_area.su ./App/lvgl/src/misc/lv_array.cyclo ./App/lvgl/src/misc/lv_array.d ./App/lvgl/src/misc/lv_array.o ./App/lvgl/src/misc/lv_array.su ./App/lvgl/src/misc/lv_async.cyclo ./App/lvgl/src/misc/lv_async.d ./App/lvgl/src/misc/lv_async.o ./App/lvgl/src/misc/lv_async.su ./App/lvgl/src/misc/lv_bidi.cyclo ./App/lvgl/src/misc/lv_bidi.d ./App/lvgl/src/misc/lv_bidi.o ./App/lvgl/src/misc/lv_bidi.su ./App/lvgl/src/misc/lv_color.cyclo ./App/lvgl/src/misc/lv_color.d ./App/lvgl/src/misc/lv_color.o ./App/lvgl/src/misc/lv_color.su ./App/lvgl/src/misc/lv_color_op.cyclo ./App/lvgl/src/misc/lv_color_op.d ./App/lvgl/src/misc/lv_color_op.o ./App/lvgl/src/misc/lv_color_op.su ./App/lvgl/src/misc/lv_event.cyclo ./App/lvgl/src/misc/lv_event.d ./App/lvgl/src/misc/lv_event.o ./App/lvgl/src/misc/lv_event.su ./App/lvgl/src/misc/lv_fs.cyclo ./App/lvgl/src/misc/lv_fs.d ./App/lvgl/src/misc/lv_fs.o ./App/lvgl/src/misc/lv_fs.su ./App/lvgl/src/misc/lv_ll.cyclo ./App/lvgl/src/misc/lv_ll.d ./App/lvgl/src/misc/lv_ll.o ./App/lvgl/src/misc/lv_ll.su ./App/lvgl/src/misc/lv_log.cyclo ./App/lvgl/src/misc/lv_log.d ./App/lvgl/src/misc/lv_log.o ./App/lvgl/src/misc/lv_log.su ./App/lvgl/src/misc/lv_lru.cyclo ./App/lvgl/src/misc/lv_lru.d ./App/lvgl/src/misc/lv_lru.o ./App/lvgl/src/misc/lv_lru.su ./App/lvgl/src/misc/lv_math.cyclo ./App/lvgl/src/misc/lv_math.d ./App/lvgl/src/misc/lv_math.o ./App/lvgl/src/misc/lv_math.su ./App/lvgl/src/misc/lv_palette.cyclo ./App/lvgl/src/misc/lv_palette.d ./App/lvgl/src/misc/lv_palette.o ./App/lvgl/src/misc/lv_palette.su ./App/lvgl/src/misc/lv_profiler_builtin.cyclo ./App/lvgl/src/misc/lv_profiler_builtin.d ./App/lvgl/src/misc/lv_profiler_builtin.o ./App/lvgl/src/misc/lv_profiler_builtin.su ./App/lvgl/src/misc/lv_rb.cyclo ./App/lvgl/src/misc/lv_rb.d ./App/lvgl/src/misc/lv_rb.o ./App/lvgl/src/misc/lv_rb.su ./App/lvgl/src/misc/lv_style.cyclo ./App/lvgl/src/misc/lv_style.d ./App/lvgl/src/misc/lv_style.o ./App/lvgl/src/misc/lv_style.su ./App/lvgl/src/misc/lv_style_gen.cyclo ./App/lvgl/src/misc/lv_style_gen.d ./App/lvgl/src/misc/lv_style_gen.o ./App/lvgl/src/misc/lv_style_gen.su ./App/lvgl/src/misc/lv_templ.cyclo ./App/lvgl/src/misc/lv_templ.d ./App/lvgl/src/misc/lv_templ.o ./App/lvgl/src/misc/lv_templ.su ./App/lvgl/src/misc/lv_text.cyclo ./App/lvgl/src/misc/lv_text.d ./App/lvgl/src/misc/lv_text.o ./App/lvgl/src/misc/lv_text.su ./App/lvgl/src/misc/lv_text_ap.cyclo ./App/lvgl/src/misc/lv_text_ap.d ./App/lvgl/src/misc/lv_text_ap.o ./App/lvgl/src/misc/lv_text_ap.su ./App/lvgl/src/misc/lv_timer.cyclo ./App/lvgl/src/misc/lv_timer.d ./App/lvgl/src/misc/lv_timer.o ./App/lvgl/src/misc/lv_timer.su ./App/lvgl/src/misc/lv_utils.cyclo ./App/lvgl/src/misc/lv_utils.d ./App/lvgl/src/misc/lv_utils.o ./App/lvgl/src/misc/lv_utils.su

.PHONY: clean-App-2f-lvgl-2f-src-2f-misc

