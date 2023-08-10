################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/angel/STM32CubeIDE/STWINK2/fp-sns-datalog1-main/fp-sns-datalog1-main/Middlewares/ST/BlueNRG-2/utils/ble_list.c 

OBJS += \
./Middlewares/X-CUBE-BLE2/Utils/ble_list.o 

C_DEPS += \
./Middlewares/X-CUBE-BLE2/Utils/ble_list.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/X-CUBE-BLE2/Utils/ble_list.o: C:/Users/angel/STM32CubeIDE/STWINK2/fp-sns-datalog1-main/fp-sns-datalog1-main/Middlewares/ST/BlueNRG-2/utils/ble_list.c Middlewares/X-CUBE-BLE2/Utils/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L4R9xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DUSE_HAL_DFSDM_REGISTER_CALLBACKS -DUSE_HAL_ADC_REGISTER_CALLBACKS -DUSE_HAL_SAI_REGISTER_CALLBACKS -DUSE_HAL_SPI_REGISTER_CALLBACKS -DUSE_HAL_I2C_REGISTER_CALLBACKS -DUSE_HAL_TIM_REGISTER_CALLBACKS -c -I../../../Inc -I../../../HSDCore/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/stts751 -I../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../Drivers/BSP/Components/lps22hh -I../../../../../../../Drivers/BSP/Components/iis2mdc -I../../../../../../../Drivers/BSP/Components/ism330dhcx -I../../../../../../../Drivers/BSP/Components/iis2dh -I../../../../../../../Drivers/BSP/Components/iis3dwb -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/STWIN -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/SensorStreaming_WCID/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Middlewares/Third_Party/FatFs/src -I../../../../../../../Middlewares/Third_Party/FatFs/src/drivers -I../../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../../Middlewares/Third_Party/parson -I../../../../../../../Drivers/CMSIS/Include -I../../../../../../../Drivers/CMSIS/DSP/Include -I../../../../../../../Middlewares/ST/BlueNRG-2/includes -I../../../../../../../Middlewares/ST/BlueNRG-2/utils -I../../../../../../../Middlewares/ST/BlueNRG-2/hci/hci_tl_patterns/Basic -Ofast -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@"  -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-X-2d-CUBE-2d-BLE2-2f-Utils

clean-Middlewares-2f-X-2d-CUBE-2d-BLE2-2f-Utils:
	-$(RM) ./Middlewares/X-CUBE-BLE2/Utils/ble_list.cyclo ./Middlewares/X-CUBE-BLE2/Utils/ble_list.d ./Middlewares/X-CUBE-BLE2/Utils/ble_list.o ./Middlewares/X-CUBE-BLE2/Utils/ble_list.su

.PHONY: clean-Middlewares-2f-X-2d-CUBE-2d-BLE2-2f-Utils

