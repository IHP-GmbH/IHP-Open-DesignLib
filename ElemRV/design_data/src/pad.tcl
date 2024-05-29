set IO_LENGTH 180
set IO_WIDTH 80
set BONDPAD_SIZE 70
set SEALRING_OFFSET 70
set MAX_NUM_PADS_HORIZONTAL 12
set MAX_NUM_PADS_VERTICAL 11

proc calc_horizontal_pad_location {index} {
    global IO_LENGTH
    global IO_WIDTH
    global BONDPAD_SIZE
    global MAX_NUM_PADS_HORIZONTAL
    global SEALRING_OFFSET

    set DIE_WIDTH [expr {[lindex $::env(DIE_AREA) 2] - [lindex $::env(DIE_AREA) 0]}]
    set PAD_OFFSET [expr {$IO_LENGTH + $BONDPAD_SIZE + $SEALRING_OFFSET}]
    set PAD_AREA_WIDTH [expr {$DIE_WIDTH - ($PAD_OFFSET * 2)}]
    set HORIZONTAL_PAD_DISTANCE [expr {($PAD_AREA_WIDTH / $MAX_NUM_PADS_HORIZONTAL) - $IO_WIDTH}]

    return [expr {$PAD_OFFSET + (($IO_WIDTH + $HORIZONTAL_PAD_DISTANCE) * $index) + ($HORIZONTAL_PAD_DISTANCE / 2)}]
}

proc calc_vertical_pad_location {index} {
    global IO_LENGTH
    global IO_WIDTH
    global BONDPAD_SIZE
    global MAX_NUM_PADS_VERTICAL
    global SEALRING_OFFSET

    set DIE_HEIGHT [expr {[lindex $::env(DIE_AREA) 3] - [lindex $::env(DIE_AREA) 1]}]
    set PAD_OFFSET [expr {$IO_LENGTH + $BONDPAD_SIZE + $SEALRING_OFFSET}]
    set PAD_AREA_HEIGHT [expr {$DIE_HEIGHT - ($PAD_OFFSET * 2)}]
    set VERTICAL_PAD_DISTANCE [expr {($PAD_AREA_HEIGHT / $MAX_NUM_PADS_VERTICAL) - $IO_WIDTH}]

    return [expr {$PAD_OFFSET + (($IO_WIDTH + $VERTICAL_PAD_DISTANCE) * $index) + ($VERTICAL_PAD_DISTANCE / 2)}]
}

make_fake_io_site -name IOLibSite -width 1 -height $IO_LENGTH
make_fake_io_site -name IOLibCSite -width $IO_LENGTH -height $IO_LENGTH

set IO_OFFSET [expr {$BONDPAD_SIZE + $SEALRING_OFFSET}]
# Create IO Rows
make_io_sites \
    -horizontal_site IOLibSite \
    -vertical_site IOLibSite \
    -corner_site IOLibCSite \
    -offset $IO_OFFSET

# Place Pads
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  0] {sg13g2_IOPadIOVdd_1} -master sg13g2_IOPadIOVdd
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  1] {sg13g2_IOPadIOVss_1} -master sg13g2_IOPadIOVss
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  2] {sg13g2_IOPadVss_1} -master sg13g2_IOPadVss
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  3] {sg13g2_IOPadVdd_1} -master sg13g2_IOPadVdd
# jtag tms
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  4] {sg13g2_IOPadIn_3}
# jtag tdi
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  5] {sg13g2_IOPadIn_4}
# jtag tdo
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  6] {sg13g2_IOPadOut4mA_1}
# jtag tck
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  7] {sg13g2_IOPadIn_5}
# uart rxd
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  8] {sg13g2_IOPadIn_6}
# uart cts
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location  9] {sg13g2_IOPadIn_7}
# uart txd
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 10] {sg13g2_IOPadOut4mA_2}
# uart rts
place_pad -row IO_SOUTH -location [calc_horizontal_pad_location 11] {sg13g2_IOPadOut4mA_3}


