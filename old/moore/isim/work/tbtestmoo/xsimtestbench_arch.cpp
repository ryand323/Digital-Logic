static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif
#include "C:/Xilinx/92i/vhdl/hdp/nt/ieee/std_logic_1164/std_logic_1164.h"
#include "C:/Xilinx/92i/vhdl/hdp/nt/std/textio/textio.h"
#include "C:/Xilinx/92i/vhdl/hdp/nt/ieee/vital_timing/vital_timing.h"
#include "C:/Xilinx/92i/vhdl/hdp/nt/ieee/vital_primitives/vital_primitives.h"
#include "C:/Xilinx/92i/vhdl/hdp/nt/ieee/std_logic_arith/std_logic_arith.h"
#include "isim/simprim.auxlib/vpackage/vpackage.h"
#include "isim/simprim.auxlib/vcomponents/vcomponents.h"
#include "C:/Xilinx/92i/vhdl/hdp/nt/ieee/numeric_std/numeric_std.h"
#include "C:/Xilinx/92i/vhdl/hdp/nt/ieee/std_logic_textio/std_logic_textio.h"
#include "C:/Xilinx/92i/vhdl/hdp/nt/ieee/std_logic_unsigned/std_logic_unsigned.h"
#include "isim/unisim.auxlib/vcomponents/vcomponents.h"

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VhdlDesignEntity) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).registerFuseLibList("unisims_ver");

        HSim__s6 * topvh = 0;
        extern HSim__s6 * createWork_tbtestmoo_testbench_arch(const char*);
        topvh = createWork_tbtestmoo_testbench_arch("tbtestmoo");
        topvh->constructPorts();
        topvh->checkTopLevelPortsConstrainted();
        topvh->vhdlArchImplement();
        topvh->architectureInstantiate(cfgvh);
        addChild(topvh);
        return cfgvh;
}
};

main(int argc, char **argv) {
  HSimDesign::initDesign();
  globalKernel->getOptions(argc,argv);
  HSim__s6 * _top_i = 0;
  try {
    IeeeStd_logic_1164=new Ieee_std_logic_1164("std_logic_1164");
    StdTextio=new Std_textio("TEXTIO");
    IeeeVital_timing=new Ieee_vital_timing("VITAL_Timing");
    IeeeVital_primitives=new Ieee_vital_primitives("VITAL_Primitives");
    IeeeStd_logic_arith=new Ieee_std_logic_arith("std_logic_arith");
    SimprimVpackage=new Simprim_vpackage("VPACKAGE");
    SimprimVcomponents=new Simprim_vcomponents("VCOMPONENTS");
    IeeeNumeric_std=new Ieee_numeric_std("NUMERIC_STD");
    IeeeStd_logic_textio=new Ieee_std_logic_textio("STD_LOGIC_TEXTIO");
    IeeeStd_logic_unsigned=new Ieee_std_logic_unsigned("STD_LOGIC_UNSIGNED");
    UnisimVcomponents=new Unisim_vcomponents("VCOMPONENTS");
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
