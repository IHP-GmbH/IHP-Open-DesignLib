export XSCHEMRC=$(PDK_ROOT)/ihp-sg13g2/libs.tech/xschem/xschemrc

.PHONY: all
all: xschem_open

.PHONY: xschem_netlist
xschem_netlist: 

simulations/ldo_tb_closeloop.spice:
	xschem --rcfile $(XSCHEMRC) -q ldo_tb_closeloop.sch --command="xschem netlist"
simulations/ldo_tb_openloop.spice:
	xschem --rcfile $(XSCHEMRC) -q ldo_tb_openloop.sch --command="xschem netlist"

.PHONY: xschem_simulate
xschem_simulate:  

/simulations/ldo_ihp_v3_tb_closeloop_tran.raw: simulations/ldo_tb_closeloop.spice
	cd simulations; \
	ngspice -b ldo_tb_closeloop.spice
/simulations/ldo_ihp_v3_tb_openloop_tran.raw: simulations/ldo_tb_openloop.spice
	cd simulations; \
	ngspice -b ldo_tb_openloop.spice
	
.PHONY: xschem_open
xschem_open: /simulations/ldo_ihp_v3_tb_closeloop_tran.raw /simulations/ldo_ihp_v3_tb_openloop_tran.raw
	xschem --rcfile $(XSCHEMRC) ldo_tb_closeloop.sch ldo_tb_openloop.sch
	
