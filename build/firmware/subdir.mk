################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
./models/$(MODEL)/firmware/at32f415_adc.c \
./models/$(MODEL)/firmware/at32f415_can.c \
./models/$(MODEL)/firmware/at32f415_cmp.c \
./models/$(MODEL)/firmware/at32f415_crc.c \
./models/$(MODEL)/firmware/at32f415_crm.c \
./models/$(MODEL)/firmware/at32f415_debug.c \
./models/$(MODEL)/firmware/at32f415_dma.c \
./models/$(MODEL)/firmware/at32f415_ertc.c \
./models/$(MODEL)/firmware/at32f415_exint.c \
./models/$(MODEL)/firmware/at32f415_flash.c \
./models/$(MODEL)/firmware/at32f415_gpio.c \
./models/$(MODEL)/firmware/at32f415_i2c.c \
./models/$(MODEL)/firmware/at32f415_misc.c \
./models/$(MODEL)/firmware/at32f415_pwc.c \
./models/$(MODEL)/firmware/at32f415_sdio.c \
./models/$(MODEL)/firmware/at32f415_spi.c \
./models/$(MODEL)/firmware/at32f415_tmr.c \
./models/$(MODEL)/firmware/at32f415_usart.c \
./models/$(MODEL)/firmware/at32f415_usb.c \
./models/$(MODEL)/firmware/at32f415_wdt.c \
./models/$(MODEL)/firmware/at32f415_wwdt.c 

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
./build/firmware/%.o: ./models/$(MODEL)/firmware/%.c ./build/firmware/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Arm Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -O0 -ffunction-sections  -g $(BGOARD_NAME) -DAT32F415RCT7 -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DUSE_STDPERIPH_DRIVER $(INCLUDE_PATH) -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


