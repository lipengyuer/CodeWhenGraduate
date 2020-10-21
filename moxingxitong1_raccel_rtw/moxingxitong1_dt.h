#include "ext_types.h"

static uint_T rtDataTypeSizes[] = {
  sizeof(real_T),
  sizeof(real32_T),
  sizeof(int8_T),
  sizeof(uint8_T),
  sizeof(int16_T),
  sizeof(uint16_T),
  sizeof(int32_T),
  sizeof(uint32_T),
  sizeof(boolean_T),
  sizeof(fcn_call_T),
  sizeof(int_T),
  sizeof(pointer_T),
  sizeof(action_T),
  2*sizeof(uint32_T)
};

static const char_T * rtDataTypeNames[] = {
  "real_T",
  "real32_T",
  "int8_T",
  "uint8_T",
  "int16_T",
  "uint16_T",
  "int32_T",
  "uint32_T",
  "boolean_T",
  "fcn_call_T",
  "int_T",
  "pointer_T",
  "action_T",
  "timer_uint32_pair_T"
};

static DataTypeTransition rtBTransitions[] = {
  { (char_T *)(&rtB.phimd), 0, 0, 189 },

  { (char_T *)(&rtB.DataTypeConversion3), 8, 0, 10 }
  ,

  { (char_T *)(&rtDWork.Sfunction_DSTATE[0]), 0, 0, 24 },

  { (char_T *)(&rtDWork.StateSpace_PWORK.AS), 11, 0, 10 },

  { (char_T *)(&rtDWork.StateSpace_IWORK[0]), 10, 0, 34 },

  { (char_T *)(&rtDWork.Enabledintegrator_SubsysRanBC), 2, 0, 14 },

  { (char_T *)(&rtDWork.RelationalOperator2_Mode), 8, 0, 4 }
};

static DataTypeTransitionTable rtBTransTable = {
  7U,
  rtBTransitions
};

static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&rtP.Rotorangledtheta_IC), 0, 0, 472 },

  { (char_T *)(&rtP.wref_Value_c), 8, 0, 12 }
};

static DataTypeTransitionTable rtPTransTable = {
  2U,
  rtPTransitions
};
