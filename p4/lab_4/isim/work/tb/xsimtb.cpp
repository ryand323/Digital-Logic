static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


static HSim__s6* IF0(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkMtb(const char*);
    HSim__s6 *blk = createworkMtb(label); 
    return blk;
}


static HSim__s6* IF1(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___b_u_f(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___b_u_f(label); 
    return blk;
}


static HSim__s6* IF2(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___i_n_v(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___i_n_v(label); 
    return blk;
}


static HSim__s6* IF3(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___i_p_a_d(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___i_p_a_d(label); 
    return blk;
}


static HSim__s6* IF4(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___l_u_t4(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___l_u_t4(label); 
    return blk;
}


static HSim__s6* IF5(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___o_b_u_f(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___o_b_u_f(label); 
    return blk;
}


static HSim__s6* IF6(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___o_n_e(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___o_n_e(label); 
    return blk;
}


static HSim__s6* IF7(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___o_p_a_d(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___o_p_a_d(label); 
    return blk;
}


static HSim__s6* IF8(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___o_p_a_d(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___o_p_a_d(label); 
    return blk;
}


static HSim__s6* IF9(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___o_n_e(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___o_n_e(label); 
    return blk;
}


static HSim__s6* IF10(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___o_b_u_f(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___o_b_u_f(label); 
    return blk;
}


static HSim__s6* IF11(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___l_u_t4(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___l_u_t4(label); 
    return blk;
}


static HSim__s6* IF12(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___i_p_a_d(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___i_p_a_d(label); 
    return blk;
}


static HSim__s6* IF13(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___i_n_v(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___i_n_v(label); 
    return blk;
}


static HSim__s6* IF14(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createsimprim_ver_auxlibM_x___b_u_f(const char*);
    HSim__s6 *blk = createsimprim_ver_auxlibM_x___b_u_f(label); 
    return blk;
}


static HSim__s6* IF15(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkMschem(const char*);
    HSim__s6 *blk = createworkMschem(label); 
    return blk;
}


static HSim__s6* IF16(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    extern HSim__s6 * createworkMglbl(const char*);
    HSim__s6 *blk = createworkMglbl(label); 
    return blk;
}

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VerilogModule) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).registerFuseLibList("simprims_ver;unisims_ver;xilinxcorelib_ver");

        (*cfgvh).addVlogModule("work","tb", (HSimInstFactoryPtr)IF0);
        (*cfgvh).addVlogModule("simprims_ver","X_BUF", (HSimInstFactoryPtr)IF1);
        (*cfgvh).addVlogModule("simprims_ver","X_INV", (HSimInstFactoryPtr)IF2);
        (*cfgvh).addVlogModule("simprims_ver","X_IPAD", (HSimInstFactoryPtr)IF3);
        (*cfgvh).addVlogModule("simprims_ver","X_LUT4", (HSimInstFactoryPtr)IF4);
        (*cfgvh).addVlogModule("simprims_ver","X_OBUF", (HSimInstFactoryPtr)IF5);
        (*cfgvh).addVlogModule("simprims_ver","X_ONE", (HSimInstFactoryPtr)IF6);
        (*cfgvh).addVlogModule("simprims_ver","X_OPAD", (HSimInstFactoryPtr)IF7);
        (*cfgvh).addVlogModule("simprims_ver","X_OPAD", (HSimInstFactoryPtr)IF8);
        (*cfgvh).addVlogModule("simprims_ver","X_ONE", (HSimInstFactoryPtr)IF9);
        (*cfgvh).addVlogModule("simprims_ver","X_OBUF", (HSimInstFactoryPtr)IF10);
        (*cfgvh).addVlogModule("simprims_ver","X_LUT4", (HSimInstFactoryPtr)IF11);
        (*cfgvh).addVlogModule("simprims_ver","X_IPAD", (HSimInstFactoryPtr)IF12);
        (*cfgvh).addVlogModule("simprims_ver","X_INV", (HSimInstFactoryPtr)IF13);
        (*cfgvh).addVlogModule("simprims_ver","X_BUF", (HSimInstFactoryPtr)IF14);
        (*cfgvh).addVlogModule("work","schem", (HSimInstFactoryPtr)IF15);
        (*cfgvh).addVlogModule("work","glbl", (HSimInstFactoryPtr)IF16);
        HSim__s5 * topvl = 0;
        extern HSim__s6 * createworkMtb(const char*);
        topvl = (HSim__s5*)createworkMtb("tb");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        extern HSim__s6 * createworkMglbl(const char*);
        topvl = (HSim__s5*)createworkMglbl("glbl");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        return cfgvh;
}
};

main(int argc, char **argv) {
  HSimDesign::initDesign();
  globalKernel->getOptions(argc,argv);
  HSim__s6 * _top_i = 0;
  try {
    HSimConfigDecl *cfg;
 _top_i = new _top();
  cfg =  _top_i->topModuleInstantiate();
    return globalKernel->runTcl(cfg, _top_i, "_top", argc, argv);
  }
  catch (HSimError& msg){
    try {
      globalKernel->error(msg.ErrMsg);
      return 1;
    }
    catch(...) {}
      return 1;
  }
  catch (...){
    globalKernel->fatalError();
    return 1;
  }
}
