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

#ifndef H_Work_alu_structure_H
#define H_Work_alu_structure_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_alu_structure: public HSim__s6 {
public:

    HSim__s1 SE[4];

    HSim__s1 SA[35];
  char *t236;
  char *t237;
  char *t238;
  char *t239;
  char *t240;
  char *t241;
  char *t242;
  char *t243;
    Work_alu_structure(const char * name);
    ~Work_alu_structure();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_alu_structure(const char *name);

#endif
