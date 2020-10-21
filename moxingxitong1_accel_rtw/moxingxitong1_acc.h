/*
 * moxingxitong1_acc.h
 *
 * Real-Time Workshop code generation for Simulink model "moxingxitong1_acc.mdl".
 *
 * Model Version              : 1.72
 * Real-Time Workshop version : 7.4  (R2009b)  29-Jun-2009
 * C source code generated on : Sat Jun 09 00:02:11 2012
 *
 * Target selection: accel.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Generic->32-bit Real-Time Simulator
 * Emulation hardware selection:
 *    Differs from embedded hardware (MATLAB Host)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#ifndef RTW_HEADER_moxingxitong1_acc_h_
#define RTW_HEADER_moxingxitong1_acc_h_
#ifndef moxingxitong1_acc_COMMON_INCLUDES_
# define moxingxitong1_acc_COMMON_INCLUDES_
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#define S_FUNCTION_NAME                simulink_only_sfcn
#define S_FUNCTION_LEVEL               2
#define RTW_GENERATED_S_FUNCTION
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "mwmathutil.h"
#include "rt_SATURATE.h"
#include "rt_look1d.h"
#include "rt_nonfinite.h"
#endif                                 /* moxingxitong1_acc_COMMON_INCLUDES_ */

#include "moxingxitong1_acc_types.h"

