////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: J.40
//  \   \         Application: netgen
//  /   /         Filename: schem_timesim.v
// /___/   /\     Timestamp: Tue Feb 14 13:24:24 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf schem.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers false -w -dir netgen/par -ofmt verilog -sim schem.ncd schem_timesim.v 
// Device	: 3s100ecp132-5 (PRODUCTION 1.27 2007-10-19)
// Input file	: schem.ncd
// Output file	: \\users.uidaho.edu\users\d\dona1865\ECE 241\lab 4\lab_4\netgen\par\schem_timesim.v
// # of Modules	: 1
// Design Name	: schem
// Xilinx        : C:\Xilinx\92i
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23
//     Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module schem (
  lil_a, lil_b, lil_c, lil_d, lil_e, lil_f, lil_g, in_0, in_1, in_2, in_3
);
  output lil_a;
  output lil_b;
  output lil_c;
  output lil_d;
  output lil_e;
  output lil_f;
  output lil_g;
  input in_0;
  input in_1;
  input in_2;
  input in_3;
  wire XLXN_23_0;
  wire XLXN_22_0;
  wire XLXN_21_0;
  wire \XLXI_98/I35 ;
  wire in_3_IBUF_0;
  wire in_1_IBUF_1;
  wire in_2_IBUF_2;
  wire in_0_IBUF_3;
  wire a;
  wire \XLXI_98/I35_pack_1 ;
  wire \in_0/INBUF ;
  wire \in_1/INBUF ;
  wire \in_2/INBUF ;
  wire \in_3/INBUF ;
  wire \lil_a/O ;
  wire \lil_b/O ;
  wire \lil_c/O ;
  wire \lil_d/O ;
  wire \lil_e/O ;
  wire \lil_f/O ;
  wire \lil_g/O ;
  wire XLXN_109;
  wire XLXN_107;
  wire XLXN_108;
  wire XLXN_21;
  wire XLXN_110;
  wire XLXN_22;
  wire f;
  wire XLXN_23;
  wire c;
  wire VCC;
  initial $sdf_annotate("netgen/par/schem_timesim.sdf");
  defparam \a/YUSED .LOC = "SLICE_X12Y11";
  X_BUF \a/YUSED  (
    .I(\XLXI_98/I35_pack_1 ),
    .O(\XLXI_98/I35 )
  );
  defparam \XLXI_98/I_36_88 .INIT = 16'hC40A;
  defparam \XLXI_98/I_36_88 .LOC = "SLICE_X12Y11";
  X_LUT4 \XLXI_98/I_36_88  (
    .ADR0(in_3_IBUF_0),
    .ADR1(in_0_IBUF_3),
    .ADR2(in_2_IBUF_2),
    .ADR3(in_1_IBUF_1),
    .O(\XLXI_98/I35_pack_1 )
  );
  defparam \in_0/PAD .LOC = "PAD94";
  X_IPAD \in_0/PAD  (
    .PAD(in_0)
  );
  defparam in_0_IBUF.LOC = "PAD94";
  X_BUF in_0_IBUF (
    .I(in_0),
    .O(\in_0/INBUF )
  );
  defparam \in_0/IFF/IMUX .LOC = "PAD94";
  X_BUF \in_0/IFF/IMUX  (
    .I(\in_0/INBUF ),
    .O(in_0_IBUF_3)
  );
  defparam \in_1/PAD .LOC = "PAD99";
  X_IPAD \in_1/PAD  (
    .PAD(in_1)
  );
  defparam in_1_IBUF.LOC = "PAD99";
  X_BUF in_1_IBUF (
    .I(in_1),
    .O(\in_1/INBUF )
  );
  defparam \in_1/IFF/IMUX .LOC = "PAD99";
  X_BUF \in_1/IFF/IMUX  (
    .I(\in_1/INBUF ),
    .O(in_1_IBUF_1)
  );
  defparam \in_2/PAD .LOC = "IPAD100";
  X_IPAD \in_2/PAD  (
    .PAD(in_2)
  );
  defparam in_2_IBUF.LOC = "IPAD100";
  X_BUF in_2_IBUF (
    .I(in_2),
    .O(\in_2/INBUF )
  );
  defparam \in_2/IFF/IMUX .LOC = "IPAD100";
  X_BUF \in_2/IFF/IMUX  (
    .I(\in_2/INBUF ),
    .O(in_2_IBUF_2)
  );
  defparam \in_3/PAD .LOC = "IPAD73";
  X_IPAD \in_3/PAD  (
    .PAD(in_3)
  );
  defparam in_3_IBUF.LOC = "IPAD73";
  X_BUF in_3_IBUF (
    .I(in_3),
    .O(\in_3/INBUF )
  );
  defparam \in_3/IFF/IMUX .LOC = "IPAD73";
  X_BUF \in_3/IFF/IMUX  (
    .I(\in_3/INBUF ),
    .O(in_3_IBUF_0)
  );
  defparam \lil_a/PAD .LOC = "PAD48";
  X_OPAD \lil_a/PAD  (
    .PAD(lil_a)
  );
  defparam lil_a_OBUF.LOC = "PAD48";
  X_OBUF lil_a_OBUF (
    .I(\lil_a/O ),
    .O(lil_a)
  );
  defparam \lil_b/PAD .LOC = "PAD39";
  X_OPAD \lil_b/PAD  (
    .PAD(lil_b)
  );
  defparam lil_b_OBUF.LOC = "PAD39";
  X_OBUF lil_b_OBUF (
    .I(\lil_b/O ),
    .O(lil_b)
  );
  defparam \lil_c/PAD .LOC = "PAD53";
  X_OPAD \lil_c/PAD  (
    .PAD(lil_c)
  );
  defparam lil_c_OBUF.LOC = "PAD53";
  X_OBUF lil_c_OBUF (
    .I(\lil_c/O ),
    .O(lil_c)
  );
  defparam \lil_d/PAD .LOC = "PAD59";
  X_OPAD \lil_d/PAD  (
    .PAD(lil_d)
  );
  defparam lil_d_OBUF.LOC = "PAD59";
  X_OBUF lil_d_OBUF (
    .I(\lil_d/O ),
    .O(lil_d)
  );
  defparam \lil_e/PAD .LOC = "PAD56";
  X_OPAD \lil_e/PAD  (
    .PAD(lil_e)
  );
  defparam lil_e_OBUF.LOC = "PAD56";
  X_OBUF lil_e_OBUF (
    .I(\lil_e/O ),
    .O(lil_e)
  );
  defparam \lil_f/PAD .LOC = "PAD49";
  X_OPAD \lil_f/PAD  (
    .PAD(lil_f)
  );
  defparam lil_f_OBUF.LOC = "PAD49";
  X_OBUF lil_f_OBUF (
    .I(\lil_f/O ),
    .O(lil_f)
  );
  defparam \lil_g/PAD .LOC = "PAD87";
  X_OPAD \lil_g/PAD  (
    .PAD(lil_g)
  );
  defparam lil_g_OBUF.LOC = "PAD87";
  X_OBUF lil_g_OBUF (
    .I(\lil_g/O ),
    .O(lil_g)
  );
  defparam XLXI_97.INIT = 16'h0AF7;
  defparam XLXI_97.LOC = "SLICE_X19Y10";
  X_LUT4 XLXI_97 (
    .ADR0(in_1_IBUF_1),
    .ADR1(in_0_IBUF_3),
    .ADR2(in_3_IBUF_0),
    .ADR3(in_2_IBUF_2),
    .O(XLXN_107)
  );
  defparam \XLXN_108/YUSED .LOC = "SLICE_X12Y10";
  X_BUF \XLXN_108/YUSED  (
    .I(XLXN_21),
    .O(XLXN_21_0)
  );
  defparam XLXI_9.INIT = 16'h4040;
  defparam XLXI_9.LOC = "SLICE_X12Y10";
  X_LUT4 XLXI_9 (
    .ADR0(in_3_IBUF_0),
    .ADR1(in_0_IBUF_3),
    .ADR2(in_2_IBUF_2),
    .ADR3(VCC),
    .O(XLXN_21)
  );
  defparam \XLXN_110/YUSED .LOC = "SLICE_X2Y10";
  X_BUF \XLXN_110/YUSED  (
    .I(XLXN_22),
    .O(XLXN_22_0)
  );
  defparam XLXI_10.INIT = 16'h0055;
  defparam XLXI_10.LOC = "SLICE_X2Y10";
  X_LUT4 XLXI_10 (
    .ADR0(in_0_IBUF_3),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(in_2_IBUF_2),
    .O(XLXN_22)
  );
  defparam \f/YUSED .LOC = "SLICE_X13Y10";
  X_BUF \f/YUSED  (
    .I(XLXN_23),
    .O(XLXN_23_0)
  );
  defparam XLXI_11.INIT = 16'h0A0A;
  defparam XLXI_11.LOC = "SLICE_X13Y10";
  X_LUT4 XLXI_11 (
    .ADR0(in_1_IBUF_1),
    .ADR1(VCC),
    .ADR2(in_0_IBUF_3),
    .ADR3(VCC),
    .O(XLXN_23)
  );
  defparam XLXI_92.INIT = 16'h3BEF;
  defparam XLXI_92.LOC = "SLICE_X18Y10";
  X_LUT4 XLXI_92 (
    .ADR0(in_0_IBUF_3),
    .ADR1(in_2_IBUF_2),
    .ADR2(in_1_IBUF_1),
    .ADR3(in_3_IBUF_0),
    .O(c)
  );
  defparam \XLXI_98/I_36_87 .INIT = 16'hFFFE;
  defparam \XLXI_98/I_36_87 .LOC = "SLICE_X12Y11";
  X_LUT4 \XLXI_98/I_36_87  (
    .ADR0(XLXN_23_0),
    .ADR1(XLXN_22_0),
    .ADR2(\XLXI_98/I35 ),
    .ADR3(XLXN_21_0),
    .O(a)
  );
  defparam XLXI_96.INIT = 16'hF2B3;
  defparam XLXI_96.LOC = "SLICE_X19Y10";
  X_LUT4 XLXI_96 (
    .ADR0(in_1_IBUF_1),
    .ADR1(in_0_IBUF_3),
    .ADR2(in_3_IBUF_0),
    .ADR3(in_2_IBUF_2),
    .O(XLXN_109)
  );
  defparam XLXI_95.INIT = 16'h3DE3;
  defparam XLXI_95.LOC = "SLICE_X12Y10";
  X_LUT4 XLXI_95 (
    .ADR0(in_3_IBUF_0),
    .ADR1(in_0_IBUF_3),
    .ADR2(in_2_IBUF_2),
    .ADR3(in_1_IBUF_1),
    .O(XLXN_108)
  );
  defparam XLXI_94.INIT = 16'hDBDF;
  defparam XLXI_94.LOC = "SLICE_X2Y10";
  X_LUT4 XLXI_94 (
    .ADR0(in_0_IBUF_3),
    .ADR1(in_3_IBUF_0),
    .ADR2(in_1_IBUF_1),
    .ADR3(in_2_IBUF_2),
    .O(XLXN_110)
  );
  defparam XLXI_93.INIT = 16'hBF4D;
  defparam XLXI_93.LOC = "SLICE_X13Y10";
  X_LUT4 XLXI_93 (
    .ADR0(in_1_IBUF_1),
    .ADR1(in_2_IBUF_2),
    .ADR2(in_0_IBUF_3),
    .ADR3(in_3_IBUF_0),
    .O(f)
  );
  defparam \lil_a/OUTPUT/OFF/OMUX .LOC = "PAD48";
  X_INV \lil_a/OUTPUT/OFF/OMUX  (
    .I(a),
    .O(\lil_a/O )
  );
  defparam \lil_b/OUTPUT/OFF/OMUX .LOC = "PAD39";
  X_INV \lil_b/OUTPUT/OFF/OMUX  (
    .I(XLXN_107),
    .O(\lil_b/O )
  );
  defparam \lil_c/OUTPUT/OFF/OMUX .LOC = "PAD53";
  X_INV \lil_c/OUTPUT/OFF/OMUX  (
    .I(c),
    .O(\lil_c/O )
  );
  defparam \lil_d/OUTPUT/OFF/OMUX .LOC = "PAD59";
  X_INV \lil_d/OUTPUT/OFF/OMUX  (
    .I(XLXN_108),
    .O(\lil_d/O )
  );
  defparam \lil_e/OUTPUT/OFF/OMUX .LOC = "PAD56";
  X_INV \lil_e/OUTPUT/OFF/OMUX  (
    .I(XLXN_109),
    .O(\lil_e/O )
  );
  defparam \lil_f/OUTPUT/OFF/OMUX .LOC = "PAD49";
  X_INV \lil_f/OUTPUT/OFF/OMUX  (
    .I(f),
    .O(\lil_f/O )
  );
  defparam \lil_g/OUTPUT/OFF/OMUX .LOC = "PAD87";
  X_INV \lil_g/OUTPUT/OFF/OMUX  (
    .I(XLXN_110),
    .O(\lil_g/O )
  );
  X_ONE NlwBlock_schem_VCC (
    .O(VCC)
  );
endmodule


`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

