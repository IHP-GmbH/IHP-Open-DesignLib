export DESIGN_NICKNAME = martin
export DESIGN_NAME = chip_top
export PLATFORM    = ihp-sg13g2



export VERILOG_FILES = ./designs/src/$(DESIGN_NICKNAME)/filter.v \
			           ./designs/src/$(DESIGN_NICKNAME)/shreg.v \
					   ./designs/src/$(DESIGN_NICKNAME)/lfsr.v \
		               ./designs/src/$(DESIGN_NICKNAME)/chip_top.v
export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc
export FOOTPRINT_TCL = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/pad.tcl


export DIE_AREA = 0.0 0.0 1200.0 1200.0
export CORE_AREA = 350.0 350.0 850.0 850.0

export TNS_END_PERCENT = 100
export PDN_TCL = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/pdn.tcl

export KLAYOUT_LVS_FILE = $(PLATFORM_DIR)/lvs/$(PLATFORM).lylvs
export KLAYOUT_DRC_FILE = $(PLATFORM_DIR)/drc/$(PLATFORM).lydrc
export CDL_FILE = $(PLATFORM_DIR)/cdl/$(PLATFORM).cdl

export USE_FILL = 1

