VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_4
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
        BEGIN BLOCK XLXI_1 fdr
            PIN C
            PIN D
            PIN R
            PIN Q XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 fdr
            PIN C
            PIN D
            PIN R
            PIN Q XLXN_2
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1584 624 R0
        INSTANCE XLXI_2 1568 1024 R0
        BEGIN BRANCH XLXN_2
            WIRE 944 144 944 1424
            WIRE 944 1424 1968 1424
            WIRE 1952 768 1968 768
            WIRE 1968 768 1968 1424
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 656 144 656 1536
            WIRE 656 1536 2048 1536
            WIRE 1968 368 2048 368
            WIRE 2048 368 2048 1536
        END BRANCH
    END SHEET
END SCHEMATIC
