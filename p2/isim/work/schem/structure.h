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

#ifndef H_Work_schem_structure_H
#define H_Work_schem_structure_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_schem_structure: public HSim__s6 {
public:

    HSim__s1 SE[7];

    HSim__s1 SA[14];
  char *t228;
  char *t229;
  char *t230;
  char *t231;
  char *t232;
  char *t233;
  char *t234;
  char *t235;
    Work_schem_structure(const char * name);
    ~Work_schem_structure();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_schem_structure(const char *name);

#endif
