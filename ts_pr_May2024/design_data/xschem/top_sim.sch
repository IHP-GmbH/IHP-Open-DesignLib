v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 430 -280 1230 120 {flags=graph

y2=0.00045
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2
divx=5
subdivx=1

dataset=-1
unitx=1
logx=0
logy=0


y1=-7e-12
rainbow=0


color=7
node=i(vd1)}
B 2 430 -710 1230 -310 {flags=graph

y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2
divx=5
subdivx=1

dataset=-1
unitx=1
logx=0
logy=0


y1=0
rainbow=0


color=4
node=en_in}
N -100 30 -100 50 {
lab=GND}
N -100 -40 -100 -30 {
lab=#net1}
N 30 -220 200 -220 {
lab=#net2}
N 200 -220 200 -130 {
lab=#net2}
N -100 -220 -30 -220 {
lab=#net3}
N -100 -220 -100 -160 {
lab=#net3}
C {devices/code_shown.sym} -400 -760 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt\\
.lib $::SG13G2_MODELS/cornerRES.lib res_typ\\
.include $::SG13G2_MODELS/diodes.lib \\
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/title.sym} -130 260 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/launcher.sym} 500 150 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/dc_lv_nmos1.raw dc"
}
C {nmos1.sym} 0 -100 0 0 {name=x1}
C {devices/code_shown.sym} -130 -460 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=27
.control
pre_osdi ./psp103_nqs.osdi
save all 
op
*reset 
dc Vds 0 1.2 0.01 Vgs 0. 0.9 0.1
write dc_lv_nmos1.raw
.endc
"}
C {devices/gnd.sym} -100 50 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} -100 0 0 0 {name=Vgs value=0.75}
C {devices/vsource.sym} 200 -100 0 0 {name=Vds value=1.5}
C {devices/gnd.sym} 100 -40 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 100 -160 2 0 {name=l10 lab=GND}
C {devices/ammeter.sym} 0 -220 1 0 {name=Vd1}
C {devices/gnd.sym} 200 -70 0 0 {name=l1 lab=GND}
