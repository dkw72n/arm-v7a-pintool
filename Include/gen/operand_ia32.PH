//Groups: @ingroup\s+(API_REF|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_ARM|INS_BASIC_API_IA32|INS_BASIC_API_IPF|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_ARM|REG_CPU_IPF|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|PIN_MEMORY|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|DEBUG_API|TYPE_BASE|INSTLIB|ALARM|ROGUE|ROGUE_CFG|ROGUE_CFG_BASIC_API|ROGUE_EDG_BASIC_API|ROGUE_BBL_BASIC_API|ROGUE_INS_BASIC_API|ROGUE_TRACE_BASIC_API|ROGUE_CONTROL_BASIC_API|CODECACHE_API|OPTIMIZATION_API|MISC|CHECKPOINTING|INST_ARGS|PIN_THREAD_API|EDG_BASIC|BBL_BASIC|ROGUE_BASIC_API|CODECACHE_NYI_API|INS_BASIC_API_GEN_ARM|INS_BASIC_API_GEN_IPF|MESSAGE_TYPE|MESSAGE_BASIC|MISC_BASIC|ITC_INST_API|CHECKPOINTING_PRIVATE
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


extern UINT32 INS_OperandCount(INS ins);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandIsMemory(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern REG INS_OperandMemoryBaseReg(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern REG INS_OperandMemoryIndexReg(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern REG INS_OperandMemorySegmentReg(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern UINT32 INS_OperandMemoryScale(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern INT64 INS_OperandMemoryDisplacement(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern VOID INS_OperandMemorySetBaseReg(INS ins, UINT32 n, REG reg);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandIsAddressGenerator(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandIsDisplacement(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandIsReg(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern REG INS_OperandReg(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandIsImmediate(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern UINT64 INS_OperandImmediate(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandIsImplicit(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern UINT32 INS_OperandWidth(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandRead(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandWritten(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandReadOnly(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandWrittenOnly(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */
extern BOOL INS_OperandReadAndWriten(INS ins, UINT32 n);

                                                                  /* DO NOT EDIT */

