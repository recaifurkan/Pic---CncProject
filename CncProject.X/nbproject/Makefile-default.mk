#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=application/Application.c button/Button.c engine/Engine.c engine/EngineConfigurator.c io/digitalinput/DigitalInput.c io/digitalOutput/DigitalOutput.c led/Led.c motioncontroller/MotionController.c softuart/softusart.c usart/Usart.c utils/Utils.c main.c Point.c led/LedConfigurator.c button/ButtonConfigurator.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/application/Application.p1 ${OBJECTDIR}/button/Button.p1 ${OBJECTDIR}/engine/Engine.p1 ${OBJECTDIR}/engine/EngineConfigurator.p1 ${OBJECTDIR}/io/digitalinput/DigitalInput.p1 ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1 ${OBJECTDIR}/led/Led.p1 ${OBJECTDIR}/motioncontroller/MotionController.p1 ${OBJECTDIR}/softuart/softusart.p1 ${OBJECTDIR}/usart/Usart.p1 ${OBJECTDIR}/utils/Utils.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/Point.p1 ${OBJECTDIR}/led/LedConfigurator.p1 ${OBJECTDIR}/button/ButtonConfigurator.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/application/Application.p1.d ${OBJECTDIR}/button/Button.p1.d ${OBJECTDIR}/engine/Engine.p1.d ${OBJECTDIR}/engine/EngineConfigurator.p1.d ${OBJECTDIR}/io/digitalinput/DigitalInput.p1.d ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1.d ${OBJECTDIR}/led/Led.p1.d ${OBJECTDIR}/motioncontroller/MotionController.p1.d ${OBJECTDIR}/softuart/softusart.p1.d ${OBJECTDIR}/usart/Usart.p1.d ${OBJECTDIR}/utils/Utils.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/Point.p1.d ${OBJECTDIR}/led/LedConfigurator.p1.d ${OBJECTDIR}/button/ButtonConfigurator.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/application/Application.p1 ${OBJECTDIR}/button/Button.p1 ${OBJECTDIR}/engine/Engine.p1 ${OBJECTDIR}/engine/EngineConfigurator.p1 ${OBJECTDIR}/io/digitalinput/DigitalInput.p1 ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1 ${OBJECTDIR}/led/Led.p1 ${OBJECTDIR}/motioncontroller/MotionController.p1 ${OBJECTDIR}/softuart/softusart.p1 ${OBJECTDIR}/usart/Usart.p1 ${OBJECTDIR}/utils/Utils.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/Point.p1 ${OBJECTDIR}/led/LedConfigurator.p1 ${OBJECTDIR}/button/ButtonConfigurator.p1

