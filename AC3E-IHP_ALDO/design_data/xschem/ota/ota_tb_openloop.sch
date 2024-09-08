v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1400 -430 2200 -30 {flags=graph
y1=-170
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color="12 7"
node="\\"vout db20()\\"
ph(vout)"}
N 820 -340 860 -340 {
lab=vcm}
N 820 -340 820 -260 {
lab=vcm}
N 900 -300 900 -260 {
lab=#net1}
N 940 -320 940 -300 {
lab=vss}
N 920 -430 920 -410 {
lab=vdd}
N 1000 -360 1050 -360 {
lab=vout}
N 1050 -470 1050 -360 {
lab=vout}
N 310 -260 310 -230 {
lab=GND}
N 410 -260 410 -230 {
lab=vss}
N 550 -120 550 -90 {
lab=vcm}
N 820 -200 820 -170 {
lab=vss}
N 900 -200 900 -170 {
lab=vss}
N 500 -380 515 -380 {
lab=vcm}
N 550 -270 550 -260 {
lab=vin}
N 550 -200 550 -180 {
lab=vsen}
N 930 -470 1050 -470 {
lab=vout}
N 410 -360 410 -320 {
lab=vdd}
N 310 -360 310 -320 {
lab=vss}
N 1050 -250 1050 -225 {
lab=vss}
N 610 -470 870 -470 {
lab=#net2}
N 610 -470 610 -380 {
lab=#net2}
N 580 -380 610 -380 {
lab=#net2}
N 610 -380 660 -380 {
lab=#net2}
N 710 -380 860 -380 {
lab=vin}
N 1050 -360 1050 -310 {
lab=vout}
C {devices/vsource.sym} 820 -230 0 0 {name=V1 value=DC\{vcm\} savecurrent=false}
C {devices/vsource.sym} 550 -150 0 0 {name=V2 value="sin(0 \{vac\} 1Meg) dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} 410 -290 0 0 {name=V4 value="DC \{vdd\}" savecurrent=false}
C {devices/vsource.sym} 310 -290 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/isource.sym} 900 -230 2 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} 550 -90 0 0 {name=p1 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 820 -170 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 310 -230 0 0 {name=l1 lab=GND}
C {devices/res.sym} 545 -380 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 550 -230 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 900 -470 1 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 310 -360 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 410 -360 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 920 -430 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 840 -340 0 0 {name=p8 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 940 -300 2 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/capa.sym} 1050 -280 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1050 -225 0 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 550 -190 0 0 {name=p11 sig_type=std_logic lab=vsen}
C {devices/lab_pin.sym} 830 -380 0 0 {name=p13 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 900 -170 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1050 -360 2 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 410 -230 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/res.sym} 685 -380 1 0 {name=R3
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 500 -380 0 0 {name=p12 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 550 -270 0 0 {name=p16 sig_type=std_logic lab=vin}
C {devices/code.sym} -280 -290 0 0 {name=SIMULATION1 only_toplevel=false 

value="
.param iref = 5u
.param vdd  = 1.8
.param vss  = 0.0
.param vcm  = 0.9
.param vac  = 60m

* OP Parameters & Singals to save


*Simulation

.control
reset
*pre_osdi /home/ac3e/Documents/psp103_nqs.osdi
set color0 = white
ac dec 100 1 10G
remzerovec
write ota_tb_openloop_ac.raw
setplot ac1
meas ac GBW when vdb(vout)=0
meas ac DCG find vdb(vout) at=1
meas ac PM find vp(vout) when vdb(vout)=0
print PM*180/PI
meas ac GM find vdb(vout) when vp(vout)=0
wrdata ota_tb_openloop_ac.csv vdb(vout) \{vp(vout)*180/PI\}

.endc

*.control
*tran 1e-6 1e-3
*write test_tran.raw 
*noise V(vout) V2 dec 10 10 100e3
*print inoise_total onoise_total 
*.endc

*.control
*alter V2 ac 0
*alter v4 ac 1
*tran 1e-6 1e-3
*write test_tran.raw 
*noise V(vout) V4 dec 10 10 100e3
*print inoise_total onoise_total 
*.endc

.end
"}
C {devices/code_shown.sym} -280 -570 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif
"}
C {devices/launcher.sym} 1470 100 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ota_tb_openloop_ac.raw ac"
}
C {/workspaces/usm-vlsi-tools/shared_xserver/ihp_design/xschem/ota/ota.sym} 920 -360 0 0 {name=x1}
