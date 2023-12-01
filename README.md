# IHP-Open-IP
Open source designs developed with IHP 130nm BiCMOS Open Source PDK

Proposed directory structure:
```
.
└── <design_name>
    ├── doc/
    │   ├── specification
    │   ├── ...
    ├── design_data/
    │   └── ...
    └── val/ <- validation/verification
    |__ OpenROAD-flow-scripts/ 
```
At this moment we provide support for OpenROAD-flow-scripts flow. 
If your design does not use OpenROAD-flow-scripts/ just skip this directory. 
