VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_24
        SIGNAL XLXN_30
        SIGNAL XLXN_33
        SIGNAL C_in
        SIGNAL XLXN_9
        SIGNAL B_0
        SIGNAL XLXN_13
        SIGNAL A_0
        SIGNAL XLXN_11
        SIGNAL XLXN_27
        SIGNAL XLXN_29
        SIGNAL XLXN_26
        SIGNAL XLXN_47
        SIGNAL XLXN_28
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL S_0
        BEGIN SIGNAL XLXN_53
        END SIGNAL
        SIGNAL XLXN_62
        SIGNAL XLXN_68
        SIGNAL C_Out
        SIGNAL S_1
        SIGNAL XLXN_66
        SIGNAL XLXN_65
        SIGNAL XLXN_64
        SIGNAL XLXN_63
        SIGNAL XLXN_61
        SIGNAL XLXN_60
        SIGNAL XLXN_59
        SIGNAL XLXN_58
        SIGNAL A_1
        SIGNAL XLXN_56
        SIGNAL B_1
        SIGNAL XLXN_54
        PORT Input C_in
        PORT Input B_0
        PORT Input A_0
        PORT Output S_0
        PORT Output C_Out
        PORT Output S_1
        PORT Input A_1
        PORT Input B_1
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
        BEGIN BLOCKDEF or4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 inv
            PIN I C_in
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I B_0
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I A_0
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_10 and3
            PIN I0 B_0
            PIN I1 A_0
            PIN I2 XLXN_9
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_11 and3
            PIN I0 B_0
            PIN I1 XLXN_11
            PIN I2 XLXN_9
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_12 and3
            PIN I0 XLXN_13
            PIN I1 A_0
            PIN I2 XLXN_9
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_13 and3
            PIN I0 XLXN_13
            PIN I1 XLXN_11
            PIN I2 C_in
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_14 and3
            PIN I0 B_0
            PIN I1 A_0
            PIN I2 C_in
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_15 and2
            PIN I0 B_0
            PIN I1 C_in
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_16 and2
            PIN I0 A_0
            PIN I1 C_in
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_28 or4
            PIN I0 XLXN_29
            PIN I1 XLXN_28
            PIN I2 XLXN_26
            PIN I3 XLXN_27
            PIN O S_0
        END BLOCK
        BEGIN BLOCK XLXI_27 or3
            PIN I0 XLXN_35
            PIN I1 XLXN_36
            PIN I2 XLXN_34
            PIN O XLXN_68
        END BLOCK
        BEGIN BLOCK XLXI_52 or3
            PIN I0 XLXN_65
            PIN I1 XLXN_66
            PIN I2 XLXN_64
            PIN O C_Out
        END BLOCK
        BEGIN BLOCK XLXI_51 or4
            PIN I0 XLXN_60
            PIN I1 XLXN_63
            PIN I2 XLXN_61
            PIN I3 XLXN_59
            PIN O S_1
        END BLOCK
        BEGIN BLOCK XLXI_50 and2
            PIN I0 A_1
            PIN I1 XLXN_68
            PIN O XLXN_65
        END BLOCK
        BEGIN BLOCK XLXI_49 and2
            PIN I0 B_1
            PIN I1 XLXN_68
            PIN O XLXN_66
        END BLOCK
        BEGIN BLOCK XLXI_48 and3
            PIN I0 B_1
            PIN I1 A_1
            PIN I2 XLXN_68
            PIN O XLXN_60
        END BLOCK
        BEGIN BLOCK XLXI_47 and3
            PIN I0 XLXN_56
            PIN I1 XLXN_58
            PIN I2 XLXN_68
            PIN O XLXN_63
        END BLOCK
        BEGIN BLOCK XLXI_46 and3
            PIN I0 XLXN_56
            PIN I1 A_1
            PIN I2 XLXN_54
            PIN O XLXN_61
        END BLOCK
        BEGIN BLOCK XLXI_45 and3
            PIN I0 B_1
            PIN I1 XLXN_58
            PIN I2 XLXN_54
            PIN O XLXN_59
        END BLOCK
        BEGIN BLOCK XLXI_44 and3
            PIN I0 B_1
            PIN I1 A_1
            PIN I2 XLXN_54
            PIN O XLXN_64
        END BLOCK
        BEGIN BLOCK XLXI_43 inv
            PIN I A_1
            PIN O XLXN_58
        END BLOCK
        BEGIN BLOCK XLXI_42 inv
            PIN I B_1
            PIN O XLXN_56
        END BLOCK
        BEGIN BLOCK XLXI_41 inv
            PIN I XLXN_68
            PIN O XLXN_54
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN BRANCH C_in
            WIRE 256 640 256 720
            WIRE 256 720 288 720
            WIRE 256 720 256 1120
            WIRE 256 1120 1456 1120
            WIRE 256 1120 256 1280
            WIRE 256 1280 1456 1280
            WIRE 256 1280 256 2272
            WIRE 256 2272 1472 2272
            WIRE 256 2272 256 2496
            WIRE 256 2496 256 3072
            WIRE 256 2496 1472 2496
        END BRANCH
        INSTANCE XLXI_5 288 752 R0
        BEGIN BRANCH XLXN_9
            WIRE 512 720 528 720
            WIRE 528 720 528 896
            WIRE 528 896 544 896
            WIRE 544 896 1456 896
            WIRE 528 896 528 1856
            WIRE 528 1856 1472 1856
            WIRE 528 1856 528 2064
            WIRE 528 2064 528 3072
            WIRE 528 2064 1472 2064
        END BRANCH
        BEGIN BRANCH B_0
            WIRE 1056 640 1056 720
            WIRE 1056 720 1088 720
            WIRE 1056 720 1056 1024
            WIRE 1056 1024 1456 1024
            WIRE 1056 1024 1056 1184
            WIRE 1056 1184 1456 1184
            WIRE 1056 1184 1056 1984
            WIRE 1056 1984 1472 1984
            WIRE 1056 1984 1056 2624
            WIRE 1056 2624 1056 3072
            WIRE 1056 2624 1472 2624
        END BRANCH
        INSTANCE XLXI_7 1088 752 R0
        BEGIN BRANCH XLXN_13
            WIRE 1312 720 1328 720
            WIRE 1328 720 1328 2192
            WIRE 1328 2192 1472 2192
            WIRE 1328 2192 1328 2400
            WIRE 1328 2400 1328 3072
            WIRE 1328 2400 1472 2400
        END BRANCH
        BEGIN BRANCH A_0
            WIRE 656 640 656 720
            WIRE 656 720 688 720
            WIRE 656 720 656 960
            WIRE 656 960 1456 960
            WIRE 656 960 656 1344
            WIRE 656 1344 1456 1344
            WIRE 656 1344 656 2128
            WIRE 656 2128 1472 2128
            WIRE 656 2128 656 2560
            WIRE 656 2560 656 3072
            WIRE 656 2560 1472 2560
        END BRANCH
        INSTANCE XLXI_6 688 752 R0
        BEGIN BRANCH XLXN_11
            WIRE 912 720 928 720
            WIRE 928 720 928 1920
            WIRE 928 1920 1472 1920
            WIRE 928 1920 928 2336
            WIRE 928 2336 928 3072
            WIRE 928 2336 1472 2336
        END BRANCH
        INSTANCE XLXI_10 1456 1088 R0
        INSTANCE XLXI_11 1472 2048 R0
        INSTANCE XLXI_12 1472 2256 R0
        INSTANCE XLXI_13 1472 2464 R0
        INSTANCE XLXI_14 1472 2688 R0
        INSTANCE XLXI_15 1456 1248 R0
        INSTANCE XLXI_16 1456 1408 R0
        BEGIN BRANCH XLXN_27
            WIRE 1728 1920 1792 1920
            WIRE 1792 1920 1792 2128
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1728 2560 1792 2560
            WIRE 1792 2320 1792 2560
        END BRANCH
        INSTANCE XLXI_28 1792 2384 R0
        BEGIN BRANCH XLXN_26
            WIRE 1728 2128 1744 2128
            WIRE 1744 2128 1744 2192
            WIRE 1744 2192 1792 2192
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1728 2336 1744 2336
            WIRE 1744 2256 1792 2256
            WIRE 1744 2256 1744 2336
        END BRANCH
        INSTANCE XLXI_27 1776 1280 R0
        BEGIN BRANCH XLXN_34
            WIRE 1712 960 1776 960
            WIRE 1776 960 1776 1088
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1712 1312 1776 1312
            WIRE 1776 1216 1776 1312
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1712 1152 1776 1152
        END BRANCH
        BEGIN BRANCH S_0
            WIRE 2048 2224 2080 2224
        END BRANCH
        IOMARKER 256 640 C_in R270 28
        IOMARKER 1056 640 B_0 R270 28
        IOMARKER 656 640 A_0 R270 28
        IOMARKER 2080 2224 S_0 R0 28
        BEGIN BRANCH XLXN_68
            WIRE 2032 1152 2224 1152
            WIRE 2224 624 2224 1152
            WIRE 2224 624 2432 624
            WIRE 2432 624 2432 704
            WIRE 2432 704 2464 704
            WIRE 2432 704 2432 1104
            WIRE 2432 1104 3632 1104
            WIRE 2432 1104 2432 1264
            WIRE 2432 1264 3632 1264
            WIRE 2432 1264 2432 2256
            WIRE 2432 2256 3648 2256
            WIRE 2432 2256 2432 2480
            WIRE 2432 2480 2432 3056
            WIRE 2432 2480 3648 2480
        END BRANCH
        IOMARKER 4240 1136 C_Out R0 28
        IOMARKER 4256 2208 S_1 R0 28
        IOMARKER 2832 624 A_1 R270 28
        IOMARKER 3232 624 B_1 R270 28
        INSTANCE XLXI_52 3952 1264 R0
        INSTANCE XLXI_51 3968 2368 R0
        INSTANCE XLXI_50 3632 1392 R0
        INSTANCE XLXI_49 3632 1232 R0
        INSTANCE XLXI_48 3648 2672 R0
        INSTANCE XLXI_47 3648 2448 R0
        INSTANCE XLXI_46 3648 2240 R0
        INSTANCE XLXI_45 3648 2032 R0
        INSTANCE XLXI_44 3632 1072 R0
        INSTANCE XLXI_43 2864 736 R0
        INSTANCE XLXI_42 3264 736 R0
        INSTANCE XLXI_41 2464 736 R0
        BEGIN BRANCH C_Out
            WIRE 4208 1136 4240 1136
        END BRANCH
        BEGIN BRANCH S_1
            WIRE 4224 2208 4256 2208
        END BRANCH
        BEGIN BRANCH XLXN_66
            WIRE 3888 1136 3952 1136
        END BRANCH
        BEGIN BRANCH XLXN_65
            WIRE 3888 1296 3952 1296
            WIRE 3952 1200 3952 1296
        END BRANCH
        BEGIN BRANCH XLXN_64
            WIRE 3888 944 3952 944
            WIRE 3952 944 3952 1072
        END BRANCH
        BEGIN BRANCH XLXN_63
            WIRE 3904 2320 3920 2320
            WIRE 3920 2240 3968 2240
            WIRE 3920 2240 3920 2320
        END BRANCH
        BEGIN BRANCH XLXN_61
            WIRE 3904 2112 3920 2112
            WIRE 3920 2112 3920 2176
            WIRE 3920 2176 3968 2176
        END BRANCH
        BEGIN BRANCH XLXN_60
            WIRE 3904 2544 3968 2544
            WIRE 3968 2304 3968 2544
        END BRANCH
        BEGIN BRANCH XLXN_59
            WIRE 3904 1904 3968 1904
            WIRE 3968 1904 3968 2112
        END BRANCH
        BEGIN BRANCH XLXN_58
            WIRE 3088 704 3104 704
            WIRE 3104 704 3104 1904
            WIRE 3104 1904 3648 1904
            WIRE 3104 1904 3104 2320
            WIRE 3104 2320 3104 3056
            WIRE 3104 2320 3648 2320
        END BRANCH
        BEGIN BRANCH A_1
            WIRE 2832 624 2832 704
            WIRE 2832 704 2864 704
            WIRE 2832 704 2832 944
            WIRE 2832 944 3632 944
            WIRE 2832 944 2832 1328
            WIRE 2832 1328 3632 1328
            WIRE 2832 1328 2832 2112
            WIRE 2832 2112 3648 2112
            WIRE 2832 2112 2832 2544
            WIRE 2832 2544 2832 3056
            WIRE 2832 2544 3648 2544
        END BRANCH
        BEGIN BRANCH XLXN_56
            WIRE 3488 704 3504 704
            WIRE 3504 704 3504 2176
            WIRE 3504 2176 3648 2176
            WIRE 3504 2176 3504 2384
            WIRE 3504 2384 3504 3056
            WIRE 3504 2384 3648 2384
        END BRANCH
        BEGIN BRANCH B_1
            WIRE 3232 624 3232 704
            WIRE 3232 704 3264 704
            WIRE 3232 704 3232 1008
            WIRE 3232 1008 3632 1008
            WIRE 3232 1008 3232 1168
            WIRE 3232 1168 3632 1168
            WIRE 3232 1168 3232 1968
            WIRE 3232 1968 3648 1968
            WIRE 3232 1968 3232 2608
            WIRE 3232 2608 3232 3056
            WIRE 3232 2608 3648 2608
        END BRANCH
        BEGIN BRANCH XLXN_54
            WIRE 2688 704 2704 704
            WIRE 2704 704 2704 880
            WIRE 2704 880 2720 880
            WIRE 2720 880 3632 880
            WIRE 2704 880 2704 1840
            WIRE 2704 1840 3648 1840
            WIRE 2704 1840 2704 2048
            WIRE 2704 2048 2704 3056
            WIRE 2704 2048 3648 2048
        END BRANCH
    END SHEET
END SCHEMATIC
