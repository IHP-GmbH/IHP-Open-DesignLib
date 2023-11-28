# IHP-Open-IP
Open source designs developed with IHP 130nm BiCMOS Open Source PDK

Proposed directory structure:
```
.
└── IHP-OPEN-IP/
    ├── <design_name>/
    │   ├── README.md                     <- list of designs, add your design here
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
    │   └── OpenLane/                       <- To be defined
    ├── analog/                             <- To be defined  
    ├── mixed/                              <- To be defined  
    ├── README.md
    ├── CODE_OF_CONDUCT.md
    └── LICENSE
```
