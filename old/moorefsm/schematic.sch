VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_6
        SIGNAL XLXN_12
        SIGNAL XLXN_15
        SIGNAL XLXN_50
        SIGNAL XLXN_51
        SIGNAL CLK
        SIGNAL Reset
        SIGNAL X
        SIGNAL XLXN_52
        SIGNAL XLXN_53
        SIGNAL XLXN_54
        SIGNAL XLXN_67
        SIGNAL XLXN_55
        SIGNAL XLXN_69
        SIGNAL XLXN_70
        SIGNAL XLXN_56
        SIGNAL XLXN_58
        SIGNAL XLXN_59
        SIGNAL XLXN_60
        SIGNAL XLXN_76
        SIGNAL XLXN_77
        SIGNAL Y
        SIGNAL XLXN_79
        SIGNAL XLXN_80
        PORT Input CLK
        PORT Input Reset
        PORT Input X
        PORT Output Y
        BEGIN BLOCKDEF fdr
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF and3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fdr
            PIN C CLK
            PIN D XLXN_58
            PIN R Reset
            PIN Q XLXN_79
        END BLOCK
        BEGIN BLOCK XLXI_2 fdr
            PIN C CLK
            PIN D XLXN_53
            PIN R Reset
            PIN Q XLXN_80
        END BLOCK
        BEGIN BLOCK XLXI_23 inv
            PIN I X
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_24 inv
            PIN I XLXN_79
            PIN O XLXN_54
        END BLOCK
        BEGIN BLOCK XLXI_25 inv
            PIN I XLXN_80
            PIN O XLXN_53
        END BLOCK
        BEGIN BLOCK XLXI_27 or2
            PIN I0 XLXN_60
            PIN I1 XLXN_59
            PIN O XLXN_58
        END BLOCK
        BEGIN BLOCK XLXI_29 and3
            PIN I0 XLXN_53
            PIN I1 XLXN_79
            PIN I2 XLXN_52
            PIN O XLXN_60
        END BLOCK
        BEGIN BLOCK XLXI_28 and3
            PIN I0 XLXN_80
            PIN I1 XLXN_54
            PIN I2 X
            PIN O XLXN_59
        END BLOCK
        BEGIN BLOCK XLXI_39 and2
            PIN I0 XLXN_80
            PIN I1 XLXN_79
            PIN O Y
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 2288 976 R0
        INSTANCE XLXI_2 2272 1376 R0
        BEGIN BRANCH CLK
            WIRE 2208 496 2208 848
            WIRE 2208 848 2208 1248
            WIRE 2208 1248 2272 1248
            WIRE 2208 848 2288 848
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 2240 944 2288 944
            WIRE 2240 944 2240 1344
            WIRE 2240 1344 2240 1568
            WIRE 2240 1344 2272 1344
        END BRANCH
        BEGIN BRANCH X
            WIRE 496 240 496 480
            WIRE 496 480 496 2240
            WIRE 496 2240 496 2432
            WIRE 496 2240 608 2240
            WIRE 496 480 1616 480
            WIRE 608 2112 608 2240
        END BRANCH
        BEGIN DISPLAY 484 188 TEXT X
            FONT 40 "Arial"
        END DISPLAY
        BEGIN DISPLAY 884 204 TEXT S1
            FONT 40 "Arial"
        END DISPLAY
        BEGIN DISPLAY 1252 188 TEXT S0
            FONT 40 "Arial"
        END DISPLAY
        INSTANCE XLXI_24 1008 2176 R270
        INSTANCE XLXI_25 1392 1952 R270
        BEGIN BRANCH XLXN_52
            WIRE 608 256 608 752
            WIRE 608 752 1616 752
            WIRE 608 752 608 1888
        END BRANCH
        BEGIN BRANCH XLXN_53
            WIRE 1360 256 1360 880
            WIRE 1360 880 1360 1232
            WIRE 1360 1232 1360 1728
            WIRE 1360 1232 1808 1232
            WIRE 1360 880 1616 880
            WIRE 1808 1120 1808 1232
            WIRE 1808 1120 2272 1120
        END BRANCH
        BEGIN BRANCH XLXN_54
            WIRE 976 256 976 544
            WIRE 976 544 976 1952
            WIRE 976 544 1616 544
        END BRANCH
        BEGIN BRANCH XLXN_58
            WIRE 2192 720 2288 720
        END BRANCH
        INSTANCE XLXI_27 1936 816 R0
        BEGIN BRANCH XLXN_59
            WIRE 1872 544 1920 544
            WIRE 1920 544 1920 688
            WIRE 1920 688 1936 688
        END BRANCH
        INSTANCE XLXI_29 1616 944 R0
        INSTANCE XLXI_28 1616 672 R0
        BEGIN BRANCH XLXN_60
            WIRE 1872 816 1904 816
            WIRE 1904 752 1904 816
            WIRE 1904 752 1936 752
        END BRANCH
        IOMARKER 2208 496 CLK R270 28
        IOMARKER 2240 1568 Reset R90 28
        IOMARKER 496 2432 X R90 28
        INSTANCE XLXI_23 640 2112 R270
        INSTANCE XLXI_39 1728 2512 R0
        BEGIN BRANCH Y
            WIRE 1984 2416 2016 2416
        END BRANCH
        IOMARKER 2016 2416 Y R0 28
        BEGIN BRANCH XLXN_79
            WIRE 880 256 880 816
            WIRE 880 816 880 2176
            WIRE 880 2176 976 2176
            WIRE 976 2176 1600 2176
            WIRE 1600 2176 2832 2176
            WIRE 1600 2176 1600 2384
            WIRE 1600 2384 1728 2384
            WIRE 880 816 1616 816
            WIRE 2672 720 2832 720
            WIRE 2832 720 2832 2176
            WIRE 2832 704 2832 720
        END BRANCH
        BEGIN BRANCH XLXN_80
            WIRE 1264 240 1264 608
            WIRE 1264 608 1264 1952
            WIRE 1264 1952 1360 1952
            WIRE 1360 1952 1424 1952
            WIRE 1424 1952 2720 1952
            WIRE 1424 1952 1424 2448
            WIRE 1424 2448 1728 2448
            WIRE 1264 608 1616 608
            WIRE 2656 1120 2720 1120
            WIRE 2720 1120 2720 1952
            WIRE 2720 1120 2768 1120
            WIRE 2768 1072 2768 1120
        END BRANCH
    END SHEET
END SCHEMATIC