/* Block signals (auto storage) */
typedef struct {
  real_T B_40_0_0[6];                  /* '<S137>/SwitchCurrents' */
  real_T B_40_13_0;                    /* '<S48>/sum1' */
  real_T B_40_27_0;                    /* '<S58>/Data Type  Conversion' */
  real_T B_40_33_0;                    /* '<S58>/Data Type  Conversion1' */
  real_T B_40_37_0;                    /* '<S58>/Sum' */
  real_T B_40_45_0[3];                 /* '<S55>/ib' */
  real_T B_40_46_0;                    /* '<S122>/Constant3' */
  real_T B_40_57_0;                    /* '<S118>/Constant' */
  real_T B_40_59_0;                    /* '<S118>/Constant1' */
  real_T B_40_84_0;                    /* '<S122>/Constant4' */
  real_T B_40_86_0[4];                 /* '<S122>/ib' */
  real_T B_40_87_0;                    /* '<S69>/valp_nom3' */
  real_T B_40_89_0;                    /* '<S69>/valp_nom2' */
  real_T B_40_92_0;                    /* '<S69>/SinglePhase' */
  real_T B_40_96_0;                    /* '<S69>/Gain' */
  real_T B_40_100_0;                   /* '<S69>/Gain3' */
  real_T B_40_101_0[3];                /* '<S69>/P1' */
  real_T B_40_106_0;                   /* '<S69>/valp_nom7' */
  real_T B_40_108_0[3];                /* '<S69>/Sum5' */
  real_T B_40_109_0[23];               /* '<S135>/State-Space' */
  real_T B_40_109_1[6];                /* '<S135>/State-Space' */
  real_T B_40_117_0;                   /* '<S9>/T1' */
  real_T B_40_120_0;                   /* '<S113>/Gain3' */
  real_T B_40_124_0;                   /* '<S9>/T2' */
  real_T B_40_125_0;                   /* '<S113>/Gain1' */
  real_T B_40_129_0;                   /* '<S9>/T3' */
  real_T B_40_130_0;                   /* '<S113>/Gain2' */
  real_T B_40_140_0;                   /* '<S9>/Gain3' */
  real_T B_40_144_0;                   /* '<S112>/Gain2' */
  real_T B_40_152_0;                   /* '<S123>/Constant1' */
  real_T B_40_153_0;                   /* '<S123>/Constant2' */
  real_T B_40_158_0;                   /* '<S121>/Constant3' */
  real_T B_40_159_0[2];                /* '<S128>/Constant6' */
  real_T B_40_170_0;                   /* '<S119>/web1' */
  real_T B_40_171_0;                   /* '<S119>/web_psb' */
  real_T B_40_174_0;                   /* '<S123>/Constant4' */
  real_T B_40_175_0;                   /* '<S123>/Constant5' */
  real_T B_40_176_0;                   /* '<S123>/Constant6' */
  real_T B_40_180_0;                   /* '<S121>/Constant4' */
  real_T B_40_184_0;                   /* '<S120>/web1' */
  real_T B_40_185_0;                   /* '<S120>/web_psb' */
  real_T B_40_190_0;                   /* '<S134>/1_2H' */
  real_T B_40_191_0;                   /* '<S134>/web_psb' */
  real_T B_40_219_0;                   /* '<S16>/C4' */
  real_T B_40_220_0;                   /* '<S1>/com' */
  real_T B_40_221_0;                   /* '<S1>/C4' */
  real_T B_40_223_0;                   /* '<S14>/Look-Up Table' */
  real_T B_40_225_0;                   /* '<S1>/Constant1' */
  real_T B_40_226_0;                   /* '<S1>/Constant5' */
  real_T B_40_228_0;                   /* '<S17>/Look-Up Table' */
  real_T B_40_230_0;                   /* '<S16>/Switch3' */
  real_T B_40_231_0;                   /* '<S16>/Sfunction' */
  real_T B_40_232_0;                   /* '<S17>/Derivative' */
  real_T B_40_237_0;                   /* '<S19>/C4' */
  real_T B_40_238_0;                   /* '<S1>/Constant2' */
  real_T B_40_240_0;                   /* '<S20>/Look-Up Table' */
  real_T B_40_242_0;                   /* '<S19>/Switch3' */
  real_T B_40_243_0;                   /* '<S19>/Sfunction' */
  real_T B_40_244_0;                   /* '<S20>/Derivative' */
  real_T B_40_249_0;                   /* '<S22>/C4' */
  real_T B_40_250_0;                   /* '<S1>/Constant3' */
  real_T B_40_252_0;                   /* '<S23>/Look-Up Table' */
  real_T B_40_254_0;                   /* '<S22>/Switch3' */
  real_T B_40_255_0;                   /* '<S22>/Sfunction' */
  real_T B_40_256_0;                   /* '<S23>/Derivative' */
  real_T B_40_261_0;                   /* '<S14>/Derivative' */
  real_T B_40_274_0;                   /* '<S62>/nom. speed' */
  real_T B_40_279_0;                   /* '<S34>/State Space' */
  real_T B_40_280_0;                   /* '<S35>/Constant1' */
  real_T B_40_288_0;                   /* '<S35>/Vfdmax' */
  real_T B_40_289_0;                   /* '<S35>/Sum' */
  real_T B_40_292_0;                   /* '<S35>/Data Type  Conversion' */
  real_T B_40_296_0;                   /* '<S35>/Product1' */
  real_T B_40_298_0;                   /* '<S35>/Data Type  Conversion2' */
  real_T B_40_300_0;                   /* '<S35>/Sum1' */
  real_T B_40_301_0;                   /* '<S31>/State Space' */
  real_T B_40_304_0;                   /* '<S2>/Vref' */
  real_T B_40_305_0;                   /* '<S29>/Vf0| ka' */
  real_T B_40_306_0;                   /* '<S29>/Sum' */
  real_T B_40_307_0;                   /* '<S32>/State Space' */
  real_T B_40_313_0;                   /* '<S29>/Positive Sequence Voltage' */
  real_T B_40_314_0;                   /* '<S36>/Constant1' */
  real_T B_40_316_0;                   /* '<S2>/wref' */
  real_T B_40_319_0;                   /* '<S2>/Pref' */
  real_T B_40_323_0;                   /* '<S36>/Sum1' */
  real_T B_40_324_0;                   /* '<S37>/Integral' */
  real_T B_40_328_0;                   /* '<S38>/Sum4' */
  real_T B_40_329_0;                   /* '<S38>/servo- motor' */
  real_T B_40_330_0;                   /* '<S38>/speed limit' */
  real_T B_40_331_0;                   /* '<S39>/Constant' */
  real_T B_40_338_0;                   /* '<S39>/Gain2' */
  real_T B_40_340_0;                   /* '<S46>/Constant' */
  real_T B_40_348_0;                   /* '<S49>/web_psb' */
  real_T B_40_353_0;                   /* '<S50>/web_psb' */
  real_T B_40_357_0;                   /* '<S51>/web_psb' */
  real_T B_40_361_0;                   /* '<S52>/web_psb' */
  real_T B_40_365_0;                   /* '<S53>/web_psb' */
  real_T B_40_370_0;                   /* '<S54>/web_psb' */
  real_T B_40_375_0;                   /* '<S62>/1_(2H)' */
  real_T B_40_377_0;                   /* '<S62>/web1' */
  real_T B_40_378_0;                   /* '<S62>/web3' */
  real_T B_40_420_0;                   /* '<S103>/C4' */
  real_T B_40_421_0;                   /* '<S8>/com' */
  real_T B_40_422_0;                   /* '<S8>/C4' */
  real_T B_40_424_0;                   /* '<S101>/Look-Up Table' */
  real_T B_40_430_0;                   /* '<S104>/Look-Up Table' */
  real_T B_40_432_0;                   /* '<S103>/Switch3' */
  real_T B_40_433_0;                   /* '<S103>/Sfunction' */
  real_T B_40_434_0;                   /* '<S104>/Derivative' */
  real_T B_40_439_0;                   /* '<S106>/C4' */
  real_T B_40_443_0;                   /* '<S107>/Look-Up Table' */
  real_T B_40_445_0;                   /* '<S106>/Switch3' */
  real_T B_40_446_0;                   /* '<S106>/Sfunction' */
  real_T B_40_447_0;                   /* '<S107>/Derivative' */
  real_T B_40_452_0;                   /* '<S109>/C4' */
  real_T B_40_456_0;                   /* '<S110>/Look-Up Table' */
  real_T B_40_458_0;                   /* '<S109>/Switch3' */
  real_T B_40_459_0;                   /* '<S109>/Sfunction' */
  real_T B_40_460_0;                   /* '<S110>/Derivative' */
  real_T B_40_465_0;                   /* '<S101>/Derivative' */
  real_T B_39_0_0[2];                  /* '<S133>/Constant' */
  real_T B_39_1_0;                     /* '<S133>/Trigonometric Function' */
  real_T B_39_2_0;                     /* '<S133>/Trigonometric Function1' */
  real_T B_38_1_0;                     /* '<S132>/we' */
  real_T B_38_2_0;                     /* '<S132>/Sum' */
  real_T B_38_5_0;                     /* '<S132>/Trigonometric Function' */
  real_T B_38_6_0;                     /* '<S132>/Trigonometric Function1' */
  real_T B_38_7_0;                     /* '<S132>/Trigonometric Function2' */
  real_T B_38_8_0;                     /* '<S132>/Trigonometric Function3' */
  real_T B_36_0_0;                     /* '<S131>/ira' */
  real_T B_36_1_0;                     /* '<S131>/irb' */
  real_T B_36_2_0;                     /* '<S131>/isa' */
  real_T B_36_3_0;                     /* '<S131>/isb' */
  real_T B_35_0_0;                     /* '<S130>/ira' */
  real_T B_35_1_0;                     /* '<S130>/irb' */
  real_T B_35_2_0;                     /* '<S130>/isa' */
  real_T B_35_3_0;                     /* '<S130>/isb' */
  real_T B_34_0_0;                     /* '<S129>/ira' */
  real_T B_34_1_0;                     /* '<S129>/irb' */
  real_T B_34_2_0;                     /* '<S129>/isa' */
  real_T B_34_3_0;                     /* '<S129>/isb' */
  real_T B_33_0_0;                     /* '<S127>/vdr' */
  real_T B_33_1_0;                     /* '<S127>/vds' */
  real_T B_33_2_0;                     /* '<S127>/vqr' */
  real_T B_33_3_0;                     /* '<S127>/vqs' */
  real_T B_32_0_0;                     /* '<S126>/vdr' */
  real_T B_32_1_0;                     /* '<S126>/vds' */
  real_T B_32_2_0;                     /* '<S126>/vqr' */
  real_T B_32_3_0;                     /* '<S126>/vqs' */
  real_T B_31_0_0;                     /* '<S125>/vdr' */
  real_T B_31_1_0;                     /* '<S125>/vds' */
  real_T B_31_2_0;                     /* '<S125>/vqr' */
  real_T B_31_3_0;                     /* '<S125>/vqs' */
  real_T B_30_4_0;                     /* '<S124>/Constant' */
  real_T B_30_7_0;                     /* '<S124>/Switch' */
  real_T B_30_9_0;                     /* '<S124>/Switch1' */
  real_T B_24_1_0;                     /* '<S74>/Look-Up Table' */
  real_T B_24_3_0;                     /* '<S71>/Constant1' */
  real_T B_24_6_0;                     /* '<S71>/Constant4' */
  real_T B_24_7_0;                     /* '<S71>/Constant5' */
  real_T B_24_9_0;                     /* '<S75>/Constant1' */
  real_T B_24_10_0;                    /* '<S75>/Step1' */
  real_T B_24_13_0;                    /* '<S71>/valp_nom5' */
  real_T B_24_19_0;                    /* '<S75>/Product2' */
  real_T B_24_21_0;                    /* '<S75>/valp_nom8' */
  real_T B_24_23_0;                    /* '<S75>/Gain1' */
  real_T B_24_24_0;                    /* '<S75>/CONSTANT' */
  real_T B_24_25_0;                    /* '<S75>/Memory' */
  real_T B_24_27_0;                    /* '<S75>/Switch2' */
  real_T B_24_32_0;                    /* '<S71>/Gain2' */
  real_T B_24_33_0;                    /* '<S71>/Integrator' */
  real_T B_24_38_0;                    /* '<S71>/Switch2' */
  real_T B_24_40_0;                    /* '<S71>/Switch3' */
  real_T B_24_43_0;                    /* '<S75>/Switch' */
  real_T B_16_2_0;                     /* '<S72>/Gain3' */
  real_T B_16_9_0[3];                  /* '<S72>/Multiport Switch' */
  real_T B_16_10_0;                    /* '<S72>/Phase_Harmo1' */
  real_T B_16_13_0;                    /* '<S70>/Sum4' */
  real_T B_16_16_0[3];                 /* '<S72>/Product1' */
  real_T B_16_19_0;                    /* '<S73>/Gain3' */
  real_T B_16_26_0[3];                 /* '<S73>/Multiport Switch' */
  real_T B_16_27_0;                    /* '<S73>/Phase_Harmo1' */
  real_T B_16_30_0[3];                 /* '<S73>/Product1' */
  real_T B_9_0_0;                      /* '<S61>/int' */
  real_T B_8_2_0;                      /* '<S60>/Sum' */
  real_T B_8_4_0;                      /* '<S60>/Vs' */
  real_T B_8_7_0;                      /* '<S60>/Switch' */
  real_T B_8_9_0;                      /* '<S60>/Switch1' */
  real_T B_5_0_0;                      /* '<S59>/Vs' */
  real_T B_5_3_0;                      /* '<S59>/Switch' */
  real_T B_40_270_0;                   /* '<S55>/output formatting' */
  real_T B_40_210_0[3];                /* '<S7>/Kv' */
  real_T B_40_384_0;                   /* '<S2>/Volts > pu' */
  real_T B_40_271_0;                   /* '<S55>/output formatting1' */
  boolean_T B_40_18_0;                 /* '<S53>/wref' */
  boolean_T B_40_71_0;                 /* '<S123>/Constant' */
  boolean_T B_40_74_0;                 /* '<S123>/Constant3' */
  boolean_T B_40_77_0;                 /* '<S122>/Constant' */
  boolean_T B_40_79_0;                 /* '<S122>/Constant1' */
  boolean_T B_40_81_0;                 /* '<S122>/Constant2' */
  boolean_T B_40_161_0;                /* '<S121>/Constant' */
  boolean_T B_40_163_0;                /* '<S121>/Constant1' */
  boolean_T B_40_165_0;                /* '<S121>/Constant2' */
  boolean_T B_40_428_0;                /* '<S8>/Data Type  Conversion3' */
  boolean_T B_40_441_0;                /* '<S8>/Data Type  Conversion2' */
  boolean_T B_40_454_0;                /* '<S8>/Data Type  Conversion1' */
  boolean_T B_24_16_0;                 /* '<S75>/Logical Operator' */
  boolean_T B_24_30_0;                 /* '<S71>/Relational Operator2' */
  boolean_T B_24_35_0;                 /* '<S71>/Relational Operator' */
  boolean_T B_24_36_0;                 /* '<S71>/Logical Operator1' */
  boolean_T B_24_37_0;                 /* '<S71>/Relational Operator1' */
  boolean_T B_8_5_0;                   /* '<S60>/Relational Operator' */
  boolean_T B_5_1_0;                   /* '<S59>/Relational Operator' */
  char pad_B_5_1_0[5];
} BlockIO;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  real_T Sfunction_DSTATE[2];          /* '<S16>/Sfunction' */
  real_T Sfunction_DSTATE_i[2];        /* '<S19>/Sfunction' */
  real_T Sfunction_DSTATE_a[2];        /* '<S22>/Sfunction' */
  real_T Sfunction_DSTATE_h[2];        /* '<S103>/Sfunction' */
  real_T Sfunction_DSTATE_a4[2];       /* '<S106>/Sfunction' */
  real_T Sfunction_DSTATE_p[2];        /* '<S109>/Sfunction' */
  real_T Memory_PreviousInput;         /* '<S75>/Memory' */
  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK;                  /* '<S113>/Derivative' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative1_RWORK;                 /* '<S113>/Derivative1' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative2_RWORK;                 /* '<S113>/Derivative2' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_p;                /* '<S17>/Derivative' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_k;                /* '<S20>/Derivative' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_a;                /* '<S23>/Derivative' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_j;                /* '<S14>/Derivative' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_kp;               /* '<S104>/Derivative' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_l;                /* '<S107>/Derivative' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_m;                /* '<S110>/Derivative' */

  struct {
    real_T TimeStampA;
    real_T LastUAtTimeA;
    real_T TimeStampB;
    real_T LastUAtTimeB;
  } Derivative_RWORK_f;                /* '<S101>/Derivative' */

  struct {
    void *AS;
    void *BS;
    void *CS;
    void *DS;
    void *DX_COL;
    void *BD_COL;
    void *TMP1;
    void *TMP2;
    void *SWITCH_STATUS;
    void *SWITCH_STATUS_INIT;
    void *SW_CHG;
    void *CHOPPER;
    void *G_STATE;
    void *IDX_SW_CHG;
    void *Y_SWITCH;
    void *SWITCH_TYPES;
    void *IDX_OUT_SW;
  } StateSpace_PWORK;                  /* '<S135>/State-Space' */

  struct {
    void *LoggedData;
  } wm_PWORK;                          /* '<Root>/wm' */

  struct {
    void *LoggedData;
  } Scope1_PWORK;                      /* '<S9>/Scope1' */

  struct {
    void *LoggedData;
  } Scope2_PWORK;                      /* '<S9>/Scope2' */

  struct {
    void *LoggedData;
  } Scope3_PWORK;                      /* '<S9>/Scope3' */

  struct {
    void *LoggedData;
  } Scope4_PWORK;                      /* '<S9>/Scope4' */

  struct {
    void *LoggedData;
  } Scope1_PWORK_c;                    /* '<Root>/Scope1' */

  struct {
    void *LoggedData;
  } Scope2_PWORK_k;                    /* '<Root>/Scope2' */

  struct {
    void *LoggedData;
  } Scope3_PWORK_p;                    /* '<Root>/Scope3' */

  struct {
    void *LoggedData;
  } Iabcpu_PWORK;                      /* '<S2>/ Iabc (pu)' */

  struct {
    void *LoggedData;
  } Speedpu_PWORK;                     /* '<S2>/ Speed (pu)' */

  struct {
    void *LoggedData;
  } Vfpu_PWORK;                        /* '<S2>/Vf (pu)' */

  struct {
    void *LoggedData;
  } Vapu_PWORK;                        /* '<S2>/Va (pu)' */

  int_T StateSpace_IWORK[4];           /* '<S135>/State-Space' */
  int_T Enabledintegrator_MODE;        /* '<S53>/Enabled integrator' */
  int_T dqaxissaturation_MODE;         /* '<S58>/dq axis saturation' */
  int_T daxissaturation_MODE;          /* '<S58>/d axis saturation' */
  int_T Saturation_MODE;               /* '<S118>/Saturation' */
  int_T sinthrcosthr_MODE;             /* '<S123>/sin(thr),cos(thr)' */
  int_T sinbetacosbetasinthcosth_MODE; /* '<S123>/sin(beta),cos(beta),sin(th),cos(th)' */
  int_T Rotorreferenceframe_MODE;      /* '<S122>/Rotor reference frame' */
  int_T Stationaryreferenceframe_MODE; /* '<S122>/Stationary reference frame' */
  int_T Synchronousreferenceframe_MODE;/* '<S122>/Synchronous reference frame' */
  int_T SignalGenerator_MODE;          /* '<S69>/Signal Generator' */
  int_T HarmonicGenerator_MODE;        /* '<S69>/Harmonic Generator' */
  char StateSpace_MODE[24];            /* '<S135>/State-Space' */
  int_T Rotorreferenceframe_MODE_d;    /* '<S121>/Rotor reference frame' */
  int_T Stationaryreferenceframe_MODE_k;/* '<S121>/Stationary reference frame' */
  int_T Synchronousreferenceframe_MODE_k;/* '<S121>/Synchronous reference frame' */
  int_T position_MODE;                 /* '<S38>/position' */
  int_T speedlimit_MODE;               /* '<S38>/speed limit' */
  int_T Step1_MODE;                    /* '<S75>/Step1' */
  int_T Step_MODE;                     /* '<S75>/Step' */
  int_T Step_MODE_e;                   /* '<S70>/Step' */
  int_T Step1_MODE_g;                  /* '<S70>/Step1' */
  int8_T Enabledintegrator_SubsysRanBC;/* '<S53>/Enabled integrator' */
  int8_T dqaxissaturation_SubsysRanBC; /* '<S58>/dq axis saturation' */
  int8_T daxissaturation_SubsysRanBC;  /* '<S58>/d axis saturation' */
  int8_T Saturation_SubsysRanBC;       /* '<S118>/Saturation' */
  int8_T sinthrcosthr_SubsysRanBC;     /* '<S123>/sin(thr),cos(thr)' */
  int8_T sinbetacosbetasinthcosth_SubsysRanBC;/* '<S123>/sin(beta),cos(beta),sin(th),cos(th)' */
  int8_T Rotorreferenceframe_SubsysRanBC;/* '<S122>/Rotor reference frame' */
  int8_T Stationaryreferenceframe_SubsysRanBC;/* '<S122>/Stationary reference frame' */
  int8_T Synchronousreferenceframe_SubsysRanBC;/* '<S122>/Synchronous reference frame' */
  int8_T SignalGenerator_SubsysRanBC;  /* '<S69>/Signal Generator' */
  int8_T HarmonicGenerator_SubsysRanBC;/* '<S69>/Harmonic Generator' */
  int8_T Rotorreferenceframe_SubsysRanBC_n;/* '<S121>/Rotor reference frame' */
  int8_T Stationaryreferenceframe_SubsysRanBC_b;/* '<S121>/Stationary reference frame' */
  int8_T Synchronousreferenceframe_SubsysRanBC_o;/* '<S121>/Synchronous reference frame' */
  boolean_T RelationalOperator2_Mode;  /* '<S35>/Relational Operator2' */
  boolean_T RelationalOperator1_Mode;  /* '<S35>/Relational Operator1' */
  boolean_T RelationalOperator_Mode;   /* '<S60>/Relational Operator' */
  boolean_T RelationalOperator_Mode_c; /* '<S59>/Relational Operator' */
  char pad_RelationalOperator_Mode_c[6];
} D_Work;

