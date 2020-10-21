/*
 * This file is not available for use in any application other than as a
 * MATLAB(R) MEX file for use with the Simulink(R) product.
 */

/*
 * moxingxitong1_acc.c
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
#include <math.h>
#include "moxingxitong1_acc.h"
#include "moxingxitong1_acc_private.h"
#include <stdio.h>
#include "simstruc.h"
#include "fixedpoint.h"
#define CodeFormat                     S-Function
#define AccDefine1                     Accelerator_S-Function

/* Outputs for root system: '<Root>' */
static void mdlOutputs(SimStruct *S, int_T tid)
{
  /* local block i/o variables */
  real_T B_40_70_0;
  real_T B_40_73_0;
  real_T B_24_20_0;
  real_T B_40_7_0;
  real_T B_40_9_0;
  real_T B_40_11_0;
  real_T B_40_14_0;
  real_T B_40_16_0;
  real_T B_40_47_0;
  real_T B_40_48_0;
  real_T B_40_5_0;
  real_T B_38_3_0;
  real_T B_24_31_0;
  real_T B_40_6_0;
  real_T B_40_343_0;
  real_T B_40_276_0;
  real_T B_40_372_0;
  real_T B_40_376_0;
  real_T B_40_455_0;

  {
    real_T B_40_8_0;
    real_T B_40_10_0;
    boolean_T B_40_22_0;
    boolean_T B_40_290_0;
    boolean_T B_40_281_0;
    real_T B_40_31_0;
    real_T tmp;
    real_T B_40_41_0;
    real_T B_40_42_0;
    real_T B_40_43_0;
    real_T B_40_56_0;
    real_T B_40_65_0;
    real_T B_40_67_0;
    real_T B_40_69_0;
    real_T B_40_44_0;
    real_T B_40_21_0;
    real_T B_30_3_0;
    real_T B_24_2_0;
    real_T B_24_4_0;
    real_T B_24_5_0;
    real_T B_24_8_0;
    real_T B_24_29_0;
    real_T B_24_18_0;
    int32_T i;
    real_T B_40_85_0_idx;
    real_T B_40_85_0_idx_0;
    real_T B_40_308_0_idx;
    real_T B_40_308_0_idx_0;
    real_T B_40_76_0_idx;
    real_T B_40_76_0_idx_0;
    real_T B_40_76_0_idx_1;
    real_T B_40_76_0_idx_2;
    if (ssIsSampleHit(S, 1, 0)) {
      for (i = 0; i < 6; i++) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_0_0[i] = ((Parameters *)
          ssGetDefaultParam(S))->P_0[i];
      }
    }

    /* Integrator: '<S62>/Rotor angle dtheta' */
    B_40_6_0 = ((ContinuousStates *) ssGetContStates(S))
      ->Rotorangledtheta_CSTATE;

    /* Clock: '<S62>/Clock' */
    B_40_5_0 = ssGetT(S);
    B_40_6_0 += ((Parameters *) ssGetDefaultParam(S))->P_2 * B_40_5_0;

    /* ElementaryMath: '<S47>/Elementary Math' */
    B_40_5_0 = muDoubleScalarSin(B_40_6_0);

    /* ElementaryMath: '<S47>/Elementary Math1' */
    B_40_6_0 = muDoubleScalarCos(B_40_6_0);

    /* Integrator: '<S49>/int' */
    B_40_7_0 = ((ContinuousStates *) ssGetContStates(S))->int_CSTATE;
    B_40_8_0 = ((Parameters *) ssGetDefaultParam(S))->P_4 * B_40_7_0;

    /* Integrator: '<S50>/int' */
    B_40_9_0 = ((ContinuousStates *) ssGetContStates(S))->int_CSTATE_o;
    B_40_10_0 = ((Parameters *) ssGetDefaultParam(S))->P_6 * B_40_9_0;

    /* Integrator: '<S51>/int' */
    B_40_11_0 = ((ContinuousStates *) ssGetContStates(S))->int_CSTATE_d;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0 = (B_40_8_0 + B_40_10_0) +
      ((Parameters *) ssGetDefaultParam(S))->P_8 * B_40_11_0;

    /* Integrator: '<S54>/int1' */
    B_40_14_0 = ((ContinuousStates *) ssGetContStates(S))->int1_CSTATE;
    B_40_8_0 = ((Parameters *) ssGetDefaultParam(S))->P_10 * B_40_14_0;

    /* Integrator: '<S52>/int' */
    B_40_16_0 = ((ContinuousStates *) ssGetContStates(S))->int_CSTATE_dx;
    B_40_10_0 = ((Parameters *) ssGetDefaultParam(S))->P_12 * B_40_16_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_18_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_361;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_18_0) {
          if (((D_Work *) ssGetRootDWork(S))->Enabledintegrator_MODE ==
              SUBSYS_DISABLED) {
            ((StateDisabled *) ssGetContStateDisabled(S))->int_CSTATE_k = 0;
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->Enabledintegrator_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->Enabledintegrator_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((StateDisabled *) ssGetContStateDisabled(S))->int_CSTATE_k = 1;
            ((D_Work *) ssGetRootDWork(S))->Enabledintegrator_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->Enabledintegrator_MODE == SUBSYS_ENABLED)
    {
      /* Integrator: '<S61>/int' */
      ((BlockIO *) _ssGetBlockIO(S))->B_9_0_0 = ((ContinuousStates *)
        ssGetContStates(S))->int_CSTATE_k;
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))->Enabledintegrator_SubsysRanBC);
      }
    }

    B_40_21_0 = (B_40_8_0 + B_40_10_0) + ((Parameters *) ssGetDefaultParam(S))
      ->P_13 * ((BlockIO *) _ssGetBlockIO(S))->B_9_0_0;
    if (ssIsSampleHit(S, 1, 0)) {
      B_40_22_0 = ((Parameters *) ssGetDefaultParam(S))->P_362;
      B_40_290_0 = !((Parameters *) ssGetDefaultParam(S))->P_362;
      B_40_281_0 = ((Parameters *) ssGetDefaultParam(S))->P_363;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_27_0 = (real_T)(B_40_290_0 &&
        (!((Parameters *) ssGetDefaultParam(S))->P_363));
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_27_0 > 0.0) {
          if (((D_Work *) ssGetRootDWork(S))->dqaxissaturation_MODE ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->dqaxissaturation_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->dqaxissaturation_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_8_9_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_269;
            ((BlockIO *) _ssGetBlockIO(S))->B_8_7_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_270;
            ((D_Work *) ssGetRootDWork(S))->dqaxissaturation_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->dqaxissaturation_MODE == SUBSYS_ENABLED)
    {
      ((BlockIO *) _ssGetBlockIO(S))->B_8_2_0 = ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_13_0 * ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0 + B_40_21_0 *
        B_40_21_0;
      B_40_8_0 = 0.0 * ((BlockIO *) _ssGetBlockIO(S))->B_8_2_0 * ((BlockIO *)
        _ssGetBlockIO(S))->B_8_2_0 * ((BlockIO *) _ssGetBlockIO(S))->B_8_2_0 *
        ((BlockIO *) _ssGetBlockIO(S))->B_8_2_0 * ((BlockIO *) _ssGetBlockIO(S)
        )->B_8_2_0;
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_8_4_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_271;
        if (ssIsMajorTimeStep(S)) {
          ((D_Work *) ssGetRootDWork(S))->RelationalOperator_Mode = (((BlockIO *)
            _ssGetBlockIO(S))->B_8_2_0 > ((BlockIO *) _ssGetBlockIO(S))->B_8_4_0);
        }

        ((BlockIO *) _ssGetBlockIO(S))->B_8_5_0 = ((D_Work *) ssGetRootDWork(S)
          )->RelationalOperator_Mode;
      }

      if (((BlockIO *) _ssGetBlockIO(S))->B_8_5_0) {
        ((BlockIO *) _ssGetBlockIO(S))->B_8_7_0 = ((BlockIO *) _ssGetBlockIO(S)
          )->B_40_13_0 - ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0 * B_40_8_0 *
          ((Parameters *) ssGetDefaultParam(S))->P_268;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_8_7_0 = ((BlockIO *) _ssGetBlockIO(S)
          )->B_40_13_0;
      }

      if (((BlockIO *) _ssGetBlockIO(S))->B_8_5_0) {
        ((BlockIO *) _ssGetBlockIO(S))->B_8_9_0 = B_40_21_0 - B_40_8_0 *
          B_40_21_0 * ((Parameters *) ssGetDefaultParam(S))->P_267;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_8_9_0 = B_40_21_0;
      }

      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))->dqaxissaturation_SubsysRanBC);
      }
    }

    if (((BlockIO *) _ssGetBlockIO(S))->B_40_27_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_14) {
      B_40_21_0 = ((BlockIO *) _ssGetBlockIO(S))->B_8_9_0;
    }

    B_40_31_0 = (B_40_14_0 - B_40_21_0) * ((Parameters *) ssGetDefaultParam(S)
      )->P_15;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_33_0 = (real_T)(B_40_281_0 &&
        B_40_290_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_40_37_0 = (((Parameters *)
        ssGetDefaultParam(S))->P_16 * ((BlockIO *) _ssGetBlockIO(S))->B_40_33_0
        + ((BlockIO *) _ssGetBlockIO(S))->B_40_27_0) + ((Parameters *)
        ssGetDefaultParam(S))->P_17 * (real_T)B_40_22_0;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_33_0 > 0.0) {
          if (((D_Work *) ssGetRootDWork(S))->daxissaturation_MODE ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->daxissaturation_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->daxissaturation_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((D_Work *) ssGetRootDWork(S))->daxissaturation_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->daxissaturation_MODE == SUBSYS_ENABLED)
    {
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_5_0_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_266;
        if (ssIsMajorTimeStep(S)) {
          ((D_Work *) ssGetRootDWork(S))->RelationalOperator_Mode_c = (((BlockIO
            *) _ssGetBlockIO(S))->B_40_13_0 > ((BlockIO *) _ssGetBlockIO(S))
            ->B_5_0_0);
        }

        ((BlockIO *) _ssGetBlockIO(S))->B_5_1_0 = ((D_Work *) ssGetRootDWork(S)
          )->RelationalOperator_Mode_c;
      }

      if (((BlockIO *) _ssGetBlockIO(S))->B_5_1_0) {
        ((BlockIO *) _ssGetBlockIO(S))->B_5_3_0 = ((BlockIO *) _ssGetBlockIO(S)
          )->B_40_13_0 - 0.0 * ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0 *
          ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0 * ((BlockIO *) _ssGetBlockIO
          (S))->B_40_13_0 * ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0 *
          ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0 * ((Parameters *)
          ssGetDefaultParam(S))->P_264;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_5_3_0 = ((BlockIO *) _ssGetBlockIO(S)
          )->B_40_13_0;
      }

      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))->daxissaturation_SubsysRanBC);
      }
    }

    if (ssIsMajorTimeStep(S)) {
      switch ((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_37_0) {
       case 1:
        tmp = ((BlockIO *) _ssGetBlockIO(S))->B_8_7_0;
        break;

       case 2:
        tmp = ((BlockIO *) _ssGetBlockIO(S))->B_5_3_0;
        break;

       default:
        tmp = ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0;
        break;
      }
    } else {
      switch (rt_SATURATE((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_37_0, 1,
                          3)) {
       case 1:
        tmp = ((BlockIO *) _ssGetBlockIO(S))->B_8_7_0;
        break;

       case 2:
        tmp = ((BlockIO *) _ssGetBlockIO(S))->B_5_3_0;
        break;

       default:
        tmp = ((BlockIO *) _ssGetBlockIO(S))->B_40_13_0;
        break;
      }
    }

    B_40_41_0 = (B_40_7_0 - tmp) * ((Parameters *) ssGetDefaultParam(S))->P_18;
    B_40_42_0 = B_40_31_0 * B_40_6_0 + B_40_41_0 * B_40_5_0;
    B_40_43_0 = (((-B_40_31_0) - 1.7320508075688772 * B_40_41_0) * B_40_6_0 +
                 (1.7320508075688772 * B_40_31_0 - B_40_41_0) * B_40_5_0) * 0.5;
    B_40_44_0 = (0.0 - B_40_42_0) - B_40_43_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_45_0[0] = ((Parameters *)
      ssGetDefaultParam(S))->P_19 * B_40_42_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_45_0[1] = ((Parameters *)
      ssGetDefaultParam(S))->P_19 * B_40_43_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_45_0[2] = ((Parameters *)
      ssGetDefaultParam(S))->P_19 * B_40_44_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_46_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_20;
    }

    /* Integrator: '<S119>/phiqr' */
    B_40_47_0 = ((ContinuousStates *) ssGetContStates(S))->phiqr_CSTATE;

    /* Integrator: '<S119>/phidr' */
    B_40_48_0 = ((ContinuousStates *) ssGetContStates(S))->phidr_CSTATE;
    B_40_85_0_idx = ((Parameters *) ssGetDefaultParam(S))->P_23 * B_40_47_0;
    B_40_85_0_idx_0 = ((Parameters *) ssGetDefaultParam(S))->P_23 * B_40_48_0;

    /* Integrator: '<S120>/phiqs' */
    B_40_343_0 = ((ContinuousStates *) ssGetContStates(S))->phiqs_CSTATE;

    /* Integrator: '<S120>/phids' */
    B_40_372_0 = ((ContinuousStates *) ssGetContStates(S))->phids_CSTATE;
    B_40_8_0 = (((Parameters *) ssGetDefaultParam(S))->P_26 * B_40_343_0 +
                B_40_85_0_idx) * ((Parameters *) ssGetDefaultParam(S))->P_27;
    B_40_56_0 = (((Parameters *) ssGetDefaultParam(S))->P_26 * B_40_372_0 +
                 B_40_85_0_idx_0) * ((Parameters *) ssGetDefaultParam(S))->P_28;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_57_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_29;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_57_0 > 0.0) {
          if (((D_Work *) ssGetRootDWork(S))->Saturation_MODE == SUBSYS_DISABLED)
          {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->Saturation_MODE = SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->Saturation_MODE == SUBSYS_ENABLED)
          {
            ssSetSolverNeedsReset(S);
            ((D_Work *) ssGetRootDWork(S))->Saturation_MODE = SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->Saturation_MODE == SUBSYS_ENABLED) {
      B_40_10_0 = B_40_8_0 * B_40_8_0 + B_40_56_0 * B_40_56_0;
      B_30_3_0 = ((((5.0 * B_40_10_0 + 4.0) * B_40_10_0 + 3.0) * B_40_10_0 + 2.0)
                  * B_40_10_0 + 1.0) * B_40_10_0;
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_30_4_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_341;
      }

      B_40_22_0 = (B_40_10_0 > ((BlockIO *) _ssGetBlockIO(S))->B_30_4_0);
      if (B_40_22_0) {
        ((BlockIO *) _ssGetBlockIO(S))->B_30_7_0 = B_40_8_0 - B_40_8_0 *
          B_30_3_0 * ((Parameters *) ssGetDefaultParam(S))->P_340;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_30_7_0 = B_40_8_0;
      }

      if (B_40_22_0) {
        ((BlockIO *) _ssGetBlockIO(S))->B_30_9_0 = B_40_56_0 - B_30_3_0 *
          B_40_56_0 * ((Parameters *) ssGetDefaultParam(S))->P_339;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_30_9_0 = B_40_56_0;
      }

      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))->Saturation_SubsysRanBC);
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_59_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_30;
    }

    if (((BlockIO *) _ssGetBlockIO(S))->B_40_59_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_31) {
      B_40_376_0 = ((BlockIO *) _ssGetBlockIO(S))->B_30_7_0;
    } else {
      B_40_376_0 = B_40_8_0;
    }

    B_30_3_0 = (B_40_47_0 - B_40_376_0) * ((Parameters *) ssGetDefaultParam(S)
      )->P_32;
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_59_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_33) {
      B_40_276_0 = ((BlockIO *) _ssGetBlockIO(S))->B_30_9_0;
    } else {
      B_40_276_0 = B_40_56_0;
    }

    B_40_65_0 = (B_40_48_0 - B_40_276_0) * ((Parameters *) ssGetDefaultParam(S)
      )->P_34;
    B_40_67_0 = (B_40_343_0 - B_40_376_0) * ((Parameters *) ssGetDefaultParam(S))
      ->P_35;
    B_40_69_0 = (B_40_372_0 - B_40_276_0) * ((Parameters *) ssGetDefaultParam(S))
      ->P_36;

    /* Integrator: '<S134>/Rotor angle thetam' */
    B_40_70_0 = ((ContinuousStates *) ssGetContStates(S))
      ->Rotoranglethetam_CSTATE;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_71_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_364;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_71_0) {
          if (((D_Work *) ssGetRootDWork(S))->sinthrcosthr_MODE ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->sinthrcosthr_MODE = SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->sinthrcosthr_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_39_1_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_359;
            ((BlockIO *) _ssGetBlockIO(S))->B_39_2_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_359;
            ((BlockIO *) _ssGetBlockIO(S))->B_39_0_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_359;
            ((BlockIO *) _ssGetBlockIO(S))->B_39_0_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_359;
            ((D_Work *) ssGetRootDWork(S))->sinthrcosthr_MODE = SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->sinthrcosthr_MODE == SUBSYS_ENABLED) {
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_39_0_0[0] = ((Parameters *)
          ssGetDefaultParam(S))->P_360[0];
        ((BlockIO *) _ssGetBlockIO(S))->B_39_0_0[1] = ((Parameters *)
          ssGetDefaultParam(S))->P_360[1];
      }

      ((BlockIO *) _ssGetBlockIO(S))->B_39_1_0 = muDoubleScalarSin(B_40_70_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_39_2_0 = muDoubleScalarCos(B_40_70_0);
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))->sinthrcosthr_SubsysRanBC);
      }
    }

    /* Integrator: '<S134>/Rotor speed (wm)' */
    B_40_73_0 = ((ContinuousStates *) ssGetContStates(S))->Rotorspeedwm_CSTATE;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_74_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_365;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_74_0) {
          if (((D_Work *) ssGetRootDWork(S))->sinbetacosbetasinthcosth_MODE ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->sinbetacosbetasinthcosth_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->sinbetacosbetasinthcosth_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_38_6_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_355;
            ((BlockIO *) _ssGetBlockIO(S))->B_38_7_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_355;
            ((BlockIO *) _ssGetBlockIO(S))->B_38_5_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_355;
            ((BlockIO *) _ssGetBlockIO(S))->B_38_8_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_355;
            ((BlockIO *) _ssGetBlockIO(S))->B_38_2_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_356;
            ((D_Work *) ssGetRootDWork(S))->sinbetacosbetasinthcosth_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->sinbetacosbetasinthcosth_MODE ==
        SUBSYS_ENABLED) {
      /* Clock: '<S132>/Clock' */
      B_38_3_0 = ssGetT(S);
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_38_1_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_357;
      }

      ((BlockIO *) _ssGetBlockIO(S))->B_38_2_0 = ((BlockIO *) _ssGetBlockIO(S)
        )->B_38_1_0 - B_40_73_0;
      B_38_3_0 *= ((Parameters *) ssGetDefaultParam(S))->P_358;
      B_40_8_0 = B_38_3_0 - B_40_70_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_38_5_0 = muDoubleScalarSin(B_38_3_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_38_6_0 = muDoubleScalarSin(B_40_8_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_38_7_0 = muDoubleScalarCos(B_40_8_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_38_8_0 = muDoubleScalarCos(B_38_3_0);
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))
                   ->sinbetacosbetasinthcosth_SubsysRanBC);
      }
    }

    if (((BlockIO *) _ssGetBlockIO(S))->B_40_71_0) {
      B_40_76_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_39_1_0;
      B_40_76_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_39_2_0;
      B_40_76_0_idx_1 = ((BlockIO *) _ssGetBlockIO(S))->B_39_0_0[0];
      B_40_76_0_idx_2 = ((BlockIO *) _ssGetBlockIO(S))->B_39_0_0[1];
    } else {
      B_40_76_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_38_6_0;
      B_40_76_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_38_7_0;
      B_40_76_0_idx_1 = ((BlockIO *) _ssGetBlockIO(S))->B_38_5_0;
      B_40_76_0_idx_2 = ((BlockIO *) _ssGetBlockIO(S))->B_38_8_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_77_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_366;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_77_0) {
          if (((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_34_0_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_348;
            ((BlockIO *) _ssGetBlockIO(S))->B_34_1_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_348;
            ((BlockIO *) _ssGetBlockIO(S))->B_34_2_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_349;
            ((BlockIO *) _ssGetBlockIO(S))->B_34_3_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_349;
            ((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE ==
        SUBSYS_ENABLED) {
      ((BlockIO *) _ssGetBlockIO(S))->B_34_0_0 = B_30_3_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_34_1_0 = (-(1.7320508075688772 *
        B_40_65_0 + B_30_3_0)) / 2.0;
      ((BlockIO *) _ssGetBlockIO(S))->B_34_2_0 = B_40_76_0_idx_0 * B_40_67_0 +
        B_40_76_0_idx * B_40_69_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_34_3_0 = ((1.7320508075688772 *
        B_40_76_0_idx + (-B_40_76_0_idx_0)) * B_40_67_0 +
        (-1.7320508075688772E+000 * B_40_76_0_idx_0 - B_40_76_0_idx) * B_40_69_0)
        / 2.0;
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))
                   ->Rotorreferenceframe_SubsysRanBC);
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_79_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_367;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_79_0) {
          if (((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_35_0_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_350;
            ((BlockIO *) _ssGetBlockIO(S))->B_35_1_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_350;
            ((BlockIO *) _ssGetBlockIO(S))->B_35_2_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_351;
            ((BlockIO *) _ssGetBlockIO(S))->B_35_3_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_351;
            ((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE ==
        SUBSYS_ENABLED) {
      ((BlockIO *) _ssGetBlockIO(S))->B_35_0_0 = B_40_76_0_idx_0 * B_30_3_0 -
        B_40_76_0_idx * B_40_65_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_35_1_0 = (((-B_40_76_0_idx_0) -
        1.7320508075688772 * B_40_76_0_idx) * B_30_3_0 + (B_40_76_0_idx -
        1.7320508075688772 * B_40_76_0_idx_0) * B_40_65_0) / 2.0;
      ((BlockIO *) _ssGetBlockIO(S))->B_35_2_0 = B_40_67_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_35_3_0 = (-(1.7320508075688772 *
        B_40_69_0 + B_40_67_0)) / 2.0;
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))
                   ->Stationaryreferenceframe_SubsysRanBC);
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_81_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_368;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_81_0) {
          if (((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_36_0_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_352;
            ((BlockIO *) _ssGetBlockIO(S))->B_36_1_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_352;
            ((BlockIO *) _ssGetBlockIO(S))->B_36_2_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_353;
            ((BlockIO *) _ssGetBlockIO(S))->B_36_3_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_353;
            ((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE ==
        SUBSYS_ENABLED) {
      ((BlockIO *) _ssGetBlockIO(S))->B_36_0_0 = B_40_76_0_idx_0 * B_30_3_0 +
        B_40_76_0_idx * B_40_65_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_36_1_0 = ((1.7320508075688772 *
        B_40_76_0_idx + (-B_40_76_0_idx_0)) * B_30_3_0 +
        (-1.7320508075688772E+000 * B_40_76_0_idx_0 - B_40_76_0_idx) * B_40_65_0)
        / 2.0;
      ((BlockIO *) _ssGetBlockIO(S))->B_36_2_0 = B_40_76_0_idx_2 * B_40_67_0 +
        B_40_76_0_idx_1 * B_40_69_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_36_3_0 = ((1.7320508075688772 *
        B_40_76_0_idx_1 + (-B_40_76_0_idx_2)) * B_40_67_0 +
        (-1.7320508075688772E+000 * B_40_76_0_idx_2 - B_40_76_0_idx_1) *
        B_40_69_0) / 2.0;
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))
                   ->Synchronousreferenceframe_SubsysRanBC);
      }
    }

    if (ssIsMajorTimeStep(S)) {
      switch ((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_46_0) {
       case 1:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_34_0_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_34_1_0;
        break;

       case 2:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_35_0_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_35_1_0;
        break;

       default:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_36_0_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_36_1_0;
        break;
      }
    } else {
      switch (rt_SATURATE((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_46_0, 1,
                          3)) {
       case 1:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_34_0_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_34_1_0;
        break;

       case 2:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_35_0_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_35_1_0;
        break;

       default:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_36_0_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_36_1_0;
        break;
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_84_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_39;
    }

    if (ssIsMajorTimeStep(S)) {
      switch ((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_84_0) {
       case 1:
        B_40_308_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_34_2_0;
        B_40_308_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_34_3_0;
        break;

       case 2:
        B_40_308_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_35_2_0;
        B_40_308_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_35_3_0;
        break;

       default:
        B_40_308_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_36_2_0;
        B_40_308_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_36_3_0;
        break;
      }
    } else {
      switch (rt_SATURATE((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_84_0, 1,
                          3)) {
       case 1:
        B_40_308_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_34_2_0;
        B_40_308_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_34_3_0;
        break;

       case 2:
        B_40_308_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_35_2_0;
        B_40_308_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_35_3_0;
        break;

       default:
        B_40_308_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_36_2_0;
        B_40_308_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_36_3_0;
        break;
      }
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_86_0[0] = ((Parameters *)
      ssGetDefaultParam(S))->P_40 * B_40_85_0_idx;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_86_0[1] = ((Parameters *)
      ssGetDefaultParam(S))->P_40 * B_40_85_0_idx_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_86_0[2] = ((Parameters *)
      ssGetDefaultParam(S))->P_40 * B_40_308_0_idx;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_86_0[3] = ((Parameters *)
      ssGetDefaultParam(S))->P_40 * B_40_308_0_idx_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_87_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_41;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_87_0 > 0.0) {
          if (((D_Work *) ssGetRootDWork(S))->SignalGenerator_MODE ==
              SUBSYS_DISABLED) {
            (void) memset(&(((StateDisabled *) ssGetContStateDisabled(S))
                            ->Integrator_CSTATE_e),0,
                          2*sizeof(boolean_T));
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->SignalGenerator_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->SignalGenerator_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            (void) memset(&(((StateDisabled *) ssGetContStateDisabled(S))
                            ->Integrator_CSTATE_e),1,
                          2*sizeof(boolean_T));
            ((BlockIO *) _ssGetBlockIO(S))->B_24_1_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_305;
            ((BlockIO *) _ssGetBlockIO(S))->B_24_36_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_372;
            ((BlockIO *) _ssGetBlockIO(S))->B_24_38_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_306;
            ((BlockIO *) _ssGetBlockIO(S))->B_24_33_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_307;
            ((BlockIO *) _ssGetBlockIO(S))->B_24_40_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_308;
            ((D_Work *) ssGetRootDWork(S))->SignalGenerator_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->SignalGenerator_MODE == SUBSYS_ENABLED)
    {
      /* Clock: '<S74>/Clock' */
      B_24_31_0 = ssGetT(S);
      ((BlockIO *) _ssGetBlockIO(S))->B_24_1_0 = rt_Lookup((real_T *)
        (&((Parameters *) ssGetDefaultParam(S))->P_309[0]), 9, B_24_31_0,
        (real_T *)(&((Parameters *) ssGetDefaultParam(S))->P_310[0]));
      if (ssIsSampleHit(S, 1, 0)) {
        B_24_2_0 = ((Parameters *) ssGetDefaultParam(S))->P_311;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_3_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_312;
        B_24_4_0 = ((Parameters *) ssGetDefaultParam(S))->P_313;
        B_24_5_0 = ((Parameters *) ssGetDefaultParam(S))->P_314;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_6_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_315;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_7_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_316;
        B_24_8_0 = ((Parameters *) ssGetDefaultParam(S))->P_317;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_9_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_318;
        if (ssIsMajorTimeStep(S)) {
          if (ssGetTaskTime(S,0) >= ((Parameters *) ssGetDefaultParam(S))->P_319)
          {
            ((D_Work *) ssGetRootDWork(S))->Step1_MODE = 1;
          } else {
            ((D_Work *) ssGetRootDWork(S))->Step1_MODE = 0;
          }
        }

        ((BlockIO *) _ssGetBlockIO(S))->B_24_10_0 = ((D_Work *) ssGetRootDWork(S))
          ->Step1_MODE == 1 ? ((Parameters *) ssGetDefaultParam(S))->P_321 :
          ((Parameters *) ssGetDefaultParam(S))->P_320;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_13_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_322;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_16_0 = ((!(((BlockIO *)
          _ssGetBlockIO(S))->B_24_10_0 != 0.0)) && (((BlockIO *) _ssGetBlockIO(S))
          ->B_24_13_0 == ((Parameters *) ssGetDefaultParam(S))->P_323));
        B_24_29_0 = ((Parameters *) ssGetDefaultParam(S))->P_324;
        if (ssIsMajorTimeStep(S)) {
          if (ssGetTaskTime(S,0) >= ((Parameters *) ssGetDefaultParam(S))->P_325)
          {
            ((D_Work *) ssGetRootDWork(S))->Step_MODE = 1;
          } else {
            ((D_Work *) ssGetRootDWork(S))->Step_MODE = 0;
          }
        }

        B_24_18_0 = ((D_Work *) ssGetRootDWork(S))->Step_MODE == 1 ?
          ((Parameters *) ssGetDefaultParam(S))->P_327 : ((Parameters *)
          ssGetDefaultParam(S))->P_326;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_19_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_324 * B_24_18_0;
      }

      /* Integrator: '<S75>/Integrator' */
      B_24_20_0 = ((ContinuousStates *) ssGetContStates(S))->Integrator_CSTATE_e;
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_24_21_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_329;
        B_24_29_0 = ((Parameters *) ssGetDefaultParam(S))->P_330;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_23_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_331 * ((Parameters *) ssGetDefaultParam(S))
          ->P_330;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_24_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_332;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_25_0 = ((D_Work *) ssGetRootDWork(S))
          ->Memory_PreviousInput;
      }

      if (((BlockIO *) _ssGetBlockIO(S))->B_24_10_0 >= ((Parameters *)
           ssGetDefaultParam(S))->P_334) {
        if (ssIsMajorTimeStep(S)) {
          switch ((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_24_13_0) {
           case 1:
            ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = ((BlockIO *)
              _ssGetBlockIO(S))->B_24_19_0;
            break;

           case 2:
            ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = B_24_20_0;
            break;

           case 3:
            ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = muDoubleScalarSin
              (B_24_20_0 * ((BlockIO *) _ssGetBlockIO(S))->B_24_23_0) *
              ((BlockIO *) _ssGetBlockIO(S))->B_24_21_0;
            break;

           default:
            ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = ((BlockIO *)
              _ssGetBlockIO(S))->B_24_24_0;
            break;
          }
        } else {
          switch (rt_SATURATE((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_24_13_0,
                              1, 4)) {
           case 1:
            ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = ((BlockIO *)
              _ssGetBlockIO(S))->B_24_19_0;
            break;

           case 2:
            ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = B_24_20_0;
            break;

           case 3:
            ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = muDoubleScalarSin
              (B_24_20_0 * ((BlockIO *) _ssGetBlockIO(S))->B_24_23_0) *
              ((BlockIO *) _ssGetBlockIO(S))->B_24_21_0;
            break;

           default:
            ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = ((BlockIO *)
              _ssGetBlockIO(S))->B_24_24_0;
            break;
          }
        }
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0 = ((BlockIO *) _ssGetBlockIO(S))
          ->B_24_25_0;
      }

      if (((BlockIO *) _ssGetBlockIO(S))->B_24_16_0) {
        B_40_8_0 = ((BlockIO *) _ssGetBlockIO(S))->B_24_9_0;
      } else {
        B_40_8_0 = ((BlockIO *) _ssGetBlockIO(S))->B_24_27_0;
      }

      if (ssIsSampleHit(S, 1, 0)) {
        B_24_29_0 = ((Parameters *) ssGetDefaultParam(S))->P_335;
        ((BlockIO *) _ssGetBlockIO(S))->B_24_30_0 = (((Parameters *)
          ssGetDefaultParam(S))->P_335 == B_24_5_0);
      }

      if (((BlockIO *) _ssGetBlockIO(S))->B_24_30_0) {
        B_24_31_0 = B_40_8_0;
      } else {
        B_24_31_0 = ((BlockIO *) _ssGetBlockIO(S))->B_24_7_0;
      }

      ((BlockIO *) _ssGetBlockIO(S))->B_24_32_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_336 * B_24_31_0;

      /* Integrator: '<S71>/Integrator' */
      ((BlockIO *) _ssGetBlockIO(S))->B_24_33_0 = ((ContinuousStates *)
        ssGetContStates(S))->Integrator_CSTATE_l;
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_24_35_0 = (B_24_29_0 == B_24_2_0);
        ((BlockIO *) _ssGetBlockIO(S))->B_24_36_0 = ((((BlockIO *) _ssGetBlockIO
          (S))->B_24_13_0 == B_24_8_0) && ((BlockIO *) _ssGetBlockIO(S))
          ->B_24_35_0);
        ((BlockIO *) _ssGetBlockIO(S))->B_24_37_0 = (B_24_29_0 == B_24_4_0);
      }

      if (((BlockIO *) _ssGetBlockIO(S))->B_24_35_0) {
        ((BlockIO *) _ssGetBlockIO(S))->B_24_38_0 = B_40_8_0;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_24_38_0 = ((BlockIO *) _ssGetBlockIO(S))
          ->B_24_3_0;
      }

      if (((BlockIO *) _ssGetBlockIO(S))->B_24_37_0) {
        ((BlockIO *) _ssGetBlockIO(S))->B_24_40_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_300 * B_40_8_0;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_24_40_0 = ((BlockIO *) _ssGetBlockIO(S))
          ->B_24_6_0;
      }

      if (ssIsSampleHit(S, 1, 0)) {
        if (B_24_18_0 >= ((Parameters *) ssGetDefaultParam(S))->P_338) {
          if (((BlockIO *) _ssGetBlockIO(S))->B_24_13_0 == ((Parameters *)
               ssGetDefaultParam(S))->P_304) {
            ((BlockIO *) _ssGetBlockIO(S))->B_24_43_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_303;
          } else {
            ((BlockIO *) _ssGetBlockIO(S))->B_24_43_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_302;
          }
        } else {
          ((BlockIO *) _ssGetBlockIO(S))->B_24_43_0 = ((Parameters *)
            ssGetDefaultParam(S))->P_301;
        }
      }

      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))->SignalGenerator_SubsysRanBC);
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_89_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_42;
    }

    B_40_276_0 = ((BlockIO *) _ssGetBlockIO(S))->B_24_38_0 + ((BlockIO *)
      _ssGetBlockIO(S))->B_40_89_0;
    if (((BlockIO *) _ssGetBlockIO(S))->B_24_36_0) {
      B_40_376_0 = ((BlockIO *) _ssGetBlockIO(S))->B_24_1_0;
    } else {
      B_40_376_0 = B_40_276_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_92_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_43;
    }

    if (((BlockIO *) _ssGetBlockIO(S))->B_40_92_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_44) {
      B_40_308_0_idx = B_40_376_0;
      B_40_308_0_idx_0 = B_40_276_0;
      B_40_85_0_idx = B_40_276_0;
    } else {
      B_40_308_0_idx = B_40_376_0;
      B_40_308_0_idx_0 = B_40_376_0;
      B_40_85_0_idx = B_40_376_0;
    }

    /* Clock: '<S69>/Clock' */
    B_40_276_0 = ssGetT(S);
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_96_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_46 * ((Parameters *) ssGetDefaultParam(S))
        ->P_45;
    }

    B_40_10_0 = B_40_276_0 * ((BlockIO *) _ssGetBlockIO(S))->B_40_96_0 +
      ((BlockIO *) _ssGetBlockIO(S))->B_24_33_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_100_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_48 * ((Parameters *) ssGetDefaultParam(S))
        ->P_47;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_101_0[0] = ((Parameters *)
        ssGetDefaultParam(S))->P_49[0];
      ((BlockIO *) _ssGetBlockIO(S))->B_40_101_0[1] = ((Parameters *)
        ssGetDefaultParam(S))->P_49[1];
      ((BlockIO *) _ssGetBlockIO(S))->B_40_101_0[2] = ((Parameters *)
        ssGetDefaultParam(S))->P_49[2];
    }

    B_40_85_0_idx_0 = ((((BlockIO *) _ssGetBlockIO(S))->B_40_100_0 + ((BlockIO *)
      _ssGetBlockIO(S))->B_40_101_0[0]) + ((BlockIO *) _ssGetBlockIO(S))
                       ->B_24_40_0) + B_40_10_0;
    B_24_2_0 = ((((BlockIO *) _ssGetBlockIO(S))->B_40_100_0 + ((BlockIO *)
      _ssGetBlockIO(S))->B_40_101_0[1]) + ((BlockIO *) _ssGetBlockIO(S))
                ->B_24_40_0) + B_40_10_0;
    B_24_4_0 = ((((BlockIO *) _ssGetBlockIO(S))->B_40_100_0 + ((BlockIO *)
      _ssGetBlockIO(S))->B_40_101_0[2]) + ((BlockIO *) _ssGetBlockIO(S))
                ->B_24_40_0) + B_40_10_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_106_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_50;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_106_0 > 0.0) {
          if (((D_Work *) ssGetRootDWork(S))->HarmonicGenerator_MODE ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->HarmonicGenerator_MODE =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->HarmonicGenerator_MODE ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_16_16_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_280;
            ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_281;
            ((BlockIO *) _ssGetBlockIO(S))->B_16_16_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_280;
            ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_281;
            ((BlockIO *) _ssGetBlockIO(S))->B_16_16_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_280;
            ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_281;
            ((D_Work *) ssGetRootDWork(S))->HarmonicGenerator_MODE =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->HarmonicGenerator_MODE == SUBSYS_ENABLED)
    {
      B_40_56_0 = ((Parameters *) ssGetDefaultParam(S))->P_282 * B_40_10_0;
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_16_2_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_284 * ((Parameters *) ssGetDefaultParam(S))
          ->P_283;
        B_40_8_0 = ((Parameters *) ssGetDefaultParam(S))->P_285 + ((Parameters *)
          ssGetDefaultParam(S))->P_286;
        if (ssIsMajorTimeStep(S)) {
          switch ((int32_T)B_40_8_0) {
           case 1:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_276[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_276[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_276[2];
            break;

           case 2:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_275[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_275[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_275[2];
            break;

           default:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_274[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_274[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_274[2];
            break;
          }
        } else {
          switch (rt_SATURATE((int32_T)B_40_8_0, 1, 3)) {
           case 1:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_276[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_276[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_276[2];
            break;

           case 2:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_275[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_275[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_275[2];
            break;

           default:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_274[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_274[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_9_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_274[2];
            break;
          }
        }

        ((BlockIO *) _ssGetBlockIO(S))->B_16_10_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_287;
        if (ssIsMajorTimeStep(S)) {
          if (ssGetTaskTime(S,0) >= ((Parameters *) ssGetDefaultParam(S))->P_288)
          {
            ((D_Work *) ssGetRootDWork(S))->Step_MODE_e = 1;
          } else {
            ((D_Work *) ssGetRootDWork(S))->Step_MODE_e = 0;
          }
        }

        if (ssIsMajorTimeStep(S)) {
          if (ssGetTaskTime(S,0) >= ((Parameters *) ssGetDefaultParam(S))->P_291)
          {
            ((D_Work *) ssGetRootDWork(S))->Step1_MODE_g = 1;
          } else {
            ((D_Work *) ssGetRootDWork(S))->Step1_MODE_g = 0;
          }
        }

        ((BlockIO *) _ssGetBlockIO(S))->B_16_13_0 = (((D_Work *) ssGetRootDWork
          (S))->Step_MODE_e == 1 ? ((Parameters *) ssGetDefaultParam(S))->P_290 :
          ((Parameters *) ssGetDefaultParam(S))->P_289) + (((D_Work *)
          ssGetRootDWork(S))->Step1_MODE_g == 1 ? ((Parameters *)
          ssGetDefaultParam(S))->P_293 : ((Parameters *) ssGetDefaultParam(S))
          ->P_292);
      }

      ((BlockIO *) _ssGetBlockIO(S))->B_16_16_0[0] = muDoubleScalarSin
        ((B_40_56_0 + ((BlockIO *) _ssGetBlockIO(S))->B_16_2_0) + ((BlockIO *)
          _ssGetBlockIO(S))->B_16_9_0[0]) * (((BlockIO *) _ssGetBlockIO(S))
        ->B_16_13_0 * ((BlockIO *) _ssGetBlockIO(S))->B_16_10_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_16_16_0[1] = muDoubleScalarSin
        ((B_40_56_0 + ((BlockIO *) _ssGetBlockIO(S))->B_16_2_0) + ((BlockIO *)
          _ssGetBlockIO(S))->B_16_9_0[1]) * (((BlockIO *) _ssGetBlockIO(S))
        ->B_16_13_0 * ((BlockIO *) _ssGetBlockIO(S))->B_16_10_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_16_16_0[2] = muDoubleScalarSin
        ((B_40_56_0 + ((BlockIO *) _ssGetBlockIO(S))->B_16_2_0) + ((BlockIO *)
          _ssGetBlockIO(S))->B_16_9_0[2]) * (((BlockIO *) _ssGetBlockIO(S))
        ->B_16_13_0 * ((BlockIO *) _ssGetBlockIO(S))->B_16_10_0);
      B_40_8_0 = ((Parameters *) ssGetDefaultParam(S))->P_294 * B_40_10_0;
      if (ssIsSampleHit(S, 1, 0)) {
        ((BlockIO *) _ssGetBlockIO(S))->B_16_19_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_296 * ((Parameters *) ssGetDefaultParam(S))
          ->P_295;
        B_40_10_0 = ((Parameters *) ssGetDefaultParam(S))->P_297 + ((Parameters *)
          ssGetDefaultParam(S))->P_298;
        if (ssIsMajorTimeStep(S)) {
          switch ((int32_T)B_40_10_0) {
           case 1:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_279[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_279[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_279[2];
            break;

           case 2:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_278[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_278[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_278[2];
            break;

           default:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_277[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_277[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_277[2];
            break;
          }
        } else {
          switch (rt_SATURATE((int32_T)B_40_10_0, 1, 3)) {
           case 1:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_279[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_279[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_279[2];
            break;

           case 2:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_278[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_278[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_278[2];
            break;

           default:
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[0] = ((Parameters *)
              ssGetDefaultParam(S))->P_277[0];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[1] = ((Parameters *)
              ssGetDefaultParam(S))->P_277[1];
            ((BlockIO *) _ssGetBlockIO(S))->B_16_26_0[2] = ((Parameters *)
              ssGetDefaultParam(S))->P_277[2];
            break;
          }
        }

        ((BlockIO *) _ssGetBlockIO(S))->B_16_27_0 = ((Parameters *)
          ssGetDefaultParam(S))->P_299;
      }

      ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[0] = muDoubleScalarSin((B_40_8_0
        + ((BlockIO *) _ssGetBlockIO(S))->B_16_19_0) + ((BlockIO *)
        _ssGetBlockIO(S))->B_16_26_0[0]) * (((BlockIO *) _ssGetBlockIO(S))
        ->B_16_13_0 * ((BlockIO *) _ssGetBlockIO(S))->B_16_27_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[1] = muDoubleScalarSin((B_40_8_0
        + ((BlockIO *) _ssGetBlockIO(S))->B_16_19_0) + ((BlockIO *)
        _ssGetBlockIO(S))->B_16_26_0[1]) * (((BlockIO *) _ssGetBlockIO(S))
        ->B_16_13_0 * ((BlockIO *) _ssGetBlockIO(S))->B_16_27_0);
      ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[2] = muDoubleScalarSin((B_40_8_0
        + ((BlockIO *) _ssGetBlockIO(S))->B_16_19_0) + ((BlockIO *)
        _ssGetBlockIO(S))->B_16_26_0[2]) * (((BlockIO *) _ssGetBlockIO(S))
        ->B_16_13_0 * ((BlockIO *) _ssGetBlockIO(S))->B_16_27_0);
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))->HarmonicGenerator_SubsysRanBC);
      }
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_108_0[0] = (B_40_308_0_idx *
      muDoubleScalarSin(B_40_85_0_idx_0) + ((BlockIO *) _ssGetBlockIO(S))
      ->B_16_16_0[0]) + ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[0];
    ((BlockIO *) _ssGetBlockIO(S))->B_40_108_0[1] = (B_40_308_0_idx_0 *
      muDoubleScalarSin(B_24_2_0) + ((BlockIO *) _ssGetBlockIO(S))->B_16_16_0[1])
      + ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[1];
    ((BlockIO *) _ssGetBlockIO(S))->B_40_108_0[2] = (B_40_85_0_idx *
      muDoubleScalarSin(B_24_4_0) + ((BlockIO *) _ssGetBlockIO(S))->B_16_16_0[2])
      + ((BlockIO *) _ssGetBlockIO(S))->B_16_30_0[2];

    /* Level2 S-Function Block: '<S135>/B_40_27' (sfun_spssw_contc) */
    /* Call into Simulink for MEX-version of S-function */
    ssCallAccelRunBlock(S, 40, 109, SS_CALL_MDL_OUTPUTS);
    B_40_276_0 = B_40_343_0 * B_40_69_0;
    B_40_376_0 = B_40_372_0 * B_40_67_0;
    B_40_276_0 = B_40_376_0 - B_40_276_0;
    B_40_376_0 = ((Parameters *) ssGetDefaultParam(S))->P_51 * B_40_70_0;
    B_40_308_0_idx = ((Parameters *) ssGetDefaultParam(S))->P_52[0] * B_40_73_0;
    B_40_308_0_idx_0 = ((Parameters *) ssGetDefaultParam(S))->P_52[1] *
      B_40_276_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_271_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_53 * B_40_308_0_idx;

    /* Scope: '<Root>/wm' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 116, SS_CALL_MDL_OUTPUTS);
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_117_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_54;
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_271_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_55 * B_40_308_0_idx;
    B_40_376_0 = ((Parameters *) ssGetDefaultParam(S))->P_56 * ((BlockIO *)
      _ssGetBlockIO(S))->B_40_271_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_120_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_57 * B_40_376_0;

    /* Derivative: '<S113>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        B_40_455_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        B_40_455_0 = (((BlockIO *) _ssGetBlockIO(S))->B_40_120_0 - *lastU++) /
          deltaT;
      }
    }

    B_40_8_0 = (((BlockIO *) _ssGetBlockIO(S))->B_40_117_0 - B_40_455_0) -
      ((Parameters *) ssGetDefaultParam(S))->P_58 * B_40_376_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_124_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_59;
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_125_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_60 * B_40_376_0;

    /* Derivative: '<S113>/Derivative1' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative1_RWORK.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative1_RWORK.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative1_RWORK.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        B_40_455_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative1_RWORK.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative1_RWORK.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        B_40_455_0 = (((BlockIO *) _ssGetBlockIO(S))->B_40_125_0 - *lastU++) /
          deltaT;
      }
    }

    B_40_10_0 = (((BlockIO *) _ssGetBlockIO(S))->B_40_124_0 - B_40_455_0) -
      ((Parameters *) ssGetDefaultParam(S))->P_61 * B_40_376_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_129_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_62;
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_130_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_63 * B_40_376_0;

    /* Derivative: '<S113>/Derivative2' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative2_RWORK.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative2_RWORK.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative2_RWORK.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        B_40_455_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative2_RWORK.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative2_RWORK.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        B_40_455_0 = (((BlockIO *) _ssGetBlockIO(S))->B_40_130_0 - *lastU++) /
          deltaT;
      }
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_270_0 = ((((BlockIO *) _ssGetBlockIO(S))
      ->B_40_129_0 - B_40_455_0) - ((Parameters *) ssGetDefaultParam(S))->P_64 *
      B_40_376_0) + (B_40_8_0 + B_40_10_0);

    /* Scope: '<S9>/Scope1' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 135, SS_CALL_MDL_OUTPUTS);

    /* Scope: '<S9>/Scope2' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 136, SS_CALL_MDL_OUTPUTS);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_271_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_65 * B_40_308_0_idx_0;

    /* Scope: '<S9>/Scope3' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 138, SS_CALL_MDL_OUTPUTS);

    /* TransferFcn: '<S112>/Transfer Fcn' */
    B_40_455_0 = (((Parameters *) ssGetDefaultParam(S))->P_68)*
      ((ContinuousStates *) ssGetContStates(S))->TransferFcn_CSTATE;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_140_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_71 * ((BlockIO *) _ssGetBlockIO(S))->B_40_270_0;
    B_40_8_0 = ((Parameters *) ssGetDefaultParam(S))->P_72 * ((BlockIO *)
      _ssGetBlockIO(S))->B_40_140_0 + B_40_455_0;

    /* TransferFcn: '<S112>/Transfer Fcn1' */
    B_40_455_0 = ((Parameters *) ssGetDefaultParam(S))->P_75*((ContinuousStates *)
      ssGetContStates(S))->TransferFcn1_CSTATE;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_144_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_78 * ((BlockIO *) _ssGetBlockIO(S))->B_40_271_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_270_0 = ((((Parameters *)
      ssGetDefaultParam(S))->P_79 * ((BlockIO *) _ssGetBlockIO(S))->B_40_144_0 +
      B_40_455_0) + B_40_8_0) * ((Parameters *) ssGetDefaultParam(S))->P_80;

    /* Scope: '<S9>/Scope4' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 149, SS_CALL_MDL_OUTPUTS);
    B_30_3_0 *= ((Parameters *) ssGetDefaultParam(S))->P_81;
    B_40_8_0 = ((Parameters *) ssGetDefaultParam(S))->P_82 * B_40_65_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_152_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_83;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_153_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_84;
    }

    if (ssIsMajorTimeStep(S)) {
      switch ((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_152_0) {
       case 1:
        B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_153_0;
        break;

       case 2:
        B_40_455_0 = ((Parameters *) ssGetDefaultParam(S))->P_354 * B_40_73_0;
        break;

       default:
        B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_38_2_0;
        break;
      }
    } else {
      switch (rt_SATURATE((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_152_0, 1,
                          3)) {
       case 1:
        B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_153_0;
        break;

       case 2:
        B_40_455_0 = ((Parameters *) ssGetDefaultParam(S))->P_354 * B_40_73_0;
        break;

       default:
        B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_38_2_0;
        break;
      }
    }

    B_40_10_0 = B_40_48_0 * B_40_455_0;
    B_40_56_0 = B_40_455_0 * B_40_47_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_158_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_85;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_159_0[0] = ((Parameters *)
        ssGetDefaultParam(S))->P_86[0];
      ((BlockIO *) _ssGetBlockIO(S))->B_40_159_0[1] = ((Parameters *)
        ssGetDefaultParam(S))->P_86[1];
    }

    B_40_308_0_idx = ((Parameters *) ssGetDefaultParam(S))->P_87 * ((BlockIO *)
      _ssGetBlockIO(S))->B_40_159_0[0];
    B_40_308_0_idx_0 = ((Parameters *) ssGetDefaultParam(S))->P_87 * ((BlockIO *)
      _ssGetBlockIO(S))->B_40_159_0[1];
    B_40_85_0_idx = ((Parameters *) ssGetDefaultParam(S))->P_87 * ((BlockIO *)
      _ssGetBlockIO(S))->B_40_109_0[8];
    B_40_85_0_idx_0 = ((Parameters *) ssGetDefaultParam(S))->P_87 * ((BlockIO *)
      _ssGetBlockIO(S))->B_40_109_0[9];
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_161_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_369;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_161_0) {
          if (((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE_d ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE_d =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE_d ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_31_2_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_342;
            ((BlockIO *) _ssGetBlockIO(S))->B_31_0_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_342;
            ((BlockIO *) _ssGetBlockIO(S))->B_31_3_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_343;
            ((BlockIO *) _ssGetBlockIO(S))->B_31_1_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_343;
            ((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE_d =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->Rotorreferenceframe_MODE_d ==
        SUBSYS_ENABLED) {
      ((BlockIO *) _ssGetBlockIO(S))->B_31_0_0 = -5.7735026918962573E-001 *
        B_40_308_0_idx_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_31_1_0 = ((B_40_76_0_idx -
        1.7320508075688772 * B_40_76_0_idx_0) * B_40_85_0_idx_0 + 2.0 *
        B_40_76_0_idx * B_40_85_0_idx) * 0.33333333333333331;
      ((BlockIO *) _ssGetBlockIO(S))->B_31_2_0 = (2.0 * B_40_308_0_idx +
        B_40_308_0_idx_0) * 0.33333333333333331;
      ((BlockIO *) _ssGetBlockIO(S))->B_31_3_0 = ((1.7320508075688772 *
        B_40_76_0_idx + B_40_76_0_idx_0) * B_40_85_0_idx_0 + 2.0 *
        B_40_76_0_idx_0 * B_40_85_0_idx) * 0.33333333333333331;
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))
                   ->Rotorreferenceframe_SubsysRanBC_n);
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_163_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_370;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_163_0) {
          if (((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE_k ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE_k =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE_k ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_32_2_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_344;
            ((BlockIO *) _ssGetBlockIO(S))->B_32_0_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_344;
            ((BlockIO *) _ssGetBlockIO(S))->B_32_3_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_345;
            ((BlockIO *) _ssGetBlockIO(S))->B_32_1_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_345;
            ((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE_k =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->Stationaryreferenceframe_MODE_k ==
        SUBSYS_ENABLED) {
      ((BlockIO *) _ssGetBlockIO(S))->B_32_0_0 = (((-B_40_76_0_idx) -
        1.7320508075688772 * B_40_76_0_idx_0) * B_40_308_0_idx_0 + -2.0 *
        B_40_76_0_idx * B_40_308_0_idx) * 0.33333333333333331;
      ((BlockIO *) _ssGetBlockIO(S))->B_32_1_0 = -5.7735026918962573E-001 *
        B_40_85_0_idx_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_32_2_0 = ((B_40_76_0_idx_0 -
        1.7320508075688772 * B_40_76_0_idx) * B_40_308_0_idx_0 + 2.0 *
        B_40_76_0_idx_0 * B_40_308_0_idx) * 0.33333333333333331;
      ((BlockIO *) _ssGetBlockIO(S))->B_32_3_0 = (2.0 * B_40_85_0_idx +
        B_40_85_0_idx_0) * 0.33333333333333331;
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))
                   ->Stationaryreferenceframe_SubsysRanBC_b);
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_165_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_371;
      if (ssIsMajorTimeStep(S)) {
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_165_0) {
          if (((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE_k ==
              SUBSYS_DISABLED) {
            if (ssGetTaskTime(S,0) != ssGetTStart(S)) {
              ssSetSolverNeedsReset(S);
            }

            ((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE_k =
              SUBSYS_ENABLED;
          }
        } else {
          if (((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE_k ==
              SUBSYS_ENABLED) {
            ssSetSolverNeedsReset(S);
            ((BlockIO *) _ssGetBlockIO(S))->B_33_2_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_346;
            ((BlockIO *) _ssGetBlockIO(S))->B_33_0_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_346;
            ((BlockIO *) _ssGetBlockIO(S))->B_33_3_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_347;
            ((BlockIO *) _ssGetBlockIO(S))->B_33_1_0 = ((Parameters *)
              ssGetDefaultParam(S))->P_347;
            ((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE_k =
              SUBSYS_DISABLED;
          }
        }
      }
    }

    if (((D_Work *) ssGetRootDWork(S))->Synchronousreferenceframe_MODE_k ==
        SUBSYS_ENABLED) {
      ((BlockIO *) _ssGetBlockIO(S))->B_33_0_0 = ((B_40_76_0_idx -
        1.7320508075688772 * B_40_76_0_idx_0) * B_40_308_0_idx_0 + 2.0 *
        B_40_76_0_idx * B_40_308_0_idx) / 3.0;
      ((BlockIO *) _ssGetBlockIO(S))->B_33_1_0 = ((B_40_76_0_idx_1 -
        1.7320508075688772 * B_40_76_0_idx_2) * B_40_85_0_idx_0 + 2.0 *
        B_40_76_0_idx_1 * B_40_85_0_idx) / 3.0;
      ((BlockIO *) _ssGetBlockIO(S))->B_33_2_0 = ((1.7320508075688772 *
        B_40_76_0_idx + B_40_76_0_idx_0) * B_40_308_0_idx_0 + 2.0 *
        B_40_76_0_idx_0 * B_40_308_0_idx) / 3.0;
      ((BlockIO *) _ssGetBlockIO(S))->B_33_3_0 = ((1.7320508075688772 *
        B_40_76_0_idx_1 + B_40_76_0_idx_2) * B_40_85_0_idx_0 + 2.0 *
        B_40_76_0_idx_2 * B_40_85_0_idx) / 3.0;
      if (ssIsMajorTimeStep(S)) {
        srUpdateBC(((D_Work *) ssGetRootDWork(S))
                   ->Synchronousreferenceframe_SubsysRanBC_o);
      }
    }

    if (ssIsMajorTimeStep(S)) {
      switch ((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_158_0) {
       case 1:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_31_2_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_31_0_0;
        break;

       case 2:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_32_2_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_32_0_0;
        break;

       default:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_33_2_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_33_0_0;
        break;
      }
    } else {
      switch (rt_SATURATE((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_158_0, 1,
                          3)) {
       case 1:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_31_2_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_31_0_0;
        break;

       case 2:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_32_2_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_32_0_0;
        break;

       default:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_33_2_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_33_0_0;
        break;
      }
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_170_0 = ((B_40_56_0 + B_40_85_0_idx_0)
      - B_40_8_0) * ((Parameters *) ssGetDefaultParam(S))->P_88;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_171_0 = ((B_40_85_0_idx - B_40_10_0) -
      B_30_3_0) * ((Parameters *) ssGetDefaultParam(S))->P_89;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_174_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_92;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_175_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_93;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_176_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_94;
    }

    if (ssIsMajorTimeStep(S)) {
      switch ((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_174_0) {
       case 1:
        B_40_455_0 = B_40_73_0;
        break;

       case 2:
        B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_175_0;
        break;

       default:
        B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_176_0;
        break;
      }
    } else {
      switch (rt_SATURATE((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_174_0, 1,
                          3)) {
       case 1:
        B_40_455_0 = B_40_73_0;
        break;

       case 2:
        B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_175_0;
        break;

       default:
        B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_176_0;
        break;
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_180_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_95;
    }

    if (ssIsMajorTimeStep(S)) {
      switch ((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_180_0) {
       case 1:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_31_3_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_31_1_0;
        break;

       case 2:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_32_3_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_32_1_0;
        break;

       default:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_33_3_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_33_1_0;
        break;
      }
    } else {
      switch (rt_SATURATE((int32_T)((BlockIO *) _ssGetBlockIO(S))->B_40_180_0, 1,
                          3)) {
       case 1:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_31_3_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_31_1_0;
        break;

       case 2:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_32_3_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_32_1_0;
        break;

       default:
        B_40_85_0_idx = ((BlockIO *) _ssGetBlockIO(S))->B_33_3_0;
        B_40_85_0_idx_0 = ((BlockIO *) _ssGetBlockIO(S))->B_33_1_0;
        break;
      }
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_184_0 = ((B_40_455_0 * B_40_343_0 +
      B_40_85_0_idx_0) - ((Parameters *) ssGetDefaultParam(S))->P_91 * B_40_69_0)
      * ((Parameters *) ssGetDefaultParam(S))->P_96;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_185_0 = ((B_40_85_0_idx - ((Parameters *)
      ssGetDefaultParam(S))->P_90 * B_40_67_0) - B_40_455_0 * B_40_372_0) *
      ((Parameters *) ssGetDefaultParam(S))->P_97;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_190_0 = ((B_40_276_0 - ((Parameters *)
      ssGetDefaultParam(S))->P_98 * ((BlockIO *) _ssGetBlockIO(S))->B_40_270_0 *
      ((Parameters *) ssGetDefaultParam(S))->P_99) - ((Parameters *)
      ssGetDefaultParam(S))->P_100 * B_40_73_0) * ((Parameters *)
      ssGetDefaultParam(S))->P_101;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_191_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_102 * B_40_73_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[0] = ((Parameters *)
      ssGetDefaultParam(S))->P_103 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [20];
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[1] = ((Parameters *)
      ssGetDefaultParam(S))->P_103 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [21];
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[2] = ((Parameters *)
      ssGetDefaultParam(S))->P_103 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [22];

    /* Scope: '<Root>/Scope1' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 200, SS_CALL_MDL_OUTPUTS);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[0] = ((Parameters *)
      ssGetDefaultParam(S))->P_104 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [14];
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[1] = ((Parameters *)
      ssGetDefaultParam(S))->P_104 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [15];
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[2] = ((Parameters *)
      ssGetDefaultParam(S))->P_104 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [16];

    /* Scope: '<Root>/Scope2' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 202, SS_CALL_MDL_OUTPUTS);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[0] = ((Parameters *)
      ssGetDefaultParam(S))->P_105 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [11];
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[1] = ((Parameters *)
      ssGetDefaultParam(S))->P_105 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [12];
    ((BlockIO *) _ssGetBlockIO(S))->B_40_210_0[2] = ((Parameters *)
      ssGetDefaultParam(S))->P_105 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [13];

    /* Scope: '<Root>/Scope3' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 211, SS_CALL_MDL_OUTPUTS);
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_219_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_106;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_220_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_107;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_221_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_108;
    }

    /* Clock: '<S14>/Clock' */
    B_40_455_0 = ssGetT(S);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_223_0 = rt_Lookup((real_T *)
      (&((Parameters *) ssGetDefaultParam(S))->P_109[0]), 7, B_40_455_0, (real_T
      *)(&((Parameters *) ssGetDefaultParam(S))->P_110[0]));
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_221_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_111) {
      B_40_8_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_220_0;
    } else {
      B_40_8_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_223_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_225_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_112;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_226_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_113;
    }

    /* Clock: '<S17>/Clock' */
    B_40_455_0 = ssGetT(S);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_228_0 = rt_Lookup((real_T *)
      (&((Parameters *) ssGetDefaultParam(S))->P_114[0]), 7, B_40_455_0, (real_T
      *)(&((Parameters *) ssGetDefaultParam(S))->P_115[0]));
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_219_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_116) {
      if (((BlockIO *) _ssGetBlockIO(S))->B_40_225_0 >= ((Parameters *)
           ssGetDefaultParam(S))->P_260) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_230_0 = B_40_8_0;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_230_0 = ((BlockIO *) _ssGetBlockIO
          (S))->B_40_226_0;
      }
    } else {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_230_0 = ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_228_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      /* Level2 S-Function Block: '<S16>/B_40_69' (sfun_psbbreaker) */
      /* Call into Simulink for MEX-version of S-function */
      ssCallAccelRunBlock(S, 40, 231, SS_CALL_MDL_OUTPUTS);
    }

    /* Derivative: '<S17>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_p.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_p.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_p.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_232_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK_p.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative_RWORK_p.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        ((BlockIO *) _ssGetBlockIO(S))->B_40_232_0 = (((BlockIO *) _ssGetBlockIO
          (S))->B_40_228_0 - *lastU++) / deltaT;
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_237_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_120;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_238_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_121;
    }

    /* Clock: '<S20>/Clock' */
    B_40_455_0 = ssGetT(S);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_240_0 = rt_Lookup((real_T *)
      (&((Parameters *) ssGetDefaultParam(S))->P_122[0]), 7, B_40_455_0, (real_T
      *)(&((Parameters *) ssGetDefaultParam(S))->P_123[0]));
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_237_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_124) {
      if (((BlockIO *) _ssGetBlockIO(S))->B_40_238_0 >= ((Parameters *)
           ssGetDefaultParam(S))->P_261) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_242_0 = B_40_8_0;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_242_0 = ((BlockIO *) _ssGetBlockIO
          (S))->B_40_226_0;
      }
    } else {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_242_0 = ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_240_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      /* Level2 S-Function Block: '<S19>/B_40_76' (sfun_psbbreaker) */
      /* Call into Simulink for MEX-version of S-function */
      ssCallAccelRunBlock(S, 40, 243, SS_CALL_MDL_OUTPUTS);
    }

    /* Derivative: '<S20>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_k.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_k.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_k.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_244_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK_k.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative_RWORK_k.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        ((BlockIO *) _ssGetBlockIO(S))->B_40_244_0 = (((BlockIO *) _ssGetBlockIO
          (S))->B_40_240_0 - *lastU++) / deltaT;
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_249_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_128;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_250_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_129;
    }

    /* Clock: '<S23>/Clock' */
    B_40_455_0 = ssGetT(S);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_252_0 = rt_Lookup((real_T *)
      (&((Parameters *) ssGetDefaultParam(S))->P_130[0]), 7, B_40_455_0, (real_T
      *)(&((Parameters *) ssGetDefaultParam(S))->P_131[0]));
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_249_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_132) {
      if (((BlockIO *) _ssGetBlockIO(S))->B_40_250_0 >= ((Parameters *)
           ssGetDefaultParam(S))->P_262) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_254_0 = B_40_8_0;
      } else {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_254_0 = ((BlockIO *) _ssGetBlockIO
          (S))->B_40_226_0;
      }
    } else {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_254_0 = ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_252_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      /* Level2 S-Function Block: '<S22>/B_40_83' (sfun_psbbreaker) */
      /* Call into Simulink for MEX-version of S-function */
      ssCallAccelRunBlock(S, 40, 255, SS_CALL_MDL_OUTPUTS);
    }

    /* Derivative: '<S23>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_a.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_a.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_a.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_256_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK_a.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative_RWORK_a.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        ((BlockIO *) _ssGetBlockIO(S))->B_40_256_0 = (((BlockIO *) _ssGetBlockIO
          (S))->B_40_252_0 - *lastU++) / deltaT;
      }
    }

    /* Derivative: '<S14>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_j.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_j.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_j.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_261_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK_j.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative_RWORK_j.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        ((BlockIO *) _ssGetBlockIO(S))->B_40_261_0 = (((BlockIO *) _ssGetBlockIO
          (S))->B_40_223_0 - *lastU++) / deltaT;
      }
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_270_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_137 * B_40_42_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_271_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_138 * B_40_43_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_384_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_139 * B_40_44_0;

    /* Scope: '<S2>/ Iabc (pu)' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 273, SS_CALL_MDL_OUTPUTS);
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_274_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_140;
    }

    /* Integrator: '<S62>/Rotor speed deviation (dw)' */
    B_40_455_0 = ((ContinuousStates *) ssGetContStates(S))
      ->Rotorspeeddeviationdw_CSTATE;
    B_40_276_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_274_0 + B_40_455_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_384_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_142 * B_40_276_0;

    /* Scope: '<S2>/ Speed (pu)' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 278, SS_CALL_MDL_OUTPUTS);

    /* StateSpace: '<S34>/State Space' */
    {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_279_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_145*((ContinuousStates *) ssGetContStates(S))
        ->StateSpace_CSTATE_k;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_280_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_148;
      if (ssIsMajorTimeStep(S)) {
        ((D_Work *) ssGetRootDWork(S))->RelationalOperator2_Mode = (((BlockIO *)
          _ssGetBlockIO(S))->B_40_279_0 > ((BlockIO *) _ssGetBlockIO(S))
          ->B_40_280_0);
      }

      B_40_281_0 = ((D_Work *) ssGetRootDWork(S))->RelationalOperator2_Mode;
    }

    /* StateSpace: '<S33>/State Space' */
    {
      B_40_376_0 = ((Parameters *) ssGetDefaultParam(S))->P_151*
        ((ContinuousStates *) ssGetContStates(S))->StateSpace_CSTATE_a;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_288_0 = (real_T)(((Parameters *)
        ssGetDefaultParam(S))->P_155 == ((Parameters *) ssGetDefaultParam(S))
        ->P_156) * ((Parameters *) ssGetDefaultParam(S))->P_157;
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_289_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_154 * B_40_376_0 + ((BlockIO *) _ssGetBlockIO(S)
      )->B_40_288_0;
    if (ssIsSampleHit(S, 1, 0)) {
      if (ssIsMajorTimeStep(S)) {
        ((D_Work *) ssGetRootDWork(S))->RelationalOperator1_Mode = (((BlockIO *)
          _ssGetBlockIO(S))->B_40_279_0 < ((BlockIO *) _ssGetBlockIO(S))
          ->B_40_289_0);
      }

      B_40_290_0 = ((D_Work *) ssGetRootDWork(S))->RelationalOperator1_Mode;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_292_0 = (real_T)(B_40_281_0 &&
        ((D_Work *) ssGetRootDWork(S))->RelationalOperator1_Mode);
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_296_0 = ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_280_0 * (real_T)!B_40_281_0;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_298_0 = (real_T)!B_40_290_0;
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_300_0 = (((BlockIO *) _ssGetBlockIO(S)
      )->B_40_279_0 * ((BlockIO *) _ssGetBlockIO(S))->B_40_292_0 + ((BlockIO *)
      _ssGetBlockIO(S))->B_40_296_0) + ((BlockIO *) _ssGetBlockIO(S))
      ->B_40_298_0 * ((BlockIO *) _ssGetBlockIO(S))->B_40_289_0;

    /* StateSpace: '<S31>/State Space' */
    {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_301_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_161*((BlockIO *) _ssGetBlockIO(S))->B_40_300_0;
    }

    /* Scope: '<S2>/Vf (pu)' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 302, SS_CALL_MDL_OUTPUTS);

    /* StateSpace: '<S30>/State Space' */
    {
      B_40_372_0 = (((Parameters *) ssGetDefaultParam(S))->P_165)*
        ((ContinuousStates *) ssGetContStates(S))->StateSpace_CSTATE_ao;
      B_40_372_0 += ((Parameters *) ssGetDefaultParam(S))->P_166*((BlockIO *)
        _ssGetBlockIO(S))->B_40_301_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_304_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_168;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_305_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_169;
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_306_0 = (((((BlockIO *) _ssGetBlockIO(S))
      ->B_40_304_0 + ((BlockIO *) _ssGetBlockIO(S))->B_40_305_0) - B_40_376_0) +
      0.0) - B_40_372_0;

    /* StateSpace: '<S32>/State Space' */
    {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_307_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_173*((BlockIO *) _ssGetBlockIO(S))->B_40_306_0;
    }

    B_40_308_0_idx = ((Parameters *) ssGetDefaultParam(S))->P_175 * ((BlockIO *)
      _ssGetBlockIO(S))->B_40_109_0[6];
    B_40_308_0_idx_0 = ((Parameters *) ssGetDefaultParam(S))->P_175 * ((BlockIO *)
      _ssGetBlockIO(S))->B_40_109_0[7];
    B_40_56_0 = ((2.0 * B_40_308_0_idx + B_40_308_0_idx_0) * B_40_5_0 +
                 -1.7320508075688772E+000 * B_40_308_0_idx_0 * B_40_6_0) *
      0.33333333333333331;
    B_40_376_0 = ((Parameters *) ssGetDefaultParam(S))->P_176 * B_40_56_0;
    B_30_3_0 = ((2.0 * B_40_308_0_idx + B_40_308_0_idx_0) * B_40_6_0 +
                1.7320508075688772 * B_40_308_0_idx_0 * B_40_5_0) *
      0.33333333333333331;
    B_40_372_0 = ((Parameters *) ssGetDefaultParam(S))->P_177 * B_30_3_0;
    B_40_8_0 = muDoubleScalarPower(B_40_376_0, 2.0) + muDoubleScalarPower
      (B_40_372_0, 2.0);
    if (B_40_8_0 < 0.0) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_313_0 = -muDoubleScalarSqrt(-B_40_8_0);
    } else {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_313_0 = muDoubleScalarSqrt(B_40_8_0);
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_314_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_178;
    }

    /* TransferFcn: '<S37>/Derivative' */
    B_40_376_0 = 0.0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_316_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_184;
    }

    B_40_8_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_316_0 - ((BlockIO *)
      _ssGetBlockIO(S))->B_40_384_0;

    /* Integrator: '<S38>/position'
     *
     * Regarding '<S38>/position':
     *  Limited Integrator
     */
    if (ssIsMajorTimeStep(S)) {
      if (((ContinuousStates *) ssGetContStates(S))->position_CSTATE >=
          ((Parameters *) ssGetDefaultParam(S))->P_186 ) {
        ((ContinuousStates *) ssGetContStates(S))->position_CSTATE =
          ((Parameters *) ssGetDefaultParam(S))->P_186;
      } else if (((ContinuousStates *) ssGetContStates(S))->position_CSTATE <=
                 ((Parameters *) ssGetDefaultParam(S))->P_187 ) {
        ((ContinuousStates *) ssGetContStates(S))->position_CSTATE =
          ((Parameters *) ssGetDefaultParam(S))->P_187;
      }
    }

    B_40_372_0 = ((ContinuousStates *) ssGetContStates(S))->position_CSTATE;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_319_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_188;
    }

    if (((BlockIO *) _ssGetBlockIO(S))->B_40_314_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_189) {
      B_40_343_0 = B_40_372_0;
    } else {
      B_40_343_0 = (B_30_3_0 * B_40_31_0 + B_40_56_0 * B_40_41_0) * ((Parameters
        *) ssGetDefaultParam(S))->P_263 - ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_319_0;
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_323_0 = B_40_8_0 - ((Parameters *)
      ssGetDefaultParam(S))->P_190 * B_40_343_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_324_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_191 * ((BlockIO *) _ssGetBlockIO(S))->B_40_323_0;

    /* Integrator: '<S37>/Integrator1' */
    B_40_343_0 = ((ContinuousStates *) ssGetContStates(S))->Integrator1_CSTATE;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_328_0 = ((((Parameters *)
      ssGetDefaultParam(S))->P_193 * ((BlockIO *) _ssGetBlockIO(S))->B_40_323_0
      + B_40_343_0) + B_40_376_0) - B_40_372_0;

    /* TransferFcn: '<S38>/servo- motor' */
    ((BlockIO *) _ssGetBlockIO(S))->B_40_329_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_196*((ContinuousStates *) ssGetContStates(S))
      ->servomotor_CSTATE;
    if (ssIsMajorTimeStep(S)) {
      ((D_Work *) ssGetRootDWork(S))->speedlimit_MODE = ((BlockIO *)
        _ssGetBlockIO(S))->B_40_329_0 >= ((Parameters *) ssGetDefaultParam(S))
        ->P_199 ? 1 : ((BlockIO *) _ssGetBlockIO(S))->B_40_329_0 > ((Parameters *)
        ssGetDefaultParam(S))->P_200 ? 0 : -1;
    }

    ((BlockIO *) _ssGetBlockIO(S))->B_40_330_0 = ((D_Work *) ssGetRootDWork(S)
      )->speedlimit_MODE == 1 ? ((Parameters *) ssGetDefaultParam(S))->P_199 :
      ((D_Work *) ssGetRootDWork(S))->speedlimit_MODE == -1 ? ((Parameters *)
      ssGetDefaultParam(S))->P_200 : ((BlockIO *) _ssGetBlockIO(S))->B_40_329_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_331_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_201;
    }

    B_40_372_0 *= ((Parameters *) ssGetDefaultParam(S))->P_202;

    /* Integrator: '<S39>/Integrator' */
    B_40_376_0 = ((ContinuousStates *) ssGetContStates(S))->Integrator_CSTATE;
    B_40_372_0 = muDoubleScalarPower(B_40_376_0 / B_40_372_0, 2.0);
    B_40_372_0 -= ((Parameters *) ssGetDefaultParam(S))->P_204 * B_40_455_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_338_0 = (((BlockIO *) _ssGetBlockIO(S)
      )->B_40_331_0 - B_40_372_0) * ((Parameters *) ssGetDefaultParam(S))->P_205;
    B_40_8_0 = B_40_372_0 * B_40_376_0;
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_340_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_206;
    }

    if (((BlockIO *) _ssGetBlockIO(S))->B_40_340_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_207) {
      B_40_376_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_301_0;
    } else {
      B_40_376_0 = 0.0;
    }

    if (((BlockIO *) _ssGetBlockIO(S))->B_40_340_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_208) {
      B_40_372_0 = 0.0;
    } else {
      B_40_372_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_301_0;
    }

    B_40_343_0 = B_40_7_0 * B_40_31_0 - B_40_14_0 * B_40_41_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_348_0 = ((B_40_276_0 * B_40_14_0 +
      B_40_56_0) + (tmp - B_40_7_0) * ((Parameters *) ssGetDefaultParam(S))
      ->P_209) * ((Parameters *) ssGetDefaultParam(S))->P_210;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_353_0 = ((tmp - B_40_9_0) *
      ((Parameters *) ssGetDefaultParam(S))->P_212 + ((Parameters *)
      ssGetDefaultParam(S))->P_211 * B_40_372_0) * ((Parameters *)
      ssGetDefaultParam(S))->P_213;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_357_0 = ((tmp - B_40_11_0) *
      ((Parameters *) ssGetDefaultParam(S))->P_214 + 0.0) * ((Parameters *)
      ssGetDefaultParam(S))->P_215;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_361_0 = ((B_40_21_0 - B_40_16_0) *
      ((Parameters *) ssGetDefaultParam(S))->P_216 + B_40_376_0) * ((Parameters *)
      ssGetDefaultParam(S))->P_217;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_365_0 = ((B_40_21_0 - ((BlockIO *)
      _ssGetBlockIO(S))->B_9_0_0) * ((Parameters *) ssGetDefaultParam(S))->P_218
      + 0.0) * ((Parameters *) ssGetDefaultParam(S))->P_219;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_370_0 = ((B_30_3_0 - B_40_276_0 *
      B_40_7_0) + (B_40_21_0 - B_40_14_0) * ((Parameters *) ssGetDefaultParam(S))
      ->P_220) * ((Parameters *) ssGetDefaultParam(S))->P_221;
    B_40_376_0 = ((Parameters *) ssGetDefaultParam(S))->P_222 * B_40_8_0;
    B_40_372_0 = B_40_376_0 / B_40_276_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_375_0 = ((B_40_372_0 - B_40_343_0) -
      ((Parameters *) ssGetDefaultParam(S))->P_223 * B_40_276_0) * ((Parameters *)
      ssGetDefaultParam(S))->P_224;

    /* Integrator: '<S62>/theta' */
    B_40_376_0 = ((ContinuousStates *) ssGetContStates(S))->theta_CSTATE;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_377_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_226 * B_40_455_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_378_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_227 * B_40_276_0;
    ((BlockIO *) _ssGetBlockIO(S))->B_40_384_0 = ((Parameters *)
      ssGetDefaultParam(S))->P_228 * ((BlockIO *) _ssGetBlockIO(S))->B_40_109_0
      [10] * ((Parameters *) ssGetDefaultParam(S))->P_229;

    /* Scope: '<S2>/Va (pu)' */

    /* Call into Simulink for Scope */
    ssCallAccelRunBlock(S, 40, 385, SS_CALL_MDL_OUTPUTS);
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_420_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_230;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_421_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_231;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_422_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_232;
    }

    /* Clock: '<S101>/Clock' */
    B_40_455_0 = ssGetT(S);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_424_0 = rt_Lookup((real_T *)
      (&((Parameters *) ssGetDefaultParam(S))->P_233[0]), 7, B_40_455_0, (real_T
      *)(&((Parameters *) ssGetDefaultParam(S))->P_234[0]));
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_422_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_235) {
      B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_421_0;
    } else {
      B_40_455_0 = ((BlockIO *) _ssGetBlockIO(S))->B_40_424_0;
    }

    B_40_22_0 = (B_40_455_0 != 0.0);
    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_428_0 = (((Parameters *)
        ssGetDefaultParam(S))->P_236 != 0.0);
    }

    /* Clock: '<S104>/Clock' */
    B_40_455_0 = ssGetT(S);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_430_0 = rt_Lookup((real_T *)
      (&((Parameters *) ssGetDefaultParam(S))->P_237[0]), 7, B_40_455_0, (real_T
      *)(&((Parameters *) ssGetDefaultParam(S))->P_238[0]));
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_420_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_239) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_432_0 = (real_T)(B_40_22_0 &&
        ((BlockIO *) _ssGetBlockIO(S))->B_40_428_0);
    } else {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_432_0 = ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_430_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      /* Level2 S-Function Block: '<S103>/B_40_154' (sfun_psbbreaker) */
      /* Call into Simulink for MEX-version of S-function */
      ssCallAccelRunBlock(S, 40, 433, SS_CALL_MDL_OUTPUTS);
    }

    /* Derivative: '<S104>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_kp.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_kp.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_kp.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_434_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK_kp.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative_RWORK_kp.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        ((BlockIO *) _ssGetBlockIO(S))->B_40_434_0 = (((BlockIO *) _ssGetBlockIO
          (S))->B_40_430_0 - *lastU++) / deltaT;
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_439_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_243;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_441_0 = (((Parameters *)
        ssGetDefaultParam(S))->P_244 != 0.0);
    }

    /* Clock: '<S107>/Clock' */
    B_40_455_0 = ssGetT(S);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_443_0 = rt_Lookup((real_T *)
      (&((Parameters *) ssGetDefaultParam(S))->P_245[0]), 7, B_40_455_0, (real_T
      *)(&((Parameters *) ssGetDefaultParam(S))->P_246[0]));
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_439_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_247) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_445_0 = (real_T)(B_40_22_0 &&
        ((BlockIO *) _ssGetBlockIO(S))->B_40_441_0);
    } else {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_445_0 = ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_443_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      /* Level2 S-Function Block: '<S106>/B_40_161' (sfun_psbbreaker) */
      /* Call into Simulink for MEX-version of S-function */
      ssCallAccelRunBlock(S, 40, 446, SS_CALL_MDL_OUTPUTS);
    }

    /* Derivative: '<S107>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_l.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_l.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_l.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_447_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK_l.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative_RWORK_l.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        ((BlockIO *) _ssGetBlockIO(S))->B_40_447_0 = (((BlockIO *) _ssGetBlockIO
          (S))->B_40_443_0 - *lastU++) / deltaT;
      }
    }

    if (ssIsSampleHit(S, 1, 0)) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_452_0 = ((Parameters *)
        ssGetDefaultParam(S))->P_251;
      ((BlockIO *) _ssGetBlockIO(S))->B_40_454_0 = (((Parameters *)
        ssGetDefaultParam(S))->P_252 != 0.0);
    }

    /* Clock: '<S110>/Clock' */
    B_40_455_0 = ssGetT(S);
    ((BlockIO *) _ssGetBlockIO(S))->B_40_456_0 = rt_Lookup((real_T *)
      (&((Parameters *) ssGetDefaultParam(S))->P_253[0]), 7, B_40_455_0, (real_T
      *)(&((Parameters *) ssGetDefaultParam(S))->P_254[0]));
    if (((BlockIO *) _ssGetBlockIO(S))->B_40_452_0 >= ((Parameters *)
         ssGetDefaultParam(S))->P_255) {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_458_0 = (real_T)(B_40_22_0 &&
        ((BlockIO *) _ssGetBlockIO(S))->B_40_454_0);
    } else {
      ((BlockIO *) _ssGetBlockIO(S))->B_40_458_0 = ((BlockIO *) _ssGetBlockIO(S))
        ->B_40_456_0;
    }

    if (ssIsSampleHit(S, 1, 0)) {
      /* Level2 S-Function Block: '<S109>/B_40_168' (sfun_psbbreaker) */
      /* Call into Simulink for MEX-version of S-function */
      ssCallAccelRunBlock(S, 40, 459, SS_CALL_MDL_OUTPUTS);
    }

    /* Derivative: '<S110>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_m.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_m.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_m.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_460_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK_m.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative_RWORK_m.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        ((BlockIO *) _ssGetBlockIO(S))->B_40_460_0 = (((BlockIO *) _ssGetBlockIO
          (S))->B_40_456_0 - *lastU++) / deltaT;
      }
    }

    /* Derivative: '<S101>/Derivative' */
    {
      real_T t = ssGetTaskTime(S,0);
      real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_f.TimeStampA;
      real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_f.TimeStampB;
      real_T *lastU = &((D_Work *) ssGetRootDWork(S))
        ->Derivative_RWORK_f.LastUAtTimeA;
      if (timeStampA >= t && timeStampB >= t) {
        ((BlockIO *) _ssGetBlockIO(S))->B_40_465_0 = 0.0;
      } else {
        real_T deltaT;
        real_T lastTime = timeStampA;
        if (timeStampA < timeStampB) {
          if (timeStampB < t) {
            lastTime = timeStampB;
            lastU = &((D_Work *) ssGetRootDWork(S))
              ->Derivative_RWORK_f.LastUAtTimeB;
          }
        } else if (timeStampA >= t) {
          lastTime = timeStampB;
          lastU = &((D_Work *) ssGetRootDWork(S))
            ->Derivative_RWORK_f.LastUAtTimeB;
        }

        deltaT = t - lastTime;
        ((BlockIO *) _ssGetBlockIO(S))->B_40_465_0 = (((BlockIO *) _ssGetBlockIO
          (S))->B_40_424_0 - *lastU++) / deltaT;
      }
    }
  }

  /* tid is required for a uniform function interface.
   * Argument tid is not used in the function. */
  UNUSED_PARAMETER(tid);
}

/* Update for root system: '<Root>' */
#define MDL_UPDATE

static void mdlUpdate(SimStruct *S, int_T tid)
{
  if (((D_Work *) ssGetRootDWork(S))->Enabledintegrator_MODE == SUBSYS_ENABLED)
  {
  }

  if (((D_Work *) ssGetRootDWork(S))->SignalGenerator_MODE == SUBSYS_ENABLED) {
    if (ssIsSampleHit(S, 1, 0)) {
      ((D_Work *) ssGetRootDWork(S))->Memory_PreviousInput = ((BlockIO *)
        _ssGetBlockIO(S))->B_24_27_0;
    }
  }

  /* Level2 S-Function Block: '<S135>/B_40_27' (sfun_spssw_contc) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 109, SS_CALL_MDL_UPDATE);

  /* Update for Derivative: '<S113>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_120_0;
  }

  /* Update for Derivative: '<S113>/Derivative1' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative1_RWORK.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative1_RWORK.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative1_RWORK.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative1_RWORK.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))->Derivative1_RWORK.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative1_RWORK.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))->Derivative1_RWORK.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative1_RWORK.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_125_0;
  }

  /* Update for Derivative: '<S113>/Derivative2' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative2_RWORK.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative2_RWORK.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative2_RWORK.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative2_RWORK.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))->Derivative2_RWORK.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative2_RWORK.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))->Derivative2_RWORK.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative2_RWORK.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_130_0;
  }

  /* Update for Derivative: '<S17>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_p.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_p.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_p.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_p.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_p.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_p.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_p.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_p.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_228_0;
  }

  /* Update for Derivative: '<S20>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_k.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_k.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_k.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_k.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_k.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_k.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_k.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_k.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_240_0;
  }

  /* Update for Derivative: '<S23>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_a.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_a.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_a.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_a.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_a.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_a.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_a.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_a.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_252_0;
  }

  /* Update for Derivative: '<S14>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_j.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_j.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_j.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_j.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_j.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_j.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_j.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_j.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_223_0;
  }

  /* Update for Integrator: '<S38>/position' */
  {
    enum { INTG_NORMAL, INTG_LEAVING_UPPER_SAT, INTG_LEAVING_LOWER_SAT,
      INTG_UPPER_SAT, INTG_LOWER_SAT };

    if (((ContinuousStates *) ssGetContStates(S))->position_CSTATE ==
        ((Parameters *) ssGetDefaultParam(S))->P_186) {
      switch (((D_Work *) ssGetRootDWork(S))->position_MODE) {
       case INTG_UPPER_SAT:
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_330_0 < 0.0) {
          ssSetSolverNeedsReset(S);
          ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_LEAVING_UPPER_SAT;
        }
        break;

       case INTG_LEAVING_UPPER_SAT:
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_330_0 >= 0.0) {
          ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_UPPER_SAT;
          ssSetSolverNeedsReset(S);
        }
        break;

       default:
        ssSetSolverNeedsReset(S);
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_330_0 < 0.0) {
          ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_LEAVING_UPPER_SAT;
        } else {
          ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_UPPER_SAT;
        }
        break;
      }
    } else if (((ContinuousStates *) ssGetContStates(S))->position_CSTATE ==
               ((Parameters *) ssGetDefaultParam(S))->P_187) {
      switch (((D_Work *) ssGetRootDWork(S))->position_MODE) {
       case INTG_LOWER_SAT:
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_330_0 > 0.0) {
          ssSetSolverNeedsReset(S);
          ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_LEAVING_LOWER_SAT;
        }
        break;

       case INTG_LEAVING_LOWER_SAT:
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_330_0 <= 0.0) {
          ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_LOWER_SAT;
          ssSetSolverNeedsReset(S);
        }
        break;

       default:
        ssSetSolverNeedsReset(S);
        if (((BlockIO *) _ssGetBlockIO(S))->B_40_330_0 > 0.0) {
          ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_LEAVING_LOWER_SAT;
        } else {
          ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_LOWER_SAT;
        }
        break;
      }
    } else {
      ((D_Work *) ssGetRootDWork(S))->position_MODE = INTG_NORMAL;
    }
  }

  /* Update for Derivative: '<S104>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_kp.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_kp.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_kp.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_kp.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_kp.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_kp.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_kp.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_kp.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_430_0;
  }

  /* Update for Derivative: '<S107>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_l.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_l.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_l.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_l.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_l.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_l.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_l.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_l.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_443_0;
  }

  /* Update for Derivative: '<S110>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_m.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_m.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_m.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_m.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_m.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_m.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_m.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_m.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_456_0;
  }

  /* Update for Derivative: '<S101>/Derivative' */
  {
    real_T timeStampA = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_f.TimeStampA;
    real_T timeStampB = ((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_f.TimeStampB;
    real_T* lastTime = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_f.TimeStampA;
    real_T* lastU = &((D_Work *) ssGetRootDWork(S))
      ->Derivative_RWORK_f.LastUAtTimeA;
    if (timeStampA != rtInf) {
      if (timeStampB == rtInf) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_f.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_f.LastUAtTimeB;
      } else if (timeStampA >= timeStampB) {
        lastTime = &((D_Work *) ssGetRootDWork(S))
          ->Derivative_RWORK_f.TimeStampB;
        lastU = &((D_Work *) ssGetRootDWork(S))->Derivative_RWORK_f.LastUAtTimeB;
      }
    }

    *lastTime = ssGetTaskTime(S,0);
    *lastU++ = ((BlockIO *) _ssGetBlockIO(S))->B_40_424_0;
  }

  /* tid is required for a uniform function interface.
   * Argument tid is not used in the function. */
  UNUSED_PARAMETER(tid);
}

/* Derivatives for root system: '<Root>' */
#define MDL_DERIVATIVES

static void mdlDerivatives(SimStruct *S)
{
  /* Derivatives for Integrator: '<S62>/Rotor angle dtheta' */
  {
    ((StateDerivatives *) ssGetdX(S))->Rotorangledtheta_CSTATE = ((BlockIO *)
      _ssGetBlockIO(S))->B_40_377_0;
  }

  /* Derivatives for Integrator: '<S49>/int' */
  {
    ((StateDerivatives *) ssGetdX(S))->int_CSTATE = ((BlockIO *) _ssGetBlockIO(S))
      ->B_40_348_0;
  }

  /* Derivatives for Integrator: '<S50>/int' */
  {
    ((StateDerivatives *) ssGetdX(S))->int_CSTATE_o = ((BlockIO *) _ssGetBlockIO
      (S))->B_40_353_0;
  }

  /* Derivatives for Integrator: '<S51>/int' */
  {
    ((StateDerivatives *) ssGetdX(S))->int_CSTATE_d = ((BlockIO *) _ssGetBlockIO
      (S))->B_40_357_0;
  }

  /* Derivatives for Integrator: '<S54>/int1' */
  {
    ((StateDerivatives *) ssGetdX(S))->int1_CSTATE = ((BlockIO *) _ssGetBlockIO
      (S))->B_40_370_0;
  }

  /* Derivatives for Integrator: '<S52>/int' */
  {
    ((StateDerivatives *) ssGetdX(S))->int_CSTATE_dx = ((BlockIO *)
      _ssGetBlockIO(S))->B_40_361_0;
  }

  if (((D_Work *) ssGetRootDWork(S))->Enabledintegrator_MODE == SUBSYS_ENABLED)
  {
    /* Derivatives for Integrator: '<S61>/int' */
    {
      ((StateDerivatives *) ssGetdX(S))->int_CSTATE_k = ((BlockIO *)
        _ssGetBlockIO(S))->B_40_365_0;
    }
  } else {
    ((StateDerivatives *) ssGetdX(S))->int_CSTATE_k = 0.0;
  }

  /* Derivatives for Integrator: '<S119>/phiqr' */
  {
    ((StateDerivatives *) ssGetdX(S))->phiqr_CSTATE = ((BlockIO *) _ssGetBlockIO
      (S))->B_40_171_0;
  }

  /* Derivatives for Integrator: '<S119>/phidr' */
  {
    ((StateDerivatives *) ssGetdX(S))->phidr_CSTATE = ((BlockIO *) _ssGetBlockIO
      (S))->B_40_170_0;
  }

  /* Derivatives for Integrator: '<S120>/phiqs' */
  {
    ((StateDerivatives *) ssGetdX(S))->phiqs_CSTATE = ((BlockIO *) _ssGetBlockIO
      (S))->B_40_185_0;
  }

  /* Derivatives for Integrator: '<S120>/phids' */
  {
    ((StateDerivatives *) ssGetdX(S))->phids_CSTATE = ((BlockIO *) _ssGetBlockIO
      (S))->B_40_184_0;
  }

  /* Derivatives for Integrator: '<S134>/Rotor angle thetam' */
  {
    ((StateDerivatives *) ssGetdX(S))->Rotoranglethetam_CSTATE = ((BlockIO *)
      _ssGetBlockIO(S))->B_40_191_0;
  }

  /* Derivatives for Integrator: '<S134>/Rotor speed (wm)' */
  {
    ((StateDerivatives *) ssGetdX(S))->Rotorspeedwm_CSTATE = ((BlockIO *)
      _ssGetBlockIO(S))->B_40_190_0;
  }

  if (((D_Work *) ssGetRootDWork(S))->SignalGenerator_MODE == SUBSYS_ENABLED) {
    /* Derivatives for Integrator: '<S75>/Integrator' */
    {
      ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE_e = ((BlockIO *)
        _ssGetBlockIO(S))->B_24_43_0;
    }

    /* Derivatives for Integrator: '<S71>/Integrator' */
    {
      ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE_l = ((BlockIO *)
        _ssGetBlockIO(S))->B_24_32_0;
    }
  } else {
    {
      real_T *dx;
      int_T i;
      dx = &(((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE_e);
      for (i=0; i < 2; i++) {
        dx[i] = 0.0;
      }
    }
  }

  /* Level2 S-Function Block: '<S135>/B_40_27' (sfun_spssw_contc) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 109, SS_CALL_MDL_DERIVATIVES);

  /* Derivatives for TransferFcn: '<S112>/Transfer Fcn' */
  {
    ((StateDerivatives *) ssGetdX(S))->TransferFcn_CSTATE = (((Parameters *)
      ssGetDefaultParam(S))->P_66)*((ContinuousStates *) ssGetContStates(S))
      ->TransferFcn_CSTATE;
    ((StateDerivatives *) ssGetdX(S))->TransferFcn_CSTATE += ((Parameters *)
      ssGetDefaultParam(S))->P_67*((BlockIO *) _ssGetBlockIO(S))->B_40_140_0;
  }

  /* Derivatives for TransferFcn: '<S112>/Transfer Fcn1' */
  {
    ((StateDerivatives *) ssGetdX(S))->TransferFcn1_CSTATE = (((Parameters *)
      ssGetDefaultParam(S))->P_73)*((ContinuousStates *) ssGetContStates(S))
      ->TransferFcn1_CSTATE;
    ((StateDerivatives *) ssGetdX(S))->TransferFcn1_CSTATE += ((Parameters *)
      ssGetDefaultParam(S))->P_74*((BlockIO *) _ssGetBlockIO(S))->B_40_144_0;
  }

  /* Derivatives for Integrator: '<S62>/Rotor speed deviation (dw)' */
  {
    ((StateDerivatives *) ssGetdX(S))->Rotorspeeddeviationdw_CSTATE = ((BlockIO *)
      _ssGetBlockIO(S))->B_40_375_0;
  }

  /* Derivatives for StateSpace: '<S34>/State Space' */
  {
    ((StateDerivatives *) ssGetdX(S))->StateSpace_CSTATE_k = (((Parameters *)
      ssGetDefaultParam(S))->P_143)*((ContinuousStates *) ssGetContStates(S))
      ->StateSpace_CSTATE_k;
    ((StateDerivatives *) ssGetdX(S))->StateSpace_CSTATE_k += ((Parameters *)
      ssGetDefaultParam(S))->P_144*((BlockIO *) _ssGetBlockIO(S))->B_40_307_0;
  }

  /* Derivatives for StateSpace: '<S33>/State Space' */
  {
    ((StateDerivatives *) ssGetdX(S))->StateSpace_CSTATE_a = (((Parameters *)
      ssGetDefaultParam(S))->P_149)*((ContinuousStates *) ssGetContStates(S))
      ->StateSpace_CSTATE_a;
    ((StateDerivatives *) ssGetdX(S))->StateSpace_CSTATE_a += ((Parameters *)
      ssGetDefaultParam(S))->P_150*((BlockIO *) _ssGetBlockIO(S))->B_40_313_0;
  }

  /* Derivatives for StateSpace: '<S30>/State Space' */
  {
    ((StateDerivatives *) ssGetdX(S))->StateSpace_CSTATE_ao = (((Parameters *)
      ssGetDefaultParam(S))->P_163)*((ContinuousStates *) ssGetContStates(S))
      ->StateSpace_CSTATE_ao;
    ((StateDerivatives *) ssGetdX(S))->StateSpace_CSTATE_ao += ((Parameters *)
      ssGetDefaultParam(S))->P_164*((BlockIO *) _ssGetBlockIO(S))->B_40_301_0;
  }

  /* Derivatives for TransferFcn: '<S37>/Derivative' */
  {
    ((StateDerivatives *) ssGetdX(S))->Derivative_CSTATE = (((Parameters *)
      ssGetDefaultParam(S))->P_179)*((ContinuousStates *) ssGetContStates(S))
      ->Derivative_CSTATE;
    ((StateDerivatives *) ssGetdX(S))->Derivative_CSTATE += ((Parameters *)
      ssGetDefaultParam(S))->P_180*((BlockIO *) _ssGetBlockIO(S))->B_40_323_0;
  }

  /* Derivatives for Integrator: '<S38>/position' */
  {
    enum { INTG_NORMAL, INTG_LEAVING_UPPER_SAT, INTG_LEAVING_LOWER_SAT,
      INTG_UPPER_SAT, INTG_LOWER_SAT };

    if ((((D_Work *) ssGetRootDWork(S))->position_MODE != INTG_UPPER_SAT)
        && (((D_Work *) ssGetRootDWork(S))->position_MODE != INTG_LOWER_SAT) ) {
      ((StateDerivatives *) ssGetdX(S))->position_CSTATE = ((BlockIO *)
        _ssGetBlockIO(S))->B_40_330_0;
      ((StateDisabled *) ssGetContStateDisabled(S))->position_CSTATE = FALSE;
    } else {
      /* in saturation */
      ((StateDerivatives *) ssGetdX(S))->position_CSTATE = 0.0;
      if ((((D_Work *) ssGetRootDWork(S))->position_MODE == INTG_UPPER_SAT) ||
          (((D_Work *) ssGetRootDWork(S))->position_MODE == INTG_LOWER_SAT)) {
        ((StateDisabled *) ssGetContStateDisabled(S))->position_CSTATE = TRUE;
      }
    }
  }

  /* Derivatives for Integrator: '<S37>/Integrator1' */
  {
    ((StateDerivatives *) ssGetdX(S))->Integrator1_CSTATE = ((BlockIO *)
      _ssGetBlockIO(S))->B_40_324_0;
  }

  /* Derivatives for TransferFcn: '<S38>/servo- motor' */
  {
    ((StateDerivatives *) ssGetdX(S))->servomotor_CSTATE = (((Parameters *)
      ssGetDefaultParam(S))->P_194)*((ContinuousStates *) ssGetContStates(S))
      ->servomotor_CSTATE;
    ((StateDerivatives *) ssGetdX(S))->servomotor_CSTATE += ((Parameters *)
      ssGetDefaultParam(S))->P_195*((BlockIO *) _ssGetBlockIO(S))->B_40_328_0;
  }

  /* Derivatives for Integrator: '<S39>/Integrator' */
  {
    ((StateDerivatives *) ssGetdX(S))->Integrator_CSTATE = ((BlockIO *)
      _ssGetBlockIO(S))->B_40_338_0;
  }

  /* Derivatives for Integrator: '<S62>/theta' */
  {
    ((StateDerivatives *) ssGetdX(S))->theta_CSTATE = ((BlockIO *) _ssGetBlockIO
      (S))->B_40_378_0;
  }
}

/* ZeroCrossings for root system: '<Root>' */
#define MDL_ZERO_CROSSINGS

static void mdlZeroCrossings(SimStruct *S)
{
  if (((D_Work *) ssGetRootDWork(S))->dqaxissaturation_MODE == SUBSYS_ENABLED) {
    ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
      ->RelationalOperator_RelopInput_ZC = ((BlockIO *) _ssGetBlockIO(S))
      ->B_8_2_0 - ((BlockIO *) _ssGetBlockIO(S))->B_8_4_0;
  } else {
    {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
        ->RelationalOperator_RelopInput_ZC = 0.0;
    }
  }

  if (((D_Work *) ssGetRootDWork(S))->daxissaturation_MODE == SUBSYS_ENABLED) {
    ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
      ->RelationalOperator_RelopInput_ZC_n = ((BlockIO *) _ssGetBlockIO(S))
      ->B_40_13_0 - ((BlockIO *) _ssGetBlockIO(S))->B_5_0_0;
  } else {
    {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
        ->RelationalOperator_RelopInput_ZC_n = 0.0;
    }
  }

  if (((D_Work *) ssGetRootDWork(S))->SignalGenerator_MODE == SUBSYS_ENABLED) {
    ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->Step1_StepTime_ZC =
      ssGetT(S) - ((Parameters *) ssGetDefaultParam(S))->P_319;
    ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->Step_StepTime_ZC = ssGetT
      (S) - ((Parameters *) ssGetDefaultParam(S))->P_325;
  } else {
    {
      real_T* zcsv = &(((ZCSignalValues *) ssGetSolverZcSignalVector(S))
                       ->Step1_StepTime_ZC);
      int_T i;
      for (i=0; i < 2; i++) {
        zcsv[i] = 0.0;
      }
    }
  }

  if (((D_Work *) ssGetRootDWork(S))->HarmonicGenerator_MODE == SUBSYS_ENABLED)
  {
    ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->Step_StepTime_ZC_d =
      ssGetT(S) - ((Parameters *) ssGetDefaultParam(S))->P_288;
    ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->Step1_StepTime_ZC_p =
      ssGetT(S) - ((Parameters *) ssGetDefaultParam(S))->P_291;
  } else {
    {
      real_T* zcsv = &(((ZCSignalValues *) ssGetSolverZcSignalVector(S))
                       ->Step_StepTime_ZC_d);
      int_T i;
      for (i=0; i < 2; i++) {
        zcsv[i] = 0.0;
      }
    }
  }

  /* Level2 S-Function Block: '<S135>/B_40_27' (sfun_spssw_contc) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 109, SS_CALL_MDL_ZERO_CROSSINGS);

  /* Level2 S-Function Block: '<S16>/B_40_69' (sfun_psbbreaker) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 231, SS_CALL_MDL_ZERO_CROSSINGS);
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->HitCrossing_HitNoOutput_ZC =
    ((BlockIO *) _ssGetBlockIO(S))->B_40_232_0 - ((Parameters *)
    ssGetDefaultParam(S))->P_119;

  /* Level2 S-Function Block: '<S19>/B_40_76' (sfun_psbbreaker) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 243, SS_CALL_MDL_ZERO_CROSSINGS);
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->HitCrossing_HitNoOutput_ZC_g = ((BlockIO *) _ssGetBlockIO(S))->B_40_244_0
    - ((Parameters *) ssGetDefaultParam(S))->P_127;

  /* Level2 S-Function Block: '<S22>/B_40_83' (sfun_psbbreaker) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 255, SS_CALL_MDL_ZERO_CROSSINGS);
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->HitCrossing_HitNoOutput_ZC_p = ((BlockIO *) _ssGetBlockIO(S))->B_40_256_0
    - ((Parameters *) ssGetDefaultParam(S))->P_135;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->HitCrossing_HitNoOutput_ZC_c = ((BlockIO *) _ssGetBlockIO(S))->B_40_261_0
    - ((Parameters *) ssGetDefaultParam(S))->P_136;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->RelationalOperator2_RelopInput_ZC = ((BlockIO *) _ssGetBlockIO(S))
    ->B_40_279_0 - ((BlockIO *) _ssGetBlockIO(S))->B_40_280_0;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->RelationalOperator1_RelopInput_ZC = ((BlockIO *) _ssGetBlockIO(S))
    ->B_40_279_0 - ((BlockIO *) _ssGetBlockIO(S))->B_40_289_0;

  /* ZeroCrossings for Integrator: '<S38>/position' */
  {
    enum { INTG_NORMAL, INTG_LEAVING_UPPER_SAT, INTG_LEAVING_LOWER_SAT,
      INTG_UPPER_SAT, INTG_LOWER_SAT };

    /* zero crossings for enter into limited region */
    if (((D_Work *) ssGetRootDWork(S))->position_MODE == INTG_LEAVING_UPPER_SAT &&
        ((ContinuousStates *) ssGetContStates(S))->position_CSTATE >=
        ((Parameters *) ssGetDefaultParam(S))->P_186) {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->position_IntgUpLimit_ZC
        = 0.0;
    } else {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->position_IntgUpLimit_ZC
        = ((ContinuousStates *) ssGetContStates(S))->position_CSTATE -
        ((Parameters *) ssGetDefaultParam(S))->P_186;
    }

    if (((D_Work *) ssGetRootDWork(S))->position_MODE == INTG_LEAVING_LOWER_SAT &&
        ((ContinuousStates *) ssGetContStates(S))->position_CSTATE <=
        ((Parameters *) ssGetDefaultParam(S))->P_187) {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->position_IntgLoLimit_ZC
        = 0.0;
    } else {
      ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->position_IntgLoLimit_ZC
        = ((ContinuousStates *) ssGetContStates(S))->position_CSTATE -
        ((Parameters *) ssGetDefaultParam(S))->P_187;
    }

    /* zero crossings for leaving limited region */
    {
      boolean_T anyStateSaturated = FALSE;
      if ((((D_Work *) ssGetRootDWork(S))->position_MODE == INTG_UPPER_SAT) ||
          (((D_Work *) ssGetRootDWork(S))->position_MODE == INTG_LOWER_SAT)) {
        anyStateSaturated = TRUE;
      }

      if (anyStateSaturated) {
        ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
          ->position_LeaveSaturate_ZC = ((BlockIO *) _ssGetBlockIO(S))
          ->B_40_330_0;
      } else {
        ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
          ->position_LeaveSaturate_ZC = 0.0;
      }
    }
  }

  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->speedlimit_UprLim_ZC =
    ((BlockIO *) _ssGetBlockIO(S))->B_40_329_0 - ((Parameters *)
    ssGetDefaultParam(S))->P_199;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))->speedlimit_LwrLim_ZC =
    ((BlockIO *) _ssGetBlockIO(S))->B_40_329_0 - ((Parameters *)
    ssGetDefaultParam(S))->P_200;

  /* Level2 S-Function Block: '<S103>/B_40_154' (sfun_psbbreaker) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 433, SS_CALL_MDL_ZERO_CROSSINGS);
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->HitCrossing_HitNoOutput_ZC_j = ((BlockIO *) _ssGetBlockIO(S))->B_40_434_0
    - ((Parameters *) ssGetDefaultParam(S))->P_242;

  /* Level2 S-Function Block: '<S106>/B_40_161' (sfun_psbbreaker) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 446, SS_CALL_MDL_ZERO_CROSSINGS);
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->HitCrossing_HitNoOutput_ZC_je = ((BlockIO *) _ssGetBlockIO(S))->B_40_447_0
    - ((Parameters *) ssGetDefaultParam(S))->P_250;

  /* Level2 S-Function Block: '<S109>/B_40_168' (sfun_psbbreaker) */
  /* Call into Simulink for MEX-version of S-function */
  ssCallAccelRunBlock(S, 40, 459, SS_CALL_MDL_ZERO_CROSSINGS);
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->HitCrossing_HitNoOutput_ZC_o = ((BlockIO *) _ssGetBlockIO(S))->B_40_460_0
    - ((Parameters *) ssGetDefaultParam(S))->P_258;
  ((ZCSignalValues *) ssGetSolverZcSignalVector(S))
    ->HitCrossing_HitNoOutput_ZC_jj = ((BlockIO *) _ssGetBlockIO(S))->B_40_465_0
    - ((Parameters *) ssGetDefaultParam(S))->P_259;
}

/* Function to initialize sizes */
static void mdlInitializeSizes(SimStruct *S)
{
  /* checksum */
  ssSetChecksumVal(S, 0, 3220636680U);
  ssSetChecksumVal(S, 1, 357143052U);
  ssSetChecksumVal(S, 2, 1008303582U);
  ssSetChecksumVal(S, 3, 87101316U);

  /* options */
  ssSetOptions(S, SS_OPTION_EXCEPTION_FREE_CODE);

  /* Accelerator check memory map size match for DWork */
  if (ssGetSizeofDWork(S) != sizeof(D_Work)) {
    ssSetErrorStatus(S,"Unexpected error: Internal DWork sizes do "
                     "not match for accelerator mex file.");
  }

  /* Accelerator check memory map size match for BlockIO */
  if (ssGetSizeofGlobalBlockIO(S) != sizeof(BlockIO)) {
    ssSetErrorStatus(S,"Unexpected error: Internal BlockIO sizes do "
                     "not match for accelerator mex file.");
  }

  /* model parameters */
  _ssSetDefaultParam(S, (real_T *) &rtDefaultParameters);

  /* non-finites */
  rt_InitInfAndNaN(sizeof(real_T));
}

/* Empty mdlInitializeSampleTimes function (never called) */
static void mdlInitializeSampleTimes(SimStruct *S)
{
}

/* Empty mdlTerminate function (never called) */
static void mdlTerminate(SimStruct *S)
{
}

/* MATLAB MEX Glue */
#include "simulink.c"
