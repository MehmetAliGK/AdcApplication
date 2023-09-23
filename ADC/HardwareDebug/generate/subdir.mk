################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
ASM_SRCS += \
../generate/cstart.asm \
../generate/stkinit.asm 

ASSEMBLER_OBJS += \
generate/cstart.obj \
generate/stkinit.obj 

ASM_DEPS += \
generate/cstart.d \
generate/stkinit.d 

# Each subdirectory must supply rules for building sources it contributes
generate/%.obj: ../generate/%.asm 
	@echo 'Scanning and building file: $<'
	@echo 'Invoking: Scanner and Assembler'
	@echo generate\asmDepSubCommand.tmp=
	@sed -e "s/^/ /" "generate\asmDepSubCommand.tmp"
	ccrl -subcommand="generate\asmDepSubCommand.tmp" -asmopt=-MF="$(@:%.obj=%.d)" -asmopt=-MT="$(@:%.obj=%.obj)" -asmopt=-MT="$(@:%.obj=%.d)" -msg_lang=english "$<"
	@echo generate\asmSubCommand.tmp=
	@sed -e "s/^/ /" "generate\asmSubCommand.tmp"
	ccrl -subcommand="generate\asmSubCommand.tmp" -msg_lang=english -o "$(@:%.d=%.obj)"  "$<"
	@echo 'Finished Scanning and building: $<'
	@echo ''