/* Continuous states (auto storage) */
typedef struct {
  real_T Rotorangledtheta_CSTATE;      /* '<S62>/Rotor angle dtheta' */
  real_T int_CSTATE;                   /* '<S49>/int' */
  real_T int_CSTATE_o;                 /* '<S50>/int' */
  real_T int_CSTATE_d;                 /* '<S51>/int' */
  real_T int1_CSTATE;                  /* '<S54>/int1' */
  real_T int_CSTATE_dx;                /* '<S52>/int' */
  real_T phiqr_CSTATE;                 /* '<S119>/phiqr' */
  real_T phidr_CSTATE;                 /* '<S119>/phidr' */
  real_T phiqs_CSTATE;                 /* '<S120>/phiqs' */
  real_T phids_CSTATE;                 /* '<S120>/phids' */
  real_T Rotoranglethetam_CSTATE;      /* '<S134>/Rotor angle thetam' */
  real_T Rotorspeedwm_CSTATE;          /* '<S134>/Rotor speed (wm)' */
  real_T StateSpace_CSTATE[75];        /* '<S135>/State-Space' */
  real_T TransferFcn_CSTATE;           /* '<S112>/Transfer Fcn' */
  real_T TransferFcn1_CSTATE;          /* '<S112>/Transfer Fcn1' */
  real_T Rotorspeeddeviationdw_CSTATE; /* '<S62>/Rotor speed deviation (dw)' */
  real_T StateSpace_CSTATE_k;          /* '<S34>/State Space' */
  real_T StateSpace_CSTATE_a;          /* '<S33>/State Space' */
  real_T StateSpace_CSTATE_ao;         /* '<S30>/State Space' */
  real_T Derivative_CSTATE;            /* '<S37>/Derivative' */
  real_T position_CSTATE;              /* '<S38>/position' */
  real_T Integrator1_CSTATE;           /* '<S37>/Integrator1' */
  real_T servomotor_CSTATE;            /* '<S38>/servo- motor' */
  real_T Integrator_CSTATE;            /* '<S39>/Integrator' */
  real_T theta_CSTATE;                 /* '<S62>/theta' */
  real_T Integrator_CSTATE_e;          /* '<S75>/Integrator' */
  real_T Integrator_CSTATE_l;          /* '<S71>/Integrator' */
  real_T int_CSTATE_k;                 /* '<S61>/int' */
} ContinuousStates;

/* State derivatives (auto storage) */
typedef struct {
  real_T Rotorangledtheta_CSTATE;      /* '<S62>/Rotor angle dtheta' */
  real_T int_CSTATE;                   /* '<S49>/int' */
  real_T int_CSTATE_o;                 /* '<S50>/int' */
  real_T int_CSTATE_d;                 /* '<S51>/int' */
  real_T int1_CSTATE;                  /* '<S54>/int1' */
  real_T int_CSTATE_dx;                /* '<S52>/int' */
  real_T phiqr_CSTATE;                 /* '<S119>/phiqr' */
  real_T phidr_CSTATE;                 /* '<S119>/phidr' */
  real_T phiqs_CSTATE;                 /* '<S120>/phiqs' */
  real_T phids_CSTATE;                 /* '<S120>/phids' */
  real_T Rotoranglethetam_CSTATE;      /* '<S134>/Rotor angle thetam' */
  real_T Rotorspeedwm_CSTATE;          /* '<S134>/Rotor speed (wm)' */
  real_T StateSpace_CSTATE[75];        /* '<S135>/State-Space' */
  real_T TransferFcn_CSTATE;           /* '<S112>/Transfer Fcn' */
  real_T TransferFcn1_CSTATE;          /* '<S112>/Transfer Fcn1' */
  real_T Rotorspeeddeviationdw_CSTATE; /* '<S62>/Rotor speed deviation (dw)' */
  real_T StateSpace_CSTATE_k;          /* '<S34>/State Space' */
  real_T StateSpace_CSTATE_a;          /* '<S33>/State Space' */
  real_T StateSpace_CSTATE_ao;         /* '<S30>/State Space' */
  real_T Derivative_CSTATE;            /* '<S37>/Derivative' */
  real_T position_CSTATE;              /* '<S38>/position' */
  real_T Integrator1_CSTATE;           /* '<S37>/Integrator1' */
  real_T servomotor_CSTATE;            /* '<S38>/servo- motor' */
  real_T Integrator_CSTATE;            /* '<S39>/Integrator' */
  real_T theta_CSTATE;                 /* '<S62>/theta' */
  real_T Integrator_CSTATE_e;          /* '<S75>/Integrator' */
  real_T Integrator_CSTATE_l;          /* '<S71>/Integrator' */
  real_T int_CSTATE_k;                 /* '<S61>/int' */
} StateDerivatives;

/* State disabled  */
typedef struct {
  boolean_T Rotorangledtheta_CSTATE;   /* '<S62>/Rotor angle dtheta' */
  boolean_T int_CSTATE;                /* '<S49>/int' */
  boolean_T int_CSTATE_o;              /* '<S50>/int' */
  boolean_T int_CSTATE_d;              /* '<S51>/int' */
  boolean_T int1_CSTATE;               /* '<S54>/int1' */
  boolean_T int_CSTATE_dx;             /* '<S52>/int' */
  boolean_T phiqr_CSTATE;              /* '<S119>/phiqr' */
  boolean_T phidr_CSTATE;              /* '<S119>/phidr' */
  boolean_T phiqs_CSTATE;              /* '<S120>/phiqs' */
  boolean_T phids_CSTATE;              /* '<S120>/phids' */
  boolean_T Rotoranglethetam_CSTATE;   /* '<S134>/Rotor angle thetam' */
  boolean_T Rotorspeedwm_CSTATE;       /* '<S134>/Rotor speed (wm)' */
  boolean_T StateSpace_CSTATE[75];     /* '<S135>/State-Space' */
  boolean_T TransferFcn_CSTATE;        /* '<S112>/Transfer Fcn' */
  boolean_T TransferFcn1_CSTATE;       /* '<S112>/Transfer Fcn1' */
  boolean_T Rotorspeeddeviationdw_CSTATE;/* '<S62>/Rotor speed deviation (dw)' */
  boolean_T StateSpace_CSTATE_k;       /* '<S34>/State Space' */
  boolean_T StateSpace_CSTATE_a;       /* '<S33>/State Space' */
  boolean_T StateSpace_CSTATE_ao;      /* '<S30>/State Space' */
  boolean_T Derivative_CSTATE;         /* '<S37>/Derivative' */
  boolean_T position_CSTATE;           /* '<S38>/position' */
  boolean_T Integrator1_CSTATE;        /* '<S37>/Integrator1' */
  boolean_T servomotor_CSTATE;         /* '<S38>/servo- motor' */
  boolean_T Integrator_CSTATE;         /* '<S39>/Integrator' */
  boolean_T theta_CSTATE;              /* '<S62>/theta' */
  boolean_T Integrator_CSTATE_e;       /* '<S75>/Integrator' */
  boolean_T Integrator_CSTATE_l;       /* '<S71>/Integrator' */
  boolean_T int_CSTATE_k;              /* '<S61>/int' */
} StateDisabled;

