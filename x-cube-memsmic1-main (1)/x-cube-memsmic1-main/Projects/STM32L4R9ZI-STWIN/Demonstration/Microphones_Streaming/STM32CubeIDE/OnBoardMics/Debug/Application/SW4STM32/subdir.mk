################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/STM32CubeIDE/startup_stm32l4r9xx.s 

C_SRCS += \
C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/STM32CubeIDE/syscalls.c 

OBJS += \
./Application/SW4STM32/startup_stm32l4r9xx.o \
./Application/SW4STM32/syscalls.o 

S_DEPS += \
./Application/SW4STM32/startup_stm32l4r9xx.d 

C_DEPS += \
./Application/SW4STM32/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SW4STM32/startup_stm32l4r9xx.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/STM32CubeIDE/startup_stm32l4r9xx.s Application/SW4STM32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Application/SW4STM32/startup_stm32l4r9xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" "$<"
Application/SW4STM32/syscalls.o: C:/Users/angel/STM32CubeIDE/STWINK2/x-cube-memsmic1-main\ (1)/x-cube-memsmic1-main/Projects/STM32L4R9ZI-STWIN/Demonstration/Microphones_Streaming/STM32CubeIDE/syscalls.c Application/SW4STM32/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L4R9xx -DUSE_USB_FS -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Drivers/BSP/Components/Common -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Application/SW4STM32/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

clean: clean-Application-2f-SW4STM32

clean-Application-2f-SW4STM32:
	-$(RM) ./Application/SW4STM32/startup_stm32l4r9xx.d ./Application/SW4STM32/startup_stm32l4r9xx.o ./Application/SW4STM32/syscalls.cyclo ./Application/SW4STM32/syscalls.d ./Application/SW4STM32/syscalls.o ./Application/SW4STM32/syscalls.su

.PHONY: clean-Application-2f-SW4STM32

