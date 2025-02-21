################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_artist_palette.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_books.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_camera_with_flash.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_cat_face.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_deciduous_tree.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_dog_face.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_flexed_biceps.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_movie_camera.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_red_heart.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_rocket.c \
../App/lvgl-master/demos/multilang/assets/emojis/img_emoji_soccer_ball.c 

OBJS += \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_artist_palette.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_books.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_camera_with_flash.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_cat_face.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_deciduous_tree.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_dog_face.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_flexed_biceps.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_movie_camera.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_red_heart.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_rocket.o \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_soccer_ball.o 

C_DEPS += \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_artist_palette.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_books.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_camera_with_flash.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_cat_face.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_deciduous_tree.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_dog_face.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_flexed_biceps.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_movie_camera.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_red_heart.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_rocket.d \
./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_soccer_ball.d 


# Each subdirectory must supply rules for building sources it contributes
App/lvgl-master/demos/multilang/assets/emojis/%.o App/lvgl-master/demos/multilang/assets/emojis/%.su App/lvgl-master/demos/multilang/assets/emojis/%.cyclo: ../App/lvgl-master/demos/multilang/assets/emojis/%.c App/lvgl-master/demos/multilang/assets/emojis/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../FATFS/Target -I../FATFS/App -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../App -I../App/audio -I../App/gps -I../App/logging -I../App/sd -I../App/tft -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../App/ui_config -I../App/ui_generated -I../App/lvgl-master -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-App-2f-lvgl-2d-master-2f-demos-2f-multilang-2f-assets-2f-emojis

clean-App-2f-lvgl-2d-master-2f-demos-2f-multilang-2f-assets-2f-emojis:
	-$(RM) ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_artist_palette.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_artist_palette.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_artist_palette.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_artist_palette.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_books.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_books.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_books.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_books.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_camera_with_flash.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_camera_with_flash.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_camera_with_flash.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_camera_with_flash.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_cat_face.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_cat_face.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_cat_face.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_cat_face.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_deciduous_tree.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_deciduous_tree.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_deciduous_tree.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_deciduous_tree.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_dog_face.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_dog_face.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_dog_face.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_dog_face.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_flexed_biceps.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_flexed_biceps.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_flexed_biceps.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_flexed_biceps.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_movie_camera.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_movie_camera.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_movie_camera.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_movie_camera.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_red_heart.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_red_heart.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_red_heart.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_red_heart.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_rocket.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_rocket.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_rocket.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_rocket.su ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_soccer_ball.cyclo ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_soccer_ball.d ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_soccer_ball.o ./App/lvgl-master/demos/multilang/assets/emojis/img_emoji_soccer_ball.su

.PHONY: clean-App-2f-lvgl-2d-master-2f-demos-2f-multilang-2f-assets-2f-emojis

