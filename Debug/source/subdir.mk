################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/mtb.c \
../source/wireless_messenger.c \
../source/wireless_messenger_menus.c 

OBJS += \
./source/mtb.o \
./source/wireless_messenger.o \
./source/wireless_messenger_menus.o 

C_DEPS += \
./source/mtb.d \
./source/wireless_messenger.d \
./source/wireless_messenger_menus.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCR_INTEGER_PRINTF -DDEBUG -DFRDM_KW41Z -DFREEDOM -DSDK_DEBUGCONSOLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DCPU_MKW41Z512VHT4 -DCPU_MKW41Z512VHT4_cm0plus -D__REDLIB__ -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/source" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/drivers" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/common" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/ieee_802.15.4/phy/source/MKW41Z" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/SerialManager/Source/SPI_Adapter" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/XCVR/MKW41Z4" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/SerialManager/Source/UART_Adapter" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/SerialManager/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/LED/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/OSAbstraction/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/ModuleInfo" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/ieee_802.15.4/smac/interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/ieee_802.15.4/smac/source" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/ieee_802.15.4/smac/common" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/ieee_802.15.4/phy/interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/Lists" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/CMSIS" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/GPIO" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/board" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/RNG/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/utilities" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/Panic/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/FunctionLib" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/SecLib" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/Keyboard/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/TimersManager/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/TimersManager/Source" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/DCDC/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/MWSCoexistence/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/MemManager/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/Messaging/Interface" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/SerialManager/Source/I2C_Adapter" -I"/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/framework/Flash/Internal" -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "/home/samuel9520/Documents/MCUXpresso_10.0.2_411/workspace/lab3_receiver/source/app_preinclude.h" -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


