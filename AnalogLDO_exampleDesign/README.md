# AC3E-IHP_ALDO - Design example for IHP - Open Source PDK.

> © Daniel Arevalos, Advanced Center for Electrical and Electronic Engineering (AC3E), Innovations for High Performance Microelectronics (IHP).

This is a design made as an example for the IHP-Open-PDK technology.

![](docs/source/fig/LDO_AC3E_nofill.png)

### Directory Structure

```
├─ 📁 klayout
├─ 📁 xschem
├─ 📁 python
├─ 📁 results
└─ 📄Makefile.mk
```

### Overview

The design consist in:

1. LDO_Closed-loop: low dropout regulator with feedback loop 
2. LDO_Open-loop: low dropout regulator with the feedback loop opened.
3. Pass transistor: The pass transistor used in the LDO. 
4. OTA Open-Loop: Two stage Transconductance amplifier used in the LDO design.
5. TGATE1: transmission gate for testing.
6. TGATE2: transmission gate for testing. 

<img width="500" src="docs/source/fig/LDO_AC3E_designs.png">

Pin Number | Pin Name     | Type         | Description                              |
|------| ------------ | ------------ | ---------------------------------------- |
|1| Vout_ldo_cl  | Analog       | LDO CL design output            |
|2| Vin_ldo_cl   | Power Supply | LDO CL design Input voltage     |
|3| Vref_ldo_cl  | Analog       | LDO CL design Voltage reference |
|4| ibias_ldo_cl | Analog       | LDO CL design ibias current     |
|5| TGATE1_IN    | Analog       | Tgate1 input                             |
|6| TGATE2_IN    | Analog       | Tgate2 input                             |
|7| TGATE1_EN    | Digital      | Tgate1 enable                            |
|8| Vss          | Power Supply | Global Ground                            |
|9| TGATE1_OUT   | Analog       | Tgate1 output                            |
|10| TGATE2_OUT   | Analog       | Tgate2 output                            |
|11| TGATE2_EN    | Digital      | Tgate2 enable                            |
|12| TGATE_VDD    | Power Supply | Tgate1 and Tgate2 power supply           |
|13| NOT USED     |              |                                          |
|14| vdd_ota      | Power Supply | OTA power supply                         |
|15| ibias_ota    | Analog       | OTA bias current                         |
|16| in_pos_ota   | Analog       | OTA positive input                       |
|17| out_ota      | Analog       | OTA output                               |
|18| in_neg_ota   | Analog       | OTA negative input                       |
|19| Vgate_pt     | Analog       | Pass Transistor Gate                     |
|20| Vdrain_pt    | Analog       | Pass Transistor Drain                    |
|21| Vss          | Power Supply | Global Ground                            |
|22| Vsource_ota  |              | Pass Transistor source                   |
|23| vdiv_ldo_ol  | Analog       | LDO OL volage divider output      |
|24| pos_ldo_ol   | Analog       | LDO OL positive input             |
|25| Vout_ldo_ol  | Analog       | LDO OL output voltage             |
|26| ibias_ldo_ol | Analog       | LDO OL bias current               |
|27| vref_ldo_ol  | Analog       | LDO OL voltage reference          |
|28| Vin_ldo_ol   | Power Supply | LDO OL power supply               |


