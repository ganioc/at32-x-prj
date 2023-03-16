################################################################################
# Automatically-generated file. Do not edit!
################################################################################

##-include ../makefile.init

RM := rm -rf

PRJ  = attest415

MODEL = at32f415
BOARD = AT_START_F415_V1
BOARD_NAME = -D$(BOARD)
OPTIMIZATION = -O0

# All of the sources participating in the build are defined here
##-include sources.mk

-include build/user/subdir.mk
-include build/firmware/subdir.mk
-include build/cmsis/subdir.mk
-include build/bsp/subdir.mk
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


BUILD_ARTIFACT_NAME := $(PRJ)
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
$(PRJ).bin $(PRJ).hex \

SECONDARY_SIZE += \
$(PRJ).siz \

LDSCRIPT_FILE = ./ldscripts/$(MODEL)/AT32F415xC_FLASH.ld

INCLUDE_PATH =  -I"./models/$(MODEL)/include" \
	-I"./models/$(MODEL)/include/libraries/drivers/inc" \
	-I"./models/$(MODEL)/include/libraries/cmsis/cm4/core_support" \
	-I"./models/$(MODEL)/include/libraries/cmsis/cm4/device_support" \
	-I"./include"



# All Target
all: main-build

# Main-build Target
main-build: $(PRJ).elf secondary-outputs

# Tool invocations
$(PRJ).elf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU Arm Cross C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g -T $(LDSCRIPT_FILE) -Xlinker --gc-sections -Wl,-Map,$(PRJ).map --specs=nano.specs --specs=nosys.specs -o $(PRJ).elf $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

$(PRJ).hex: $(PRJ).elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU Arm Cross Create Flash Image'
	arm-none-eabi-objcopy -O ihex $(PRJ).elf  $(PRJ).hex
	@echo 'Finished building: $@'
	@echo ' '

$(PRJ).bin: $(PRJ).elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU Arm Cross Create Flash Image'
	arm-none-eabi-objcopy -O binary $(PRJ).elf  $(PRJ).bin
	@echo "Finished building: $@"
	@echo ' '

$(PRJ).siz: $(PRJ).elf makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: GNU Arm Cross Print Size'
	arm-none-eabi-size --format=berkeley $(PRJ).elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) $(PRJ).elf $(PRJ).map
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

##-include ../makefile.targets
