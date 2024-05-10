OpenROAD-flow-scripts flow tutorial
========================================

The goal of this document is to provide to the community a working exmaple of a digital design 
synthesized using OpenROAD-flow-scripts (ORFS) flow. The orginal ORFS flow does not contain padring 
generation, since it is a custom/design dependent step. In this example we provide custom padring,
which can be then scaled according to the user's criteria. 

In order to provide a padring some more files will be needed. First of all the orginal behavioral verilog have to be extended 
in order to add IO cells. The best way to do so is to add another level of hierarchy on top of the existing one. The input/outoput port should be defined as ``inout`` and it is a good practice to add ``_pad`` postfix at the end of each name in order to boost verbosity. 

.. code-block:: verilog

  module mini
  (
    inout  wire clk_pad,
    inout  wire rst_pad,
    inout  wire xIn1_pad,
    inout  wire xIn2_pad,
    inout  wire xIn3_pad,
    inout  wire yOut1_pad,
    inout  wire yOut2_pad,
    inout  wire zInOut1_pad
  );      

In the actual code respective inputs/outputs can be propagated using wires and IO instances defined in ``platforms/verilog/sg13g2_io.v``.

.. code-block:: verilog

  wire xIn1_core; 
  
  sg13g2_IOPadIn sg13g2_IOPadIn_x1 (
    .p2c (xIn1_core), 
    .pad ({xIn1_pad}) 
  );
As earlier ``_core`` postfix was added to indicate wire assignment to the IO cell.

After performing synthesis using ``yosys`` a gate level netlist will contain IO cells instantiation what can be reviewed in 
``results/ihp-sg13g2/mini/base/1_1_yosys.v``. 


After successful cloning of the  **IHP-Open-DesignLib** respository you should copy the ``riscv32i`` directory in order to conserve
the directory structure. You can do it executing:

.. code-block:: console

  cp -R riscv32i your_design

The directory structure should look like on the following graphics (right image)

# .. image:: fig/directories.png
#  :width: 600


The internal structure of the ``your_design`` is presented on the figure below

# .. image:: fig/directories2.png
#  :width: 300


1. If you use ``OpenROAD-flow-scripts`` just copy and paste the files from your local ORFS installation to the respective directories conserving the directory structures.

2. Use ``doc/`` directory for respective documentation (md, rst) formats are recommended. It is recommended to document here the initial specification and the measurement results. 

3. Use ``design_data`` to store your design related data like: schematic entries, gds files, netlists, configuration files, lef and liberty views. Try to keep the design data in a separate folders. 

4. Use ``val`` to provide validation data like: test benches, raw simulaton results, sign-off reports, DRC and LVS reports. Try to keep the above mentioned data separated.    

  


  .. autosummary::
   :toctree: generated
  

