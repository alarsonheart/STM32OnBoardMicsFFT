################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/audio_application.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/cube_hal_l4.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/main.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/stm32xx_it.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/usbd_audio_if.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/usbd_conf_l4.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/usbd_desc.c 

OBJS += \
./Application/User/audio_application.o \
./Application/User/cube_hal_l4.o \
./Application/User/main.o \
./Application/User/stm32xx_it.o \
./Application/User/usbd_audio_if.o \
./Application/User/usbd_conf_l4.o \
./Application/User/usbd_desc.o 

C_DEPS += \
./Application/User/audio_application.d \
./Application/User/cube_hal_l4.d \
./Application/User/main.d \
./Application/User/stm32xx_it.d \
./Application/User/usbd_audio_if.d \
./Application/User/usbd_conf_l4.d \
./Application/User/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/audio_application.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/audio_application.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/audio_application.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/cube_hal_l4.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/cube_hal_l4.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/cube_hal_l4.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/main.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/stm32xx_it.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/stm32xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/stm32xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/usbd_audio_if.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/usbd_audio_if.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/usbd_audio_if.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/usbd_conf_l4.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/usbd_conf_l4.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/usbd_conf_l4.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/User/usbd_desc.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/Src/usbd_desc.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/User/usbd_desc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/audio_application.cyclo ./Application/User/audio_application.d ./Application/User/audio_application.o ./Application/User/audio_application.su ./Application/User/cube_hal_l4.cyclo ./Application/User/cube_hal_l4.d ./Application/User/cube_hal_l4.o ./Application/User/cube_hal_l4.su ./Application/User/main.cyclo ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32xx_it.cyclo ./Application/User/stm32xx_it.d ./Application/User/stm32xx_it.o ./Application/User/stm32xx_it.su ./Application/User/usbd_audio_if.cyclo ./Application/User/usbd_audio_if.d ./Application/User/usbd_audio_if.o ./Application/User/usbd_audio_if.su ./Application/User/usbd_conf_l4.cyclo ./Application/User/usbd_conf_l4.d ./Application/User/usbd_conf_l4.o ./Application/User/usbd_conf_l4.su ./Application/User/usbd_desc.cyclo ./Application/User/usbd_desc.d ./Application/User/usbd_desc.o ./Application/User/usbd_desc.su

.PHONY: clean-Application-2f-User

