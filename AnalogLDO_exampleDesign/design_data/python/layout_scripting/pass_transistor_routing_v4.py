# import pya
import sys

sys.path.append("./")
from cont import *
import klayout.db


def via1(cell, via1_layer, x0, y0, via_size):
    box = pya.Box(x0, y0, x0 + via_size, y0 + via_size)
    cell.shapes(via1_layer).insert(box)


def via1_array(cell, via1_layer, x0, y0, num_row, num_col, array_sep, via_size):
    for i in range(num_row):
        for j in range(num_col):
            via1(
                cell,
                via1_layer,
                x0 + j * array_sep + j * via_size,
                y0 + i * array_sep + i * via_size,
                via_size,
            )


def gate_connection(cell, layout, x0, y0, length, gates_num, difusion_hsp, path_width):
    box = pya.Box(
        x0,
        y0,
        x0 + (gates_num - 1) * difusion_hsp + gates_num * length,
        y0 + path_width,
    )

    for i in range(gates_num):
        poly_box = pya.Box(
            x0 + i * (difusion_hsp + length),
            y0,
            x0 + (difusion_hsp + length) * i + length,
            y0 + path_width,
        )
        cell.shapes(poly).insert(poly_box)

    num_row = 2
    num_col = 1
    for i in range(gates_num):
        contact_array(
            cell,
            layout,
            x0
            + (length - (num_col * 180 + (num_col - 1) * 180)) / 2
            + i * (difusion_hsp + length),
            y0 + (path_width - (num_row * 180 + (num_row - 1) * 180)) / 2,
            num_row,
            num_col,
        )

    cell.shapes(layer).insert(box)


def source_connection(
    cell, layout, x0, y0, length, gates_num, difusion_hsp, path_width
):
    for j in range(int(gates_num / 2) + 1):
        x0_0 = x0 + j * (length + difusion_hsp) * 2
        src_path = pya.Box(
            x0_0, y0, x0_0 + 300, y0 + 220 + 2820 + path_width + h_path_width + 180
        )
        m1_path = pya.Box(x0_0, y0, x0_0 + 300, y0 + tran_w)
        cell.shapes(m2_layer).insert(src_path)
        cell.shapes(layer).insert(m1_path)
        via1_array(
            cell,
            via2_layer,
            x0_0 + (300 - 190) / 2,
            y0 + path_width + 220 + h_path_sep_width + (300 - 190) / 2,
            24,
            1,
            220,
            190,
        )
        via1_array(cell, via1_layer, x0_0 + (300 - 190) / 2, y0 + 50, 38, 1, 220, 190)

    # src_hpath = pya.Box(x0, y0+tran_w+path_width+220+h_path_sep_width, x0+(gates_num)*(length)+(gates_num)*difusion_hsp+300, y0+tran_w+path_width+220+h_path_sep_width+h_path_width)
    src_hpath = pya.Box(
        x0,
        y0 + path_width + 220 + h_path_sep_width,
        x0 + (gates_num) * (length) + (gates_num) * difusion_hsp + 300,
        y0 + path_width + 220 + h_path_sep_width + h_path_width,
    )
    cell.shapes(topm1_layer).insert(src_hpath)


def drain_connection(cell, layout, x0, y0, length, gates_num, difusion_hsp, path_width):
    for j in range(int(gates_num / 2) + 1):
        x0_0 = x0 + (length + difusion_hsp) + j * (length + difusion_hsp) * 2
        src_path = pya.Box(
            x0_0,
            y0,
            x0_0 + 300,
            y0 + 220 + path_width + 2 * h_path_width + 2 * h_path_sep_width,
        )
        m1_path = pya.Box(x0_0, y0, x0_0 + 300, y0 + tran_w)
        cell.shapes(layer).insert(m1_path)
        cell.shapes(m2_layer).insert(src_path)
        via1_array(
            cell,
            via2_layer,
            x0_0 + (300 - 190) / 2,
            y0
            + path_width
            + 220
            + 2 * h_path_sep_width
            + h_path_width
            + (300 - 190) / 2,
            24,
            1,
            220,
            190,
        )
        via1_array(cell, via1_layer, x0_0 + (300 - 190) / 2, y0 + 50, 38, 1, 220, 190)

    src_hpath = pya.Box(
        x0 + (length + difusion_hsp),
        y0 + path_width + 220 + 2 * h_path_sep_width + h_path_width,
        x0
        + (gates_num - 2) * (length)
        + (gates_num - 1) * difusion_hsp
        + length
        + difusion_hsp
        - 80,
        y0 + path_width + 220 + 2 * h_path_sep_width + 2 * h_path_width,
    )
    cell.shapes(topm1_layer).insert(src_hpath)


