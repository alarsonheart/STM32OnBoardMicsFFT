################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/X-CUBE-BLE2/Utils/subdir.mk
-include Middlewares/X-CUBE-BLE2/HCI_TL_Basic/subdir.mk
-include Middlewares/X-CUBE-BLE2/Controller/subdir.mk
-include Middlewares/FreeRTOS/portable/subdir.mk
-include Middlewares/FreeRTOS/CMSIS_RTOS/subdir.mk
-include Middlewares/FreeRTOS/subdir.mk
-include Middlewares/FatFs/Options/subdir.mk
-include Middlewares/FatFs/Core/subdir.mk
-include Middlewares/Core/subdir.mk
-include Middlewares/Class/WCID/subdir.mk
-include Middlewares/subdir.mk
-include Drivers/STM32L4xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/STWIN/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include Application/Startup/subdir.mk
-include Application/Src/subdir.mk
-include Application/HSDCore/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := HSDatalog
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
HSDatalog.elf \

MAP_FILES += \
HSDatalog.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
HSDatalog.list \

OBJCOPY_BIN += \
HSDatalog.bin \


# All Target
all: main-build

# Main-build Target
main-build: HSDatalog.elf secondary-outputs

# Tool invocations
HSDatalog.elf HSDatalog.map: $(OBJS) $(USER_OBJS) ../STM32L4R9ZITx_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "HSDatalog.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"../STM32L4R9ZITx_FLASH.ld" --specs=nosys.specs -Wl,-Map="HSDatalog.map" -Wl,--gc-sections -static  -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

HSDatalog.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "HSDatalog.list"
	@echo 'Finished building: $@'
	@echo ' '

HSDatalog.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "HSDatalog.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) HSDatalog.bin HSDatalog.elf HSDatalog.list HSDatalog.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
