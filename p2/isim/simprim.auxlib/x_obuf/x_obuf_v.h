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

#ifndef H_Simprim_x_obuf_x_obuf_v_H
#define H_Simprim_x_obuf_x_obuf_v_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Simprim_x_obuf_x_obuf_v: public HSim__s6 {
public:

  char *t170;
    HSim__s4 PE[7];
    HSim__s1 SE[2];

    class gPE_3_ : public HSimGenValCtor
    {
    public: 
        gPE_3_();
    };

    class gPE_4_ : public HSimGenValCtor
    {
    public: 
        gPE_4_();
    };

    class gPE_5_ : public HSimGenValCtor
    {
    public: 
        gPE_5_();
    };

    HSim__s1 SA[2];
  char t171;
    Simprim_x_obuf_x_obuf_v(const char * name);
    ~Simprim_x_obuf_x_obuf_v();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};

class Simprim_x_obuf_x_obuf_v_wiredelay: public HSim__s6 {
public:
  Simprim_x_obuf_x_obuf_v *Arch;
  Simprim_x_obuf_x_obuf_v_wiredelay(const char* name,
    Simprim_x_obuf_x_obuf_v *arch,
    HSimConfigDecl* cfg);
    void constructObject();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createSimprim_x_obuf_x_obuf_v(const char *name);

#endif
