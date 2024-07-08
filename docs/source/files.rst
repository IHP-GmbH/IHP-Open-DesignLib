Files and directories
========================

In a case of analog or mixed signal designs after successful cloning of the  **IHP-Open-DesignLib** respository you should copy and rename the ``<design_name>`` directory in order to conserve
the directory structure. 

::

  ../
  ├── CODE_OF_CONDUCT.md
  ├── <design_name>
  ├── design_name
  .
  .   other designs
  .
  ├── docs
  ├── LICENSE
  ├── pyproject.toml
  └── README.md

The internal structure of the template named ``design_name`` is shown below:
::
  
  ../<design_name>/
  ├── design_data
  ├── doc
  └── val

#. Use ``doc/`` directory for respective documentation (md, rst) formats are recommended. It is recommended to document here the initial specification and the measurement results. 
#. Use ``val`` to provide validation data like: test benches, raw simulaton results, sign-off reports, DRC and LVS reports. Try to keep the above mentioned data separated.    
#. Use ``design_data`` to store your design related data like: schematic entries, gds files, netlists, configuration files, lef and liberty views. Try to keep the design data in a separate folders. 

The ``design_data`` organization can be organized as follows:

::

  ../design_name
  ├── design_data
  │   ├── gds
  │   │   └── FMD_QNC_design_name.gds
  │   ├── klayout
  │   │   ├── design_name.gds
  │   │   ├── drc
  │   │   │   └── design_name.lyrdb
  │   │   └── lvs
  │   │       └── design_name.lyrdb
  │   ├── README.md
  │   └── xschem
  │       ├── design_name.sch
  │       ├── design_name_tb.sch
  │       ├── simulations
  │       │   ├── design_name.spice
  │       │   └── design_name_tb.spice
  │       └── xschemrc
  ├── doc
  │   └── README.md
  └── val
      └── README.md

It is mandatory to deliver the final gds in the ``gds`` directory with a prefix ``FMD_QNC`` 


In a case of digital designs where ``OpenROAD-flow-scripts`` is used copy and paste the files from your local ORFS installation to the respective directories conserving the directory structures. An example of a riscv32i design is added in the repository in ``design_name`` directory (not all files are listed)

::

  ../design_name/
  └── OpenROAD-flow-scripts
      ├── designs
      │   ├── ihp-13g2
      │   │   └── design_name
      │   │       ├── config.mk
      │   │       └── constraint.sdc
      │   └── src
      │       └── design_name
      │           ├── README.md
      │           └── top.v
      ├── README.md
      └── results
          └── ihp-13g2
              └── design_name
                  └── base
                      ├── 1_synth.sdc
                      ├── 1_synth.v
                      ├── 6_final.def
                      ├── 6_final.gds
                      ├── 6_final.sdc
                      ├── 6_final.spef
                      └── 6_final.v



.. autosummary::
   :toctree: generated
  