/* Zero-crossing (trigger) state */
typedef struct {
  real_T StateSpace_Sf0_ZC[12];        /* '<S135>/State-Space' */
  real_T Sfunction_Sf0_ZC[2];          /* '<S16>/Sfunction' */
  real_T HitCrossing_HitNoOutput_ZC;   /* '<S17>/Hit  Crossing' */
  real_T Sfunction_Sf0_ZC_b[2];        /* '<S19>/Sfunction' */
  real_T HitCrossing_HitNoOutput_ZC_g; /* '<S20>/Hit  Crossing' */
  real_T Sfunction_Sf0_ZC_k[2];        /* '<S22>/Sfunction' */
  real_T HitCrossing_HitNoOutput_ZC_p; /* '<S23>/Hit  Crossing' */
  real_T HitCrossing_HitNoOutput_ZC_c; /* '<S14>/Hit  Crossing' */
  real_T RelationalOperator2_RelopInput_ZC;/* '<S35>/Relational Operator2' */
  real_T RelationalOperator1_RelopInput_ZC;/* '<S35>/Relational Operator1' */
  real_T position_IntgUpLimit_ZC;      /* '<S38>/position' */
  real_T position_IntgLoLimit_ZC;      /* '<S38>/position' */
  real_T position_LeaveSaturate_ZC;    /* '<S38>/position' */
  real_T speedlimit_UprLim_ZC;         /* '<S38>/speed limit' */
  real_T speedlimit_LwrLim_ZC;         /* '<S38>/speed limit' */
  real_T Sfunction_Sf0_ZC_h[2];        /* '<S103>/Sfunction' */
  real_T HitCrossing_HitNoOutput_ZC_j; /* '<S104>/Hit  Crossing' */
  real_T Sfunction_Sf0_ZC_ho[2];       /* '<S106>/Sfunction' */
  real_T HitCrossing_HitNoOutput_ZC_je;/* '<S107>/Hit  Crossing' */
  real_T Sfunction_Sf0_ZC_p[2];        /* '<S109>/Sfunction' */
  real_T HitCrossing_HitNoOutput_ZC_o; /* '<S110>/Hit  Crossing' */
  real_T HitCrossing_HitNoOutput_ZC_jj;/* '<S101>/Hit  Crossing' */
  real_T Step1_StepTime_ZC;            /* '<S75>/Step1' */
  real_T Step_StepTime_ZC;             /* '<S75>/Step' */
  real_T Step_StepTime_ZC_d;           /* '<S70>/Step' */
  real_T Step1_StepTime_ZC_p;          /* '<S70>/Step1' */
  real_T RelationalOperator_RelopInput_ZC;/* '<S60>/Relational Operator' */
  real_T RelationalOperator_RelopInput_ZC_n;/* '<S59>/Relational Operator' */
} ZCSignalValues;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState StateSpace_Sf0_ZCE[12];   /* '<S135>/State-Space' */
  ZCSigState Sfunction_Sf0_ZCE[2];     /* '<S16>/Sfunction' */
  ZCSigState HitCrossing_HitNoOutput_ZCE;/* '<S17>/Hit  Crossing' */
  ZCSigState Sfunction_Sf0_ZCE_m[2];   /* '<S19>/Sfunction' */
  ZCSigState HitCrossing_HitNoOutput_ZCE_i;/* '<S20>/Hit  Crossing' */
  ZCSigState Sfunction_Sf0_ZCE_l[2];   /* '<S22>/Sfunction' */
  ZCSigState HitCrossing_HitNoOutput_ZCE_n;/* '<S23>/Hit  Crossing' */
  ZCSigState HitCrossing_HitNoOutput_ZCE_f;/* '<S14>/Hit  Crossing' */
  ZCSigState RelationalOperator2_RelopInput_ZCE;/* '<S35>/Relational Operator2' */
  ZCSigState RelationalOperator1_RelopInput_ZCE;/* '<S35>/Relational Operator1' */
  ZCSigState position_IntgUpLimit_ZCE; /* '<S38>/position' */
  ZCSigState position_IntgLoLimit_ZCE; /* '<S38>/position' */
  ZCSigState position_LeaveSaturate_ZCE;/* '<S38>/position' */
  ZCSigState speedlimit_UprLim_ZCE;    /* '<S38>/speed limit' */
  ZCSigState speedlimit_LwrLim_ZCE;    /* '<S38>/speed limit' */
  ZCSigState Sfunction_Sf0_ZCE_b[2];   /* '<S103>/Sfunction' */
  ZCSigState HitCrossing_HitNoOutput_ZCE_a;/* '<S104>/Hit  Crossing' */
  ZCSigState Sfunction_Sf0_ZCE_h[2];   /* '<S106>/Sfunction' */
  ZCSigState HitCrossing_HitNoOutput_ZCE_nn;/* '<S107>/Hit  Crossing' */
  ZCSigState Sfunction_Sf0_ZCE_br[2];  /* '<S109>/Sfunction' */
  ZCSigState HitCrossing_HitNoOutput_ZCE_n2;/* '<S110>/Hit  Crossing' */
  ZCSigState HitCrossing_HitNoOutput_ZCE_p;/* '<S101>/Hit  Crossing' */
  ZCSigState Step1_StepTime_ZCE;       /* '<S75>/Step1' */
  ZCSigState Step_StepTime_ZCE;        /* '<S75>/Step' */
  ZCSigState Step_StepTime_ZCE_h;      /* '<S70>/Step' */
  ZCSigState Step1_StepTime_ZCE_c;     /* '<S70>/Step1' */
  ZCSigState RelationalOperator_RelopInput_ZCE;/* '<S60>/Relational Operator' */
  ZCSigState RelationalOperator_RelopInput_ZCE_c;/* '<S59>/Relational Operator' */
} PrevZCSigStates;

