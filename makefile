################################################################################
# Automatically-generated file. Do not edit!
################################################################################

##-include ../makefile.init

RM := rm -rf

MODEL = at32f415

# All of the sources participating in the build are defined here
##-include sources.mk

-include build/user/subdir.mk
-include firmware/subdir.mk
-include cmsis/subdir.mk
-include bsp/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
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

#-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
# $(wildcard ../makefile.defs) \
# $(wildcard ../makefile.init) \
# $(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := test415
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
test415.bin test415.hex \

SECONDARY_SIZE += \
test415.siz \

LDSCRIPT_FILE = ./ldscripts/AT32F415xC_FLASH.ld

# All Target
all: main-build

# Main-build Target
main-build: test415.elf secondary-outputs

# Tool invocations
test415.elf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU Arm Cross C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g -T $(LDSCRIPT_FILE) -Xlinker --gc-sections -Wl,-Map,"test415.map" --specs=nano.specs --specs=nosys.specs -o "test415.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

test415.hex: test415.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU Arm Cross Create Flash Image'
	arm-none-eabi-objcopy -O ihex "test415.elf"  "test415.hex"
	@echo 'Finished building: $@'
	@echo ' '

test415.bin: test415.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU Arm Cross Create Flash Image'
	arm-none-eabi-objcopy -O binary "test415.elf"  "test415.bin"
	@echo "Finished building: $@"
	@echo ' '

test415.siz: test415.elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU Arm Cross Print Size'
	arm-none-eabi-size --format=berkeley "test415.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) test415.elf test415.map
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets