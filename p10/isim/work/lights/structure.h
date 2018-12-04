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

#ifndef H_Work_lights_structure_H
#define H_Work_lights_structure_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_lights_structure: public HSim__s6 {
public:

    HSim__s1 SE[4];

    HSim__s1 SA[30];
  char *t292;
  char *t293;
  char *t294;
  char *t295;
  char *t296;
  char *t297;
  char *t298;
  char *t299;
  char *t300;
  char *t301;
    Work_lights_structure(const char * name);
    ~Work_lights_structure();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_lights_structure(const char *name);

#endif
