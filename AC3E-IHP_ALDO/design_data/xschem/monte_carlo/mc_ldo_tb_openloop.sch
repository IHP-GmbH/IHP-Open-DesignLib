v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Off-Chip resistanace} 680 50 3 0 0.4 0.4 {}
N 90 170 90 210 {
lab=iref}
N 480 -140 480 -120 {
lab=vss}
N -60 270 -60 300 {
lab=GND}
N 160 270 160 300 {
lab=vss}
N 90 270 90 300 {
lab=vss}
N -60 170 -60 210 {
lab=vss}
N 160 170 160 210 {
lab=vcm}
N 540 -200 760 -200 {
lab=vout}
N 370 -60 370 -20 {
lab=pos}
N 260 -60 260 -30 {
lab=pos}
N 260 -60 370 -60 {
lab=pos}
N 260 30 260 60 {
lab=vin}
N 760 -90 760 -50 {
lab=#net1}
N 760 10 760 30 {
lab=vss}
N 760 -200 760 -140 {
lab=vout}
N 870 -60 870 20 {
lab=vss}
N 960 -60 960 20 {
lab=vss}
N 870 -200 960 -200 {
lab=vout}
N 960 -200 960 -120 {
lab=vout}
N 870 -200 870 -120 {
lab=vout}
N 760 -200 870 -200 {
lab=vout}
N 260 -220 290 -220 {
lab=vdd}
N 260 -180 290 -180 {
lab=vcm}
N 260 -200 290 -200 {
lab=iref}
N 370 -140 370 -60 {
lab=pos}
N 370 40 370 70 {
lab=#net2}
N 370 70 430 70 {
lab=#net2}
N 430 -140 430 70 {
lab=#net2}
C {devices/vsource.sym} 160 240 0 0 {name=V1 value=DC\{vcm\} savecurrent=false}
C {devices/vsource.sym} -60 240 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/isource.sym} 90 240 2 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} 160 300 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} -60 300 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -60 170 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 480 -120 2 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -560 -390 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt_stat
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ_stat
"}
C {devices/lab_pin.sym} 260 -180 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 90 300 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 760 -200 2 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/code.sym} -560 -270 0 0 {name=Simulation_parameters only_toplevel=false 

value="

Vs vdd 0 1.8
Vin vin 0 DC 0 AC 1

.param iref = 5u
.param vdd  = 1.8
.param vss  = 0.0
.param vcm  = 0.9
.param vac  = 60m

.end
"}
C {devices/lab_pin.sym} 90 170 0 0 {name=p12 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} 260 -200 0 0 {name=p17 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} 160 170 0 0 {name=p18 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 260 -220 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 370 -100 0 0 {name=p1 sig_type=std_logic lab=pos}
C {devices/capa.sym} 260 0 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 260 60 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/ind.sym} 370 10 0 0 {name=L2
m=1
value=10
footprint=1206
device=inductor}
C {devices/capa.sym} 760 -20 0 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 760 -120 0 0 {name=R3
value=2
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 760 30 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/code.sym} -370 -60 0 0 {name=Open_loop_simulation only_toplevel=false 

value="

.control
pre_osdi /home/ac3e/Documents/psp103_nqs.osdi
let mc_runs = 1000
let run = 0
shell rm $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_pm.csv
shell rm $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_olgain.csv
***************** LOOP *********************
dowhile run < mc_runs

reset
set run=$&run
save all
ac dec 10 10 10G

*meas ac GBW when vdb(vout)=0
meas ac DCG find vdb(vout) at=10
meas ac PM find vp(vout) when vdb(vout)=0
*meas ac GM find vdb(vout) when vp(vout)=0

print PM*180/PI >> $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_pm.csv
print DCG >> $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_olgain.csv
let run=run+1 
end
***************** LOOP *********************
.endc

.end
"}
C {devices/code.sym} -360 -270 0 0 {name=Load_parameters only_toplevel=false 

value="
.param R=24k
R10 vout 0 \{R\}
*IL vout 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL vout 0 50p

.end
"}
C {devices/code_shown.sym} 40 -390 0 0 {name=NGSPICE only_toplevel=true 
value="
.param mm_ok=1
.param mc_ok=1
.param temp=27






"}
C {devices/res.sym} 870 -90 0 0 {name=Resr1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 870 20 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/capa.sym} 960 -90 0 0 {name=Cc1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 960 20 0 0 {name=p8 sig_type=std_logic lab=vss}
C {/home/ac3e/Documents/ihp_design/xschem/ldo/ldo_openloop.sym} 410 -200 0 0 {name=x1}