def source_tranarray_interconn(x0, y0, path_length, tran_num_row, i):
    box = pya.Box(
        x0,
        y0 + h_path_sep_width,
        x0 - v_path_width - v_path_sep_width,
        y0 + h_path_sep_width + h_path_width,
    )
    # cell.shapes(m3_layer).insert(box)
    cell.shapes(topm1_layer).insert(box)
    box_m4 = pya.Box(
        x0 - v_path_sep_width,
        y0 + h_path_sep_width,
        x0 - v_path_width - v_path_sep_width,
        y0 + h_path_sep_width + h_path_width,
    )
    cell.shapes(m4_layer).insert(box_m4)
    cell.shapes(m5_layer).insert(box_m4)
    # box_1 = pya.Box(x0+path_length, y0, x0+path_length+3*difusion_hsp, y0+300)
    # cell.shapes(layer).insert(box_1)
    via1_array(
        cell,
        via3_layer,
        x0 - v_path_sep_width - v_path_width + (300 - 190) / 2,
        y0 + h_path_sep_width + (300 - 190) / 2,
        21,
        21,
        290,
        190,
    )
    via1_array(
        cell,
        via4_layer,
        x0 - v_path_sep_width - v_path_width + (300 - 190) / 2,
        y0 + h_path_sep_width + (300 - 190) / 2,
        21,
        21,
        290,
        190,
    )
    via1_array(
        cell,
        topvia1_layer,
        x0 - v_path_sep_width - v_path_width + 100,
        y0 + h_path_sep_width + 100,
        12,
        12,
        420,
        420,
    )
    # via1(cell, via1_layer, x0+path_length+3*difusion_hsp+(300-190)/2-300, y0+(300-190)/2)

    if i < tran_num_row:
        box_2 = pya.Box(
            x0 - v_path_sep_width + 300,
            y0 - tran_w - path_width - 220 - 2950,
            x0 - v_path_sep_width - v_path_width - 320,
            y0 + 300 + tran_vsp,
        )
        cell.shapes(topm1_layer).insert(box_2)
        # box_3 = pya.Box(x0+path_length+v_path_sep_width, y0, x0+path_length+v_path_sep_width+v_path_width, y0+300+tran_vsp)
        # cell.shapes(m4_layer).insert(box_3)


def drain_tranarray_interconn(x0, y0, path_length, tran_num_row, i):
    #    box_dlt = pya.Box(x0, y0, x0-7*difusion_hsp, y0+300)
    #    cell.shapes(layer).insert(box_dlt)
    box_drt = pya.Box(
        x0 + path_length,
        y0 + 2 * h_path_sep_width + h_path_width,
        x0 + path_length + v_path_sep_width + v_path_width,
        y0 + 2 * h_path_sep_width + 2 * h_path_width,
    )
    cell.shapes(topm1_layer).insert(box_drt)
    box_m4 = pya.Box(
        x0 + path_length + v_path_sep_width,
        y0 + 2 * h_path_sep_width + h_path_width,
        x0 + path_length + v_path_sep_width + v_path_width,
        y0 + 2 * h_path_sep_width + 2 * h_path_width,
    )
    cell.shapes(m4_layer).insert(box_m4)
    cell.shapes(m5_layer).insert(box_m4)
    #    via1(cell, via1_layer, x0-7*difusion_hsp+(300-190)/2, y0+(300-190)/2)
    via1_array(
        cell,
        via3_layer,
        x0 + path_length + h_path_sep_width + 300 + (300 - 190) / 2 - 300,
        y0 + 2 * v_path_sep_width + h_path_width + (300 - 190) / 2,
        21,
        21,
        290,
        190,
    )
    via1_array(
        cell,
        via4_layer,
        x0 + path_length + h_path_sep_width + 300 + (300 - 190) / 2 - 300,
        y0 + 2 * v_path_sep_width + h_path_width + (300 - 190) / 2,
        21,
        21,
        290,
        190,
    )
    via1_array(
        cell,
        topvia1_layer,
        x0 + path_length + h_path_sep_width + 100,
        y0 + 2 * v_path_sep_width + h_path_width + 100,
        12,
        12,
        420,
        420,
    )
    if i < tran_num_row:
        #        box_d = pya.Box(x0-7*difusion_hsp, y0, x0-7*difusion_hsp+300, y0+tran_vsp+300)
        #        cell.shapes(m2_layer).insert(box_d)
        box_drv = pya.Box(
            x0 + path_length + v_path_sep_width - 320,
            y0,
            x0 + path_length + v_path_sep_width + v_path_width + 320,
            y0 + tran_vsp + 300,
        )
        cell.shapes(topm1_layer).insert(box_drv)


def poly_interconn(cell, layout, x0, y0):
    box = pya.Box(x0 + 340, y0 + tran_w + 180, x0 + 340 - 2500, y0 + tran_w + 180 + 700)
    cell.shapes(layer).insert(box)
    via1_array(
        cell, via1_layer, x0 + 340 - 2500 + 50, y0 + tran_w + 180 + 50, 2, 2, 220, 190
    )
    if i < tran_num_row - 1:
        box_con = pya.Box(
            x0 + 340 - 2500 + 700,
            y0 + tran_w + 180,
            x0 + 340 - 2500,
            y0 + tran_w + 180 + tran_vsp + 700,
        )
        cell.shapes(m2_layer).insert(box_con)


