Welcome to AC3E-IHP_ALDO documentation!
===================================

.. note::

    This project is the result of a collaboration between the Advanced Center for Electrical and Electronic Engeneering (`AC3E <https://ac3e.usm.cl/index/>`_) and the Leibniz Institute for High Performance Microelectronics (`IHP <https://www.ihp-microelectronics.com>`_), intended to be a template for futures work related to IHP-OpenPDK technology tapeouts. For more information about the PDK please refer to the `official repository <https://github.com/IHP-GmbH/IHP-Open-PDK>`_.

Introduction
------------
This project includes design examples for IHP-Open-PDK technology, featuring various components like low dropout regulators, pass transistors, and amplifiers. Notably, this design was taped out as part of one of the first open-source tapeouts from IHP.

.. figure:: fig/LDO_AC3E_nofill.png
  :align: center

  TOP Layout

.. note::

   For information about the TOP layout distribution of the designs please refer to :ref:`TOP_design`.

This project includes:

1. Low Dropout Regulator (LDO) in both closed and open loop configurations.
2. The LDO Pass Transistor.
3. Two-Stage Transconductance Amplifier.
4. Transmission Gates for testing.

Below is a brief description of the main components of this project:

Low Dropout Regulator (LDO)
----------------------------

The LDO is the primary design in this project, created to provide a stable output voltage of 1.2V at 100mA (:ref:`LDO_design`). This design is completely characterized through corners and Monte Carlo simulations in the :ref:`LDO_simulation` section. Also, its main parameters are verified using the :ref:`CACE <CACE_simulations>` tool.

The LDO is separated into Closed-Loop and Open-Loop configurations, each with its own layout in the TOP.

Two-Stage Transconductance Amplifier
-------------------------------------

The 2-Stage Operational Transconductance Amplifier (:ref:`OTA_design`) is a submodule of the LDO, included as a separate design for measurement purposes. The simulations of the main parameter are in the :ref:``.

Pass Transistor
---------------

The Pass Transistor is a submodule of the LDO, included as a separate design for measurement purposes. The simulations and parameter verification of the pass transistor as a standalone component are currently a **work in progress**.



Transmission Gates
-------------------
**work in progress**.

Contents
--------

.. toctree::
   :caption: Design
   :maxdepth: 2
   
   TOP_design
   LDO_design
   OTA_design

.. toctree::   
   :caption: Simulations
   :maxdepth: 2

   CACE
   LDO_simulation
   OTA_simulation
   
.. toctree::   
   :caption: Layout
   :maxdepth: 2
   
   LDO_layout
   OTA_layout
   Passtransistor_layout
   
.. toctree::   
   :caption: Chip Testing
   :maxdepth: 2
   
   LDO_testing
