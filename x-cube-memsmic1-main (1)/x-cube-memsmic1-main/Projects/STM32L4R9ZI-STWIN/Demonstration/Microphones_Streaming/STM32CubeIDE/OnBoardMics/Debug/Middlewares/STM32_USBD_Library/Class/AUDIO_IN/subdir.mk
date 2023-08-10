################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Src/usbd_audio_in.c 

OBJS += \
./Middlewares/STM32_USBD_Library/Class/AUDIO_IN/usbd_audio_in.o 

C_DEPS += \
./Middlewares/STM32_USBD_Library/Class/AUDIO_IN/usbd_audio_in.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USBD_Library/Class/AUDIO_IN/usbd_audio_in.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Src/usbd_audio_in.c Middlewares/STM32_USBD_Library/Class/AUDIO_IN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -I"C:/Users/angel/STM32CubeIDE/STWINKOG/x-cube-memsmic1-main (1)/x-cube-memsmic1-main/Drivers/STM32L4xx_HAL_Driver/Inc" -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/STM32_USBD_Library/Class/AUDIO_IN/usbd_audio_in.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_USBD_Library-2f-Class-2f-AUDIO_IN

clean-Middlewares-2f-STM32_USBD_Library-2f-Class-2f-AUDIO_IN:
	-$(RM) ./Middlewares/STM32_USBD_Library/Class/AUDIO_IN/usbd_audio_in.cyclo ./Middlewares/STM32_USBD_Library/Class/AUDIO_IN/usbd_audio_in.d ./Middlewares/STM32_USBD_Library/Class/AUDIO_IN/usbd_audio_in.o ./Middlewares/STM32_USBD_Library/Class/AUDIO_IN/usbd_audio_in.su

.PHONY: clean-Middlewares-2f-STM32_USBD_Library-2f-Class-2f-AUDIO_IN