def guard_ring(cell, layout, x0, y0, width, hight, path_width):
    box_1 = pya.Box(x0, y0, x0 + width, y0 + path_width)
    box_m1 = pya.Box(
        x0 + width, y0, x0 - v_path_sep_width - v_path_width, y0 + path_width
    )
    box_m2 = pya.Box(
        x0 - v_path_sep_width, y0, x0 - v_path_sep_width - v_path_width, y0 + path_width
    )
    box_nwell = pya.Box(x0 - 310, y0 - 400, x0 + width + 310, y0 + path_width + 360)
    contact_array(cell, layout, x0 + 200, y0 + 400, 4, 324)
    via1_array(
        cell,
        via1_layer,
        x0 - v_path_sep_width - v_path_width + 250,
        y0 + 250,
        4,
        20,
        290,
        190,
    )
    via1_array(
        cell,
        via2_layer,
        x0 - v_path_sep_width - v_path_width + 250,
        y0 + 250,
        4,
        20,
        290,
        190,
    )
    via1_array(
        cell,
        via3_layer,
        x0 - v_path_sep_width - v_path_width + 250,
        y0 + 250,
        4,
        20,
        290,
        190,
    )
    via1_array(
        cell,
        via4_layer,
        x0 - v_path_sep_width - v_path_width + 250,
        y0 + 250,
        4,
        20,
        290,
        190,
    )
    via1_array(
        cell,
        topvia1_layer,
        x0 - v_path_sep_width - v_path_width + 250,
        y0 + 250,
        2,
        11,
        420,
        420,
    )
    # box_2 = pya.Box(x0+width, y0, x0+width+path_width, y0+hight+2*path_width)
    # box_3 = pya.Box(x0-path_width, y0, x0, y0+hight+2*path_width)
    # box_4 = pya.Box(x0, y0+hight+path_width, x0+width, y0+hight+2*path_width)
    cell.shapes(active_layer).insert(box_1)
    cell.shapes(layer).insert(box_m1)
    cell.shapes(m2_layer).insert(box_m2)
    cell.shapes(m3_layer).insert(box_m2)
    cell.shapes(m4_layer).insert(box_m2)
    cell.shapes(m5_layer).insert(box_m2)
    cell.shapes(nwell).insert(box_nwell)


layout = klayout.db.Layout()
layout.read("../../klayout/gds/pass_transistor_routing_test.gds")

x0, y0 = [0, 0]  # reference
path_width = 600  # length of the paths
gates_num = 125  # number of gates

difusion_hsp = 380
length = 500

tran_vsp = 30120
tran_w = 16000

h_path_width = 10000
v_path_width = 10000
h_path_sep_width = 3000
v_path_sep_width = 3000

top_cell = layout.cell("TOP")
cell = layout.create_cell("tran_routing")
layer = layout.layer(8, 0)
poly = layout.layer(5, 0)
via1_layer = layout.layer(19, 0)
via2_layer = layout.layer(29, 0)
via3_layer = layout.layer(49, 0)
via4_layer = layout.layer(66, 0)
topvia1_layer = layout.layer(125, 0)

m2_layer = layout.layer(10, 0)
m3_layer = layout.layer(30, 0)
m4_layer = layout.layer(50, 0)
m5_layer = layout.layer(67, 0)

topm1_layer = layout.layer(126, 0)
nwell = layout.layer(31, 0)
active_layer = layout.layer(1, 0)

tran_num_row = 4
for i in range(tran_num_row):
    gate_connection(
        cell,
        layout,
        x0 + 340,
        y0 + tran_w + 180 + i * tran_vsp,
        length,
        gates_num,
        difusion_hsp,
        path_width,
    )
    source_connection(
        cell, layout, x0, y0 + i * tran_vsp, length, gates_num, difusion_hsp, path_width
    )
    drain_connection(
        cell, layout, x0, y0 + i * tran_vsp, length, gates_num, difusion_hsp, path_width
    )
    source_tranarray_interconn(
        x0,
        y0 + path_width + 220 + i * tran_vsp,
        (gates_num) * (length) + (gates_num) * difusion_hsp + 300,
        tran_num_row,
        i,
    )
    drain_tranarray_interconn(
        x0 + length + difusion_hsp,
        y0 + path_width + 220 + i * tran_vsp,
        (gates_num - 2) * (length) + (gates_num - 1) * difusion_hsp - 80,
        tran_num_row,
        i,
    )
    poly_interconn(cell, layout, x0, y0 + i * tran_vsp)
    guard_ring(cell, layout, x0, y0 - 2670 + i * tran_vsp, 110300, 23000, 2000)

top_cell.insert(pya.CellInstArray(cell, pya.DTrans()))
layout.write("../../klayout/gds/pass_transistor.gds")
