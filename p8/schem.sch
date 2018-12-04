VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_31
        SIGNAL XLXN_41
        SIGNAL XLXN_46
        SIGNAL S0
        SIGNAL XLXN_48
        SIGNAL S1
        SIGNAL XLXN_50
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_13
        SIGNAL XLXN_12
        SIGNAL XLXN_11
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_29
        SIGNAL XLXN_62
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_68
        SIGNAL Up_Down_B
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL S2
        SIGNAL reset
        SIGNAL XLXN_73
        SIGNAL XLXN_76
        SIGNAL clk
        PORT Output S0
        PORT Output S1
        PORT Input Up_Down_B
        PORT Output S2
        PORT Input reset
        PORT Input clk
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
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF or5
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 72 -192 
            LINE N 0 -256 48 -256 
            LINE N 0 -320 48 -320 
            LINE N 256 -192 192 -192 
            ARC N 28 -320 204 -144 112 -144 192 -192 
            LINE N 112 -240 48 -240 
            LINE N 112 -144 48 -144 
            LINE N 48 -64 48 -144 
            LINE N 48 -320 48 -240 
            ARC N 28 -240 204 -64 192 -192 112 -240 
            ARC N -40 -248 72 -136 48 -144 48 -240 
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
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_8 inv
            PIN I S0
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_11 inv
            PIN I S2
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I S1
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_19 and3
            PIN I0 XLXN_44
            PIN I1 S1
            PIN I2 S2
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_1 fdr
            PIN C clk
            PIN D XLXN_13
            PIN R reset
            PIN Q S2
        END BLOCK
        BEGIN BLOCK XLXI_2 fdr
            PIN C clk
            PIN D XLXN_12
            PIN R reset
            PIN Q S1
        END BLOCK
        BEGIN BLOCK XLXI_16 or3
            PIN I0 XLXN_34
            PIN I1 XLXN_33
            PIN I2 XLXN_32
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_3 fdr
            PIN C clk
            PIN D XLXN_11
            PIN R reset
            PIN Q S0
        END BLOCK
        BEGIN BLOCK XLXI_20 and3
            PIN I0 XLXN_8
            PIN I1 S1
            PIN I2 S2
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_21 and3
            PIN I0 Up_Down_B
            PIN I1 XLXN_9
            PIN I2 S2
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_17 or5
            PIN I0 XLXN_45
            PIN I1 XLXN_29
            PIN I2 XLXN_26
            PIN I3 XLXN_25
            PIN I4 XLXN_24
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_33 and3
            PIN I0 Up_Down_B
            PIN I1 XLXN_8
            PIN I2 S1
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_34 and2
            PIN I0 XLXN_44
            PIN I1 XLXN_9
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_35 and2
            PIN I0 S0
            PIN I1 XLXN_9
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_15 or2
            PIN I0 XLXN_36
            PIN I1 XLXN_35
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_45 inv
            PIN I Up_Down_B
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_46 and4
            PIN I0 Up_Down_B
            PIN I1 S0
            PIN I2 S1
            PIN I3 XLXN_10
            PIN O XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_36 and2
            PIN I0 Up_Down_B
            PIN I1 XLXN_8
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_37 and2
            PIN I0 XLXN_44
            PIN I1 S0
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_69 and3
            PIN I0 XLXN_44
            PIN I1 XLXN_9
            PIN I2 XLXN_10
            PIN O XLXN_24
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH S0
            WIRE 1024 80 1024 896
            WIRE 1024 896 1744 896
            WIRE 1024 896 1024 1376
            WIRE 1024 1376 1744 1376
            WIRE 1024 1376 1024 1584
            WIRE 1024 1584 1024 1872
            WIRE 1024 1872 1152 1872
            WIRE 1152 1872 3200 1872
            WIRE 1024 1584 1744 1584
            WIRE 1152 1840 1152 1872
            WIRE 3136 1600 3200 1600
            WIRE 3200 1600 3200 1872
        END BRANCH
        INSTANCE XLXI_8 1184 1840 R270
        BEGIN BRANCH S1
            WIRE 608 80 608 192
            WIRE 608 192 608 352
            WIRE 608 352 1744 352
            WIRE 608 352 608 512
            WIRE 608 512 1744 512
            WIRE 608 512 608 832
            WIRE 608 832 1744 832
            WIRE 608 832 608 1024
            WIRE 608 1024 1744 1024
            WIRE 608 1024 608 1984
            WIRE 608 1984 720 1984
            WIRE 720 1984 3216 1984
            WIRE 720 1840 720 1984
            WIRE 3152 1056 3216 1056
            WIRE 3216 1056 3216 1984
        END BRANCH
        INSTANCE XLXI_11 352 1840 R270
        INSTANCE XLXI_9 752 1840 R270
        BEGIN DISPLAY 292 2148 TEXT S2
            FONT 40 "Arial"
        END DISPLAY
        BEGIN DISPLAY 1060 1940 TEXT S0
            FONT 40 "Arial"
        END DISPLAY
        BEGIN DISPLAY 644 2036 TEXT S1
            FONT 40 "Arial"
        END DISPLAY
        BEGIN BRANCH XLXN_8
            WIRE 1152 80 1152 576
            WIRE 1152 576 1744 576
            WIRE 1152 576 1152 1088
            WIRE 1152 1088 1744 1088
            WIRE 1152 1088 1152 1472
            WIRE 1152 1472 1152 1616
            WIRE 1152 1472 1744 1472
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 720 80 720 192
            WIRE 720 192 720 672
            WIRE 720 672 1744 672
            WIRE 720 672 720 1200
            WIRE 720 1200 1744 1200
            WIRE 720 1200 720 1312
            WIRE 720 1312 720 1616
            WIRE 720 1312 1744 1312
            WIRE 720 192 1744 192
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 320 80 320 128
            WIRE 320 128 320 768
            WIRE 320 768 320 1616
            WIRE 320 768 1744 768
            WIRE 320 128 1744 128
        END BRANCH
        INSTANCE XLXI_19 1744 480 R0
        INSTANCE XLXI_1 2768 560 R0
        BEGIN DISPLAY 3140 276 TEXT S2
            FONT 40 "Arial"
        END DISPLAY
        BEGIN BRANCH XLXN_13
            WIRE 2736 256 2752 256
            WIRE 2752 256 2752 304
            WIRE 2752 304 2768 304
        END BRANCH
        INSTANCE XLXI_2 2768 1312 R0
        BEGIN DISPLAY 3128 1028 TEXT S1
            FONT 40 "Arial"
        END DISPLAY
        BEGIN BRANCH XLXN_12
            WIRE 2736 1056 2768 1056
        END BRANCH
        INSTANCE XLXI_16 2480 1184 R0
        INSTANCE XLXI_3 2752 1856 R0
        BEGIN BRANCH XLXN_11
            WIRE 2736 1600 2752 1600
        END BRANCH
        INSTANCE XLXI_20 1744 640 R0
        INSTANCE XLXI_21 1744 800 R0
        BEGIN BRANCH XLXN_25
            WIRE 2000 352 2240 352
            WIRE 2240 192 2240 352
            WIRE 2240 192 2480 192
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 2000 512 2256 512
            WIRE 2256 256 2256 512
            WIRE 2256 256 2480 256
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 2000 672 2272 672
            WIRE 2272 320 2272 672
            WIRE 2272 320 2480 320
        END BRANCH
        INSTANCE XLXI_33 1744 1216 R0
        INSTANCE XLXI_34 1744 1328 R0
        INSTANCE XLXI_35 1744 1440 R0
        INSTANCE XLXI_15 2480 1696 R0
        BEGIN BRANCH XLXN_32
            WIRE 2000 1088 2016 1088
            WIRE 2016 992 2480 992
            WIRE 2016 992 2016 1088
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 2000 1232 2240 1232
            WIRE 2240 1056 2240 1232
            WIRE 2240 1056 2480 1056
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 2000 1344 2480 1344
            WIRE 2480 1120 2480 1344
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 2000 1504 2464 1504
            WIRE 2464 1504 2464 1568
            WIRE 2464 1568 2480 1568
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 2000 1616 2464 1616
            WIRE 2464 1616 2464 1632
            WIRE 2464 1632 2480 1632
        END BRANCH
        BEGIN DISPLAY 3124 1580 TEXT S0
            FONT 40 "Arial"
        END DISPLAY
        BEGIN BRANCH Up_Down_B
            WIRE 1328 80 1328 736
            WIRE 1328 736 1744 736
            WIRE 1328 736 1328 960
            WIRE 1328 960 1744 960
            WIRE 1328 960 1328 1152
            WIRE 1328 1152 1744 1152
            WIRE 1328 1152 1328 1536
            WIRE 1328 1536 1328 2416
            WIRE 1328 2416 1328 2464
            WIRE 1328 2416 1440 2416
            WIRE 1328 1536 1744 1536
            WIRE 1440 2352 1440 2416
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1440 80 1440 256
            WIRE 1440 256 1744 256
            WIRE 1440 256 1440 416
            WIRE 1440 416 1744 416
            WIRE 1440 416 1440 1264
            WIRE 1440 1264 1744 1264
            WIRE 1440 1264 1440 1648
            WIRE 1440 1648 1744 1648
            WIRE 1440 1648 1440 2128
        END BRANCH
        INSTANCE XLXI_46 1744 1024 R0
        BEGIN BRANCH XLXN_45
            WIRE 2000 864 2480 864
            WIRE 2480 384 2480 864
        END BRANCH
        INSTANCE XLXI_36 1744 1600 R0
        INSTANCE XLXI_37 1744 1712 R0
        IOMARKER 1328 2464 Up_Down_B R90 28
        IOMARKER 224 80 S2 R270 28
        IOMARKER 608 80 S1 R270 28
        IOMARKER 1024 80 S0 R270 28
        BEGIN BRANCH S2
            WIRE 224 80 224 128
            WIRE 224 128 224 288
            WIRE 224 288 1744 288
            WIRE 224 288 224 448
            WIRE 224 448 1744 448
            WIRE 224 448 224 608
            WIRE 224 608 224 2080
            WIRE 224 2080 320 2080
            WIRE 320 2080 3232 2080
            WIRE 224 608 1744 608
            WIRE 320 1840 320 2080
            WIRE 3152 304 3232 304
            WIRE 3232 304 3232 2080
        END BRANCH
        INSTANCE XLXI_69 1744 320 R0
        BEGIN BRANCH reset
            WIRE 2752 1824 2752 1904
            WIRE 2752 1904 3376 1904
            WIRE 3376 1904 3376 2352
            WIRE 2768 528 2768 576
            WIRE 2768 576 3376 576
            WIRE 3376 576 3376 1328
            WIRE 3376 1328 3376 1904
            WIRE 2768 1280 2768 1328
            WIRE 2768 1328 3376 1328
        END BRANCH
        IOMARKER 3376 2352 reset R90 28
        INSTANCE XLXI_45 1472 2352 R270
        INSTANCE XLXI_17 2480 448 R0
        BEGIN BRANCH XLXN_24
            WIRE 2000 192 2016 192
            WIRE 2016 128 2480 128
            WIRE 2016 128 2016 192
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2384 48 2752 48
            WIRE 2752 48 2752 64
            WIRE 2752 64 2752 112
            WIRE 2752 64 2880 64
            WIRE 2384 48 2384 1728
            WIRE 2384 1728 2752 1728
            WIRE 2416 64 2752 64
            WIRE 2416 64 2416 1184
            WIRE 2416 1184 2768 1184
            WIRE 2432 112 2752 112
            WIRE 2432 112 2432 432
            WIRE 2432 432 2768 432
        END BRANCH
        IOMARKER 2880 64 clk R0 28
    END SHEET
END SCHEMATIC
