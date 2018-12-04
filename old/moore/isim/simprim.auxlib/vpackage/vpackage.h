////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Simprim_vpackage_H
#define H_Simprim_vpackage_H

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


#include "std/textio/textio.h"
#include "ieee/vital_primitives/vital_primitives.h"
#include "ieee/vital_timing/vital_timing.h"
#include "ieee/std_logic_1164/std_logic_1164.h"

class Simprim_vpackage: public HSim__s6 {
public:
  HSimEnumType Simprimerrortype;
  HSimArrayType Simprimerrorseveritytypebase;
  HSimArrayType Simprimerrorseveritytype;
  HSimEnumType Simprimglitchkindtype;
  HSimRecordType Simprimglitchdatatype;
  HSimArrayType Logiccvttabletypebase;
  HSimArrayType Logiccvttabletype;
  HSimArrayType Std_logic_vector1;
  HSimArrayType Std_logic_vector2sub1;
  HSimArrayType Std_logic_vector2;
  HSimArrayType Std_logic_vector3sub2;
  HSimArrayType Std_logic_vector3sub1;
  HSimArrayType Std_logic_vector3;
  HSimArrayType Std_logic_vector4sub3;
  HSimArrayType Std_logic_vector4sub2;
  HSimArrayType Std_logic_vector4sub1;
  HSimArrayType Std_logic_vector4;
  HSimEnumType Memory_collision_type;
  char *t0;
  char *t1;
  char *t2;
  char *t3;
  char *t4;
  char *t5;
  char *t6;
  char *t7;
  char *t8;
  char *t9;
  char *t10;
  char *t11;
  char *t12;
  char *t13;
  char *t14;
  char *t15;
  char *t16;
  char *t17;
  char *t18;
  char *t19;
  char *t20;
  char *t21;
  char *t22;
  char *t23;
  char *t24;
  char *t25;
  char *t26;
  char *t27;
  char *t28;
  char *t29;
  char *t30;
  char *t31;
  char *t32;
  char *t33;
  char *t34;
  char *t35;
  char *t36;
HSim__s4 E2B;
HSim__s4 Eeh;
  char *t37;
  char *t38;
  char *t39;
  char *t40;
  char *t41;
  char *t42;
  char *t43;
  char *t44;
  char *t45;
  char *t46;
  char *t47;
  char *t48;
  char *t49;
  char *t50;
  char *t51;
  char *t52;
  char *t53;
  char *t54;
  char *t55;
  char *t56;
  char *t57;
  char *t58;
  char *t59;
  char *t60;
  char *t61;
  char *t62;
  char *t63;
  char *t64;
  char *t65;
  char *t66;
  char *t67;
  char *t68;
  char *t69;
  char *t70;
  char *t71;
  char *t72;
  char *t73;
HSim__s4 Ert;
HSim__s4 EU2;
HSim__s4 EX0;
HSim__s4 E101;
HSim__s4 E14w;
HSim__s4 E1fg;
HSim__s4 E1fk;
HSimStringVar E1fz;
HSimStringVar E1fG;
HSimStringVar E1fN;
HSimStringVar E1fV;
HSimStringVar E1g2;
/* subprogram name HEX_TO_SLV16 */
char *G1gh(HSimConstraints *reConstr, const char *E1gd);
/* subprogram name HEX_TO_SLV32 */
char *G1gt(HSimConstraints *reConstr, const char *E1gq);
/* subprogram name DECODE_ADDR4 */
int G1gD(const char *E1gA);
/* subprogram name DECODE_ADDR5 */
int G1gN(const char *E1gK);
/* subprogram name SLV_TO_INT */
int G1gV(const char *E1gS, const HSimConstraints *constrE1gS);
/* subprogram name ADDR_IS_VALID */
char G1h1(const char *E1gY, const HSimConstraints *constrE1gY);
/* subprogram name SLV_TO_STR */
char *G1h7(HSimConstraints *reConstr, const char *E1h4, const HSimConstraints *constrE1h4);
/* subprogram name SimprimMinimum */
int64 G1hf(const int64 E1ha, const int64 E1hc);
/* subprogram name SimprimMaximum */
int64 G1hp(const int64 E1hi, const int64 E1hk);
/* subprogram name SimprimMessage */
char *G1hv(HSimConstraints *reConstr, const char E1hs);
/* subprogram name SLV_TO_HEX */
char *G1hE(HSimConstraints *reConstr, const char *E1hy, const HSimConstraints *constrE1hy, const int E1hB);
/* subprogram name SET_MEM_TO_X */
void G1hL(HSim__s7 *process, const char *E1hH, const HSimConstraints *constrE1hH,  char *V1hJ, const HSimConstraints *constrV1hJ);
/* subprogram name ADDR_OVERLAP */
void G1ic(HSim__s7 *process, const int E1hP, const int E1hR, const int E1hT, const int E1hV,  char& V1hY,  int& V1i0,  int& V1i2,  int& V1i4,  int& V1i6,  int& V1i8,  int& V1ia);
/* subprogram name COLLISION */
void G1ix(HSim__s7 *process, const char *E1if, const HSimConstraints *constrE1if, const int E1ih, const int E1ij, const char *E1im, const HSimConstraints *constrE1im, const char *E1ip, const HSimConstraints *constrE1ip, const char *E1ir, const HSimConstraints *constrE1ir, const char *E1it, const HSimConstraints *constrE1it,  char *V1iv, const HSimConstraints *constrV1iv);
/* subprogram name SimprimError */
void G1iG(HSim__s7 *process, const char *E1iA, const HSimConstraints *constrE1iA, const char E1iC, const char *E1iE, const HSimConstraints *constrE1iE);
/* subprogram name SimprimReportGlitch */
void G1j3(HSim__s7 *process, const char *E1iJ, const HSimConstraints *constrE1iJ, const char *E1iL, const HSimConstraints *constrE1iL, const int64 E1iN, const char E1iQ, const int64 E1iS, const char E1iU, const int E1iX, const char E1iZ, const char E1j1);
/* subprogram name SimprimGlitch */
void G1js(HSim__s7 *process,  char& V1j6,  HSim__s1 *S1j8, int ssindexS1j8, int offsetS1j8, HSim__s2 * driver_S1j8,  char *V1jb, const char *E1jd, const HSimConstraints *constrE1jd, const char E1jf, const char E1jh, const int64 E1jk, const char E1jn, const char E1jq);
/* subprogram name GenericValueCheckMessage */
void G1jY(HSim__s7 *process, const char *E1jw, const HSimConstraints *constrE1jw, const char *E1jz, const HSimConstraints *constrE1jz, const char *E1jC, const HSimConstraints *constrE1jC, const char *E1jF, const HSimConstraints *constrE1jF, const char *E1jI, const HSimConstraints *constrE1jI, const char *E1jL, const HSimConstraints *constrE1jL, const char *E1jP, const HSimConstraints *constrE1jP, const char *E1jS, const HSimConstraints *constrE1jS, const char *E1jU, const HSimConstraints *constrE1jU, const char E1jW);
/* subprogram name GenericValueCheckMessage */
void G1kt(HSim__s7 *process, const char *E1k2, const HSimConstraints *constrE1k2, const char *E1k5, const HSimConstraints *constrE1k5, const char *E1k8, const HSimConstraints *constrE1k8, const char *E1kb, const HSimConstraints *constrE1kb, const int E1kd, const char *E1kg, const HSimConstraints *constrE1kg, const char *E1kj, const HSimConstraints *constrE1kj, const int E1km, const char *E1kp, const HSimConstraints *constrE1kp, const char E1kr);
/* subprogram name GenericValueCheckMessage */
void G1kY(HSim__s7 *process, const char *E1kx, const HSimConstraints *constrE1kx, const char *E1kA, const HSimConstraints *constrE1kA, const char *E1kD, const HSimConstraints *constrE1kD, const char *E1kG, const HSimConstraints *constrE1kG, const char E1kI, const char *E1kL, const HSimConstraints *constrE1kL, const char *E1kP, const HSimConstraints *constrE1kP, const char *E1kS, const HSimConstraints *constrE1kS, const char *E1kU, const HSimConstraints *constrE1kU, const char E1kW);
/* subprogram name GenericValueCheckMessage */
void G1mu(HSim__s7 *process, const char *E1m2, const HSimConstraints *constrE1m2, const char *E1m5, const HSimConstraints *constrE1m5, const char *E1m8, const HSimConstraints *constrE1m8, const char *E1mb, const HSimConstraints *constrE1mb, const int E1md, const char *E1mg, const HSimConstraints *constrE1mg, const char *E1mj, const HSimConstraints *constrE1mj, const char *E1mn, const HSimConstraints *constrE1mn, const char *E1mq, const HSimConstraints *constrE1mq, const char E1ms);
/* subprogram name GenericValueCheckMessage */
void G1n0(HSim__s7 *process, const char *E1my, const HSimConstraints *constrE1my, const char *E1mB, const HSimConstraints *constrE1mB, const char *E1mE, const HSimConstraints *constrE1mE, const char *E1mH, const HSimConstraints *constrE1mH, const double E1mK, const char *E1mN, const HSimConstraints *constrE1mN, const char *E1mR, const HSimConstraints *constrE1mR, const char *E1mU, const HSimConstraints *constrE1mU, const char *E1mW, const HSimConstraints *constrE1mW, const char E1mY);
/* subprogram name Memory_Collision_Msg */
void G1nm(HSim__s7 *process, const char *E1n4, const HSimConstraints *constrE1n4, const char *E1n7, const HSimConstraints *constrE1n7, const char *E1na, const HSimConstraints *constrE1na, const char E1nd, const char *E1nf, const HSimConstraints *constrE1nf, const char *E1nh, const HSimConstraints *constrE1nh, const char E1nj);
/* subprogram name detect_resolution */
void G1ns(HSim__s7 *process, const char *E1nq, const HSimConstraints *constrE1nq);

public:

public:
  Simprim_vpackage(const HSimString &name);
  ~Simprim_vpackage();
};

extern Simprim_vpackage *SimprimVpackage;

#endif
