export XSCHEMRC=$(PDK_ROOT)/ihp-sg13g2/libs.tech/xschem/xschemrc
export LOG_XSCHEM_NETLIST=a.log

.PHONY: all
all: xschem_open

.PHONY: xschem_netlist
xschem_netlist: 

simulations/ota_tb_openloop.spice:
	xschem --rcfile $(XSCHEMRC) -x -n -q ota_tb_openloop.sch |& tee $(LOG_XSCHEM_NETLIST)
#simulations/ldo_tb_openloop.spice:
#	xschem --rcfile $(XSCHEMRC) -q ldo_tb_openloop.sch --command="xschem netlist"

.PHONY: xschem_simulate
xschem_simulate:  

/simulations/ota_tb_openloop.raw: simulations/ota_tb_openloop.spice
	cd simulations; \
	ngspice -b ota_tb_openloop.spice
#/simulations/ldo_ihp_v3_tb_openloop_tran.raw: simulations/ldo_tb_openloop.spice
#	cd simulations; \
#	ngspice -b ldo_tb_openloop.spice
	
.PHONY: xschem_open
xschem_open: /simulations/ota_tb_openloop.raw
	xschem --rcfile $(XSCHEMRC) ota_tb_openloop.sch