# Source Files
SOURCEFILES=application/Application.c button/Button.c engine/Engine.c engine/EngineConfigurator.c io/digitalinput/DigitalInput.c io/digitalOutput/DigitalOutput.c led/Led.c motioncontroller/MotionController.c softuart/softusart.c usart/Usart.c utils/Utils.c main.c Point.c led/LedConfigurator.c button/ButtonConfigurator.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4520
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/application/Application.p1: application/Application.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/Application.p1.d 
	@${RM} ${OBJECTDIR}/application/Application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application/Application.p1 application/Application.c 
	@-${MV} ${OBJECTDIR}/application/Application.d ${OBJECTDIR}/application/Application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application/Application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/button/Button.p1: button/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/button" 
	@${RM} ${OBJECTDIR}/button/Button.p1.d 
	@${RM} ${OBJECTDIR}/button/Button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/button/Button.p1 button/Button.c 
	@-${MV} ${OBJECTDIR}/button/Button.d ${OBJECTDIR}/button/Button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/button/Button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/engine/Engine.p1: engine/Engine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/engine" 
	@${RM} ${OBJECTDIR}/engine/Engine.p1.d 
	@${RM} ${OBJECTDIR}/engine/Engine.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/engine/Engine.p1 engine/Engine.c 
	@-${MV} ${OBJECTDIR}/engine/Engine.d ${OBJECTDIR}/engine/Engine.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/engine/Engine.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/engine/EngineConfigurator.p1: engine/EngineConfigurator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/engine" 
	@${RM} ${OBJECTDIR}/engine/EngineConfigurator.p1.d 
	@${RM} ${OBJECTDIR}/engine/EngineConfigurator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/engine/EngineConfigurator.p1 engine/EngineConfigurator.c 
	@-${MV} ${OBJECTDIR}/engine/EngineConfigurator.d ${OBJECTDIR}/engine/EngineConfigurator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/engine/EngineConfigurator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/io/digitalinput/DigitalInput.p1: io/digitalinput/DigitalInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/io/digitalinput" 
	@${RM} ${OBJECTDIR}/io/digitalinput/DigitalInput.p1.d 
	@${RM} ${OBJECTDIR}/io/digitalinput/DigitalInput.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/io/digitalinput/DigitalInput.p1 io/digitalinput/DigitalInput.c 
	@-${MV} ${OBJECTDIR}/io/digitalinput/DigitalInput.d ${OBJECTDIR}/io/digitalinput/DigitalInput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/io/digitalinput/DigitalInput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1: io/digitalOutput/DigitalOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/io/digitalOutput" 
	@${RM} ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1.d 
	@${RM} ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1 io/digitalOutput/DigitalOutput.c 
	@-${MV} ${OBJECTDIR}/io/digitalOutput/DigitalOutput.d ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/led/Led.p1: led/Led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/led" 
	@${RM} ${OBJECTDIR}/led/Led.p1.d 
	@${RM} ${OBJECTDIR}/led/Led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/led/Led.p1 led/Led.c 
	@-${MV} ${OBJECTDIR}/led/Led.d ${OBJECTDIR}/led/Led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/led/Led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/motioncontroller/MotionController.p1: motioncontroller/MotionController.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/motioncontroller" 
	@${RM} ${OBJECTDIR}/motioncontroller/MotionController.p1.d 
	@${RM} ${OBJECTDIR}/motioncontroller/MotionController.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/motioncontroller/MotionController.p1 motioncontroller/MotionController.c 
	@-${MV} ${OBJECTDIR}/motioncontroller/MotionController.d ${OBJECTDIR}/motioncontroller/MotionController.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/motioncontroller/MotionController.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/softuart/softusart.p1: softuart/softusart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/softuart" 
	@${RM} ${OBJECTDIR}/softuart/softusart.p1.d 
	@${RM} ${OBJECTDIR}/softuart/softusart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/softuart/softusart.p1 softuart/softusart.c 
	@-${MV} ${OBJECTDIR}/softuart/softusart.d ${OBJECTDIR}/softuart/softusart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/softuart/softusart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usart/Usart.p1: usart/Usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usart" 
	@${RM} ${OBJECTDIR}/usart/Usart.p1.d 
	@${RM} ${OBJECTDIR}/usart/Usart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usart/Usart.p1 usart/Usart.c 
	@-${MV} ${OBJECTDIR}/usart/Usart.d ${OBJECTDIR}/usart/Usart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usart/Usart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/utils/Utils.p1: utils/Utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/utils" 
	@${RM} ${OBJECTDIR}/utils/Utils.p1.d 
	@${RM} ${OBJECTDIR}/utils/Utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/utils/Utils.p1 utils/Utils.c 
	@-${MV} ${OBJECTDIR}/utils/Utils.d ${OBJECTDIR}/utils/Utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/utils/Utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Point.p1: Point.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Point.p1.d 
	@${RM} ${OBJECTDIR}/Point.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Point.p1 Point.c 
	@-${MV} ${OBJECTDIR}/Point.d ${OBJECTDIR}/Point.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Point.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/led/LedConfigurator.p1: led/LedConfigurator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/led" 
	@${RM} ${OBJECTDIR}/led/LedConfigurator.p1.d 
	@${RM} ${OBJECTDIR}/led/LedConfigurator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/led/LedConfigurator.p1 led/LedConfigurator.c 
	@-${MV} ${OBJECTDIR}/led/LedConfigurator.d ${OBJECTDIR}/led/LedConfigurator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/led/LedConfigurator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/button/ButtonConfigurator.p1: button/ButtonConfigurator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/button" 
	@${RM} ${OBJECTDIR}/button/ButtonConfigurator.p1.d 
	@${RM} ${OBJECTDIR}/button/ButtonConfigurator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/button/ButtonConfigurator.p1 button/ButtonConfigurator.c 
	@-${MV} ${OBJECTDIR}/button/ButtonConfigurator.d ${OBJECTDIR}/button/ButtonConfigurator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/button/ButtonConfigurator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/application/Application.p1: application/Application.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/Application.p1.d 
	@${RM} ${OBJECTDIR}/application/Application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application/Application.p1 application/Application.c 
	@-${MV} ${OBJECTDIR}/application/Application.d ${OBJECTDIR}/application/Application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application/Application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/button/Button.p1: button/Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/button" 
	@${RM} ${OBJECTDIR}/button/Button.p1.d 
	@${RM} ${OBJECTDIR}/button/Button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/button/Button.p1 button/Button.c 
	@-${MV} ${OBJECTDIR}/button/Button.d ${OBJECTDIR}/button/Button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/button/Button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/engine/Engine.p1: engine/Engine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/engine" 
	@${RM} ${OBJECTDIR}/engine/Engine.p1.d 
	@${RM} ${OBJECTDIR}/engine/Engine.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/engine/Engine.p1 engine/Engine.c 
	@-${MV} ${OBJECTDIR}/engine/Engine.d ${OBJECTDIR}/engine/Engine.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/engine/Engine.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/engine/EngineConfigurator.p1: engine/EngineConfigurator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/engine" 
	@${RM} ${OBJECTDIR}/engine/EngineConfigurator.p1.d 
	@${RM} ${OBJECTDIR}/engine/EngineConfigurator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/engine/EngineConfigurator.p1 engine/EngineConfigurator.c 
	@-${MV} ${OBJECTDIR}/engine/EngineConfigurator.d ${OBJECTDIR}/engine/EngineConfigurator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/engine/EngineConfigurator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/io/digitalinput/DigitalInput.p1: io/digitalinput/DigitalInput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/io/digitalinput" 
	@${RM} ${OBJECTDIR}/io/digitalinput/DigitalInput.p1.d 
	@${RM} ${OBJECTDIR}/io/digitalinput/DigitalInput.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/io/digitalinput/DigitalInput.p1 io/digitalinput/DigitalInput.c 
	@-${MV} ${OBJECTDIR}/io/digitalinput/DigitalInput.d ${OBJECTDIR}/io/digitalinput/DigitalInput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/io/digitalinput/DigitalInput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1: io/digitalOutput/DigitalOutput.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/io/digitalOutput" 
	@${RM} ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1.d 
	@${RM} ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1 io/digitalOutput/DigitalOutput.c 
	@-${MV} ${OBJECTDIR}/io/digitalOutput/DigitalOutput.d ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/io/digitalOutput/DigitalOutput.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/led/Led.p1: led/Led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/led" 
	@${RM} ${OBJECTDIR}/led/Led.p1.d 
	@${RM} ${OBJECTDIR}/led/Led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/led/Led.p1 led/Led.c 
	@-${MV} ${OBJECTDIR}/led/Led.d ${OBJECTDIR}/led/Led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/led/Led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/motioncontroller/MotionController.p1: motioncontroller/MotionController.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/motioncontroller" 
	@${RM} ${OBJECTDIR}/motioncontroller/MotionController.p1.d 
	@${RM} ${OBJECTDIR}/motioncontroller/MotionController.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/motioncontroller/MotionController.p1 motioncontroller/MotionController.c 
	@-${MV} ${OBJECTDIR}/motioncontroller/MotionController.d ${OBJECTDIR}/motioncontroller/MotionController.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/motioncontroller/MotionController.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/softuart/softusart.p1: softuart/softusart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/softuart" 
	@${RM} ${OBJECTDIR}/softuart/softusart.p1.d 
	@${RM} ${OBJECTDIR}/softuart/softusart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/softuart/softusart.p1 softuart/softusart.c 
	@-${MV} ${OBJECTDIR}/softuart/softusart.d ${OBJECTDIR}/softuart/softusart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/softuart/softusart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/usart/Usart.p1: usart/Usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/usart" 
	@${RM} ${OBJECTDIR}/usart/Usart.p1.d 
	@${RM} ${OBJECTDIR}/usart/Usart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/usart/Usart.p1 usart/Usart.c 
	@-${MV} ${OBJECTDIR}/usart/Usart.d ${OBJECTDIR}/usart/Usart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/usart/Usart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/utils/Utils.p1: utils/Utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/utils" 
	@${RM} ${OBJECTDIR}/utils/Utils.p1.d 
	@${RM} ${OBJECTDIR}/utils/Utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/utils/Utils.p1 utils/Utils.c 
	@-${MV} ${OBJECTDIR}/utils/Utils.d ${OBJECTDIR}/utils/Utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/utils/Utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Point.p1: Point.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Point.p1.d 
	@${RM} ${OBJECTDIR}/Point.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Point.p1 Point.c 
	@-${MV} ${OBJECTDIR}/Point.d ${OBJECTDIR}/Point.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Point.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/led/LedConfigurator.p1: led/LedConfigurator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/led" 
	@${RM} ${OBJECTDIR}/led/LedConfigurator.p1.d 
	@${RM} ${OBJECTDIR}/led/LedConfigurator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/led/LedConfigurator.p1 led/LedConfigurator.c 
	@-${MV} ${OBJECTDIR}/led/LedConfigurator.d ${OBJECTDIR}/led/LedConfigurator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/led/LedConfigurator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/button/ButtonConfigurator.p1: button/ButtonConfigurator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/button" 
	@${RM} ${OBJECTDIR}/button/ButtonConfigurator.p1.d 
	@${RM} ${OBJECTDIR}/button/ButtonConfigurator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/button/ButtonConfigurator.p1 button/ButtonConfigurator.c 
	@-${MV} ${OBJECTDIR}/button/ButtonConfigurator.d ${OBJECTDIR}/button/ButtonConfigurator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/button/ButtonConfigurator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/CncProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