/* Parameters (auto storage) */
struct Parameters_ {
  real_T P_0[6];                       /* Expression: zeros(6,1)
                                        * Referenced by: '<S137>/SwitchCurrents'
                                        */
  real_T P_1;                          /* Expression: SM.tho
                                        * Referenced by: '<S62>/Rotor angle dtheta'
                                        */
  real_T P_2;                          /* Expression: SM.web
                                        * Referenced by: '<S62>/web2'
                                        */
  real_T P_3;                          /* Expression: SM.phido
                                        * Referenced by: '<S49>/int'
                                        */
  real_T P_4;                          /* Expression: SM.Lad/SM.Ll
                                        * Referenced by: '<S48>/Lad_Ll'
                                        */
  real_T P_5;                          /* Expression: SM.phifdo
                                        * Referenced by: '<S50>/int'
                                        */
  real_T P_6;                          /* Expression: SM.Lad/SM.Llfd
                                        * Referenced by: '<S48>/Lad_Llfd'
                                        */
  real_T P_7;                          /* Expression: SM.phikdo
                                        * Referenced by: '<S51>/int'
                                        */
  real_T P_8;                          /* Expression: SM.Lad/SM.Llkd
                                        * Referenced by: '<S48>/Lad_Llkd'
                                        */
  real_T P_9;                          /* Expression: SM.phiqo
                                        * Referenced by: '<S54>/int1'
                                        */
  real_T P_10;                         /* Expression: SM.Laq/SM.Ll
                                        * Referenced by: '<S48>/Laq_Ll'
                                        */
  real_T P_11;                         /* Expression: SM.phikq1o
                                        * Referenced by: '<S52>/int'
                                        */
  real_T P_12;                         /* Expression: SM.Laq/SM.Llkq1
                                        * Referenced by: '<S48>/Laq_Llkq1'
                                        */
  real_T P_13;                         /* Expression: SM.Laq/SM.Llkq2
                                        * Referenced by: '<S48>/Laq_Llkq2'
                                        */
  real_T P_14;                         /* Expression: 0.5
                                        * Referenced by: '<S58>/Switch'
                                        */
  real_T P_15;                         /* Expression: -1/SM.Ll
                                        * Referenced by: '<S48>/-1_Ll'
                                        */
  real_T P_16;                         /* Expression: 2
                                        * Referenced by: '<S58>/Gain'
                                        */
  real_T P_17;                         /* Expression: 3
                                        * Referenced by: '<S58>/Gain1'
                                        */
  real_T P_18;                         /* Expression: -1/SM.Ll
                                        * Referenced by: '<S48>/-1_Ll '
                                        */
  real_T P_19;                         /* Expression: SM.ib
                                        * Referenced by: '<S55>/ib'
                                        */
  real_T P_20;                         /* Expression: SM.ctrl
                                        * Referenced by: '<S122>/Constant3'
                                        */
  real_T P_21;                         /* Expression: SM.phirqo
                                        * Referenced by: '<S119>/phiqr'
                                        */
  real_T P_22;                         /* Expression: SM.phirdo
                                        * Referenced by: '<S119>/phidr'
                                        */
  real_T P_23;                         /* Expression: 1/SM.Llr
                                        * Referenced by: '<S118>/1\Llr'
                                        */
  real_T P_24;                         /* Expression: SM.phisqo
                                        * Referenced by: '<S120>/phiqs'
                                        */
  real_T P_25;                         /* Expression: SM.phisdo
                                        * Referenced by: '<S120>/phids'
                                        */
  real_T P_26;                         /* Expression: 1/SM.Lls
                                        * Referenced by: '<S118>/1\Lls'
                                        */
  real_T P_27;                         /* Expression: SM.Laq
                                        * Referenced by: '<S118>/1\Llr1'
                                        */
  real_T P_28;                         /* Expression: SM.Lad
                                        * Referenced by: '<S118>/1\Llr2'
                                        */
  real_T P_29;                         /* Expression: SM.ensat
                                        * Referenced by: '<S118>/Constant'
                                        */
  real_T P_30;                         /* Expression: SM.ensat
                                        * Referenced by: '<S118>/Constant1'
                                        */
  real_T P_31;                         /* Expression: 0.9
                                        * Referenced by: '<S118>/Switch'
                                        */
  real_T P_32;                         /* Expression: 1/SM.Llr
                                        * Referenced by: '<S119>/1\Llr'
                                        */
  real_T P_33;                         /* Expression: 0.9
                                        * Referenced by: '<S118>/Switch1'
                                        */
  real_T P_34;                         /* Expression: 1/SM.Llr
                                        * Referenced by: '<S119>/1\Llr2'
                                        */
  real_T P_35;                         /* Expression: 1/SM.Lls
                                        * Referenced by: '<S120>/1\Llr'
                                        */
  real_T P_36;                         /* Expression: 1/SM.Lls
                                        * Referenced by: '<S120>/1\Llr2'
                                        */
  real_T P_37;                         /* Expression: SM.tho
                                        * Referenced by: '<S134>/Rotor angle thetam'
                                        */
  real_T P_38;                         /* Expression: SM.wmo
                                        * Referenced by: '<S134>/Rotor speed (wm)'
                                        */
  real_T P_39;                         /* Expression: SM.ctrl
                                        * Referenced by: '<S122>/Constant4'
                                        */
  real_T P_40;                         /* Expression: SM.ib
                                        * Referenced by: '<S122>/ib'
                                        */
  real_T P_41;                         /* Expression: VariationEntity - 1
                                        * Referenced by: '<S69>/valp_nom3'
                                        */
  real_T P_42;                         /* Expression: MagnitudeVps
                                        * Referenced by: '<S69>/valp_nom2'
                                        */
  real_T P_43;                         /* Expression: VariationPhaseA
                                        * Referenced by: '<S69>/SinglePhase'
                                        */
  real_T P_44;                         /* Expression: 0.5
                                        * Referenced by: '<S69>/Switch5'
                                        */
  real_T P_45;                         /* Expression: FreqVps
                                        * Referenced by: '<S69>/valp_nom1'
                                        */
  real_T P_46;                         /* Expression: 2*pi
                                        * Referenced by: '<S69>/Gain'
                                        */
  real_T P_47;                         /* Expression: PhaseVps
                                        * Referenced by: '<S69>/valp_nom'
                                        */
  real_T P_48;                         /* Expression: pi/180
                                        * Referenced by: '<S69>/Gain3'
                                        */
  real_T P_49[3];                      /* Expression: [0  -2*pi/3  2*pi/3]
                                        * Referenced by: '<S69>/P1'
                                        */
  real_T P_50;                         /* Expression: HarmonicGeneration
                                        * Referenced by: '<S69>/valp_nom7'
                                        */
  real_T P_51;                         /* Expression: 1/SM.p
                                        * Referenced by: '<S134>/1\p'
                                        */
  real_T P_52[3];                      /* Expression: [SM.Nb2;SM.Tb2;1]
                                        * Referenced by: '<S134>/Gain'
                                        */
  real_T P_53;                         /* Expression: 1
                                        * Referenced by: '<Root>/Gain3'
                                        */
  real_T P_54;                         /* Expression: 33.3
                                        * Referenced by: '<S9>/T1'
                                        */
  real_T P_55;                         /* Expression: 1/(100*314)
                                        * Referenced by: '<S9>/Gain5'
                                        */
  real_T P_56;                         /* Expression: -1
                                        * Referenced by: '<S113>/Gain7'
                                        */
  real_T P_57;                         /* Expression: 129579.3
                                        * Referenced by: '<S113>/Gain3'
                                        */
  real_T P_58;                         /* Expression: 811.4
                                        * Referenced by: '<S113>/Gain4'
                                        */
  real_T P_59;                         /* Expression: 33.3
                                        * Referenced by: '<S9>/T2'
                                        */
  real_T P_60;                         /* Expression: 129579.3
                                        * Referenced by: '<S113>/Gain1'
                                        */
  real_T P_61;                         /* Expression: 811.4
                                        * Referenced by: '<S113>/Gain5'
                                        */
  real_T P_62;                         /* Expression: 33.3
                                        * Referenced by: '<S9>/T3'
                                        */
  real_T P_63;                         /* Expression: 129579.3
                                        * Referenced by: '<S113>/Gain2'
                                        */
  real_T P_64;                         /* Expression: 811.4
                                        * Referenced by: '<S113>/Gain6'
                                        */
  real_T P_65;                         /* Expression: 1
                                        * Referenced by: '<S9>/Gain2'
                                        */
  real_T P_66;                         /* Computed Parameter: P_66
                                        * Referenced by: '<S112>/Transfer Fcn'
                                        */
  real_T P_67;                         /* Computed Parameter: P_67
                                        * Referenced by: '<S112>/Transfer Fcn'
                                        */
  real_T P_68;                         /* Computed Parameter: P_68
                                        * Referenced by: '<S112>/Transfer Fcn'
                                        */
  real_T P_71;                         /* Expression: 1
                                        * Referenced by: '<S9>/Gain3'
                                        */
  real_T P_72;                         /* Expression: 0.0061
                                        * Referenced by: '<S112>/Gain3'
                                        */
  real_T P_73;                         /* Computed Parameter: P_73
                                        * Referenced by: '<S112>/Transfer Fcn1'
                                        */
  real_T P_74;                         /* Computed Parameter: P_74
                                        * Referenced by: '<S112>/Transfer Fcn1'
                                        */
  real_T P_75;                         /* Computed Parameter: P_75
                                        * Referenced by: '<S112>/Transfer Fcn1'
                                        */
  real_T P_78;                         /* Expression: 1
                                        * Referenced by: '<S112>/Gain2'
                                        */
  real_T P_79;                         /* Expression: 0.3933
                                        * Referenced by: '<S112>/Gain1'
                                        */
  real_T P_80;                         /* Expression: 1
                                        * Referenced by: '<S112>/Gain4'
                                        */
  real_T P_81;                         /* Expression: SM.Rr
                                        * Referenced by: '<S119>/1\Llr1'
                                        */
  real_T P_82;                         /* Expression: SM.Rr
                                        * Referenced by: '<S119>/1\Llr3'
                                        */
  real_T P_83;                         /* Expression: SM.ctrl
                                        * Referenced by: '<S123>/Constant1'
                                        */
  real_T P_84;                         /* Expression: 0
                                        * Referenced by: '<S123>/Constant2'
                                        */
  real_T P_85;                         /* Expression: SM.ctrl
                                        * Referenced by: '<S121>/Constant3'
                                        */
  real_T P_86[2];                      /* Expression: [0;0]
                                        * Referenced by: '<S128>/Constant6'
                                        */
  real_T P_87;                         /* Expression: 1/SM.Vb
                                        * Referenced by: '<S121>/1_Vb'
                                        */
  real_T P_88;                         /* Expression: SM.web
                                        * Referenced by: '<S119>/web1'
                                        */
  real_T P_89;                         /* Expression: SM.web
                                        * Referenced by: '<S119>/web_psb'
                                        */
  real_T P_90;                         /* Expression: SM.Rs
                                        * Referenced by: '<S120>/1\Llr1'
                                        */
  real_T P_91;                         /* Expression: SM.Rs
                                        * Referenced by: '<S120>/1\Llr3'
                                        */
  real_T P_92;                         /* Expression: SM.ctrl
                                        * Referenced by: '<S123>/Constant4'
                                        */
  real_T P_93;                         /* Expression: 0
                                        * Referenced by: '<S123>/Constant5'
                                        */
  real_T P_94;                         /* Expression: 1
                                        * Referenced by: '<S123>/Constant6'
                                        */
  real_T P_95;                         /* Expression: SM.ctrl
                                        * Referenced by: '<S121>/Constant4'
                                        */
  real_T P_96;                         /* Expression: SM.web
                                        * Referenced by: '<S120>/web1'
                                        */
  real_T P_97;                         /* Expression: SM.web
                                        * Referenced by: '<S120>/web_psb'
                                        */
  real_T P_98;                         /* Expression: -1
                                        * Referenced by: '<S9>/Gain1'
                                        */
  real_T P_99;                         /* Expression: 1/SM.Tb2
                                        * Referenced by: '<S134>/1_Tb2'
                                        */
  real_T P_100;                        /* Expression: SM.F
                                        * Referenced by: '<S134>/F'
                                        */
  real_T P_101;                        /* Expression: 1/(2*SM.H)
                                        * Referenced by: '<S134>/1_2H'
                                        */
  real_T P_102;                        /* Expression: SM.web
                                        * Referenced by: '<S134>/web_psb'
                                        */
  real_T P_103;                        /* Expression: Ki
                                        * Referenced by: '<S6>/Ki'
                                        */
  real_T P_104;                        /* Expression: Kv
                                        * Referenced by: '<S6>/Kv'
                                        */
  real_T P_105;                        /* Expression: Kv
                                        * Referenced by: '<S7>/Kv'
                                        */
  real_T P_106;                        /* Expression: BR.com
                                        * Referenced by: '<S16>/C4'
                                        */
  real_T P_107;                        /* Expression: 1
                                        * Referenced by: '<S1>/com'
                                        */
  real_T P_108;                        /* Expression: External
                                        * Referenced by: '<S1>/C4'
                                        */
  real_T P_109[7];                     /* Expression: tv
                                        * Referenced by: '<S14>/Look-Up Table'
                                        */
  real_T P_110[7];                     /* Expression: opv
                                        * Referenced by: '<S14>/Look-Up Table'
                                        */
  real_T P_111;                        /* Expression: 0.5
                                        * Referenced by: '<S1>/Switch3'
                                        */
  real_T P_112;                        /* Expression: SwitchA
                                        * Referenced by: '<S1>/Constant1'
                                        */
  real_T P_113;                        /* Expression: InitialState
                                        * Referenced by: '<S1>/Constant5'
                                        */
  real_T P_114[7];                     /* Expression: tv
                                        * Referenced by: '<S17>/Look-Up Table'
                                        */
  real_T P_115[7];                     /* Expression: opv
                                        * Referenced by: '<S17>/Look-Up Table'
                                        */
  real_T P_116;                        /* Expression: 0.5
                                        * Referenced by: '<S16>/Switch3'
                                        */
  real_T P_117[2];                     /* Computed Parameter: P_117
                                        * Referenced by: '<S16>/Sfunction'
                                        */
  real_T P_118;                        /* Expression: InitialState
                                        * Referenced by: '<S16>/Sfunction'
                                        */
  real_T P_119;                        /* Expression: 0
                                        * Referenced by: '<S17>/Hit  Crossing'
                                        */
  real_T P_120;                        /* Expression: BR.com
                                        * Referenced by: '<S19>/C4'
                                        */
  real_T P_121;                        /* Expression: SwitchB
                                        * Referenced by: '<S1>/Constant2'
                                        */
  real_T P_122[7];                     /* Expression: tv
                                        * Referenced by: '<S20>/Look-Up Table'
                                        */
  real_T P_123[7];                     /* Expression: opv
                                        * Referenced by: '<S20>/Look-Up Table'
                                        */
  real_T P_124;                        /* Expression: 0.5
                                        * Referenced by: '<S19>/Switch3'
                                        */
  real_T P_125[2];                     /* Computed Parameter: P_125
                                        * Referenced by: '<S19>/Sfunction'
                                        */
  real_T P_126;                        /* Expression: InitialState
                                        * Referenced by: '<S19>/Sfunction'
                                        */
  real_T P_127;                        /* Expression: 0
                                        * Referenced by: '<S20>/Hit  Crossing'
                                        */
  real_T P_128;                        /* Expression: BR.com
                                        * Referenced by: '<S22>/C4'
                                        */
  real_T P_129;                        /* Expression: SwitchC
                                        * Referenced by: '<S1>/Constant3'
                                        */
  real_T P_130[7];                     /* Expression: tv
                                        * Referenced by: '<S23>/Look-Up Table'
                                        */
  real_T P_131[7];                     /* Expression: opv
                                        * Referenced by: '<S23>/Look-Up Table'
                                        */
  real_T P_132;                        /* Expression: 0.5
                                        * Referenced by: '<S22>/Switch3'
                                        */
  real_T P_133[2];                     /* Computed Parameter: P_133
                                        * Referenced by: '<S22>/Sfunction'
                                        */
  real_T P_134;                        /* Expression: InitialState
                                        * Referenced by: '<S22>/Sfunction'
                                        */
  real_T P_135;                        /* Expression: 0
                                        * Referenced by: '<S23>/Hit  Crossing'
                                        */
  real_T P_136;                        /* Expression: 0
                                        * Referenced by: '<S14>/Hit  Crossing'
                                        */
  real_T P_137;                        /* Expression: SM.Ib2
                                        * Referenced by: '<S55>/output formatting'
                                        */
  real_T P_138;                        /* Expression: SM.Ib2
                                        * Referenced by: '<S55>/output formatting1'
                                        */
  real_T P_139;                        /* Expression: SM.Ib2
                                        * Referenced by: '<S55>/output formatting2'
                                        */
  real_T P_140;                        /* Expression: 1
                                        * Referenced by: '<S62>/nom. speed'
                                        */
  real_T P_141;                        /* Expression: SM.dwo
                                        * Referenced by: '<S62>/Rotor speed deviation (dw)'
                                        */
  real_T P_142;                        /* Expression: SM.Nb
                                        * Referenced by: '<S62>/units'
                                        */
  real_T P_143;                        /* Computed Parameter: P_143
                                        * Referenced by: '<S34>/State Space'
                                        */
  real_T P_144;                        /* Computed Parameter: P_144
                                        * Referenced by: '<S34>/State Space'
                                        */
  real_T P_145;                        /* Computed Parameter: P_145
                                        * Referenced by: '<S34>/State Space'
                                        */
  real_T P_147;                        /* Expression: X0
                                        * Referenced by: '<S34>/State Space'
                                        */
  real_T P_148;                        /* Expression: efmin
                                        * Referenced by: '<S35>/Constant1'
                                        */
  real_T P_149;                        /* Computed Parameter: P_149
                                        * Referenced by: '<S33>/State Space'
                                        */
  real_T P_150;                        /* Computed Parameter: P_150
                                        * Referenced by: '<S33>/State Space'
                                        */
  real_T P_151;                        /* Computed Parameter: P_151
                                        * Referenced by: '<S33>/State Space'
                                        */
  real_T P_153;                        /* Expression: X0
                                        * Referenced by: '<S33>/State Space'
                                        */
  real_T P_154;                        /* Expression: kp
                                        * Referenced by: '<S35>/Vfdmax1'
                                        */
  real_T P_155;                        /* Expression: kp
                                        * Referenced by: '<S35>/Constant'
                                        */
  real_T P_156;                        /* Expression: 0
                                        * Referenced by: '<S35>/Constant3'
                                        */
  real_T P_157;                        /* Expression: efmax
                                        * Referenced by: '<S35>/Vfdmax'
                                        */
  real_T P_161;                        /* Computed Parameter: P_161
                                        * Referenced by: '<S31>/State Space'
                                        */
  real_T P_163;                        /* Computed Parameter: P_163
                                        * Referenced by: '<S30>/State Space'
                                        */
  real_T P_164;                        /* Computed Parameter: P_164
                                        * Referenced by: '<S30>/State Space'
                                        */
  real_T P_165;                        /* Computed Parameter: P_165
                                        * Referenced by: '<S30>/State Space'
                                        */
  real_T P_166;                        /* Computed Parameter: P_166
                                        * Referenced by: '<S30>/State Space'
                                        */
  real_T P_167;                        /* Expression: X0
                                        * Referenced by: '<S30>/State Space'
                                        */
  real_T P_168;                        /* Expression: 1.0
                                        * Referenced by: '<S2>/Vref'
                                        */
  real_T P_169;                        /* Expression: v0(2)/ka
                                        * Referenced by: '<S29>/Vf0| ka'
                                        */
  real_T P_173;                        /* Computed Parameter: P_173
                                        * Referenced by: '<S32>/State Space'
                                        */
  real_T P_175;                        /* Expression: 1/SM.Vb
                                        * Referenced by: '<S47>/1_Vb'
                                        */
  real_T P_176;                        /* Expression: SM.Vb2
                                        * Referenced by: '<S48>/output formatting9'
                                        */
  real_T P_177;                        /* Expression: SM.Vb2
                                        * Referenced by: '<S48>/output formatting8'
                                        */
  real_T P_178;                        /* Expression: dref
                                        * Referenced by: '<S36>/Constant1'
                                        */
  real_T P_179;                        /* Computed Parameter: P_179
                                        * Referenced by: '<S37>/Derivative'
                                        */
  real_T P_180;                        /* Computed Parameter: P_180
                                        * Referenced by: '<S37>/Derivative'
                                        */
  real_T P_184;                        /* Expression: 1
                                        * Referenced by: '<S2>/wref'
                                        */
  real_T P_185;                        /* Expression: go
                                        * Referenced by: '<S38>/position'
                                        */
  real_T P_186;                        /* Expression: gmax
                                        * Referenced by: '<S38>/position'
                                        */
  real_T P_187;                        /* Expression: gmin
                                        * Referenced by: '<S38>/position'
                                        */
  real_T P_188;                        /* Expression: 0.5
                                        * Referenced by: '<S2>/Pref'
                                        */
  real_T P_189;                        /* Expression: 0.5
                                        * Referenced by: '<S36>/Switch'
                                        */
  real_T P_190;                        /* Expression: Rp
                                        * Referenced by: '<S36>/permanent droop'
                                        */
  real_T P_191;                        /* Expression: ki
                                        * Referenced by: '<S37>/Integral'
                                        */
  real_T P_192;                        /* Expression: go
                                        * Referenced by: '<S37>/Integrator1'
                                        */
  real_T P_193;                        /* Expression: kp
                                        * Referenced by: '<S37>/Proportional'
                                        */
  real_T P_194;                        /* Computed Parameter: P_194
                                        * Referenced by: '<S38>/servo- motor'
                                        */
  real_T P_195;                        /* Computed Parameter: P_195
                                        * Referenced by: '<S38>/servo- motor'
                                        */
  real_T P_196;                        /* Computed Parameter: P_196
                                        * Referenced by: '<S38>/servo- motor'
                                        */
  real_T P_199;                        /* Expression: vgmax
                                        * Referenced by: '<S38>/speed limit'
                                        */
  real_T P_200;                        /* Expression: vgmin
                                        * Referenced by: '<S38>/speed limit'
                                        */
  real_T P_201;                        /* Expression: 1
                                        * Referenced by: '<S39>/Constant'
                                        */
  real_T P_202;                        /* Expression: 1/(gmax-gmin)
                                        * Referenced by: '<S39>/turbine gain'
                                        */
  real_T P_203;                        /* Expression: po
                                        * Referenced by: '<S39>/Integrator'
                                        */
  real_T P_204;                        /* Expression: beta
                                        * Referenced by: '<S39>/beta'
                                        */
  real_T P_205;                        /* Expression: 1/tw
                                        * Referenced by: '<S39>/Gain2'
                                        */
  real_T P_206;                        /* Expression: SM.excAxis
                                        * Referenced by: '<S46>/Constant'
                                        */
  real_T P_207;                        /* Expression: 1.5
                                        * Referenced by: '<S46>/Switch'
                                        */
  real_T P_208;                        /* Expression: 1.5
                                        * Referenced by: '<S46>/Switch1'
                                        */
  real_T P_209;                        /* Expression: SM.Rs/SM.Ll
                                        * Referenced by: '<S49>/Rs_Ll'
                                        */
  real_T P_210;                        /* Expression: SM.web
                                        * Referenced by: '<S49>/web_psb'
                                        */
  real_T P_211;                        /* Expression: SM.N
                                        * Referenced by: '<S50>/N'
                                        */
  real_T P_212;                        /* Expression: SM.Rf/SM.Llfd
                                        * Referenced by: '<S50>/Rf_Llfd'
                                        */
  real_T P_213;                        /* Expression: SM.web
                                        * Referenced by: '<S50>/web_psb'
                                        */
  real_T P_214;                        /* Expression: SM.Rkd/SM.Llkd
                                        * Referenced by: '<S51>/Rkd_Llkd'
                                        */
  real_T P_215;                        /* Expression: SM.web
                                        * Referenced by: '<S51>/web_psb'
                                        */
  real_T P_216;                        /* Expression: SM.Rkq1/SM.Llkq1
                                        * Referenced by: '<S52>/Rkq1_Llkq1'
                                        */
  real_T P_217;                        /* Expression: SM.web
                                        * Referenced by: '<S52>/web_psb'
                                        */
  real_T P_218;                        /* Expression: SM.Rkq2/SM.Llkq2
                                        * Referenced by: '<S53>/Rkq2_Llkq2'
                                        */
  real_T P_219;                        /* Expression: SM.web
                                        * Referenced by: '<S53>/web_psb'
                                        */
  real_T P_220;                        /* Expression: SM.Rs/SM.Ll
                                        * Referenced by: '<S54>/Rs_Ll'
                                        */
  real_T P_221;                        /* Expression: SM.web
                                        * Referenced by: '<S54>/web_psb'
                                        */
  real_T P_222;                        /* Expression: 1/SM.Pb
                                        * Referenced by: '<S62>/1_Pb'
                                        */
  real_T P_223;                        /* Expression: SM.F
                                        * Referenced by: '<S62>/F1'
                                        */
  real_T P_224;                        /* Expression: 1/(2*SM.H)
                                        * Referenced by: '<S62>/1_(2H)'
                                        */
  real_T P_225;                        /* Expression: SM.tho
                                        * Referenced by: '<S62>/theta'
                                        */
  real_T P_226;                        /* Expression: SM.web
                                        * Referenced by: '<S62>/web1'
                                        */
  real_T P_227;                        /* Expression: SM.web
                                        * Referenced by: '<S62>/web3'
                                        */
  real_T P_228;                        /* Expression: 1
                                        * Referenced by: '<S28>/do not delete this gain'
                                        */
  real_T P_229;                        /* Expression: 1/(13800/sqrt(3)*sqrt(2))
                                        * Referenced by: '<S2>/Volts > pu'
                                        */
  real_T P_230;                        /* Expression: BR.com
                                        * Referenced by: '<S103>/C4'
                                        */
  real_T P_231;                        /* Expression: 1
                                        * Referenced by: '<S8>/com'
                                        */
  real_T P_232;                        /* Expression: External
                                        * Referenced by: '<S8>/C4'
                                        */
  real_T P_233[7];                     /* Expression: tv
                                        * Referenced by: '<S101>/Look-Up Table'
                                        */
  real_T P_234[7];                     /* Expression: opv
                                        * Referenced by: '<S101>/Look-Up Table'
                                        */
  real_T P_235;                        /* Expression: 0.5
                                        * Referenced by: '<S8>/Switch3'
                                        */
  real_T P_236;                        /* Expression: FaultA
                                        * Referenced by: '<S8>/Constant1'
                                        */
  real_T P_237[7];                     /* Expression: tv
                                        * Referenced by: '<S104>/Look-Up Table'
                                        */
  real_T P_238[7];                     /* Expression: opv
                                        * Referenced by: '<S104>/Look-Up Table'
                                        */
  real_T P_239;                        /* Expression: 0.5
                                        * Referenced by: '<S103>/Switch3'
                                        */
  real_T P_240[2];                     /* Computed Parameter: P_240
                                        * Referenced by: '<S103>/Sfunction'
                                        */
  real_T P_241;                        /* Expression: InitialState
                                        * Referenced by: '<S103>/Sfunction'
                                        */
  real_T P_242;                        /* Expression: 0
                                        * Referenced by: '<S104>/Hit  Crossing'
                                        */
  real_T P_243;                        /* Expression: BR.com
                                        * Referenced by: '<S106>/C4'
                                        */
  real_T P_244;                        /* Expression: FaultB
                                        * Referenced by: '<S8>/Constant2'
                                        */
  real_T P_245[7];                     /* Expression: tv
                                        * Referenced by: '<S107>/Look-Up Table'
                                        */
  real_T P_246[7];                     /* Expression: opv
                                        * Referenced by: '<S107>/Look-Up Table'
                                        */
  real_T P_247;                        /* Expression: 0.5
                                        * Referenced by: '<S106>/Switch3'
                                        */
  real_T P_248[2];                     /* Computed Parameter: P_248
                                        * Referenced by: '<S106>/Sfunction'
                                        */
  real_T P_249;                        /* Expression: InitialState
                                        * Referenced by: '<S106>/Sfunction'
                                        */
  real_T P_250;                        /* Expression: 0
                                        * Referenced by: '<S107>/Hit  Crossing'
                                        */
  real_T P_251;                        /* Expression: BR.com
                                        * Referenced by: '<S109>/C4'
                                        */
  real_T P_252;                        /* Expression: FaultC
                                        * Referenced by: '<S8>/Constant3'
                                        */
  real_T P_253[7];                     /* Expression: tv
                                        * Referenced by: '<S110>/Look-Up Table'
                                        */
  real_T P_254[7];                     /* Expression: opv
                                        * Referenced by: '<S110>/Look-Up Table'
                                        */
  real_T P_255;                        /* Expression: 0.5
                                        * Referenced by: '<S109>/Switch3'
                                        */
  real_T P_256[2];                     /* Computed Parameter: P_256
                                        * Referenced by: '<S109>/Sfunction'
                                        */
  real_T P_257;                        /* Expression: InitialState
                                        * Referenced by: '<S109>/Sfunction'
                                        */
  real_T P_258;                        /* Expression: 0
                                        * Referenced by: '<S110>/Hit  Crossing'
                                        */
  real_T P_259;                        /* Expression: 0
                                        * Referenced by: '<S101>/Hit  Crossing'
                                        */
  real_T P_260;                        /* Expression: 0.5
                                        * Referenced by: '<S1>/Switch'
                                        */
  real_T P_261;                        /* Expression: 0.5
                                        * Referenced by: '<S1>/Switch1'
                                        */
  real_T P_262;                        /* Expression: 0.5
                                        * Referenced by: '<S1>/Switch2'
                                        */
  real_T P_263;                        /* Expression: SM.Gain1
                                        * Referenced by: '<S45>/Gain'
                                        */
  real_T P_264;                        /* Expression: SM.Lad/SM.Lmd
                                        * Referenced by: '<S59>/Lad\Lmd'
                                        */
  real_T P_265;                        /* Expression: 0
                                        * Referenced by: '<S59>/phimd sat.'
                                        */
  real_T P_266;                        /* Expression: SM.phis
                                        * Referenced by: '<S59>/Vs'
                                        */
  real_T P_267;                        /* Expression: SM.Laq/SM.Lmq
                                        * Referenced by: '<S60>/Laq\Lmq'
                                        */
  real_T P_268;                        /* Expression: SM.Lad/SM.Lmd
                                        * Referenced by: '<S60>/Lad\Lmd'
                                        */
  real_T P_269;                        /* Expression: 0
                                        * Referenced by: '<S60>/phimq sat.'
                                        */
  real_T P_270;                        /* Expression: 0
                                        * Referenced by: '<S60>/phimd sat.'
                                        */
  real_T P_271;                        /* Expression: SM.phis^2
                                        * Referenced by: '<S60>/Vs'
                                        */
  real_T P_272;                        /* Expression: SM.phikq2o
                                        * Referenced by: '<S61>/Out1'
                                        */
  real_T P_273;                        /* Expression: SM.phikq2o
                                        * Referenced by: '<S61>/int'
                                        */
  real_T P_274[3];                     /* Expression: [0 2*pi/3 -2*pi/3]
                                        * Referenced by: '<S72>/Negative-sequence'
                                        */
  real_T P_275[3];                     /* Expression: [0 -2*pi/3 2*pi/3]
                                        * Referenced by: '<S72>/Positive-sequence'
                                        */
  real_T P_276[3];                     /* Expression: [0 0 0]
                                        * Referenced by: '<S72>/Zero-sequence'
                                        */
  real_T P_277[3];                     /* Expression: [0 2*pi/3 -2*pi/3]
                                        * Referenced by: '<S73>/Negative-sequence'
                                        */
  real_T P_278[3];                     /* Expression: [0 -2*pi/3 2*pi/3]
                                        * Referenced by: '<S73>/Positive-sequence'
                                        */
  real_T P_279[3];                     /* Expression: [0 0 0]
                                        * Referenced by: '<S73>/Zero-sequence'
                                        */
  real_T P_280;                        /* Expression: 0
                                        * Referenced by: '<S70>/harmonic A'
                                        */
  real_T P_281;                        /* Expression: 0
                                        * Referenced by: '<S70>/harmonic B'
                                        */
  real_T P_282;                        /* Expression: n_Harmo
                                        * Referenced by: '<S72>/Gain2'
                                        */
  real_T P_283;                        /* Expression: Phase_Harmo
                                        * Referenced by: '<S72>/Phase_Harmo'
                                        */
  real_T P_284;                        /* Expression: pi/180
                                        * Referenced by: '<S72>/Gain3'
                                        */
  real_T P_285;                        /* Expression: Seq_Harmo
                                        * Referenced by: '<S72>/Phase_Harmo2'
                                        */
  real_T P_286;                        /* Expression: 1
                                        * Referenced by: '<S72>/valp_nom2'
                                        */
  real_T P_287;                        /* Expression: Mag_Harmo
                                        * Referenced by: '<S72>/Phase_Harmo1'
                                        */
  real_T P_288;                        /* Expression: Ton_Harmo
                                        * Referenced by: '<S70>/Step'
                                        */
  real_T P_289;                        /* Expression: 0
                                        * Referenced by: '<S70>/Step'
                                        */
  real_T P_290;                        /* Expression: 1
                                        * Referenced by: '<S70>/Step'
                                        */
  real_T P_291;                        /* Expression: Toff_Harmo
                                        * Referenced by: '<S70>/Step1'
                                        */
  real_T P_292;                        /* Expression: 0
                                        * Referenced by: '<S70>/Step1'
                                        */
  real_T P_293;                        /* Expression: -1
                                        * Referenced by: '<S70>/Step1'
                                        */
  real_T P_294;                        /* Expression: n_Harmo
                                        * Referenced by: '<S73>/Gain2'
                                        */
  real_T P_295;                        /* Expression: Phase_Harmo
                                        * Referenced by: '<S73>/Phase_Harmo'
                                        */
  real_T P_296;                        /* Expression: pi/180
                                        * Referenced by: '<S73>/Gain3'
                                        */
  real_T P_297;                        /* Expression: Seq_Harmo
                                        * Referenced by: '<S73>/Phase_Harmo2'
                                        */
  real_T P_298;                        /* Expression: 1
                                        * Referenced by: '<S73>/valp_nom2'
                                        */
  real_T P_299;                        /* Expression: Mag_Harmo
                                        * Referenced by: '<S73>/Phase_Harmo1'
                                        */
  real_T P_300;                        /* Expression: pi/180
                                        * Referenced by: '<S71>/Gain4'
                                        */
  real_T P_301;                        /* Expression: 0
                                        * Referenced by: '<S75>/Constant4'
                                        */
  real_T P_302;                        /* Expression: 1
                                        * Referenced by: '<S75>/Constant2'
                                        */
  real_T P_303;                        /* Expression: VariationRate
                                        * Referenced by: '<S75>/valp_nom7'
                                        */
  real_T P_304;                        /* Expression: 2
                                        * Referenced by: '<S75>/Constant'
                                        */
  real_T P_305;                        /* Expression: 0
                                        * Referenced by: '<S71>/signal timer'
                                        */
  real_T P_306;                        /* Expression: 0
                                        * Referenced by: '<S71>/Amplitude variation'
                                        */
  real_T P_307;                        /* Expression: 0
                                        * Referenced by: '<S71>/Frequency variation'
                                        */
  real_T P_308;                        /* Expression: 0
                                        * Referenced by: '<S71>/phase variation'
                                        */
  real_T P_309[9];                     /* Expression: tv
                                        * Referenced by: '<S74>/Look-Up Table'
                                        */
  real_T P_310[9];                     /* Expression: opv
                                        * Referenced by: '<S74>/Look-Up Table'
                                        */
  real_T P_311;                        /* Expression: 2
                                        * Referenced by: '<S71>/Constant'
                                        */
  real_T P_312;                        /* Expression: 0
                                        * Referenced by: '<S71>/Constant1'
                                        */
  real_T P_313;                        /* Expression: 3
                                        * Referenced by: '<S71>/Constant2'
                                        */
  real_T P_314;                        /* Expression: 4
                                        * Referenced by: '<S71>/Constant3'
                                        */
  real_T P_315;                        /* Expression: 0
                                        * Referenced by: '<S71>/Constant4'
                                        */
  real_T P_316;                        /* Expression: 0
                                        * Referenced by: '<S71>/Constant5'
                                        */
  real_T P_317;                        /* Expression: 4
                                        * Referenced by: '<S71>/Constant6'
                                        */
  real_T P_318;                        /* Expression: 0
                                        * Referenced by: '<S75>/Constant1'
                                        */
  real_T P_319;                        /* Expression: Toff_Variation
                                        * Referenced by: '<S75>/Step1'
                                        */
  real_T P_320;                        /* Expression: 1
                                        * Referenced by: '<S75>/Step1'
                                        */
  real_T P_321;                        /* Expression: 0
                                        * Referenced by: '<S75>/Step1'
                                        */
  real_T P_322;                        /* Expression: VariationType
                                        * Referenced by: '<S71>/valp_nom5'
                                        */
  real_T P_323;                        /* Expression: 1
                                        * Referenced by: '<S75>/Constant3'
                                        */
  real_T P_324;                        /* Expression: VariationStep
                                        * Referenced by: '<S75>/valp_nom6'
                                        */
  real_T P_325;                        /* Expression: Ton_Variation
                                        * Referenced by: '<S75>/Step'
                                        */
  real_T P_326;                        /* Expression: 0
                                        * Referenced by: '<S75>/Step'
                                        */
  real_T P_327;                        /* Expression: 1
                                        * Referenced by: '<S75>/Step'
                                        */
  real_T P_328;                        /* Expression: 0
                                        * Referenced by: '<S75>/Integrator'
                                        */
  real_T P_329;                        /* Expression: VariationMag
                                        * Referenced by: '<S75>/valp_nom8'
                                        */
  real_T P_330;                        /* Expression: VariationFreq
                                        * Referenced by: '<S75>/valp_nom9'
                                        */
  real_T P_331;                        /* Expression: 2*pi
                                        * Referenced by: '<S75>/Gain1'
                                        */
  real_T P_332;                        /* Expression: 0
                                        * Referenced by: '<S75>/CONSTANT'
                                        */
  real_T P_333;                        /* Expression: 0
                                        * Referenced by: '<S75>/Memory'
                                        */
  real_T P_334;                        /* Expression: 0.5
                                        * Referenced by: '<S75>/Switch2'
                                        */
  real_T P_335;                        /* Expression: VariationEntity
                                        * Referenced by: '<S71>/valp_nom3'
                                        */
  real_T P_336;                        /* Expression: 2*pi
                                        * Referenced by: '<S71>/Gain2'
                                        */
  real_T P_337;                        /* Expression: 0
                                        * Referenced by: '<S71>/Integrator'
                                        */
  real_T P_338;                        /* Expression: 0.5
                                        * Referenced by: '<S75>/Switch'
                                        */
  real_T P_339;                        /* Expression: SM.Lad/SM.Lm
                                        * Referenced by: '<S124>/?????'
                                        */
  real_T P_340;                        /* Expression: SM.Laq/SM.Lm
                                        * Referenced by: '<S124>/????'
                                        */
  real_T P_341;                        /* Expression: SM.phis.^2
                                        * Referenced by: '<S124>/Constant'
                                        */
  real_T P_342;                        /* Expression: 0
                                        * Referenced by: '<S125>/vqr,vdr'
                                        */
  real_T P_343;                        /* Expression: 0
                                        * Referenced by: '<S125>/vqs,vds'
                                        */
  real_T P_344;                        /* Expression: 0
                                        * Referenced by: '<S126>/vqr,vdr'
                                        */
  real_T P_345;                        /* Expression: 0
                                        * Referenced by: '<S126>/vqs,vds'
                                        */
  real_T P_346;                        /* Expression: 0
                                        * Referenced by: '<S127>/vqr,vdr'
                                        */
  real_T P_347;                        /* Expression: 0
                                        * Referenced by: '<S127>/vqs,vds'
                                        */
  real_T P_348;                        /* Expression: 0
                                        * Referenced by: '<S129>/ira,irb'
                                        */
  real_T P_349;                        /* Expression: 0
                                        * Referenced by: '<S129>/isa,isb'
                                        */
  real_T P_350;                        /* Expression: 0
                                        * Referenced by: '<S130>/ira,irb'
                                        */
  real_T P_351;                        /* Expression: 0
                                        * Referenced by: '<S130>/isa,isb'
                                        */
  real_T P_352;                        /* Expression: 0
                                        * Referenced by: '<S131>/ira,irb'
                                        */
  real_T P_353;                        /* Expression: 0
                                        * Referenced by: '<S131>/isa,isb'
                                        */
  real_T P_354;                        /* Expression: -1
                                        * Referenced by: '<S123>/Gain'
                                        */
  real_T P_355;                        /* Expression: 0
                                        * Referenced by: '<S132>/sin(beta),cos(beta), sin(th),cos(th)'
                                        */
  real_T P_356;                        /* Expression: 0
                                        * Referenced by: '<S132>/we-wr'
                                        */
  real_T P_357;                        /* Expression: 1
                                        * Referenced by: '<S132>/we'
                                        */
  real_T P_358;                        /* Expression: SM.web
                                        * Referenced by: '<S132>/web_psb'
                                        */
  real_T P_359;                        /* Expression: 0
                                        * Referenced by: '<S133>/sin(thr),cos(thr)'
                                        */
  real_T P_360[2];                     /* Expression: [0; 0]
                                        * Referenced by: '<S133>/Constant'
                                        */
  boolean_T P_361;                     /* Expression: isfinite(SM.Llkq2)
                                        * Referenced by: '<S53>/wref'
                                        */
  boolean_T P_362;                     /* Expression: SM.phis==1e6
                                        * Referenced by: '<S58>/Vs4'
                                        */
  boolean_T P_363;                     /* Expression: isinf(SM.Llkq2)
                                        * Referenced by: '<S58>/Vs5'
                                        */
  boolean_T P_364;                     /* Expression: SM.ctrl<3
                                        * Referenced by: '<S123>/Constant'
                                        */
  boolean_T P_365;                     /* Expression: SM.ctrl==3
                                        * Referenced by: '<S123>/Constant3'
                                        */
  boolean_T P_366;                     /* Expression: SM.ctrl==1
                                        * Referenced by: '<S122>/Constant'
                                        */
  boolean_T P_367;                     /* Expression: SM.ctrl==2
                                        * Referenced by: '<S122>/Constant1'
                                        */
  boolean_T P_368;                     /* Expression: SM.ctrl==3
                                        * Referenced by: '<S122>/Constant2'
                                        */
  boolean_T P_369;                     /* Expression: SM.ctrl==1
                                        * Referenced by: '<S121>/Constant'
                                        */
  boolean_T P_370;                     /* Expression: SM.ctrl==2
                                        * Referenced by: '<S121>/Constant1'
                                        */
  boolean_T P_371;                     /* Expression: SM.ctrl==3
                                        * Referenced by: '<S121>/Constant2'
                                        */
  boolean_T P_372;                     /* Computed Parameter: P_372
                                        * Referenced by: '<S71>/Timed variation'
                                        */
  char pad_P_372[4];
};

extern Parameters rtDefaultParameters; /* parameters */

#endif                                 /* RTW_HEADER_moxingxitong1_acc_h_ */
