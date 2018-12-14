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
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=main.c lcd.c ConfShield1_3.c ConfShield2_1.c Tecnica1.c EncoderIncremental.c teclado.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.p1 ${OBJECTDIR}/lcd.p1 ${OBJECTDIR}/ConfShield1_3.p1 ${OBJECTDIR}/ConfShield2_1.p1 ${OBJECTDIR}/Tecnica1.p1 ${OBJECTDIR}/EncoderIncremental.p1 ${OBJECTDIR}/teclado.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/main.p1.d ${OBJECTDIR}/lcd.p1.d ${OBJECTDIR}/ConfShield1_3.p1.d ${OBJECTDIR}/ConfShield2_1.p1.d ${OBJECTDIR}/Tecnica1.p1.d ${OBJECTDIR}/EncoderIncremental.p1.d ${OBJECTDIR}/teclado.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.p1 ${OBJECTDIR}/lcd.p1 ${OBJECTDIR}/ConfShield1_3.p1 ${OBJECTDIR}/ConfShield2_1.p1 ${OBJECTDIR}/Tecnica1.p1 ${OBJECTDIR}/EncoderIncremental.p1 ${OBJECTDIR}/teclado.p1

# Source Files
SOURCEFILES=main.c lcd.c ConfShield1_3.c ConfShield2_1.c Tecnica1.c EncoderIncremental.c teclado.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lcd.p1: lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.p1.d 
	@${RM} ${OBJECTDIR}/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/lcd.p1  lcd.c 
	@-${MV} ${OBJECTDIR}/lcd.d ${OBJECTDIR}/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ConfShield1_3.p1: ConfShield1_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ConfShield1_3.p1.d 
	@${RM} ${OBJECTDIR}/ConfShield1_3.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ConfShield1_3.p1  ConfShield1_3.c 
	@-${MV} ${OBJECTDIR}/ConfShield1_3.d ${OBJECTDIR}/ConfShield1_3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ConfShield1_3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ConfShield2_1.p1: ConfShield2_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ConfShield2_1.p1.d 
	@${RM} ${OBJECTDIR}/ConfShield2_1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ConfShield2_1.p1  ConfShield2_1.c 
	@-${MV} ${OBJECTDIR}/ConfShield2_1.d ${OBJECTDIR}/ConfShield2_1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ConfShield2_1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Tecnica1.p1: Tecnica1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Tecnica1.p1.d 
	@${RM} ${OBJECTDIR}/Tecnica1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/Tecnica1.p1  Tecnica1.c 
	@-${MV} ${OBJECTDIR}/Tecnica1.d ${OBJECTDIR}/Tecnica1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Tecnica1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/EncoderIncremental.p1: EncoderIncremental.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EncoderIncremental.p1.d 
	@${RM} ${OBJECTDIR}/EncoderIncremental.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/EncoderIncremental.p1  EncoderIncremental.c 
	@-${MV} ${OBJECTDIR}/EncoderIncremental.d ${OBJECTDIR}/EncoderIncremental.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/EncoderIncremental.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/teclado.p1: teclado.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/teclado.p1.d 
	@${RM} ${OBJECTDIR}/teclado.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/teclado.p1  teclado.c 
	@-${MV} ${OBJECTDIR}/teclado.d ${OBJECTDIR}/teclado.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/teclado.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lcd.p1: lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd.p1.d 
	@${RM} ${OBJECTDIR}/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/lcd.p1  lcd.c 
	@-${MV} ${OBJECTDIR}/lcd.d ${OBJECTDIR}/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ConfShield1_3.p1: ConfShield1_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ConfShield1_3.p1.d 
	@${RM} ${OBJECTDIR}/ConfShield1_3.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ConfShield1_3.p1  ConfShield1_3.c 
	@-${MV} ${OBJECTDIR}/ConfShield1_3.d ${OBJECTDIR}/ConfShield1_3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ConfShield1_3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ConfShield2_1.p1: ConfShield2_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ConfShield2_1.p1.d 
	@${RM} ${OBJECTDIR}/ConfShield2_1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ConfShield2_1.p1  ConfShield2_1.c 
	@-${MV} ${OBJECTDIR}/ConfShield2_1.d ${OBJECTDIR}/ConfShield2_1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ConfShield2_1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Tecnica1.p1: Tecnica1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Tecnica1.p1.d 
	@${RM} ${OBJECTDIR}/Tecnica1.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/Tecnica1.p1  Tecnica1.c 
	@-${MV} ${OBJECTDIR}/Tecnica1.d ${OBJECTDIR}/Tecnica1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Tecnica1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/EncoderIncremental.p1: EncoderIncremental.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EncoderIncremental.p1.d 
	@${RM} ${OBJECTDIR}/EncoderIncremental.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/EncoderIncremental.p1  EncoderIncremental.c 
	@-${MV} ${OBJECTDIR}/EncoderIncremental.d ${OBJECTDIR}/EncoderIncremental.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/EncoderIncremental.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/teclado.p1: teclado.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/teclado.p1.d 
	@${RM} ${OBJECTDIR}/teclado.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/teclado.p1  teclado.c 
	@-${MV} ${OBJECTDIR}/teclado.d ${OBJECTDIR}/teclado.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/teclado.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=none  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --rom=default,-0-1fff,-2006-2007,-2016-2017 --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=pro -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,+hex,-file --codeoffset=0x2000 --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=+mcof,-elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/TP_N_6_p_B.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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
