################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../firmware/at32f415_adc.c \
../firmware/at32f415_can.c \
../firmware/at32f415_cmp.c \
../firmware/at32f415_crc.c \
../firmware/at32f415_crm.c \
../firmware/at32f415_debug.c \
../firmware/at32f415_dma.c \
../firmware/at32f415_ertc.c \
../firmware/at32f415_exint.c \
../firmware/at32f415_flash.c \
../firmware/at32f415_gpio.c \
../firmware/at32f415_i2c.c \
../firmware/at32f415_misc.c \
../firmware/at32f415_pwc.c \
../firmware/at32f415_sdio.c \
../firmware/at32f415_spi.c \
../firmware/at32f415_tmr.c \
../firmware/at32f415_usart.c \
../firmware/at32f415_usb.c \
../firmware/at32f415_wdt.c \
../firmware/at32f415_wwdt.c 

OBJS += \
./build/firmware/at32f415_adc.o \
./build/firmware/at32f415_can.o \
./build/firmware/at32f415_cmp.o \
./build/firmware/at32f415_crc.o \
./build/firmware/at32f415_crm.o \
./build/firmware/at32f415_debug.o \
./build/firmware/at32f415_dma.o \
./build/firmware/at32f415_ertc.o \
./build/firmware/at32f415_exint.o \
./build/firmware/at32f415_flash.o \
./build/firmware/at32f415_gpio.o \
./build/firmware/at32f415_i2c.o \
./build/firmware/at32f415_misc.o \
./build/firmware/at32f415_pwc.o \
./build/firmware/at32f415_sdio.o \
./build/firmware/at32f415_spi.o \
./build/firmware/at32f415_tmr.o \
./build/firmware/at32f415_usart.o \
./build/firmware/at32f415_usb.o \
./build/firmware/at32f415_wdt.o \
./build/firmware/at32f415_wwdt.o 

C_DEPS += \
./build/firmware/at32f415_adc.d \
./build/firmware/at32f415_can.d \
./build/firmware/at32f415_cmp.d \
./build/firmware/at32f415_crc.d \
./build/firmware/at32f415_crm.d \
./build/firmware/at32f415_debug.d \
./build/firmware/at32f415_dma.d \
./build/firmware/at32f415_ertc.d \
./build/firmware/at32f415_exint.d \
./build/firmware/at32f415_flash.d \
./build/firmware/at32f415_gpio.d \
./build/firmware/at32f415_i2c.d \
./build/firmware/at32f415_misc.d \
./build/firmware/at32f415_pwc.d \
./build/firmware/at32f415_sdio.d \
./build/firmware/at32f415_spi.d \
./build/firmware/at32f415_tmr.d \
./build/firmware/at32f415_usart.d \
./build/firmware/at32f415_usb.d \
./build/firmware/at32f415_wdt.d \
./build/firmware/at32f415_wwdt.d 


# Each subdirectory must supply rules for building sources it contributes
./build/firmware/%.o: ../firmware/%.c ./build/firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g -DAT_START_F415_V1 -DAT32F415RCT7 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DUSE_STDPERIPH_DRIVER -I"../include" -I"../include/libraries/drivers/inc" -I"../include/libraries/cmsis/cm4/core_support" -I"../include/libraries/cmsis/cm4/device_support" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