place_pad -row IO_EAST -location [calc_vertical_pad_location  0] {sg13g2_IOPadIOVdd_2} -master sg13g2_IOPadIOVdd
place_pad -row IO_EAST -location [calc_vertical_pad_location  1] {sg13g2_IOPadIOVss_2} -master sg13g2_IOPadIOVss
place_pad -row IO_EAST -location [calc_vertical_pad_location  2] {sg13g2_IOPadVss_2} -master sg13g2_IOPadVss
place_pad -row IO_EAST -location [calc_vertical_pad_location  3] {sg13g2_IOPadVdd_2} -master sg13g2_IOPadVdd
# gpio 0
place_pad -row IO_EAST -location [calc_vertical_pad_location  4] {sg13g2_IOPadInOut4mA_1}
# clock
place_pad -row IO_EAST -location [calc_vertical_pad_location  5] {sg13g2_IOPadIn_1}
# reset
place_pad -row IO_EAST -location [calc_vertical_pad_location  6] {sg13g2_IOPadIn_2}
# hyperbus reset
place_pad -row IO_EAST -location [calc_vertical_pad_location  7] {sg13g2_IOPadOut4mA_5}
# hyperbus cs
place_pad -row IO_EAST -location [calc_vertical_pad_location  8] {sg13g2_IOPadOut4mA_4}
# hyperbus rwds
place_pad -row IO_EAST -location [calc_vertical_pad_location  9] {sg13g2_IOPadInOut30mA_9}
# hyperbus clock
place_pad -row IO_EAST -location [calc_vertical_pad_location 10] {sg13g2_IOPadOut30mA_1}


place_pad -row IO_NORTH -location [calc_horizontal_pad_location  0] {sg13g2_IOPadIOVdd_3} -master sg13g2_IOPadIOVdd
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  1] {sg13g2_IOPadIOVss_3} -master sg13g2_IOPadIOVss
# hyperbus dq0-7
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  2] {sg13g2_IOPadInOut30mA_1}
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  3] {sg13g2_IOPadInOut30mA_2}
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  4] {sg13g2_IOPadInOut30mA_3}
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  5] {sg13g2_IOPadInOut30mA_4}
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  6] {sg13g2_IOPadInOut30mA_5}
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  7] {sg13g2_IOPadInOut30mA_6}
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  8] {sg13g2_IOPadInOut30mA_7}
place_pad -row IO_NORTH -location [calc_horizontal_pad_location  9] {sg13g2_IOPadInOut30mA_8}
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 10] {sg13g2_IOPadIOVss_4} -master sg13g2_IOPadIOVss
place_pad -row IO_NORTH -location [calc_horizontal_pad_location 11] {sg13g2_IOPadIOVdd_4} -master sg13g2_IOPadIOVdd

place_pad -row IO_WEST -location [calc_vertical_pad_location  0] {sg13g2_IOPadIOVdd_5} -master sg13g2_IOPadIOVdd
place_pad -row IO_WEST -location [calc_vertical_pad_location  1] {sg13g2_IOPadIOVss_5} -master sg13g2_IOPadIOVss
place_pad -row IO_WEST -location [calc_vertical_pad_location  2] {sg13g2_IOPadVss_3} -master sg13g2_IOPadVss
place_pad -row IO_WEST -location [calc_vertical_pad_location  3] {sg13g2_IOPadVdd_3} -master sg13g2_IOPadVdd
# spi cs0
place_pad -row IO_WEST -location [calc_vertical_pad_location  4] {sg13g2_IOPadOut4mA_6}
# spi sck
place_pad -row IO_WEST -location [calc_vertical_pad_location  5] {sg13g2_IOPadOut4mA_7}
# spi dq0
place_pad -row IO_WEST -location [calc_vertical_pad_location  6] {sg13g2_IOPadInOut4mA_5}
# spi dq1
place_pad -row IO_WEST -location [calc_vertical_pad_location  7] {sg13g2_IOPadInOut4mA_6}
# gpio 1
place_pad -row IO_WEST -location [calc_vertical_pad_location  8] {sg13g2_IOPadInOut4mA_2}
# gpio 2
place_pad -row IO_WEST -location [calc_vertical_pad_location  9] {sg13g2_IOPadInOut4mA_3}
# gpio 3
place_pad -row IO_WEST -location [calc_vertical_pad_location 10] {sg13g2_IOPadInOut4mA_4}


# Place Corner Cells and Filler
place_corners sg13g2_Corner

set iofill {
    sg13g2_Filler10000
    sg13g2_Filler4000
    sg13g2_Filler2000
    sg13g2_Filler1000
    sg13g2_Filler400
    sg13g2_Filler200
}

place_io_fill -row IO_NORTH {*}$iofill
place_io_fill -row IO_SOUTH {*}$iofill
place_io_fill -row IO_WEST {*}$iofill
place_io_fill -row IO_EAST {*}$iofill

connect_by_abutment

place_bondpad -bond bondpad_70x70 sg13g2_IOPad* -offset {5.0 -70.0}

remove_io_rows
