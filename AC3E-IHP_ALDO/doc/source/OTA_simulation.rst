
.. _OTA_simulation:

OTA Simulation
==========

Overview
------------

This section provides documentation for running simulations on the OTA design to evaluate its performance characteristics such as Gain and GBW. A Python script is used to automate the simulations and generate relevant figures.

To run the Python script, navigate to the folder containing the schematic testbench files and use the following command in your terminal:

.. code-block:: sh

    python3 run.py

Open-Loop Simulations
------------

.. figure:: fig/ota_tb_openloop.png
  :align: center
  :width: 900
  :alt: OTA open-loop simulation schematic

  OTA open-loop simulation schematic

The open-loop simulations performed on the OTA design include:

- **AC Simulation**: Used to extract the Gain and GBW.

The following figure illustrates the results of the simulations:

.. figure:: fig/ota_tb_openloop_ac.png
  :align: center
  :width: 400
  :alt: OTA open-loop simulation

  OTA open-loop simulation