################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
./models/$(MODEL)/bsp/at32f415_board.c \
./models/$(MODEL)/bsp/i2c.c \
./models/$(MODEL)/bsp/i2c_application.c \
./models/$(MODEL)/bsp/timer1.c \
./models/$(MODEL)/bsp/uid.c 

OBJS += \
./build/bsp/at32f415_board.o \
./build/bsp/i2c.o \
./build/bsp/i2c_application.o \
./build/bsp/timer1.o \
./build/bsp/uid.o 

C_DEPS += \
./build/bsp/at32f415_board.d \
./build/bsp/i2c.d \
./build/bsp/i2c_application.d \
./build/bsp/timer1.d \
./build/bsp/uid.d 


# Each subdirectory must supply rules for building sources it contributes
./build/bsp/%.o: ./models/$(MODEL)/bsp/%.c ./build/bsp/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g -DAT_START_F415_V1 -DAT32F415RCT7 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DUSE_STDPERIPH_DRIVER $(INCLUDE_PATH) -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


