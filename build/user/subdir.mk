################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../user/at32f415_clock.c \
../user/at32f415_int.c \
../user/main.c 

OBJS += \
./build/user/at32f415_clock.o \
./build/user/at32f415_int.o \
./build/user/main.o 

C_DEPS += \
./build/user/at32f415_clock.d \
./build/user/at32f415_int.d \
./build/user/main.d 


# Each subdirectory must supply rules for building sources it contributes
build/user/%.o: ../user/%.c build/user/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g -DAT_START_F415_V1 -DAT32F415RCT7 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DUSE_STDPERIPH_DRIVER -I"../include" -I"../include/libraries/drivers/inc" -I"../include/libraries/cmsis/cm4/core_support" -I"../include/libraries/cmsis/cm4/device_support" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


