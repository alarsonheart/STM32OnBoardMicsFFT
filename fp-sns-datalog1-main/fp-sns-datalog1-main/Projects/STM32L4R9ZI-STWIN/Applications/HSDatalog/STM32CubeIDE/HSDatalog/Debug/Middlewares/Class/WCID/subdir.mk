################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/angel/STM32CubeIDE/STWINK2/fp-sns-datalog1-main/fp-sns-datalog1-main/Middlewares/ST/STM32_USB_Device_Library/Class/SensorStreaming_WCID/Src/usbd_wcid_streaming.c 

OBJS += \
./Middlewares/Class/WCID/usbd_wcid_streaming.o 

C_DEPS += \
./Middlewares/Class/WCID/usbd_wcid_streaming.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Class/WCID/usbd_wcid_streaming.o: C:/Users/angel/STM32CubeIDE/STWINK2/fp-sns-datalog1-main/fp-sns-datalog1-main/Middlewares/ST/STM32_USB_Device_Library/Class/SensorStreaming_WCID/Src/usbd_wcid_streaming.c Middlewares/Class/WCID/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L4R9xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DUSE_HAL_DFSDM_REGISTER_CALLBACKS -DUSE_HAL_ADC_REGISTER_CALLBACKS -DUSE_HAL_SAI_REGISTER_CALLBACKS -DUSE_HAL_SPI_REGISTER_CALLBACKS -DUSE_HAL_I2C_REGISTER_CALLBACKS -DUSE_HAL_TIM_REGISTER_CALLBACKS -c -I../../../Inc -I../../../HSDCore/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/stts751 -I../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../Drivers/BSP/Components/lps22hh -I../../../../../../../Drivers/BSP/Components/iis2mdc -I../../../../../../../Drivers/BSP/Components/ism330dhcx -I../../../../../../../Drivers/BSP/Components/iis2dh -I../../../../../../../Drivers/BSP/Components/iis3dwb -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/SensorStreaming_WCID/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/Third_Party/FatFs/src -I../../../../../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../../Middlewares/Third_Party/parson -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Middlewares/ST/BlueNRG-2/includes -I../../../../../../../Middlewares/ST/BlueNRG-2/utils -I../../../../../../../Middlewares/ST/BlueNRG-2/hci/hci_tl_patterns/Basic -Ofast -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Class-2f-WCID

clean-Middlewares-2f-Class-2f-WCID:
	-$(RM) ./Middlewares/Class/WCID/usbd_wcid_streaming.cyclo ./Middlewares/Class/WCID/usbd_wcid_streaming.d ./Middlewares/Class/WCID/usbd_wcid_streaming.o ./Middlewares/Class/WCID/usbd_wcid_streaming.su

.PHONY: clean-Middlewares-2f-Class-2f-WCID
