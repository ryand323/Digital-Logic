VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL my_in
        SIGNAL my_out
        PORT Input my_in
        PORT Output my_out
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv
            PIN I my_in
            PIN O my_out
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1440 1552 R0
        BEGIN BRANCH my_in
            WIRE 1280 1520 1440 1520
        END BRANCH
        BEGIN BRANCH my_out
            WIRE 1664 1520 1920 1520
        END BRANCH
        IOMARKER 1280 1520 my_in R180 28
        IOMARKER 1920 1520 my_out R0 28
    END SHEET
END SCHEMATIC
