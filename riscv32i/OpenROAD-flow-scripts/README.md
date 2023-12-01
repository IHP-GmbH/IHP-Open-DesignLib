# Instructions to add new design

The directory structure follows the structure of th OpenROAD-flow-scripts tool. 

1. Copy your source code (verilog files) into `designs/src/<design-name>/` directory.
2. Copy your configuratuion and constraint files into `designs/ihp-13g2/<design-name>/` directory.
3. Copy the results of the flow into `results/ihp-13g2/<design-name/base/  directory.

`
# IHP-Open-IP with ORFS
Open source designs developed with IHP 130nm BiCMOS Open Source PDK

If your design uses OpenROAD-flow-scripts this is the proposed directory structure:
```
.
└── IHP-OPEN-IP/
    ├── <design_name>/
    │   ├── README.md                     <- add your design description here
    │   ├── OpenROAD-flow-scripts/
    │   │   ├── designs/
    │   │   │   ├── src/
    │   │   │   │   └── <design-name>/      <- source code goes here/
    │   │   │   │       ├── top-level-verilog.v
    │   │   │   │       ├── ...
    │   │   │   │       ├── other-verilog-files.v
    │   │   │   │       └── README.v
    │   │   │   └── ihp-13g2/
    │   │   │       └── design-name/
    │   │   │           ├── config.mk        <- OpenROAD config script
    │   │   │           └── constraint.sdc   <- Design SDC constraints 
    │   │   └── results/ihp-13g2/<design-name>/base/
    │   │       ├── 1_synth.v
    │   │       ├── 1.synth.sdc
    │   │       ├── 6_final.v
    │   │       ├── 6_final.spef
    │   │       ├── 6_final.gds
    │   │       └── 6_final.def
    │   ├── doc/                     <- add your design documentation here
    │   ├── design_data/             <- add your design data here
    │   ├── val/                     <- add your design validation data here
```
