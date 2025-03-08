import pya


def contact(x0, y0):
    box = pya.Box(x0, y0, x0 + 160, y0 + 160)
    return box


def contact_array(cell, layout, x0, y0, num_row, num_col):
    layer = layout.layer(6, 0)
    for i in range(num_col):
        for j in range(num_row):
            cell.shapes(layer).insert(
                contact(x0 + i * (180 + 160), y0 + j * (180 + 160))
            )


# layout = pya.Layout()
# transistor_reference = [57371, -34481]  #(x0,y0)
# cell = layout.create_cell("TOP")
# contact_array(cell, transistor_reference[0], transistor_reference[1], num_row=2, num_col=2)
# layout.write("../../klayout/contact_test.gds")
