################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c_ex.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c \
/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c 

OBJS += \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2c.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2c_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.o 

C_DEPS += \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2c.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2c_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2c.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2c_ex.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr_ex.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.o: /home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DUSE_HAL_DRIVER -DSTM32F429xx -DUSE_STM32F429I_DISCO -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Projects/STM32F429I-Discovery/Examples/GPIO/GPIO_EXTI/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/STM32F4xx_HAL_Driver/Inc" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/BSP/STM32F429I-Discovery" -I"/home/patrick/Development/STM32/stm32f4-bear-metal/STM32Cube_FW_F4_V1.13.0/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -Wno-unused-variable -Wno-pointer-sign -Wno-main -Wno-format -Wno-address -Wno-unused-but-set-variable -Wno-strict-aliasing -Wno-parentheses -Wno-missing-braces -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


