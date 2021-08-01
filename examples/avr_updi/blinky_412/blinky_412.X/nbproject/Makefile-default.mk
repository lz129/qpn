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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../src/qfn/qfn.c ../../../../src/qfn/qepn_fsm.c ../../../../src/qvn/qvn.c ../main.c ../blinky.c ../qv/gnu/bsp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/165190898/qfn.o ${OBJECTDIR}/_ext/165190898/qepn_fsm.o ${OBJECTDIR}/_ext/165190402/qvn.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/blinky.o ${OBJECTDIR}/_ext/865057613/bsp.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/165190898/qfn.o.d ${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d ${OBJECTDIR}/_ext/165190402/qvn.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/blinky.o.d ${OBJECTDIR}/_ext/865057613/bsp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/165190898/qfn.o ${OBJECTDIR}/_ext/165190898/qepn_fsm.o ${OBJECTDIR}/_ext/165190402/qvn.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/blinky.o ${OBJECTDIR}/_ext/865057613/bsp.o

# Source Files
SOURCEFILES=../../../../src/qfn/qfn.c ../../../../src/qfn/qepn_fsm.c ../../../../src/qvn/qvn.c ../main.c ../blinky.c ../qv/gnu/bsp.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/attiny412"



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny412
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/165190898/qfn.o: ../../../../src/qfn/qfn.c  .generated_files/318a86537381276ce559628a7dc84908fcdbe017.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/165190898" 
	@${RM} ${OBJECTDIR}/_ext/165190898/qfn.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190898/qfn.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190898/qfn.o.d" -MT "${OBJECTDIR}/_ext/165190898/qfn.o.d" -MT ${OBJECTDIR}/_ext/165190898/qfn.o  -o ${OBJECTDIR}/_ext/165190898/qfn.o ../../../../src/qfn/qfn.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190898/qepn_fsm.o: ../../../../src/qfn/qepn_fsm.c  .generated_files/8af948edc2d6fa1f584cad4be60b657926e56c83.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/165190898" 
	@${RM} ${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190898/qepn_fsm.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d" -MT "${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d" -MT ${OBJECTDIR}/_ext/165190898/qepn_fsm.o  -o ${OBJECTDIR}/_ext/165190898/qepn_fsm.o ../../../../src/qfn/qepn_fsm.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190402/qvn.o: ../../../../src/qvn/qvn.c  .generated_files/d111ed69b9c8c1b64caf7f9856da53faffb1da14.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/165190402" 
	@${RM} ${OBJECTDIR}/_ext/165190402/qvn.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190402/qvn.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190402/qvn.o.d" -MT "${OBJECTDIR}/_ext/165190402/qvn.o.d" -MT ${OBJECTDIR}/_ext/165190402/qvn.o  -o ${OBJECTDIR}/_ext/165190402/qvn.o ../../../../src/qvn/qvn.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/3974cc4ace9989122ec7ca9d9ec60a566d61cdc.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1472/main.o.d" -MT "${OBJECTDIR}/_ext/1472/main.o.d" -MT ${OBJECTDIR}/_ext/1472/main.o  -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/blinky.o: ../blinky.c  .generated_files/f6dc1690a083a1272874aae66e5ca74e4883669b.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/blinky.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/blinky.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1472/blinky.o.d" -MT "${OBJECTDIR}/_ext/1472/blinky.o.d" -MT ${OBJECTDIR}/_ext/1472/blinky.o  -o ${OBJECTDIR}/_ext/1472/blinky.o ../blinky.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/865057613/bsp.o: ../qv/gnu/bsp.c  .generated_files/1140b445b99d4b8dd8c9e5cb95049c9ed80d841e.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/865057613" 
	@${RM} ${OBJECTDIR}/_ext/865057613/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/865057613/bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/865057613/bsp.o.d" -MT "${OBJECTDIR}/_ext/865057613/bsp.o.d" -MT ${OBJECTDIR}/_ext/865057613/bsp.o  -o ${OBJECTDIR}/_ext/865057613/bsp.o ../qv/gnu/bsp.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/165190898/qfn.o: ../../../../src/qfn/qfn.c  .generated_files/83824a68bba67cd0208b393ec267ff4a19ea9109.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/165190898" 
	@${RM} ${OBJECTDIR}/_ext/165190898/qfn.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190898/qfn.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190898/qfn.o.d" -MT "${OBJECTDIR}/_ext/165190898/qfn.o.d" -MT ${OBJECTDIR}/_ext/165190898/qfn.o  -o ${OBJECTDIR}/_ext/165190898/qfn.o ../../../../src/qfn/qfn.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190898/qepn_fsm.o: ../../../../src/qfn/qepn_fsm.c  .generated_files/1e41da2eb05d4561480328f9559f3ef4ee32b028.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/165190898" 
	@${RM} ${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190898/qepn_fsm.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d" -MT "${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d" -MT ${OBJECTDIR}/_ext/165190898/qepn_fsm.o  -o ${OBJECTDIR}/_ext/165190898/qepn_fsm.o ../../../../src/qfn/qepn_fsm.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190402/qvn.o: ../../../../src/qvn/qvn.c  .generated_files/5a30ffc046861e3a9fb16ddbd30aa4ad1b5ee583.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/165190402" 
	@${RM} ${OBJECTDIR}/_ext/165190402/qvn.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190402/qvn.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190402/qvn.o.d" -MT "${OBJECTDIR}/_ext/165190402/qvn.o.d" -MT ${OBJECTDIR}/_ext/165190402/qvn.o  -o ${OBJECTDIR}/_ext/165190402/qvn.o ../../../../src/qvn/qvn.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/cb6d8adc21e1c1508c398b749ab4a277251dffb3.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1472/main.o.d" -MT "${OBJECTDIR}/_ext/1472/main.o.d" -MT ${OBJECTDIR}/_ext/1472/main.o  -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/blinky.o: ../blinky.c  .generated_files/911c21eb82fa2b8fc5e8d7506708efa44a549168.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/blinky.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/blinky.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1472/blinky.o.d" -MT "${OBJECTDIR}/_ext/1472/blinky.o.d" -MT ${OBJECTDIR}/_ext/1472/blinky.o  -o ${OBJECTDIR}/_ext/1472/blinky.o ../blinky.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/865057613/bsp.o: ../qv/gnu/bsp.c  .generated_files/e48d16c4a0501e607073a032da1239f26bee3007.flag .generated_files/e02f4880ceacc82b0266707f2e32396da631b15a.flag
	@${MKDIR} "${OBJECTDIR}/_ext/865057613" 
	@${RM} ${OBJECTDIR}/_ext/865057613/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/865057613/bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/865057613/bsp.o.d" -MT "${OBJECTDIR}/_ext/865057613/bsp.o.d" -MT ${OBJECTDIR}/_ext/865057613/bsp.o  -o ${OBJECTDIR}/_ext/865057613/bsp.o ../qv/gnu/bsp.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny412 ${PACK_COMMON_OPTIONS}  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.map"    -o dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	${MP_CC_DIR}/avr-objdump -h -S "dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" > "dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.lss"
	
	
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny412 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.map"    -o dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.hex"
	
	${MP_CC_DIR}/avr-objdump -h -S "dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" > "dist/${CND_CONF}/${IMAGE_TYPE}/blinky_412.X.${IMAGE_TYPE}.lss"
	
	
	
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
