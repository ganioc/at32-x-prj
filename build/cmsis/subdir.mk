################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 

S_SRCS += \
./models/$(MODEL)/cmsis/startup_at32f415.s 

C_SRCS += \
./models/$(MODEL)/cmsis/system_at32f415.c 


OBJS += \
./build/cmsis/startup_at32f415.o \
./build/cmsis/system_at32f415.o 

S_DEPS += \
./build/cmsis/startup_at32f415.d 

C_DEPS += \
./build/cmsis/system_at32f415.d 


# Each subdirectory must supply rules for building sources it contributes
./build/cmsis/%.o: ./models/$(MODEL)/cmsis/%.s ./build/cmsis/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

./build/cmsis/%.o: ./models/$(MODEL)/cmsis/%.c ./build/cmsis/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g $(BOARD_NAME) -DAT32F415RCT7 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DUSE_STDPERIPH_DRIVER $(INCLUDE_PATH) -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


