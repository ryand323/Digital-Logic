VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL A1
        SIGNAL XLXN_7
        SIGNAL A0
        SIGNAL XLXN_9
        SIGNAL B1
        SIGNAL XLXN_11
        SIGNAL B0
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL Equal
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL A_big
        SIGNAL B_big
        SIGNAL XLXN_29
        SIGNAL XLXN_31
        PORT Input A1
        PORT Input A0
        PORT Input B1
        PORT Input B0
        PORT Output Equal
        PORT Output A_big
        PORT Output B_big
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
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
        BEGIN BLOCK XLXI_3 inv
            PIN I A1
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I A0
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I B1
            PIN O XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I B0
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_8 xnor2
            PIN I0 B0
            PIN I1 A0
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_9 xnor2
            PIN I0 B1
            PIN I1 A1
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 XLXN_13
            PIN I1 XLXN_14
            PIN O Equal
        END BLOCK
        BEGIN BLOCK XLXI_12 and2
            PIN I0 B1
            PIN I1 XLXN_4
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_15 and3
            PIN I0 B0
            PIN I1 B1
            PIN I2 XLXN_7
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_16 and3
            PIN I0 B0
            PIN I1 XLXN_4
            PIN I2 XLXN_7
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 XLXN_9
            PIN I1 A1
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_13 and3
            PIN I0 XLXN_11
            PIN I1 A0
            PIN I2 A1
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_14 and3
            PIN I0 XLXN_11
            PIN I1 XLXN_9
            PIN I2 A0
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_25 or3
            PIN I0 XLXN_28
            PIN I1 XLXN_20
            PIN I2 XLXN_27
            PIN O B_big
        END BLOCK
        BEGIN BLOCK XLXI_26 or3
            PIN I0 XLXN_19
            PIN I1 XLXN_17
            PIN I2 XLXN_18
            PIN O A_big
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_4
            WIRE 496 272 512 272
            WIRE 512 272 512 1808
            WIRE 512 1808 1856 1808
            WIRE 512 1808 512 2352
            WIRE 512 2352 512 2592
            WIRE 512 2352 1856 2352
            WIRE 496 2592 512 2592
        END BRANCH
        BEGIN BRANCH A1
            WIRE 256 192 256 272
            WIRE 256 272 272 272
            WIRE 256 272 256 656
            WIRE 256 656 1840 656
            WIRE 256 656 256 912
            WIRE 256 912 256 1440
            WIRE 256 1440 256 2592
            WIRE 256 1440 1840 1440
            WIRE 256 912 1840 912
        END BRANCH
        INSTANCE XLXI_3 272 304 R0
        IOMARKER 256 192 A1 R270 28
        BEGIN BRANCH A0
            WIRE 640 192 640 272
            WIRE 640 272 656 272
            WIRE 640 272 640 416
            WIRE 640 416 1840 416
            WIRE 640 416 640 720
            WIRE 640 720 640 1216
            WIRE 640 1216 640 2592
            WIRE 640 1216 1840 1216
            WIRE 640 720 1840 720
        END BRANCH
        INSTANCE XLXI_5 656 304 R0
        IOMARKER 640 192 A0 R270 28
        BEGIN BRANCH XLXN_9
            WIRE 1248 272 1264 272
            WIRE 1264 272 1264 480
            WIRE 1264 480 1840 480
            WIRE 1264 480 1264 976
            WIRE 1264 976 1264 2592
            WIRE 1264 976 1840 976
            WIRE 1248 2592 1264 2592
        END BRANCH
        BEGIN BRANCH B1
            WIRE 1008 192 1008 272
            WIRE 1008 272 1024 272
            WIRE 1008 272 1008 1504
            WIRE 1008 1504 1840 1504
            WIRE 1008 1504 1008 1872
            WIRE 1008 1872 1856 1872
            WIRE 1008 1872 1008 2080
            WIRE 1008 2080 1008 2592
            WIRE 1008 2080 1856 2080
        END BRANCH
        INSTANCE XLXI_6 1024 304 R0
        IOMARKER 1008 192 B1 R270 28
        BEGIN BRANCH XLXN_11
            WIRE 1600 272 1616 272
            WIRE 1616 272 1616 544
            WIRE 1616 544 1840 544
            WIRE 1616 544 1616 784
            WIRE 1616 784 1616 2592
            WIRE 1616 784 1840 784
            WIRE 1600 2592 1616 2592
        END BRANCH
        BEGIN BRANCH B0
            WIRE 1360 192 1360 272
            WIRE 1360 272 1376 272
            WIRE 1360 272 1360 1280
            WIRE 1360 1280 1840 1280
            WIRE 1360 1280 1360 2144
            WIRE 1360 2144 1856 2144
            WIRE 1360 2144 1360 2416
            WIRE 1360 2416 1360 2592
            WIRE 1360 2416 1856 2416
        END BRANCH
        INSTANCE XLXI_7 1376 304 R0
        IOMARKER 1360 192 B0 R270 28
        INSTANCE XLXI_8 1840 1344 R0
        INSTANCE XLXI_9 1840 1568 R0
        INSTANCE XLXI_10 2400 1440 R0
        BEGIN BRANCH XLXN_13
            WIRE 2096 1472 2112 1472
            WIRE 2112 1376 2400 1376
            WIRE 2112 1376 2112 1472
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 2096 1248 2112 1248
            WIRE 2112 1248 2112 1312
            WIRE 2112 1312 2400 1312
        END BRANCH
        BEGIN BRANCH Equal
            WIRE 2656 1344 2688 1344
        END BRANCH
        IOMARKER 2688 1344 Equal R0 28
        INSTANCE XLXI_12 1856 1936 R0
        INSTANCE XLXI_15 1856 2208 R0
        INSTANCE XLXI_16 1856 2480 R0
        INSTANCE XLXI_11 1840 1040 R0
        INSTANCE XLXI_13 1840 848 R0
        INSTANCE XLXI_14 1840 608 R0
        BEGIN BRANCH XLXN_7
            WIRE 880 272 896 272
            WIRE 896 272 896 2000
            WIRE 896 2000 896 2016
            WIRE 896 2016 1856 2016
            WIRE 896 2016 896 2288
            WIRE 896 2288 896 2592
            WIRE 896 2288 1856 2288
            WIRE 880 2592 896 2592
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 2096 720 2384 720
            WIRE 2384 720 2400 720
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 2096 480 2112 480
            WIRE 2112 480 2112 656
            WIRE 2112 656 2400 656
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 2096 944 2112 944
            WIRE 2112 784 2400 784
            WIRE 2112 784 2112 944
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 2112 1840 2336 1840
            WIRE 2336 1840 2336 2000
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 2112 2352 2336 2352
            WIRE 2336 2128 2336 2352
        END BRANCH
        BEGIN BRANCH A_big
            WIRE 2656 720 2688 720
        END BRANCH
        IOMARKER 2688 720 A_big R0 28
        BEGIN BRANCH B_big
            WIRE 2592 2064 2624 2064
            WIRE 2624 2064 2624 2080
            WIRE 2624 2080 2640 2080
        END BRANCH
        IOMARKER 2640 2080 B_big R0 28
        BEGIN BRANCH XLXN_20
            WIRE 2112 2080 2128 2080
            WIRE 2128 2064 2336 2064
            WIRE 2128 2064 2128 2080
        END BRANCH
        INSTANCE XLXI_25 2336 2192 R0
        INSTANCE XLXI_26 2400 848 R0
    END SHEET
END SCHEMATIC
