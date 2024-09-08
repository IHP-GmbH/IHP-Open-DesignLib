import pya

def via(cell, via_layer, x0, y0):
    box = pya.Box(x0, y0, x0+via_size, y0+via_size)
    cell.shapes(via_layer).insert(box)

def via_array(cell, via_layer, x0, y0, num_row, num_col):
    for i in range(num_row):
        for j in range(num_col):
            via(cell, via_layer, x0+j*via_sep+j*via_size, y0+i*via_sep+i*via_size)
            
layout = pya.Layout()
layout.read("../../klayout/pass_transistor_routing_test.gds")
top_cell = layout.cell("TOP")
cell = layout.create_cell("via_array")

via1_layer = layout.layer(19, 0)
via2_layer = layout.layer(29, 0)
via3_layer = layout.layer(49, 0)
x0, y0 = [0, 0]
via_size = 190
via_sep = 220

via_array(cell, via1_layer, x0, y0, 100, 100)

top_cell.insert(pya.CellInstArray(cell, pya.DTrans()))
layout.write("../../klayout/pass_transistor_routing_test.gds")
