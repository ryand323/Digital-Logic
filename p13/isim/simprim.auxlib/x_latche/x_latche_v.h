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

#ifndef H_Simprim_x_latche_x_latche_v_H
#define H_Simprim_x_latche_x_latche_v_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Simprim_x_latche_x_latche_v: public HSim__s6 {
public:

  char *t205;
    HSim__s4 PE[40];
    HSim__s1 SE[6];

    class gPE_5_ : public HSimGenValCtor
    {
    public: 
        gPE_5_();
    };

    class gPE_6_ : public HSimGenValCtor
    {
    public: 
        gPE_6_();
    };

    class gPE_7_ : public HSimGenValCtor
    {
    public: 
        gPE_7_();
    };

    class gPE_8_ : public HSimGenValCtor
    {
    public: 
        gPE_8_();
    };

    class gPE_9_ : public HSimGenValCtor
    {
    public: 
        gPE_9_();
    };

    class gPE_10_ : public HSimGenValCtor
    {
    public: 
        gPE_10_();
    };

    class gPE_11_ : public HSimGenValCtor
    {
    public: 
        gPE_11_();
    };

    class gPE_12_ : public HSimGenValCtor
    {
    public: 
        gPE_12_();
    };

    class gPE_13_ : public HSimGenValCtor
    {
    public: 
        gPE_13_();
    };

    class gPE_14_ : public HSimGenValCtor
    {
    public: 
        gPE_14_();
    };

    class gPE_15_ : public HSimGenValCtor
    {
    public: 
        gPE_15_();
    };

    class gPE_16_ : public HSimGenValCtor
    {
    public: 
        gPE_16_();
    };

    HSim__s1 SA[17];
  char t206;
    Simprim_x_latche_x_latche_v(const char * name);
    ~Simprim_x_latche_x_latche_v();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};

class Simprim_x_latche_x_latche_v_wiredelay: public HSim__s6 {
public:
  Simprim_x_latche_x_latche_v *Arch;
  Simprim_x_latche_x_latche_v_wiredelay(const char* name,
    Simprim_x_latche_x_latche_v *arch,
    HSimConfigDecl* cfg);
    void constructObject();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};

class Simprim_x_latche_x_latche_v_signaldelay: public HSim__s6 {
public:
  Simprim_x_latche_x_latche_v *Arch;
  Simprim_x_latche_x_latche_v_signaldelay(const char* name,
    Simprim_x_latche_x_latche_v *arch,
    HSimConfigDecl* cfg);
    void constructObject();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createSimprim_x_latche_x_latche_v(const char *name);

#endif
