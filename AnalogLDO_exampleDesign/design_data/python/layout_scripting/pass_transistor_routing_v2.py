import pya
import sys
sys.path.append("./")
from cont import *

def via1(cell, via1_layer, x0, y0):
    box = pya.Box(x0, y0, x0+190, y0+190)
    cell.shapes(via1_layer).insert(box)

def via1_array(cell, via1_layer, x0, y0, num_row, num_col):
    for i in range(num_row):
        for j in range(num_col):
            via1(cell, via1_layer, x0+j*220+j*190, y0+i*220+i*190)

def gate_connection(cell, layout, x0, y0, length, gates_num, difusion_hsp, path_width):
    
    box = pya.Box(x0, y0, x0+(gates_num-1)*difusion_hsp+gates_num*length, y0+path_width)

    for i in range(gates_num):
        poly_box = pya.Box(x0+i*(difusion_hsp+length), y0, x0+(difusion_hsp+length)*i+length, y0+path_width)
        cell.shapes(poly).insert(poly_box)
    
    num_row = 2
    num_col = 1 
    for i in range(gates_num):
        contact_array(cell, layout, x0+(length-(num_col*180+(num_col-1)*180))/2+i*(difusion_hsp+length), y0+(path_width-(num_row*180+(num_row-1)*180))/2, num_row, num_col)

    cell.shapes(layer).insert(box)

def source_connection(cell, layout, x0, y0, length, gates_num, difusion_hsp, path_width):

    for j in range(int(gates_num/2)+1):
        x0_0 = x0+j*(length+difusion_hsp)*2
        src_path = pya.Box(x0_0, y0, x0_0+300, y0+tran_w+180+path_width+300+180)
        cell.shapes(m2_layer).insert(src_path)
        via1(cell, via1_layer, x0_0+(300-190)/2, y0+tran_w+path_width+180+180+(300-190)/2)
        via1_array(cell, via1_layer, x0_0+(300-190)/2, y0, 38, 1)

    src_hpath = pya.Box(x0, y0+tran_w+path_width+180+180, x0+(gates_num)*(length)+(gates_num)*difusion_hsp+300, y0+tran_w+path_width+180+180+300)
    cell.shapes(layer).insert(src_hpath)
    

def drain_connection(cell, layout, x0, y0, length, gates_num, difusion_hsp, path_width):

    for j in range(int(gates_num/2)+1):
        x0_0 = x0+(length+difusion_hsp)+j*(length+difusion_hsp)*2
        src_path = pya.Box(x0_0, y0, x0_0+300, y0+tran_w+180+path_width+2*300+2*180)
        cell.shapes(m2_layer).insert(src_path)
        via1(cell, via1_layer, x0_0+(300-190)/2, y0+tran_w+path_width+180+2*180+300+(300-190)/2)
        via1_array(cell, via1_layer, x0_0+(300-190)/2, y0, 38, 1)

    src_hpath = pya.Box(x0+(length+difusion_hsp), y0+tran_w+path_width+180+2*180+300, x0+(gates_num-2)*(length)+(gates_num-1)*difusion_hsp+length+difusion_hsp-80, y0+tran_w+path_width+180+2*180+2*300)
    cell.shapes(layer).insert(src_hpath)

def source_tranarray_interconn(x0, y0, path_length, tran_num_row, i):
    box = pya.Box(x0, y0, x0-3*difusion_hsp, y0+300)
    cell.shapes(layer).insert(box)
    box_1 = pya.Box(x0+path_length, y0, x0+path_length+3*difusion_hsp, y0+300)
    cell.shapes(layer).insert(box_1)
    via1(cell, via1_layer, x0-3*difusion_hsp+(300-190)/2, y0+(300-190)/2)
    via1(cell, via1_layer, x0+path_length+3*difusion_hsp+(300-190)/2-300, y0+(300-190)/2)
    
    if i<tran_num_row-1:
        box_2 = pya.Box(x0-3*difusion_hsp+300, y0, x0-3*difusion_hsp, y0+300+tran_vsp)
        cell.shapes(m2_layer).insert(box_2)
        box_3 = pya.Box(x0+path_length+3*difusion_hsp-300, y0, x0+path_length+3*difusion_hsp, y0+300+tran_vsp)
        cell.shapes(m2_layer).insert(box_3)

def drain_tranarray_interconn(x0, y0, path_length, tran_num_row, i):
    box_dlt = pya.Box(x0, y0, x0-7*difusion_hsp, y0+300)
    cell.shapes(layer).insert(box_dlt)
    box_drt = pya.Box(x0+path_length, y0, x0+path_length+7*difusion_hsp, y0+300)
    cell.shapes(layer).insert(box_drt)
    via1(cell, via1_layer, x0-7*difusion_hsp+(300-190)/2, y0+(300-190)/2)
    via1(cell, via1_layer, x0+path_length+7*difusion_hsp+(300-190)/2-300, y0+(300-190)/2)
    if i<tran_num_row-1:
        box_d = pya.Box(x0-7*difusion_hsp, y0, x0-7*difusion_hsp+300, y0+tran_vsp+300)
        cell.shapes(m2_layer).insert(box_d)
        box_drv = pya.Box(x0+path_length+7*difusion_hsp-300, y0, x0+path_length+7*difusion_hsp, y0 + tran_vsp+ 300)
        cell.shapes(m2_layer).insert(box_drv)

def poly_interconn(cell, layout, x0, y0):
    box = pya.Box(x0+340, y0+tran_w+180, x0+340-3300, y0+tran_w+180+600)
    cell.shapes(layer).insert(box)
    via1_array(cell, via1_layer, x0+340-3300, y0+tran_w+180, 2, 2)
    if i<tran_num_row-1:
        box_con = pya.Box(x0+340-3300+600, y0+tran_w+180, x0+340-3300, y0+tran_w+180+tran_vsp+600)
        cell.shapes(m2_layer).insert(box_con)

layout = pya.Layout()
layout.read("../../klayout/pass_transistor_routing_test.gds")

x0, y0 = [0, 0]    #reference
path_width = 600            #length of the paths
gates_num = 125             #number of gates

difusion_hsp = 380                  
length = 500

tran_vsp = 19000
tran_w = 16000

top_cell = layout.cell("TOP")
cell = layout.create_cell("tran_routing")
layer = layout.layer(8, 0)
poly = layout.layer(5, 0)
via1_layer = layout.layer(19, 0)

m2_layer = layout.layer(10, 0)

tran_num_row = 4
for i in range(tran_num_row):
    gate_connection(cell, layout, x0+340, y0+tran_w+180+i*tran_vsp, length, gates_num, difusion_hsp, path_width)
    source_connection(cell, layout, x0, y0+i*tran_vsp, length, gates_num, difusion_hsp, path_width)
    drain_connection(cell, layout, x0, y0+i*tran_vsp, length, gates_num, difusion_hsp, path_width)
    source_tranarray_interconn(x0, y0+tran_w+path_width+2*180+i*tran_vsp, (gates_num)*(length)+(gates_num)*difusion_hsp+300, tran_num_row, i)
    drain_tranarray_interconn(x0+length+difusion_hsp, y0+tran_w+path_width+2*180+i*tran_vsp+300+180, (gates_num-2)*(length)+(gates_num-1)*difusion_hsp-80, tran_num_row, i)
    poly_interconn(cell, layout, x0, y0+i*tran_vsp)

top_cell.insert(pya.CellInstArray(cell, pya.DTrans()))
layout.write("../../klayout/gds/pass_transistor.gds")
