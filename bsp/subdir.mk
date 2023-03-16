################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bsp/at32f415_board.c \
../bsp/i2c.c \
../bsp/i2c_application.c \
../bsp/timer1.c \
../bsp/uid.c 

OBJS += \
./bsp/at32f415_board.o \
./bsp/i2c.o \
./bsp/i2c_application.o \
./bsp/timer1.o \
./bsp/uid.o 

C_DEPS += \
./bsp/at32f415_board.d \
./bsp/i2c.d \
./bsp/i2c_application.d \
./bsp/timer1.d \
./bsp/uid.d 


# Each subdirectory must supply rules for building sources it contributes
bsp/%.o: ../bsp/%.c bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g -DAT_START_F415_V1 -DAT32F415RCT7 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DUSE_STDPERIPH_DRIVER -I"../include" -I"../include/libraries/drivers/inc" -I"../include/libraries/cmsis/cm4/core_support" -I"../include/libraries/cmsis/cm4/device_support" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


