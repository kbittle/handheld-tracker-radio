################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../App/lvgl/src/draw/sw/blend/neon/lv_blend_neon.S 

OBJS += \
./App/lvgl/src/draw/sw/blend/neon/lv_blend_neon.o 

S_UPPER_DEPS += \
./App/lvgl/src/draw/sw/blend/neon/lv_blend_neon.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl/src/draw/sw/blend/neon/%.o: ../App/lvgl/src/draw/sw/blend/neon/%.S App/lvgl/src/draw/sw/blend/neon/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-App-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon

clean-App-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon:
	-$(RM) ./App/lvgl/src/draw/sw/blend/neon/lv_blend_neon.d ./App/lvgl/src/draw/sw/blend/neon/lv_blend_neon.o

.PHONY: clean-App-2f-lvgl-2f-src-2f-draw-2f-sw-2f-blend-2f-neon

