/*
 * moxingxitong1_acc_data.c
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

#include "moxingxitong1_acc.h"
#include "moxingxitong1_acc_private.h"

/* Block parameters (auto storage) */
Parameters rtDefaultParameters = {
  /*  Expression: zeros(6,1)
   * Referenced by: '<S137>/SwitchCurrents'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 },
  0.0,                                 /* Expression: SM.tho
                                        * Referenced by: '<S62>/Rotor angle dtheta'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S62>/web2'
                                        */
  9.9999999999999989E-001,             /* Expression: SM.phido
                                        * Referenced by: '<S49>/int'
                                        */
  3.5538429992280196E-001,             /* Expression: SM.Lad/SM.Ll
                                        * Referenced by: '<S48>/Lad_Ll'
                                        */
  1.1388685826532974E+000,             /* Expression: SM.phifdo
                                        * Referenced by: '<S50>/int'
                                        */
  3.6384619577779514E-001,             /* Expression: SM.Lad/SM.Llfd
                                        * Referenced by: '<S48>/Lad_Llfd'
                                        */
  9.9999999999999989E-001,             /* Expression: SM.phikdo
                                        * Referenced by: '<S51>/int'
                                        */
  2.3024269878794634E-001,             /* Expression: SM.Lad/SM.Llkd
                                        * Referenced by: '<S48>/Lad_Llkd'
                                        */
  0.0,                                 /* Expression: SM.phiqo
                                        * Referenced by: '<S54>/int1'
                                        */
  3.3150964436438618E-001,             /* Expression: SM.Laq/SM.Ll
                                        * Referenced by: '<S48>/Laq_Ll'
                                        */
  0.0,                                 /* Expression: SM.phikq1o
                                        * Referenced by: '<S52>/int'
                                        */
  4.9564397423324352E-001,             /* Expression: SM.Laq/SM.Llkq1
                                        * Referenced by: '<S48>/Laq_Llkq1'
                                        */
  0.0,                                 /* Expression: SM.Laq/SM.Llkq2
                                        * Referenced by: '<S48>/Laq_Llkq2'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S58>/Switch'
                                        */
  -6.1559995634278390E+000,            /* Expression: -1/SM.Ll
                                        * Referenced by: '<S48>/-1_Ll'
                                        */
  2.0,                                 /* Expression: 2
                                        * Referenced by: '<S58>/Gain'
                                        */
  3.0,                                 /* Expression: 3
                                        * Referenced by: '<S58>/Gain1'
                                        */
  -6.1559995634278390E+000,            /* Expression: -1/SM.Ll
                                        * Referenced by: '<S48>/-1_Ll '
                                        */
  1.1833283781561247E+004,             /* Expression: SM.ib
                                        * Referenced by: '<S55>/ib'
                                        */
  1.0,                                 /* Expression: SM.ctrl
                                        * Referenced by: '<S122>/Constant3'
                                        */
  -1.8542736169757667E-002,            /* Expression: SM.phirqo
                                        * Referenced by: '<S119>/phiqr'
                                        */
  -1.3537460136087529E+000,            /* Expression: SM.phirdo
                                        * Referenced by: '<S119>/phidr'
                                        */
  2.5188916876574307E+001,             /* Expression: 1/SM.Llr
                                        * Referenced by: '<S118>/1\Llr'
                                        */
  -1.8014540269679184E-002,            /* Expression: SM.phisqo
                                        * Referenced by: '<S120>/phiqs'
                                        */
  -1.3151841159691837E+000,            /* Expression: SM.phisdo
                                        * Referenced by: '<S120>/phids'
                                        */
  2.5188916876574307E+001,             /* Expression: 1/SM.Lls
                                        * Referenced by: '<S118>/1\Lls'
                                        */
  1.9563198311314919E-002,             /* Expression: SM.Laq
                                        * Referenced by: '<S118>/1\Llr1'
                                        */
  1.9563198311314919E-002,             /* Expression: SM.Lad
                                        * Referenced by: '<S118>/1\Llr2'
                                        */
  0.0,                                 /* Expression: SM.ensat
                                        * Referenced by: '<S118>/Constant'
                                        */
  0.0,                                 /* Expression: SM.ensat
                                        * Referenced by: '<S118>/Constant1'
                                        */
  0.9,                                 /* Expression: 0.9
                                        * Referenced by: '<S118>/Switch'
                                        */
  2.5188916876574307E+001,             /* Expression: 1/SM.Llr
                                        * Referenced by: '<S119>/1\Llr'
                                        */
  0.9,                                 /* Expression: 0.9
                                        * Referenced by: '<S118>/Switch1'
                                        */
  2.5188916876574307E+001,             /* Expression: 1/SM.Llr
                                        * Referenced by: '<S119>/1\Llr2'
                                        */
  2.5188916876574307E+001,             /* Expression: 1/SM.Lls
                                        * Referenced by: '<S120>/1\Llr'
                                        */
  2.5188916876574307E+001,             /* Expression: 1/SM.Lls
                                        * Referenced by: '<S120>/1\Llr2'
                                        */
  0.0,                                 /* Expression: SM.tho
                                        * Referenced by: '<S134>/Rotor angle thetam'
                                        */
  0.0,                                 /* Expression: SM.wmo
                                        * Referenced by: '<S134>/Rotor speed (wm)'
                                        */
  1.0,                                 /* Expression: SM.ctrl
                                        * Referenced by: '<S122>/Constant4'
                                        */
  5.9166418907806235E+002,             /* Expression: SM.ib
                                        * Referenced by: '<S122>/ib'
                                        */
  0.0,                                 /* Expression: VariationEntity - 1
                                        * Referenced by: '<S69>/valp_nom3'
                                        */
  5.3888774341229917E+004,             /* Expression: MagnitudeVps
                                        * Referenced by: '<S69>/valp_nom2'
                                        */
  0.0,                                 /* Expression: VariationPhaseA
                                        * Referenced by: '<S69>/SinglePhase'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S69>/Switch5'
                                        */
  60.0,                                /* Expression: FreqVps
                                        * Referenced by: '<S69>/valp_nom1'
                                        */
  6.2831853071795862E+000,             /* Expression: 2*pi
                                        * Referenced by: '<S69>/Gain'
                                        */
  0.0,                                 /* Expression: PhaseVps
                                        * Referenced by: '<S69>/valp_nom'
                                        */
  1.7453292519943295E-002,             /* Expression: pi/180
                                        * Referenced by: '<S69>/Gain3'
                                        */

  /*  Expression: [0  -2*pi/3  2*pi/3]
   * Referenced by: '<S69>/P1'
   */
  { 0.0, -2.0943951023931953E+000, 2.0943951023931953E+000 },
  0.0,                                 /* Expression: HarmonicGeneration
                                        * Referenced by: '<S69>/valp_nom7'
                                        */
  0.5,                                 /* Expression: 1/SM.p
                                        * Referenced by: '<S134>/1\p'
                                        */

  /*  Expression: [SM.Nb2;SM.Tb2;1]
   * Referenced by: '<S134>/Gain'
   */
  { 1.0, 1.0, 1.0 },
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<Root>/Gain3'
                                        */
  33.3,                                /* Expression: 33.3
                                        * Referenced by: '<S9>/T1'
                                        */
  3.1847133757961780E-005,             /* Expression: 1/(100*314)
                                        * Referenced by: '<S9>/Gain5'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S113>/Gain7'
                                        */
  129579.3,                            /* Expression: 129579.3
                                        * Referenced by: '<S113>/Gain3'
                                        */
  8.114E+002,                          /* Expression: 811.4
                                        * Referenced by: '<S113>/Gain4'
                                        */
  33.3,                                /* Expression: 33.3
                                        * Referenced by: '<S9>/T2'
                                        */
  129579.3,                            /* Expression: 129579.3
                                        * Referenced by: '<S113>/Gain1'
                                        */
  8.114E+002,                          /* Expression: 811.4
                                        * Referenced by: '<S113>/Gain5'
                                        */
  33.3,                                /* Expression: 33.3
                                        * Referenced by: '<S9>/T3'
                                        */
  129579.3,                            /* Expression: 129579.3
                                        * Referenced by: '<S113>/Gain2'
                                        */
  8.114E+002,                          /* Expression: 811.4
                                        * Referenced by: '<S113>/Gain6'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S9>/Gain2'
                                        */
  -1.7956455760232687E-001,            /* Computed Parameter: P_66
                                        * Referenced by: '<S112>/Transfer Fcn'
                                        */
  1.0,                                 /* Computed Parameter: P_67
                                        * Referenced by: '<S112>/Transfer Fcn'
                                        */
  -6.6180499936770230E-004,            /* Computed Parameter: P_68
                                        * Referenced by: '<S112>/Transfer Fcn'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S9>/Gain3'
                                        */
  0.0061,                              /* Expression: 0.0061
                                        * Referenced by: '<S112>/Gain3'
                                        */
  -1.7956455760232687E-001,            /* Computed Parameter: P_73
                                        * Referenced by: '<S112>/Transfer Fcn1'
                                        */
  1.0,                                 /* Computed Parameter: P_74
                                        * Referenced by: '<S112>/Transfer Fcn1'
                                        */
  6.6188509041858121E-002,             /* Computed Parameter: P_75
                                        * Referenced by: '<S112>/Transfer Fcn1'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S112>/Gain2'
                                        */
  0.3933,                              /* Expression: 0.3933
                                        * Referenced by: '<S112>/Gain1'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S112>/Gain4'
                                        */
  0.01909,                             /* Expression: SM.Rr
                                        * Referenced by: '<S119>/1\Llr1'
                                        */
  0.01909,                             /* Expression: SM.Rr
                                        * Referenced by: '<S119>/1\Llr3'
                                        */
  1.0,                                 /* Expression: SM.ctrl
                                        * Referenced by: '<S123>/Constant1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S123>/Constant2'
                                        */
  1.0,                                 /* Expression: SM.ctrl
                                        * Referenced by: '<S121>/Constant3'
                                        */

  /*  Expression: [0;0]
   * Referenced by: '<S128>/Constant6'
   */
  { 0.0, 0.0 },
  1.7749925672341869E-003,             /* Expression: 1/SM.Vb
                                        * Referenced by: '<S121>/1_Vb'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S119>/web1'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S119>/web_psb'
                                        */
  0.01965,                             /* Expression: SM.Rs
                                        * Referenced by: '<S120>/1\Llr1'
                                        */
  0.01965,                             /* Expression: SM.Rs
                                        * Referenced by: '<S120>/1\Llr3'
                                        */
  1.0,                                 /* Expression: SM.ctrl
                                        * Referenced by: '<S123>/Constant4'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S123>/Constant5'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S123>/Constant6'
                                        */
  1.0,                                 /* Expression: SM.ctrl
                                        * Referenced by: '<S121>/Constant4'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S120>/web1'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S120>/web_psb'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S9>/Gain1'
                                        */
  1.0,                                 /* Expression: 1/SM.Tb2
                                        * Referenced by: '<S134>/1_Tb2'
                                        */
  0.01,                                /* Expression: SM.F
                                        * Referenced by: '<S134>/F'
                                        */
  3.5236081747709656E+000,             /* Expression: 1/(2*SM.H)
                                        * Referenced by: '<S134>/1_2H'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S134>/web_psb'
                                        */
  1.0,                                 /* Expression: Ki
                                        * Referenced by: '<S6>/Ki'
                                        */
  1.0,                                 /* Expression: Kv
                                        * Referenced by: '<S6>/Kv'
                                        */
  1.0,                                 /* Expression: Kv
                                        * Referenced by: '<S7>/Kv'
                                        */
  1.0,                                 /* Expression: BR.com
                                        * Referenced by: '<S16>/C4'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S1>/com'
                                        */
  0.0,                                 /* Expression: External
                                        * Referenced by: '<S1>/C4'
                                        */

  /*  Expression: tv
   * Referenced by: '<S14>/Look-Up Table'
   */
  { -1.0, 0.0, 0.2, 0.2, 1.0, 1.0, 2.0 },

  /*  Expression: opv
   * Referenced by: '<S14>/Look-Up Table'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0 },
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S1>/Switch3'
                                        */
  1.0,                                 /* Expression: SwitchA
                                        * Referenced by: '<S1>/Constant1'
                                        */
  0.0,                                 /* Expression: InitialState
                                        * Referenced by: '<S1>/Constant5'
                                        */

  /*  Expression: tv
   * Referenced by: '<S17>/Look-Up Table'
   */
  { -1.0, 0.0, 1.6666666666666666E-002, 1.6666666666666666E-002,
    8.3333333333333329E-002, 8.3333333333333329E-002, 1.0833333333333333E+000 },

  /*  Expression: opv
   * Referenced by: '<S17>/Look-Up Table'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0 },
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S16>/Switch3'
                                        */

  /*  Computed Parameter: P_117
   * Referenced by: '<S16>/Sfunction'
   */
  { 1.0, 1.0 },
  0.0,                                 /* Expression: InitialState
                                        * Referenced by: '<S16>/Sfunction'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S17>/Hit  Crossing'
                                        */
  1.0,                                 /* Expression: BR.com
                                        * Referenced by: '<S19>/C4'
                                        */
  1.0,                                 /* Expression: SwitchB
                                        * Referenced by: '<S1>/Constant2'
                                        */

  /*  Expression: tv
   * Referenced by: '<S20>/Look-Up Table'
   */
  { -1.0, 0.0, 1.6666666666666666E-002, 1.6666666666666666E-002,
    8.3333333333333329E-002, 8.3333333333333329E-002, 1.0833333333333333E+000 },

  /*  Expression: opv
   * Referenced by: '<S20>/Look-Up Table'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0 },
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S19>/Switch3'
                                        */

  /*  Computed Parameter: P_125
   * Referenced by: '<S19>/Sfunction'
   */
  { 1.0, 1.0 },
  0.0,                                 /* Expression: InitialState
                                        * Referenced by: '<S19>/Sfunction'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S20>/Hit  Crossing'
                                        */
  1.0,                                 /* Expression: BR.com
                                        * Referenced by: '<S22>/C4'
                                        */
  1.0,                                 /* Expression: SwitchC
                                        * Referenced by: '<S1>/Constant3'
                                        */

  /*  Expression: tv
   * Referenced by: '<S23>/Look-Up Table'
   */
  { -1.0, 0.0, 1.6666666666666666E-002, 1.6666666666666666E-002,
    8.3333333333333329E-002, 8.3333333333333329E-002, 1.0833333333333333E+000 },

  /*  Expression: opv
   * Referenced by: '<S23>/Look-Up Table'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0 },
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S22>/Switch3'
                                        */

  /*  Computed Parameter: P_133
   * Referenced by: '<S22>/Sfunction'
   */
  { 1.0, 1.0 },
  0.0,                                 /* Expression: InitialState
                                        * Referenced by: '<S22>/Sfunction'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S23>/Hit  Crossing'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S14>/Hit  Crossing'
                                        */
  1.0,                                 /* Expression: SM.Ib2
                                        * Referenced by: '<S55>/output formatting'
                                        */
  1.0,                                 /* Expression: SM.Ib2
                                        * Referenced by: '<S55>/output formatting1'
                                        */
  1.0,                                 /* Expression: SM.Ib2
                                        * Referenced by: '<S55>/output formatting2'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S62>/nom. speed'
                                        */
  0.0,                                 /* Expression: SM.dwo
                                        * Referenced by: '<S62>/Rotor speed deviation (dw)'
                                        */
  1.0,                                 /* Expression: SM.Nb
                                        * Referenced by: '<S62>/units'
                                        */
  -1000.0,                             /* Computed Parameter: P_143
                                        * Referenced by: '<S34>/State Space'
                                        */
  1.0,                                 /* Computed Parameter: P_144
                                        * Referenced by: '<S34>/State Space'
                                        */
  3.0E+005,                            /* Computed Parameter: P_145
                                        * Referenced by: '<S34>/State Space'
                                        */
  3.3333333333333333E-006,             /* Expression: X0
                                        * Referenced by: '<S34>/State Space'
                                        */
  -11.5,                               /* Expression: efmin
                                        * Referenced by: '<S35>/Constant1'
                                        */
  -50.0,                               /* Computed Parameter: P_149
                                        * Referenced by: '<S33>/State Space'
                                        */
  1.0,                                 /* Computed Parameter: P_150
                                        * Referenced by: '<S33>/State Space'
                                        */
  50.0,                                /* Computed Parameter: P_151
                                        * Referenced by: '<S33>/State Space'
                                        */
  0.02,                                /* Expression: X0
                                        * Referenced by: '<S33>/State Space'
                                        */
  0.0,                                 /* Expression: kp
                                        * Referenced by: '<S35>/Vfdmax1'
                                        */
  0.0,                                 /* Expression: kp
                                        * Referenced by: '<S35>/Constant'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S35>/Constant3'
                                        */
  11.5,                                /* Expression: efmax
                                        * Referenced by: '<S35>/Vfdmax'
                                        */
  1.0,                                 /* Computed Parameter: P_161
                                        * Referenced by: '<S31>/State Space'
                                        */
  -10.0,                               /* Computed Parameter: P_163
                                        * Referenced by: '<S30>/State Space'
                                        */
  1.0,                                 /* Computed Parameter: P_164
                                        * Referenced by: '<S30>/State Space'
                                        */
  -0.1,                                /* Computed Parameter: P_165
                                        * Referenced by: '<S30>/State Space'
                                        */
  0.01,                                /* Computed Parameter: P_166
                                        * Referenced by: '<S30>/State Space'
                                        */
  9.9999999999999992E-002,             /* Expression: X0
                                        * Referenced by: '<S30>/State Space'
                                        */
  1.0,                                 /* Expression: 1.0
                                        * Referenced by: '<S2>/Vref'
                                        */
  3.3333333333333335E-003,             /* Expression: v0(2)/ka
                                        * Referenced by: '<S29>/Vf0| ka'
                                        */
  1.0,                                 /* Computed Parameter: P_173
                                        * Referenced by: '<S32>/State Space'
                                        */
  8.8749628361709345E-005,             /* Expression: 1/SM.Vb
                                        * Referenced by: '<S47>/1_Vb'
                                        */
  1.0,                                 /* Expression: SM.Vb2
                                        * Referenced by: '<S48>/output formatting9'
                                        */
  1.0,                                 /* Expression: SM.Vb2
                                        * Referenced by: '<S48>/output formatting8'
                                        */
  0.0,                                 /* Expression: dref
                                        * Referenced by: '<S36>/Constant1'
                                        */
  -100.0,                              /* Computed Parameter: P_179
                                        * Referenced by: '<S37>/Derivative'
                                        */
  1.0,                                 /* Computed Parameter: P_180
                                        * Referenced by: '<S37>/Derivative'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S2>/wref'
                                        */
  0.48259,                             /* Expression: go
                                        * Referenced by: '<S38>/position'
                                        */
  0.97518,                             /* Expression: gmax
                                        * Referenced by: '<S38>/position'
                                        */
  0.01,                                /* Expression: gmin
                                        * Referenced by: '<S38>/position'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S2>/Pref'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S36>/Switch'
                                        */
  0.05,                                /* Expression: Rp
                                        * Referenced by: '<S36>/permanent droop'
                                        */
  0.105,                               /* Expression: ki
                                        * Referenced by: '<S37>/Integral'
                                        */
  0.48259,                             /* Expression: go
                                        * Referenced by: '<S37>/Integrator1'
                                        */
  1.163,                               /* Expression: kp
                                        * Referenced by: '<S37>/Proportional'
                                        */
  -1.4285714285714285E+001,            /* Computed Parameter: P_194
                                        * Referenced by: '<S38>/servo- motor'
                                        */
  1.0,                                 /* Computed Parameter: P_195
                                        * Referenced by: '<S38>/servo- motor'
                                        */
  4.7619047619047613E+001,             /* Computed Parameter: P_196
                                        * Referenced by: '<S38>/servo- motor'
                                        */
  0.1,                                 /* Expression: vgmax
                                        * Referenced by: '<S38>/speed limit'
                                        */
  -0.1,                                /* Expression: vgmin
                                        * Referenced by: '<S38>/speed limit'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S39>/Constant'
                                        */
  1.0360761723201890E+000,             /* Expression: 1/(gmax-gmin)
                                        * Referenced by: '<S39>/turbine gain'
                                        */
  0.5,                                 /* Expression: po
                                        * Referenced by: '<S39>/Integrator'
                                        */
  0.0,                                 /* Expression: beta
                                        * Referenced by: '<S39>/beta'
                                        */
  3.7453183520599254E-001,             /* Expression: 1/tw
                                        * Referenced by: '<S39>/Gain2'
                                        */
  1.0,                                 /* Expression: SM.excAxis
                                        * Referenced by: '<S46>/Constant'
                                        */
  1.5,                                 /* Expression: 1.5
                                        * Referenced by: '<S46>/Switch'
                                        */
  1.5,                                 /* Expression: 1.5
                                        * Referenced by: '<S46>/Switch1'
                                        */
  1.7571685153848424E-002,             /* Expression: SM.Rs/SM.Ll
                                        * Referenced by: '<S49>/Rs_Ll'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S49>/web_psb'
                                        */
  6.9972749362355515E-004,             /* Expression: SM.N
                                        * Referenced by: '<S50>/N'
                                        */
  5.0387746476142237E-003,             /* Expression: SM.Rf/SM.Llfd
                                        * Referenced by: '<S50>/Rf_Llfd'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S50>/web_psb'
                                        */
  6.4266500229458429E-002,             /* Expression: SM.Rkd/SM.Llkd
                                        * Referenced by: '<S51>/Rkd_Llkd'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S51>/web_psb'
                                        */
  1.0258969423740570E-001,             /* Expression: SM.Rkq1/SM.Llkq1
                                        * Referenced by: '<S52>/Rkq1_Llkq1'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S52>/web_psb'
                                        */
  0.0,                                 /* Expression: SM.Rkq2/SM.Llkq2
                                        * Referenced by: '<S53>/Rkq2_Llkq2'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S53>/web_psb'
                                        */
  1.7571685153848424E-002,             /* Expression: SM.Rs/SM.Ll
                                        * Referenced by: '<S54>/Rs_Ll'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S54>/web_psb'
                                        */
  1.0,                                 /* Expression: 1/SM.Pb
                                        * Referenced by: '<S62>/1_Pb'
                                        */
  0.0,                                 /* Expression: SM.F
                                        * Referenced by: '<S62>/F1'
                                        */
  0.15625,                             /* Expression: 1/(2*SM.H)
                                        * Referenced by: '<S62>/1_(2H)'
                                        */
  0.0,                                 /* Expression: SM.tho
                                        * Referenced by: '<S62>/theta'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S62>/web1'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S62>/web3'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S28>/do not delete this gain'
                                        */
  8.8749628361709331E-005,             /* Expression: 1/(13800/sqrt(3)*sqrt(2))
                                        * Referenced by: '<S2>/Volts > pu'
                                        */
  1.0,                                 /* Expression: BR.com
                                        * Referenced by: '<S103>/C4'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S8>/com'
                                        */
  0.0,                                 /* Expression: External
                                        * Referenced by: '<S8>/C4'
                                        */

  /*  Expression: tv
   * Referenced by: '<S101>/Look-Up Table'
   */
  { -1.0, 0.0, 0.01, 0.01, 1.0, 1.0, 2.0 },

  /*  Expression: opv
   * Referenced by: '<S101>/Look-Up Table'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0 },
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S8>/Switch3'
                                        */
  1.0,                                 /* Expression: FaultA
                                        * Referenced by: '<S8>/Constant1'
                                        */

  /*  Expression: tv
   * Referenced by: '<S104>/Look-Up Table'
   */
  { -1.0, 0.0, 1.6666666666666666E-002, 1.6666666666666666E-002,
    8.3333333333333329E-002, 8.3333333333333329E-002, 1.0833333333333333E+000 },

  /*  Expression: opv
   * Referenced by: '<S104>/Look-Up Table'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0 },
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S103>/Switch3'
                                        */

  /*  Computed Parameter: P_240
   * Referenced by: '<S103>/Sfunction'
   */
  { 1.0, 1.0 },
  0.0,                                 /* Expression: InitialState
                                        * Referenced by: '<S103>/Sfunction'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S104>/Hit  Crossing'
                                        */
  1.0,                                 /* Expression: BR.com
                                        * Referenced by: '<S106>/C4'
                                        */
  1.0,                                 /* Expression: FaultB
                                        * Referenced by: '<S8>/Constant2'
                                        */

  /*  Expression: tv
   * Referenced by: '<S107>/Look-Up Table'
   */
  { -1.0, 0.0, 1.6666666666666666E-002, 1.6666666666666666E-002,
    8.3333333333333329E-002, 8.3333333333333329E-002, 1.0833333333333333E+000 },

  /*  Expression: opv
   * Referenced by: '<S107>/Look-Up Table'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0 },
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S106>/Switch3'
                                        */

  /*  Computed Parameter: P_248
   * Referenced by: '<S106>/Sfunction'
   */
  { 1.0, 1.0 },
  0.0,                                 /* Expression: InitialState
                                        * Referenced by: '<S106>/Sfunction'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S107>/Hit  Crossing'
                                        */
  1.0,                                 /* Expression: BR.com
                                        * Referenced by: '<S109>/C4'
                                        */
  1.0,                                 /* Expression: FaultC
                                        * Referenced by: '<S8>/Constant3'
                                        */

  /*  Expression: tv
   * Referenced by: '<S110>/Look-Up Table'
   */
  { -1.0, 0.0, 1.6666666666666666E-002, 1.6666666666666666E-002,
    8.3333333333333329E-002, 8.3333333333333329E-002, 1.0833333333333333E+000 },

  /*  Expression: opv
   * Referenced by: '<S110>/Look-Up Table'
   */
  { 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0 },
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S109>/Switch3'
                                        */

  /*  Computed Parameter: P_256
   * Referenced by: '<S109>/Sfunction'
   */
  { 1.0, 1.0 },
  0.0,                                 /* Expression: InitialState
                                        * Referenced by: '<S109>/Sfunction'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S110>/Hit  Crossing'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S101>/Hit  Crossing'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S1>/Switch'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S1>/Switch1'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S1>/Switch2'
                                        */
  1.0,                                 /* Expression: SM.Gain1
                                        * Referenced by: '<S45>/Gain'
                                        */
  5.0526805511456559E-002,             /* Expression: SM.Lad/SM.Lmd
                                        * Referenced by: '<S59>/Lad\Lmd'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S59>/phimd sat.'
                                        */
  1.0E+006,                            /* Expression: SM.phis
                                        * Referenced by: '<S59>/Vs'
                                        */
  1.7284638140237016E-001,             /* Expression: SM.Laq/SM.Lmq
                                        * Referenced by: '<S60>/Laq\Lmq'
                                        */
  5.0526805511456559E-002,             /* Expression: SM.Lad/SM.Lmd
                                        * Referenced by: '<S60>/Lad\Lmd'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S60>/phimq sat.'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S60>/phimd sat.'
                                        */
  1.0E+012,                            /* Expression: SM.phis^2
                                        * Referenced by: '<S60>/Vs'
                                        */
  0.0,                                 /* Expression: SM.phikq2o
                                        * Referenced by: '<S61>/Out1'
                                        */
  0.0,                                 /* Expression: SM.phikq2o
                                        * Referenced by: '<S61>/int'
                                        */

  /*  Expression: [0 2*pi/3 -2*pi/3]
   * Referenced by: '<S72>/Negative-sequence'
   */
  { 0.0, 2.0943951023931953E+000, -2.0943951023931953E+000 },

  /*  Expression: [0 -2*pi/3 2*pi/3]
   * Referenced by: '<S72>/Positive-sequence'
   */
  { 0.0, -2.0943951023931953E+000, 2.0943951023931953E+000 },

  /*  Expression: [0 0 0]
   * Referenced by: '<S72>/Zero-sequence'
   */
  { 0.0, 0.0, 0.0 },

  /*  Expression: [0 2*pi/3 -2*pi/3]
   * Referenced by: '<S73>/Negative-sequence'
   */
  { 0.0, 2.0943951023931953E+000, -2.0943951023931953E+000 },

  /*  Expression: [0 -2*pi/3 2*pi/3]
   * Referenced by: '<S73>/Positive-sequence'
   */
  { 0.0, -2.0943951023931953E+000, 2.0943951023931953E+000 },

  /*  Expression: [0 0 0]
   * Referenced by: '<S73>/Zero-sequence'
   */
  { 0.0, 0.0, 0.0 },
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S70>/harmonic A'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S70>/harmonic B'
                                        */
  3.0,                                 /* Expression: n_Harmo
                                        * Referenced by: '<S72>/Gain2'
                                        */
  -25.0,                               /* Expression: Phase_Harmo
                                        * Referenced by: '<S72>/Phase_Harmo'
                                        */
  1.7453292519943295E-002,             /* Expression: pi/180
                                        * Referenced by: '<S72>/Gain3'
                                        */
  0.0,                                 /* Expression: Seq_Harmo
                                        * Referenced by: '<S72>/Phase_Harmo2'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S72>/valp_nom2'
                                        */
  1.0777754868245984E+004,             /* Expression: Mag_Harmo
                                        * Referenced by: '<S72>/Phase_Harmo1'
                                        */
  0.05,                                /* Expression: Ton_Harmo
                                        * Referenced by: '<S70>/Step'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S70>/Step'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S70>/Step'
                                        */
  3.0,                                 /* Expression: Toff_Harmo
                                        * Referenced by: '<S70>/Step1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S70>/Step1'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S70>/Step1'
                                        */
  2.0,                                 /* Expression: n_Harmo
                                        * Referenced by: '<S73>/Gain2'
                                        */
  35.0,                                /* Expression: Phase_Harmo
                                        * Referenced by: '<S73>/Phase_Harmo'
                                        */
  1.7453292519943295E-002,             /* Expression: pi/180
                                        * Referenced by: '<S73>/Gain3'
                                        */
  2.0,                                 /* Expression: Seq_Harmo
                                        * Referenced by: '<S73>/Phase_Harmo2'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S73>/valp_nom2'
                                        */
  8.0833161511844874E+003,             /* Expression: Mag_Harmo
                                        * Referenced by: '<S73>/Phase_Harmo1'
                                        */
  1.7453292519943295E-002,             /* Expression: pi/180
                                        * Referenced by: '<S71>/Gain4'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S75>/Constant4'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S75>/Constant2'
                                        */
  10.0,                                /* Expression: VariationRate
                                        * Referenced by: '<S75>/valp_nom7'
                                        */
  2.0,                                 /* Expression: 2
                                        * Referenced by: '<S75>/Constant'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S71>/signal timer'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S71>/Amplitude variation'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S71>/Frequency variation'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S71>/phase variation'
                                        */

  /*  Expression: tv
   * Referenced by: '<S74>/Look-Up Table'
   */
  { -1.0, 0.0, 0.1, 0.1, 0.15, 0.15, 0.2, 0.2, 1.2 },

  /*  Expression: opv
   * Referenced by: '<S74>/Look-Up Table'
   */
  { 1.0, 1.0, 1.0, 0.8, 0.8, 1.2, 1.2, 1.0, 1.0 },
  2.0,                                 /* Expression: 2
                                        * Referenced by: '<S71>/Constant'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S71>/Constant1'
                                        */
  3.0,                                 /* Expression: 3
                                        * Referenced by: '<S71>/Constant2'
                                        */
  4.0,                                 /* Expression: 4
                                        * Referenced by: '<S71>/Constant3'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S71>/Constant4'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S71>/Constant5'
                                        */
  4.0,                                 /* Expression: 4
                                        * Referenced by: '<S71>/Constant6'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S75>/Constant1'
                                        */
  2.0,                                 /* Expression: Toff_Variation
                                        * Referenced by: '<S75>/Step1'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S75>/Step1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S75>/Step1'
                                        */
  1.0,                                 /* Expression: VariationType
                                        * Referenced by: '<S71>/valp_nom5'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S75>/Constant3'
                                        */
  0.5,                                 /* Expression: VariationStep
                                        * Referenced by: '<S75>/valp_nom6'
                                        */
  1.0,                                 /* Expression: Ton_Variation
                                        * Referenced by: '<S75>/Step'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S75>/Step'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S75>/Step'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S75>/Integrator'
                                        */
  0.3,                                 /* Expression: VariationMag
                                        * Referenced by: '<S75>/valp_nom8'
                                        */
  2.0,                                 /* Expression: VariationFreq
                                        * Referenced by: '<S75>/valp_nom9'
                                        */
  6.2831853071795862E+000,             /* Expression: 2*pi
                                        * Referenced by: '<S75>/Gain1'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S75>/CONSTANT'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S75>/Memory'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S75>/Switch2'
                                        */
  1.0,                                 /* Expression: VariationEntity
                                        * Referenced by: '<S71>/valp_nom3'
                                        */
  6.2831853071795862E+000,             /* Expression: 2*pi
                                        * Referenced by: '<S71>/Gain2'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S71>/Integrator'
                                        */
  0.5,                                 /* Expression: 0.5
                                        * Referenced by: '<S75>/Switch'
                                        */
  1.4448447792699349E-002,             /* Expression: SM.Lad/SM.Lm
                                        * Referenced by: '<S124>/?????'
                                        */
  1.4448447792699349E-002,             /* Expression: SM.Laq/SM.Lm
                                        * Referenced by: '<S124>/????'
                                        */
  1.0E+014,                            /* Expression: SM.phis.^2
                                        * Referenced by: '<S124>/Constant'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S125>/vqr,vdr'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S125>/vqs,vds'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S126>/vqr,vdr'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S126>/vqs,vds'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S127>/vqr,vdr'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S127>/vqs,vds'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S129>/ira,irb'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S129>/isa,isb'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S130>/ira,irb'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S130>/isa,isb'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S131>/ira,irb'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S131>/isa,isb'
                                        */
  -1.0,                                /* Expression: -1
                                        * Referenced by: '<S123>/Gain'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S132>/sin(beta),cos(beta), sin(th),cos(th)'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S132>/we-wr'
                                        */
  1.0,                                 /* Expression: 1
                                        * Referenced by: '<S132>/we'
                                        */
  3.7699111843077515E+002,             /* Expression: SM.web
                                        * Referenced by: '<S132>/web_psb'
                                        */
  0.0,                                 /* Expression: 0
                                        * Referenced by: '<S133>/sin(thr),cos(thr)'
                                        */

  /*  Expression: [0; 0]
   * Referenced by: '<S133>/Constant'
   */
  { 0.0, 0.0 },
  0,                                   /* Expression: isfinite(SM.Llkq2)
                                        * Referenced by: '<S53>/wref'
                                        */
  1,                                   /* Expression: SM.phis==1e6
                                        * Referenced by: '<S58>/Vs4'
                                        */
  1,                                   /* Expression: isinf(SM.Llkq2)
                                        * Referenced by: '<S58>/Vs5'
                                        */
  1,                                   /* Expression: SM.ctrl<3
                                        * Referenced by: '<S123>/Constant'
                                        */
  0,                                   /* Expression: SM.ctrl==3
                                        * Referenced by: '<S123>/Constant3'
                                        */
  1,                                   /* Expression: SM.ctrl==1
                                        * Referenced by: '<S122>/Constant'
                                        */
  0,                                   /* Expression: SM.ctrl==2
                                        * Referenced by: '<S122>/Constant1'
                                        */
  0,                                   /* Expression: SM.ctrl==3
                                        * Referenced by: '<S122>/Constant2'
                                        */
  1,                                   /* Expression: SM.ctrl==1
                                        * Referenced by: '<S121>/Constant'
                                        */
  0,                                   /* Expression: SM.ctrl==2
                                        * Referenced by: '<S121>/Constant1'
                                        */
  0,                                   /* Expression: SM.ctrl==3
                                        * Referenced by: '<S121>/Constant2'
                                        */
  0,                                   /* Computed Parameter: P_372
                                        * Referenced by: '<S71>/Timed variation'
                                        */

  { 'a', 'a', 'a', 'a' }               /* Computed Parameter: P_372
                                        * Referenced by: '<S71>/Timed variation'
                                        */
};
