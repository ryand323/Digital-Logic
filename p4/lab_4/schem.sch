VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL in_2
        SIGNAL XLXN_10
        SIGNAL XLXN_8
        SIGNAL in_0
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        SIGNAL XLXN_53
        SIGNAL a
        SIGNAL f
        SIGNAL XLXN_105
        SIGNAL in_1
        SIGNAL in_3
        SIGNAL lil_a
        SIGNAL XLXN_108
        SIGNAL XLXN_109
        SIGNAL XLXN_110
        SIGNAL lil_c
        SIGNAL lil_e
        SIGNAL lil_f
        SIGNAL lil_g
        SIGNAL lil_d
        SIGNAL lil_b
        SIGNAL XLXN_111
        SIGNAL XLXN_112
        PORT Input in_2
        PORT Input in_0
        PORT Input in_1
        PORT Input in_3
        PORT Output lil_a
        PORT Output lil_c
        PORT Output lil_e
        PORT Output lil_f
        PORT Output lil_g
        PORT Output lil_d
        PORT Output lil_b
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
        BEGIN BLOCKDEF or6
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -320 48 -320 
            LINE N 0 -384 48 -384 
            LINE N 256 -224 192 -224 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            ARC N 28 -272 204 -96 192 -224 112 -272 
            LINE N 112 -176 48 -176 
            ARC N 28 -352 204 -176 112 -176 192 -224 
            ARC N -40 -280 72 -168 48 -176 48 -272 
            LINE N 112 -272 48 -272 
            LINE N 48 -64 48 -176 
            LINE N 48 -272 48 -384 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 inv
            PIN I in_3
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I in_2
            PIN O XLXN_105
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I in_1
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I in_0
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_48 and3
            PIN I0 XLXN_8
            PIN I1 in_2
            PIN I2 XLXN_4
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_49 and2
            PIN I0 XLXN_105
            PIN I1 in_3
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_50 and2
            PIN I0 XLXN_10
            PIN I1 in_1
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_51 and2
            PIN I0 in_0
            PIN I1 in_3
            PIN O XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_52 and2
            PIN I0 XLXN_8
            PIN I1 XLXN_105
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_39 and3
            PIN I0 XLXN_8
            PIN I1 in_2
            PIN I2 XLXN_4
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_44 and2
            PIN I0 XLXN_105
            PIN I1 in_3
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_45 and2
            PIN I0 in_1
            PIN I1 in_3
            PIN O XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_46 and2
            PIN I0 XLXN_10
            PIN I1 in_2
            PIN O XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_47 and2
            PIN I0 XLXN_10
            PIN I1 XLXN_8
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_31 and2
            PIN I0 XLXN_10
            PIN I1 XLXN_105
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_32 and2
            PIN I0 in_2
            PIN I1 in_3
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_33 and2
            PIN I0 XLXN_10
            PIN I1 in_1
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_34 and2
            PIN I0 in_1
            PIN I1 in_3
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_27 and3
            PIN I0 XLXN_10
            PIN I1 XLXN_8
            PIN I2 in_3
            PIN O XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_28 and3
            PIN I0 in_0
            PIN I1 XLXN_8
            PIN I2 in_2
            PIN O XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_29 and3
            PIN I0 in_0
            PIN I1 in_1
            PIN I2 XLXN_105
            PIN O XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_30 and3
            PIN I0 XLXN_10
            PIN I1 in_1
            PIN I2 in_2
            PIN O XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_21 and2
            PIN I0 XLXN_8
            PIN I1 XLXN_4
            PIN O XLXN_48
        END BLOCK
        BEGIN BLOCK XLXI_22 and2
            PIN I0 in_0
            PIN I1 XLXN_4
            PIN O XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_23 and2
            PIN I0 in_0
            PIN I1 XLXN_8
            PIN O XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_17 and3
            PIN I0 in_1
            PIN I1 in_2
            PIN I2 XLXN_4
            PIN O XLXN_53
        END BLOCK
        BEGIN BLOCK XLXI_18 and3
            PIN I0 XLXN_10
            PIN I1 in_1
            PIN I2 XLXN_105
            PIN O XLXN_51
        END BLOCK
        BEGIN BLOCK XLXI_19 and2
            PIN I0 XLXN_8
            PIN I1 XLXN_105
            PIN O XLXN_50
        END BLOCK
        BEGIN BLOCK XLXI_20 and3
            PIN I0 XLXN_8
            PIN I1 XLXN_105
            PIN I2 XLXN_4
            PIN O XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_7 and3
            PIN I0 in_0
            PIN I1 in_1
            PIN I2 XLXN_4
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_8 and3
            PIN I0 in_0
            PIN I1 in_1
            PIN I2 in_2
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_9 and3
            PIN I0 in_0
            PIN I1 in_2
            PIN I2 XLXN_4
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 XLXN_10
            PIN I1 XLXN_105
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 XLXN_10
            PIN I1 in_1
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_16 and3
            PIN I0 in_1
            PIN I1 XLXN_105
            PIN I2 in_3
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_90 and3
            PIN I0 XLXN_10
            PIN I1 XLXN_105
            PIN I2 XLXN_4
            PIN O XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_91 and3
            PIN I0 XLXN_8
            PIN I1 XLXN_105
            PIN I2 in_3
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_92 or5
            PIN I0 XLXN_43
            PIN I1 XLXN_44
            PIN I2 XLXN_45
            PIN I3 XLXN_46
            PIN I4 XLXN_48
            PIN O XLXN_112
        END BLOCK
        BEGIN BLOCK XLXI_93 or5
            PIN I0 XLXN_32
            PIN I1 XLXN_31
            PIN I2 XLXN_30
            PIN I3 XLXN_29
            PIN I4 XLXN_28
            PIN O f
        END BLOCK
        BEGIN BLOCK XLXI_94 or5
            PIN I0 XLXN_33
            PIN I1 XLXN_37
            PIN I2 XLXN_34
            PIN I3 XLXN_36
            PIN I4 XLXN_35
            PIN O XLXN_110
        END BLOCK
        BEGIN BLOCK XLXI_95 or5
            PIN I0 XLXN_38
            PIN I1 XLXN_39
            PIN I2 XLXN_40
            PIN I3 XLXN_41
            PIN I4 XLXN_42
            PIN O XLXN_108
        END BLOCK
        BEGIN BLOCK XLXI_96 or4
            PIN I0 XLXN_27
            PIN I1 XLXN_26
            PIN I2 XLXN_25
            PIN I3 XLXN_24
            PIN O XLXN_109
        END BLOCK
        BEGIN BLOCK XLXI_97 or5
            PIN I0 XLXN_50
            PIN I1 XLXN_51
            PIN I2 XLXN_53
            PIN I3 XLXN_52
            PIN I4 XLXN_49
            PIN O XLXN_111
        END BLOCK
        BEGIN BLOCK XLXI_98 or6
            PIN I0 XLXN_23
            PIN I1 XLXN_22
            PIN I2 XLXN_21
            PIN I3 XLXN_18
            PIN I4 XLXN_19
            PIN I5 XLXN_20
            PIN O a
        END BLOCK
        BEGIN BLOCK XLXI_145 and2
            PIN I0 in_2
            PIN I1 XLXN_4
            PIN O XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_24 and2
            PIN I0 XLXN_105
            PIN I1 in_3
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_146 inv
            PIN I a
            PIN O lil_a
        END BLOCK
        BEGIN BLOCK XLXI_149 inv
            PIN I XLXN_111
            PIN O lil_b
        END BLOCK
        BEGIN BLOCK XLXI_153 inv
            PIN I XLXN_108
            PIN O lil_d
        END BLOCK
        BEGIN BLOCK XLXI_154 inv
            PIN I XLXN_109
            PIN O lil_e
        END BLOCK
        BEGIN BLOCK XLXI_155 inv
            PIN I XLXN_110
            PIN O lil_g
        END BLOCK
        BEGIN BLOCK XLXI_156 inv
            PIN I f
            PIN O lil_f
        END BLOCK
        BEGIN BLOCK XLXI_157 inv
            PIN I XLXN_112
            PIN O lil_c
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 7040
        BEGIN BRANCH XLXN_4
            WIRE 1712 256 1712 448
            WIRE 1712 448 3104 448
            WIRE 1712 448 1712 832
            WIRE 1712 832 3104 832
            WIRE 1712 832 1712 1376
            WIRE 1712 1376 3120 1376
            WIRE 1712 1376 1712 1728
            WIRE 1712 1728 3120 1728
            WIRE 1712 1728 1712 2368
            WIRE 1712 2368 3120 2368
            WIRE 1712 2368 1712 2512
            WIRE 1712 2512 3120 2512
            WIRE 1712 2512 1712 2976
            WIRE 1712 2976 1712 3248
            WIRE 1712 3248 3120 3248
            WIRE 1712 3248 1712 5040
            WIRE 1712 5040 3120 5040
            WIRE 1712 5040 1712 5904
            WIRE 1712 5904 1712 6944
            WIRE 1712 5904 3120 5904
            WIRE 1712 2976 3120 2976
        END BRANCH
        INSTANCE XLXI_3 1488 288 R0
        BEGIN BRANCH in_2
            WIRE 1840 176 1840 256
            WIRE 1840 256 1856 256
            WIRE 1840 256 1840 640
            WIRE 1840 640 3104 640
            WIRE 1840 640 1840 896
            WIRE 1840 896 3104 896
            WIRE 1840 896 1840 1792
            WIRE 1840 1792 3120 1792
            WIRE 1840 1792 1840 2896
            WIRE 1840 2896 1840 3040
            WIRE 1840 3040 1840 3664
            WIRE 1840 3664 3120 3664
            WIRE 1840 3664 1840 4064
            WIRE 1840 4064 3120 4064
            WIRE 1840 4064 1840 4560
            WIRE 1840 4560 3120 4560
            WIRE 1840 4560 1840 5104
            WIRE 1840 5104 3120 5104
            WIRE 1840 5104 1840 5552
            WIRE 1840 5552 3120 5552
            WIRE 1840 5552 1840 5968
            WIRE 1840 5968 1840 6944
            WIRE 1840 5968 3120 5968
            WIRE 1840 3040 3120 3040
        END BRANCH
        INSTANCE XLXI_4 1856 288 R0
        INSTANCE XLXI_5 2224 288 R0
        BEGIN BRANCH XLXN_10
            WIRE 2816 256 2832 256
            WIRE 2832 256 2832 1104
            WIRE 2832 1104 3104 1104
            WIRE 2832 1104 2832 1248
            WIRE 2832 1248 3104 1248
            WIRE 2832 1248 2832 2048
            WIRE 2832 2048 3120 2048
            WIRE 2832 2048 2832 3376
            WIRE 2832 3376 2832 3584
            WIRE 2832 3584 3120 3584
            WIRE 2832 3584 2832 4192
            WIRE 2832 4192 3120 4192
            WIRE 2832 4192 2832 4416
            WIRE 2832 4416 3120 4416
            WIRE 2832 4416 2832 4720
            WIRE 2832 4720 3120 4720
            WIRE 2832 4720 2832 5616
            WIRE 2832 5616 2832 5776
            WIRE 2832 5776 3120 5776
            WIRE 2832 5776 2832 6320
            WIRE 2832 6320 2832 6944
            WIRE 2832 6320 3120 6320
            WIRE 2832 5616 3120 5616
            WIRE 2832 3376 3120 3376
        END BRANCH
        INSTANCE XLXI_6 2592 288 R0
        BEGIN BRANCH XLXN_8
            WIRE 2448 256 2464 256
            WIRE 2464 256 2464 432
            WIRE 2464 432 2464 1504
            WIRE 2464 1504 3120 1504
            WIRE 2464 1504 2464 2192
            WIRE 2464 2192 3120 2192
            WIRE 2464 2192 2464 2432
            WIRE 2464 2432 3120 2432
            WIRE 2464 2432 2464 2672
            WIRE 2464 2672 3120 2672
            WIRE 2464 2672 2464 3520
            WIRE 2464 3520 3120 3520
            WIRE 2464 3520 2464 3728
            WIRE 2464 3728 3120 3728
            WIRE 2464 3728 2464 5168
            WIRE 2464 5168 2464 5712
            WIRE 2464 5712 3120 5712
            WIRE 2464 5712 2464 6032
            WIRE 2464 6032 3120 6032
            WIRE 2464 6032 2464 6640
            WIRE 2464 6640 2464 6944
            WIRE 2464 6640 3120 6640
            WIRE 2464 5168 3120 5168
            WIRE 2464 432 3104 432
        END BRANCH
        BEGIN BRANCH in_0
            WIRE 2576 176 2576 256
            WIRE 2576 256 2592 256
            WIRE 2576 256 2576 576
            WIRE 2576 576 3104 576
            WIRE 2576 576 2576 768
            WIRE 2576 768 3104 768
            WIRE 2576 768 2576 960
            WIRE 2576 960 3104 960
            WIRE 2576 960 2576 2576
            WIRE 2576 2576 3120 2576
            WIRE 2576 2576 2576 2736
            WIRE 2576 2736 3120 2736
            WIRE 2576 2736 2576 3792
            WIRE 2576 3792 3120 3792
            WIRE 2576 3792 2576 3984
            WIRE 2576 3984 3120 3984
            WIRE 2576 3984 2576 6480
            WIRE 2576 6480 2576 6944
            WIRE 2576 6480 3120 6480
        END BRANCH
        INSTANCE XLXI_48 3120 6096 R0
        INSTANCE XLXI_49 3120 6240 R0
        INSTANCE XLXI_50 3120 6384 R0
        INSTANCE XLXI_51 3120 6544 R0
        INSTANCE XLXI_52 3120 6704 R0
        INSTANCE XLXI_39 3120 5232 R0
        INSTANCE XLXI_44 3120 5376 R0
        INSTANCE XLXI_45 3120 5520 R0
        INSTANCE XLXI_46 3120 5680 R0
        INSTANCE XLXI_47 3120 5840 R0
        INSTANCE XLXI_31 3120 4480 R0
        INSTANCE XLXI_32 3120 4624 R0
        INSTANCE XLXI_33 3120 4784 R0
        INSTANCE XLXI_34 3120 4944 R0
        INSTANCE XLXI_27 3120 3648 R0
        INSTANCE XLXI_28 3120 3856 R0
        INSTANCE XLXI_29 3120 4048 R0
        INSTANCE XLXI_30 3120 4256 R0
        INSTANCE XLXI_21 3120 2496 R0
        INSTANCE XLXI_22 3120 2640 R0
        INSTANCE XLXI_23 3120 2800 R0
        INSTANCE XLXI_17 3120 1920 R0
        INSTANCE XLXI_18 3120 2112 R0
        INSTANCE XLXI_19 3120 2256 R0
        INSTANCE XLXI_20 3120 1568 R0
        INSTANCE XLXI_7 3104 640 R0
        INSTANCE XLXI_8 3104 832 R0
        INSTANCE XLXI_9 3104 1024 R0
        INSTANCE XLXI_10 3104 1168 R0
        INSTANCE XLXI_11 3104 1312 R0
        INSTANCE XLXI_16 3120 1728 R0
        INSTANCE XLXI_90 3120 3440 R0
        INSTANCE XLXI_91 3104 496 R0
        INSTANCE XLXI_92 3520 2896 R0
        INSTANCE XLXI_93 3552 5616 R0
        INSTANCE XLXI_94 3552 6480 R0
        INSTANCE XLXI_95 3616 3920 R0
        INSTANCE XLXI_96 3584 4752 R0
        INSTANCE XLXI_97 3552 1968 R0
        INSTANCE XLXI_98 3600 992 R0
        BEGIN BRANCH XLXN_18
            WIRE 3360 704 3472 704
            WIRE 3472 704 3472 736
            WIRE 3472 736 3600 736
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 3360 512 3472 512
            WIRE 3472 512 3472 672
            WIRE 3472 672 3600 672
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 3360 368 3600 368
            WIRE 3600 368 3600 608
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 3360 896 3472 896
            WIRE 3472 800 3472 896
            WIRE 3472 800 3600 800
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 3360 1072 3424 1072
            WIRE 3424 1072 3488 1072
            WIRE 3488 864 3488 1072
            WIRE 3488 864 3600 864
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 3360 1216 3600 1216
            WIRE 3600 928 3600 1216
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 3376 4384 3584 4384
            WIRE 3584 4384 3584 4496
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 3376 4528 3472 4528
            WIRE 3472 4528 3472 4560
            WIRE 3472 4560 3584 4560
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 3376 4688 3472 4688
            WIRE 3472 4624 3472 4688
            WIRE 3472 4624 3584 4624
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 3376 4848 3584 4848
            WIRE 3584 4688 3584 4848
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 3376 5104 3552 5104
            WIRE 3552 5104 3552 5296
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 3376 5280 3456 5280
            WIRE 3456 5280 3456 5360
            WIRE 3456 5360 3552 5360
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 3376 5424 3552 5424
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 3376 5584 3456 5584
            WIRE 3456 5488 3456 5584
            WIRE 3456 5488 3552 5488
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 3376 5744 3552 5744
            WIRE 3552 5552 3552 5744
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 3376 6608 3552 6608
            WIRE 3552 6416 3552 6608
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 3376 6288 3552 6288
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 3376 5968 3552 5968
            WIRE 3552 5968 3552 6160
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 3376 6144 3456 6144
            WIRE 3456 6144 3456 6224
            WIRE 3456 6224 3552 6224
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 3376 6448 3456 6448
            WIRE 3456 6352 3456 6448
            WIRE 3456 6352 3552 6352
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 3376 4128 3616 4128
            WIRE 3616 3856 3616 4128
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 3376 3920 3488 3920
            WIRE 3488 3792 3488 3920
            WIRE 3488 3792 3616 3792
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 3376 3728 3616 3728
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 3376 3520 3488 3520
            WIRE 3488 3520 3488 3664
            WIRE 3488 3664 3616 3664
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 3376 3312 3616 3312
            WIRE 3616 3312 3616 3600
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 3376 3008 3520 3008
            WIRE 3520 2832 3520 3008
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 3376 2864 3440 2864
            WIRE 3440 2768 3440 2864
            WIRE 3440 2768 3520 2768
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 3376 2704 3520 2704
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 3376 2544 3440 2544
            WIRE 3440 2544 3440 2640
            WIRE 3440 2640 3520 2640
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 3376 2400 3520 2400
            WIRE 3520 2400 3520 2576
        END BRANCH
        BEGIN BRANCH XLXN_49
            WIRE 3376 1440 3392 1440
            WIRE 3392 1440 3536 1440
            WIRE 3536 1440 3536 1648
            WIRE 3536 1648 3552 1648
        END BRANCH
        BEGIN BRANCH XLXN_50
            WIRE 3376 2160 3392 2160
            WIRE 3392 2160 3552 2160
            WIRE 3552 1904 3552 2160
        END BRANCH
        BEGIN BRANCH XLXN_51
            WIRE 3376 1984 3392 1984
            WIRE 3392 1984 3456 1984
            WIRE 3456 1840 3456 1984
            WIRE 3456 1840 3552 1840
        END BRANCH
        BEGIN BRANCH XLXN_52
            WIRE 3376 1600 3392 1600
            WIRE 3392 1600 3456 1600
            WIRE 3456 1600 3456 1712
            WIRE 3456 1712 3552 1712
        END BRANCH
        BEGIN BRANCH XLXN_53
            WIRE 3376 1792 3392 1792
            WIRE 3392 1792 3456 1792
            WIRE 3456 1776 3456 1792
            WIRE 3456 1776 3552 1776
        END BRANCH
        BEGIN BRANCH a
            WIRE 3856 768 3888 768
        END BRANCH
        BEGIN BRANCH f
            WIRE 3808 5424 3824 5424
            WIRE 3824 5424 3840 5424
        END BRANCH
        IOMARKER 1472 176 in_3 R270 28
        IOMARKER 1840 176 in_2 R270 28
        IOMARKER 2208 176 in_1 R270 28
        IOMARKER 2576 176 in_0 R270 28
        BEGIN BRANCH in_1
            WIRE 2208 176 2208 256
            WIRE 2208 256 2224 256
            WIRE 2208 256 2208 512
            WIRE 2208 512 3104 512
            WIRE 2208 512 2208 704
            WIRE 2208 704 3104 704
            WIRE 2208 704 2208 1184
            WIRE 2208 1184 2208 1664
            WIRE 2208 1664 3120 1664
            WIRE 2208 1664 2208 1856
            WIRE 2208 1856 3120 1856
            WIRE 2208 1856 2208 1984
            WIRE 2208 1984 2208 3920
            WIRE 2208 3920 2208 4128
            WIRE 2208 4128 2208 4656
            WIRE 2208 4656 2208 4880
            WIRE 2208 4880 2208 5456
            WIRE 2208 5456 2208 6256
            WIRE 2208 6256 2208 6944
            WIRE 2208 6256 3120 6256
            WIRE 2208 5456 3120 5456
            WIRE 2208 4880 3120 4880
            WIRE 2208 4656 3120 4656
            WIRE 2208 4128 3120 4128
            WIRE 2208 3920 3120 3920
            WIRE 2208 1984 3120 1984
            WIRE 2208 1184 3104 1184
        END BRANCH
        BEGIN BRANCH in_3
            WIRE 1472 176 1472 256
            WIRE 1472 256 1488 256
            WIRE 1472 256 1472 304
            WIRE 1472 304 1472 1536
            WIRE 1472 1536 3120 1536
            WIRE 1472 1536 1472 2832
            WIRE 1472 2832 3120 2832
            WIRE 1472 2832 1472 2976
            WIRE 1472 2976 1472 3456
            WIRE 1472 3456 3120 3456
            WIRE 1472 3456 1472 4496
            WIRE 1472 4496 3120 4496
            WIRE 1472 4496 1472 4816
            WIRE 1472 4816 3120 4816
            WIRE 1472 4816 1472 5248
            WIRE 1472 5248 3120 5248
            WIRE 1472 5248 1472 5392
            WIRE 1472 5392 3120 5392
            WIRE 1472 5392 1472 6112
            WIRE 1472 6112 3120 6112
            WIRE 1472 6112 1472 6416
            WIRE 1472 6416 1472 6944
            WIRE 1472 6416 3120 6416
            WIRE 1472 304 3104 304
        END BRANCH
        INSTANCE XLXI_145 3120 3104 R0
        INSTANCE XLXI_24 3120 2960 R0
        BEGIN BRANCH XLXN_105
            WIRE 2080 256 2096 256
            WIRE 2096 256 2096 368
            WIRE 2096 368 3104 368
            WIRE 2096 368 2096 1040
            WIRE 2096 1040 2096 1056
            WIRE 2096 1056 2096 1440
            WIRE 2096 1440 3120 1440
            WIRE 2096 1440 2096 1600
            WIRE 2096 1600 3120 1600
            WIRE 2096 1600 2096 1920
            WIRE 2096 1920 3120 1920
            WIRE 2096 1920 2096 2128
            WIRE 2096 2128 2096 2896
            WIRE 2096 2896 2096 3312
            WIRE 2096 3312 2096 3856
            WIRE 2096 3856 2096 4352
            WIRE 2096 4352 2096 5312
            WIRE 2096 5312 2096 6176
            WIRE 2096 6176 3120 6176
            WIRE 2096 6176 2096 6576
            WIRE 2096 6576 2096 6944
            WIRE 2096 6576 3120 6576
            WIRE 2096 5312 3120 5312
            WIRE 2096 4352 3120 4352
            WIRE 2096 3856 3120 3856
            WIRE 2096 3312 3120 3312
            WIRE 2096 2896 3120 2896
            WIRE 2096 2128 3120 2128
            WIRE 2096 1040 3104 1040
        END BRANCH
        INSTANCE XLXI_146 3888 800 R0
        BEGIN BRANCH lil_a
            WIRE 4112 768 4144 768
        END BRANCH
        IOMARKER 4144 768 lil_a R0 28
        INSTANCE XLXI_149 3840 1808 R0
        BEGIN BRANCH XLXN_108
            WIRE 3872 3728 3904 3728
        END BRANCH
        INSTANCE XLXI_153 3904 3760 R0
        BEGIN BRANCH XLXN_109
            WIRE 3840 4592 3872 4592
        END BRANCH
        INSTANCE XLXI_154 3872 4624 R0
        BEGIN BRANCH XLXN_110
            WIRE 3808 6288 3840 6288
        END BRANCH
        INSTANCE XLXI_155 3840 6320 R0
        INSTANCE XLXI_156 3840 5456 R0
        BEGIN BRANCH lil_c
            WIRE 4048 2704 4080 2704
        END BRANCH
        IOMARKER 4080 2704 lil_c R0 28
        BEGIN BRANCH lil_e
            WIRE 4096 4592 4128 4592
        END BRANCH
        IOMARKER 4128 4592 lil_e R0 28
        BEGIN BRANCH lil_f
            WIRE 4064 5424 4080 5424
            WIRE 4080 5424 4096 5424
        END BRANCH
        IOMARKER 4096 5424 lil_f R0 28
        BEGIN BRANCH lil_g
            WIRE 4064 6288 4096 6288
        END BRANCH
        IOMARKER 4096 6288 lil_g R0 28
        BEGIN BRANCH lil_d
            WIRE 4128 3728 4160 3728
        END BRANCH
        IOMARKER 4160 3728 lil_d R0 28
        BEGIN BRANCH lil_b
            WIRE 4064 1776 4096 1776
        END BRANCH
        IOMARKER 4096 1776 lil_b R0 28
        INSTANCE XLXI_157 3824 2736 R0
        BEGIN BRANCH XLXN_111
            WIRE 3808 1776 3824 1776
            WIRE 3824 1776 3840 1776
        END BRANCH
        BEGIN BRANCH XLXN_112
            WIRE 3776 2704 3824 2704
        END BRANCH
    END SHEET
END SCHEMATIC
