################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Drivers/BSP/STWIN/STWIN.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Drivers/BSP/STWIN/STWIN_audio.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Drivers/BSP/STWIN/STWIN_bus.c 

OBJS += \
./Drivers/BSP/STWIN/STWIN.o \
./Drivers/BSP/STWIN/STWIN_audio.o \
./Drivers/BSP/STWIN/STWIN_bus.o 

C_DEPS += \
./Drivers/BSP/STWIN/STWIN.d \
./Drivers/BSP/STWIN/STWIN_audio.d \
./Drivers/BSP/STWIN/STWIN_bus.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STWIN/STWIN.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Drivers/BSP/STWIN/STWIN.c Drivers/BSP/STWIN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/BSP/STWIN/STWIN.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Drivers/BSP/STWIN/STWIN_audio.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Drivers/BSP/STWIN/STWIN_audio.c Drivers/BSP/STWIN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/BSP/STWIN/STWIN_audio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Drivers/BSP/STWIN/STWIN_bus.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Drivers/BSP/STWIN/STWIN_bus.c Drivers/BSP/STWIN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/BSP/STWIN/STWIN_bus.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STWIN

clean-Drivers-2f-BSP-2f-STWIN:
	-$(RM) ./Drivers/BSP/STWIN/STWIN.cyclo ./Drivers/BSP/STWIN/STWIN.d ./Drivers/BSP/STWIN/STWIN.o ./Drivers/BSP/STWIN/STWIN.su ./Drivers/BSP/STWIN/STWIN_audio.cyclo ./Drivers/BSP/STWIN/STWIN_audio.d ./Drivers/BSP/STWIN/STWIN_audio.o ./Drivers/BSP/STWIN/STWIN_audio.su ./Drivers/BSP/STWIN/STWIN_bus.cyclo ./Drivers/BSP/STWIN/STWIN_bus.d ./Drivers/BSP/STWIN/STWIN_bus.o ./Drivers/BSP/STWIN/STWIN_bus.su

.PHONY: clean-Drivers-2f-BSP-2f-STWIN

