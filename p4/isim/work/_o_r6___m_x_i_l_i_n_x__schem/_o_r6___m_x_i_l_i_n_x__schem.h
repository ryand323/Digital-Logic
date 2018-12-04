////////////////////////////////////////////////////////////////////////////////
//   ____  ____  
//  /   /\/   /  
// /___/  \  /   
// \   \   \/    
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /___/   /\   
// \   \  /  \  
//  \___\/\___\ 
////////////////////////////////////////////////////////////////////////////////

#ifndef H_workM_o_r6___m_x_i_l_i_n_x__schem_H
#define H_workM_o_r6___m_x_i_l_i_n_x__schem_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class workM_o_r6___m_x_i_l_i_n_x__schem : public HSim__s5{
public: 
    workM_o_r6___m_x_i_l_i_n_x__schem(const char *instname);
    ~workM_o_r6___m_x_i_l_i_n_x__schem();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    HSim__s1 us[10];
};

#endif
