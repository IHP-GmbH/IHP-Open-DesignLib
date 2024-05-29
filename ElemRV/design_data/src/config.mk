export DESIGN_NAME     = ElemRVTop
export DESIGN_NICKNAME = ElemRV
export PLATFORM        = ihp-sg13g2

export VERILOG_FILES = \
	./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/src/ElemRVTop.v
export SDC_FILE = \
	./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export SEAL_GDS = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/macros/sealring/sealring_2015x2014.gds.gz

# Available area: 1920um x 1920um
# Sealring: roughly 60um
# Remaining chip area: 1860um x 1860um
# I/O pads: 180um
# Bondpads: 70um
# Margin for core power ring: 80um
# Total margin to core area: 330um
# Core site: 0.48 x 3.78
export DIE_AREA = 0 0 2015.04 2014.74
export CORE_AREA = 394.08 396.92 1622.4 1617.86

# Allow routing on the TopMetal layers
export MAX_ROUTING_LAYER = TopMetal2

export USE_FILL = 1

export TNS_END_PERCENT = 100

export PLACE_DENSITY = 0.80

export FOOTPRINT_TCL = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/pad.tcl
export PDN_TCL = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/pdn.tcl

# Following exports should be part of platforms/ihp-sg13g2/config.mk and
# might be obsolete in the future.
export ADDITIONAL_LEFS = \
	./platforms/$(PLATFORM)/lef/sg13g2_io.lef \
	./platforms/$(PLATFORM)/lef/bondpad_70x70.lef
export ADDITIONAL_GDS = \
	./platforms/$(PLATFORM)/gds/sg13g2_io.gds \
	./platforms/$(PLATFORM)/gds/bondpad_70x70.gds
export ADDITIONAL_LIBS = \
	./platforms/$(PLATFORM)/lib/sg13g2_io_dummy.lib
