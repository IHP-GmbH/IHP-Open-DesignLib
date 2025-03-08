# LDO design and simulations

> © Daniel Arevalos, Innovations for High Performance Microelectronics (IHP).

### Directory Structure

```
📁LDO                         
├─ 📄ldo_tb_closeloop.sch	#Testbench for the ldo with the loop closed
├─ 📄ldo_tb_openloop.sch	#Testbench for the ldo with the loop opened
├─ 📄ldo.sch			#ldo schematic
├─ 📄ldo.sym			#ldo symbol
└─ 📄Makefile			#Open and run the simulations

### How to run the simulations

You can run the simulations by doing:

```
make
```

And then tu visualize the resulting graphs by clicking the "Load Graphs" green arrow of the schematic with Crtl+left_click.

Or you can open the schematics and run the simulations by clicking the "Run Simulation" green arrow.
