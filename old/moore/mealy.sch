VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL X
        SIGNAL CLK
        SIGNAL XLXN_8
        SIGNAL XLXN_20
        SIGNAL XLXN_4
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL Y
        SIGNAL XLXN_37
        SIGNAL XLXN_9
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL Reset
        SIGNAL XLXN_45
        PORT Input X
        PORT Input CLK
        PORT Output Y
        PORT Output Reset
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
            PIN D XLXN_20
            PIN R Reset
            PIN Q XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 fdr
            PIN C CLK
            PIN D XLXN_45
            PIN R Reset
            PIN Q XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I X
            PIN O XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I XLXN_2
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_12 and3
            PIN I0 XLXN_23
            PIN I1 XLXN_24
            PIN I2 XLXN_4
            PIN O Y
        END BLOCK
        BEGIN BLOCK XLXI_13 inv
            PIN I X
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_14 inv
            PIN I XLXN_2
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_15 and3
            PIN I0 X
            PIN I1 XLXN_2
            PIN I2 XLXN_9
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I XLXN_4
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_17 and2
            PIN I0 XLXN_9
            PIN I1 XLXN_37
            PIN O XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_18 and2
            PIN I0 XLXN_8
            PIN I1 XLXN_37
            PIN O XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_20 or2
            PIN I0 XLXN_42
            PIN I1 XLXN_41
            PIN O XLXN_45
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1728 992 R0
        INSTANCE XLXI_2 1712 1392 R0
        BEGIN BRANCH XLXN_2
            WIRE 1088 512 1088 736
            WIRE 1088 736 1088 1792
            WIRE 1088 1792 1216 1792
            WIRE 1216 1792 2112 1792
            WIRE 1088 736 1312 736
            WIRE 2096 1136 2112 1136
            WIRE 2112 1136 2112 1216
            WIRE 2112 1216 2112 1792
            WIRE 2112 1216 2464 1216
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 1648 512 1648 864
            WIRE 1648 864 1648 1264
            WIRE 1648 1264 1712 1264
            WIRE 1648 864 1728 864
        END BRANCH
        INSTANCE XLXI_5 1248 1792 R270
        BEGIN BRANCH XLXN_8
            WIRE 1216 512 1216 1504
            WIRE 1216 1504 1216 1568
            WIRE 1216 1504 1312 1504
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1568 736 1728 736
        END BRANCH
        INSTANCE XLXI_12 2720 1344 R0
        BEGIN BRANCH XLXN_4
            WIRE 800 512 800 1904
            WIRE 800 1904 912 1904
            WIRE 912 1904 2192 1904
            WIRE 2112 736 2192 736
            WIRE 2192 736 2192 992
            WIRE 2192 992 2192 1904
            WIRE 2192 992 2720 992
            WIRE 2720 992 2720 1152
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 2688 1280 2720 1280
        END BRANCH
        INSTANCE XLXI_13 2464 1312 R0
        BEGIN BRANCH XLXN_24
            WIRE 2688 1216 2720 1216
        END BRANCH
        INSTANCE XLXI_14 2464 1248 R0
        BEGIN BRANCH Y
            WIRE 2976 1216 3008 1216
        END BRANCH
        IOMARKER 480 2192 X R90 28
        IOMARKER 1648 512 CLK R270 28
        IOMARKER 1680 1584 Reset R90 28
        IOMARKER 3008 1216 Y R0 28
        INSTANCE XLXI_15 1312 864 R0
        BEGIN BRANCH XLXN_9
            WIRE 912 512 912 672
            WIRE 912 672 1312 672
            WIRE 912 672 912 1008
            WIRE 912 1008 912 1680
            WIRE 912 1008 1280 1008
        END BRANCH
        INSTANCE XLXI_4 944 1904 R270
        BEGIN BRANCH X
            WIRE 480 512 480 800
            WIRE 480 800 1312 800
            WIRE 480 800 480 2048
            WIRE 480 2048 480 2192
            WIRE 480 2048 608 2048
            WIRE 608 2048 2352 2048
            WIRE 2352 544 2352 1280
            WIRE 2352 1280 2352 2048
            WIRE 2352 1280 2464 1280
        END BRANCH
        INSTANCE XLXI_3 640 2048 R270
        BEGIN BRANCH XLXN_37
            WIRE 512 528 608 528
            WIRE 608 528 608 944
            WIRE 608 944 1280 944
            WIRE 608 944 608 1440
            WIRE 608 1440 608 1824
            WIRE 608 1440 1312 1440
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 1328 1088 1328 1168
            WIRE 1328 1168 1360 1168
            WIRE 1328 1088 1616 1088
            WIRE 1536 976 1616 976
            WIRE 1616 976 1616 1088
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 1328 1232 1328 1328
            WIRE 1328 1328 1632 1328
            WIRE 1632 1328 1632 1472
            WIRE 1328 1232 1360 1232
            WIRE 1568 1472 1632 1472
        END BRANCH
        INSTANCE XLXI_17 1280 1072 R0
        INSTANCE XLXI_18 1312 1568 R0
        BEGIN BRANCH Reset
            WIRE 1680 960 1728 960
            WIRE 1680 960 1680 1360
            WIRE 1680 1360 1680 1584
            WIRE 1680 1360 1712 1360
        END BRANCH
        INSTANCE XLXI_20 1360 1296 R0
        BEGIN BRANCH XLXN_45
            WIRE 1616 1200 1664 1200
            WIRE 1664 1136 1664 1200
            WIRE 1664 1136 1712 1136
        END BRANCH
    END SHEET
END SCHEMATIC
