################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Middlewares/STM32_USBD_Library/Core/usbd_core.o \
./Middlewares/STM32_USBD_Library/Core/usbd_ctlreq.o \
./Middlewares/STM32_USBD_Library/Core/usbd_ioreq.o 

C_DEPS += \
./Middlewares/STM32_USBD_Library/Core/usbd_core.d \
./Middlewares/STM32_USBD_Library/Core/usbd_ctlreq.d \
./Middlewares/STM32_USBD_Library/Core/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USBD_Library/Core/usbd_core.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c Middlewares/STM32_USBD_Library/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/STM32_USBD_Library/Core/usbd_core.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Middlewares/STM32_USBD_Library/Core/usbd_ctlreq.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c Middlewares/STM32_USBD_Library/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/STM32_USBD_Library/Core/usbd_ctlreq.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Middlewares/STM32_USBD_Library/Core/usbd_ioreq.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c Middlewares/STM32_USBD_Library/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/STM32_USBD_Library/Core/usbd_ioreq.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_USBD_Library-2f-Core

clean-Middlewares-2f-STM32_USBD_Library-2f-Core:
	-$(RM) ./Middlewares/STM32_USBD_Library/Core/usbd_core.cyclo ./Middlewares/STM32_USBD_Library/Core/usbd_core.d ./Middlewares/STM32_USBD_Library/Core/usbd_core.o ./Middlewares/STM32_USBD_Library/Core/usbd_core.su ./Middlewares/STM32_USBD_Library/Core/usbd_ctlreq.cyclo ./Middlewares/STM32_USBD_Library/Core/usbd_ctlreq.d ./Middlewares/STM32_USBD_Library/Core/usbd_ctlreq.o ./Middlewares/STM32_USBD_Library/Core/usbd_ctlreq.su ./Middlewares/STM32_USBD_Library/Core/usbd_ioreq.cyclo ./Middlewares/STM32_USBD_Library/Core/usbd_ioreq.d ./Middlewares/STM32_USBD_Library/Core/usbd_ioreq.o ./Middlewares/STM32_USBD_Library/Core/usbd_ioreq.su

.PHONY: clean-Middlewares-2f-STM32_USBD_Library-2f-Core

