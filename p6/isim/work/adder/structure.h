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

#ifndef H_Work_adder_structure_H
#define H_Work_adder_structure_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_adder_structure: public HSim__s6 {
public:

    HSim__s1 SE[7];

    HSim__s1 SA[15];
  char *t0;
  char *t1;
  char *t2;
  char *t3;
  char *t4;
  char *t5;
  char *t6;
  char *t7;
    Work_adder_structure(const char * name);
    ~Work_adder_structure();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_adder_structure(const char *name);

#endif
