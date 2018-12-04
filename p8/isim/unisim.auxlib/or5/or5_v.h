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

#ifndef H_Unisim_or5_or5_v_H
#define H_Unisim_or5_or5_v_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Unisim_or5_or5_v: public HSim__s6 {
public:

    HSim__s1 SE[6];

  char t16;
  char t17;
  char t18;
  char t19;
    Unisim_or5_or5_v(const char * name);
    ~Unisim_or5_or5_v();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createUnisim_or5_or5_v(const char *name);

#endif
