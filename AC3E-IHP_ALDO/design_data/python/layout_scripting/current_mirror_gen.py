import pya
import sys
sys.path.append("./")
from cont import *

#### FUNCTIONS ####

def gate_connection(cell, layout, poly_layer, m1_layer, x0, y0, disp_width,length, gates_num, difusion_hsp, path_width, poly_offset):

    x0 = x0 + poly_offset
    y0 = y0 + disp_width + poly_tail

    box = pya.Box(x0, y0, x0+(gates_num-1)*difusion_hsp+gates_num*length, y0+path_width)

    for i in range(gates_num):
        poly_box = pya.Box(x0+i*(difusion_hsp+length), y0, x0+(difusion_hsp+length)*i+length, y0+path_width)
        cell.shapes(poly_layer).insert(poly_box)
    
    num_row = 1
    num_col = 2 
    for i in range(gates_num):
        contact_array(cell, layout, x0+(length-(num_col*180+(num_col-1)*180))/2+i*(difusion_hsp+length), y0+(path_width-(num_row*180+(num_row-1)*180))/2, num_row, num_col)

    cell.shapes(m1_layer).insert(box)

def source_connection(cell, layout, m2_layer, x0, y0, disp_length, disp_ng, difusion_hsp, path_width, vsep):
        

    for i in range(int(disp_ng/2)):
        x0_0 = x0 + (2*i+1)*(disp_length+difusion_hsp)
        src_path = pya.Box(x0_0, y0, x0_0+path_width, y0+disp_width+poly_tail+2*path_width+vsep)
        cell.shapes(m2_layer).insert(src_path)

    src_interconn = pya.Box(x0+disp_length+difusion_hsp, y0+disp_width+poly_tail+path_width+vsep, x0+disp_length+difusion_hsp+int(disp_ng/2)*(disp_length+difusion_hsp)+path_width, y0+disp_width+poly_tail+path_width+vsep+path_width)
    cell.shapes(m1_layer).insert(src_interconn)

    for i in range(int(disp_ng/2)+1):
        x0_0 = x0+2*i*(disp_length+difusion_hsp)
        src_path = pya.Box(x0_0, y0-poly_tail-2*path_width-vsep, x0_0+path_width, y0+disp_width)
        cell.shapes(m2_layer).insert(src_path)

    drain_interconn = pya.Box(x0, y0-poly_tail-2*path_width-vsep, x0+disp_length+difusion_hsp+int(disp_ng/2+1)*(disp_length+difusion_hsp)+path_width, y0-poly_tail-path_width-vsep)
    cell.shapes(m1_layer).insert(drain_interconn) 

#### PARAMETERS ######
x0, y0 = [0, 0]

disp_width = 2000                # is in nanometers
disp_length = 1000
disp_ng = 4
poly_tail = 180
poly_offset = 340

difusion_hsp = 380
path_width = 300
vsep = 180

#### GENERATION ####

ly = pya.Layout()
poly_layer = ly.layer(5, 1)
m1_layer = ly.layer(8, 0)
m2_layer = ly.layer(10, 0)

disp = ly.create_cell("pmos", "SG13_dev", { "l": disp_length*1e-9, "w": disp_ng*disp_width*1e-9, "ng": disp_ng})

top = ly.create_cell("TOP")
top.insert(pya.DCellInstArray(disp, pya.DTrans(pya.DVector(x0, y0))))


gate_connection(top, ly, poly_layer, m1_layer, x0, y0, disp_width, disp_length, disp_ng, difusion_hsp, path_width, poly_offset)
source_connection(top, ly, m2_layer, x0, y0, disp_length, disp_ng, difusion_hsp, path_width, vsep)

output = "../../klayout/current_mirror_gentest.gds"
ly.write(output)
