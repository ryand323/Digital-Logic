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

#ifndef H_Work_ccounter_structure_H
#define H_Work_ccounter_structure_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_ccounter_structure: public HSim__s6 {
public:

    HSim__s1 SE[4];

    HSim__s1 SA[25];
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
    Work_ccounter_structure(const char * name);
    ~Work_ccounter_structure();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_ccounter_structure(const char *name);

#endif
