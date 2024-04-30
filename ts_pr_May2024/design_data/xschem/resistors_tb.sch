v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -250 -770 550 -370 {flags=graph

y2=0.022
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-40
x2=125
divx=5
subdivx=1

dataset=-1
unitx=1
logx=0
logy=0


y1=0.00081
rainbow=0
color="4 7 8"
node="i(vrh)
i(vppd)
i(vsil)"}
N 60 -300 60 -260 {
lab=Vcc}
N 30 -300 60 -300 {
lab=Vcc}
N 60 10 60 100 {
lab=GND}
N 30 100 60 100 {
lab=GND}
N 0 100 0 110 {
lab=GND}
N 30 70 30 100 {
lab=GND}
N 0 100 30 100 {
lab=GND}
N -30 70 -30 100 {
lab=GND}
N -70 100 -30 100 {
lab=GND}
N 0 10 0 100 {
lab=GND}
N -30 100 0 100 {
lab=GND}
N -70 -200 -70 -170 {
lab=#net1}
N -70 -300 -70 -260 {
lab=Vcc}
N -30 -300 -30 -170 {
lab=Vcc}
N 0 -300 0 -260 {
lab=Vcc}
N -30 -300 0 -300 {
lab=Vcc}
N 0 -200 0 -170 {
lab=#net2}
N 30 -300 30 -170 {
lab=Vcc}
N 0 -300 30 -300 {
lab=Vcc}
N 60 -200 60 -170 {
lab=#net3}
N -70 10 -70 100 {
lab=GND}
N -250 100 -70 100 {
lab=GND}
N -250 -40 -250 100 {
lab=GND}
N -250 -300 -250 -100 {
lab=Vcc}
N -70 -300 -30 -300 {
lab=Vcc}
N -250 -300 -70 -300 {
lab=Vcc}
C {devices/code_shown.sym} -310 180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 180 -220 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
op
echo Silicide resisotr value: 
print Vcc/I(Vsil)
echo Unsilicide poly resisotr value: 
print Vcc/I(Vppd)
echo High poly resisotr value: 
print Vcc/I(Vrh)
reset 
dc temp -40 125 1 
write dc_res_temp.raw
wrdata dc_res_temp.csv I(Vsil) I(Vppd) I(Vrh)
.endc
"}
C {devices/vsource.sym} -250 -70 0 0 {name=Vres value=1.5}
C {devices/title.sym} -130 260 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/launcher.sym} -180 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/dc_res_temp.raw dc"
}
C {devices/lab_pin.sym} -250 -130 2 0 {name=p1 sig_type=std_logic lab=Vcc}
C {devices/ammeter.sym} 0 -230 0 0 {name=Vsil}
C {devices/gnd.sym} 0 110 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 30 40 0 0 {name=Vppd}
C {devices/ammeter.sym} 60 -230 0 0 {name=Vrh}
C {devices/ammeter.sym} -30 40 0 0 {name=Vptap}
C {devices/ammeter.sym} -70 -230 0 0 {name=Vntap}
C {resistors.sym} -10 -80 0 0 {}
