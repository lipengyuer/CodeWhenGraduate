/*
 * rt_look.h
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

#ifndef RTW_HEADER_rt_look_h_
#define RTW_HEADER_rt_look_h_
#include "rtwtypes.h"
#ifdef DOINTERPSEARCH
#include <float.h>
#endif

#ifndef INTERP
# define INTERP(x,x1,x2,y1,y2)         ( (y1)+(((y2) - (y1))/((x2) - (x1)))*((x)-(x1)) )
#endif

#ifndef ZEROTECHNIQUE
#define ZEROTECHNIQUE

typedef enum {
  NORMAL_INTERP,
  AVERAGE_VALUE,
  MIDDLE_VALUE
} ZeroTechnique;

#endif

extern int_T rt_GetLookupIndex(const real_T *x, int_T xlen, real_T u) ;

#endif                                 /* RTW_HEADER_rt_look_h_ */
