v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 430 -280 1230 120 {flags=graph

y2=0.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2e-07
divx=5
subdivx=1

dataset=-1
unitx=1
logx=0
logy=0


y1=-0.2
rainbow=0

color="7 4"
node="v_out
v_in"}
B 2 430 -710 1230 -310 {flags=graph

y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2e-07
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
N 60 -300 60 -260 {
lab=#net1}
N -250 -300 60 -300 {
lab=#net1}
N -250 -220 -250 -200 {
lab=GND}
N -250 -300 -250 -280 {
lab=#net1}
N 60 -200 60 -150 {
lab=#net2}
N 60 -30 60 -0 {
lab=GND}
N -150 60 -150 80 {
lab=GND}
N -150 -20 -150 0 {
lab=en_in}
N -150 -60 -90 -60 {
lab=en_in}
N -160 -90 -90 -90 {
lab=V_in}
N -250 -30 -250 -20 {
lab=GND}
N -160 -120 -160 -90 {
lab=V_in}
N -250 -90 -160 -90 {
lab=V_in}
N -150 -20 -140 -20 {
lab=en_in}
N -150 -60 -150 -20 {
lab=en_in}
N 260 -90 310 -90 {
lab=V_out}
N 260 -120 260 -90 {
lab=V_out}
N 210 -90 260 -90 {
lab=V_out}
N 310 -90 310 -70 {
lab=V_out}
C {devices/code_shown.sym} -310 180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt\\
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} -270 -550 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
pre_osdi ./psp103_nqs.osdi
save all 
tran 1p 120n
write tran_res_temp.raw
.endc
"}
C {devices/vsource.sym} -250 -250 0 0 {name=Vpow value=1.2}
C {devices/title.sym} -130 260 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/launcher.sym} 500 150 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tran_res_temp.raw tran"
}
C {devices/gnd.sym} 60 0 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 60 -230 0 0 {name=Vp}
C {transmission_gate_v1.sym} 60 -90 0 0 {name=x1}
C {devices/gnd.sym} -250 -200 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -250 -60 0 0 {name=Vin value="dc=0 ac=1 sin(0, 200m, 20meg, 0, 0)"}
C {devices/vsource.sym} -150 30 0 0 {name=Ven value="pulse(0 1.2 0 1p 1p 50n 100n)"}
C {devices/gnd.sym} -150 80 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -250 -20 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -160 -120 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {devices/lab_pin.sym} -140 -20 2 0 {name=p2 sig_type=std_logic lab=en_in}
C {devices/lab_pin.sym} 260 -120 0 0 {name=p3 sig_type=std_logic lab=V_out}
C {devices/capa.sym} 310 -40 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 310 -10 0 0 {name=l6 lab=GND}
