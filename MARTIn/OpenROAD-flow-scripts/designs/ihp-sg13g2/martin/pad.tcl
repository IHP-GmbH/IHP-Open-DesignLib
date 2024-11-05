#Create IO sites
make_io_sites -horizontal_site sg13g2_ioSite -vertical_site sg13g2_ioSite -corner_site sg13g2_ioSite -offset 100 -rotation_vertical R0 -rotation_horizontal R0 -rotation_corner R0

#Place IO pads

place_pad -master sg13g2_IOPadVdd -row IO_WEST -location 280 VDD
place_pad -master sg13g2_IOPadIOVdd -row IO_WEST -location 360 IOVDD
place_pad -row IO_WEST -location 440 port_clk_cell
place_pad -row IO_WEST -location 520 port_rst_cell
place_pad -row IO_WEST -location 600 port_wr_enable_cell
place_pad -row IO_WEST -location 680 port_aux_enable_cell
place_pad -row IO_WEST -location 760 port_shreg_in_cell
place_pad -row IO_WEST -location 840 port_lfsr_out_cell


place_pad -row IO_SOUTH -location 280 port_data_out1_cell
place_pad -row IO_SOUTH -location 360 port_data_out2_cell
place_pad -row IO_SOUTH -location 440 port_data_out3_cell
place_pad -row IO_SOUTH -location 520 port_data_out4_cell
place_pad -row IO_SOUTH -location 600 port_data_out5_cell
place_pad -row IO_SOUTH -location 680 port_data_out6_cell
place_pad -row IO_SOUTH -location 760 port_data_out7_cell
place_pad -row IO_SOUTH -location 840 port_data_out8_cell


place_pad -master sg13g2_IOPadVss -row IO_EAST -location 280 VSS
place_pad -master sg13g2_IOPadIOVss -row IO_EAST -location 360 IOVSS
place_pad -row IO_EAST -location 440 port_reg_addr1_cell
place_pad -row IO_EAST -location 520 port_reg_addr2_cell
place_pad -row IO_EAST -location 600 port_reg_addr3_cell
place_pad -row IO_EAST -location 680 port_out_select1_cell
place_pad -row IO_EAST -location 760 port_out_select2_cell
place_pad -row IO_EAST -location 840 port_shreg_out_cell


place_pad -row IO_NORTH -location 280 port_data_in1_cell
place_pad -row IO_NORTH -location 360 port_data_in2_cell
place_pad -row IO_NORTH -location 440 port_data_in3_cell
place_pad -row IO_NORTH -location 520 port_data_in4_cell
place_pad -row IO_NORTH -location 600 port_data_in5_cell
place_pad -row IO_NORTH -location 680 port_data_in6_cell
place_pad -row IO_NORTH -location 760 port_data_in7_cell
place_pad -row IO_NORTH -location 840 port_data_in8_cell



#Fillers and corners

place_corners sg13g2_Corner

set iofill {sg13g2_Filler200
            sg13g2_Filler400
            sg13g2_Filler1000
            sg13g2_Filler2000
            sg13g2_Filler4000
            sg13g2_Filler10000}
place_io_fill -row IO_NORTH {*}$iofill
place_io_fill -row IO_SOUTH {*}$iofill
place_io_fill -row IO_WEST {*}$iofill
place_io_fill -row IO_EAST {*}$iofill

#Connection
connect_by_abutment


#Bondpads
place_bondpad -bond bondpad_70x70 port_* -offset "5 -70"
place_bondpad -bond bondpad_70x70 VSS -offset "5 -70"
place_bondpad -bond bondpad_70x70 VDD -offset "5 -70"
place_bondpad -bond bondpad_70x70 IOVDD -offset "5 -70"
place_bondpad -bond bondpad_70x70 IOVSS -offset "5 -70"

remove_io_rows
