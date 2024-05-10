v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Off-Chip resistanace} 740 190 3 0 0.4 0.4 {}
N 90 170 90 210 {
lab=iref}
N 350 -100 350 -80 {
lab=vss}
N -60 270 -60 300 {
lab=GND}
N 160 270 160 300 {
lab=vss}
N 90 270 90 300 {
lab=vss}
N -60 170 -60 210 {
lab=vss}
N 200 -120 270 -120 {
lab=pos}
N 200 -160 270 -160 {
lab=vcm}
N 600 -110 600 -60 {
lab=vout}
N 600 -260 600 -170 {
lab=vdd}
N 330 -260 600 -260 {
lab=vdd}
N 330 -260 330 -190 {
lab=vdd}
N 600 -140 620 -140 {
lab=vdd}
N 620 -260 620 -140 {
lab=vdd}
N 600 -260 620 -260 {
lab=vdd}
N 310 -80 310 -60 {
lab=iref}
N 160 170 160 210 {
lab=vcm}
N 600 -60 820 -60 {
lab=vout}
N 200 -80 200 -40 {
lab=pos}
N 90 -80 90 -50 {
lab=pos}
N 90 -80 200 -80 {
lab=pos}
N 200 -120 200 -80 {
lab=pos}
N 90 10 90 40 {
lab=vin}
N 410 -140 560 -140 {
lab=#net1}
N 820 50 820 90 {
lab=#net2}
N 820 150 820 170 {
lab=vss}
N 820 -60 820 0 {
lab=vout}
N 600 50 600 60 {
lab=#net3}
N 600 120 600 140 {
lab=vss}
N 600 -60 600 -20 {
lab=vout}
N 200 50 600 50 {
lab=#net3}
N 200 20 200 50 {
lab=#net3}
N 600 40 600 50 {
lab=#net3}
C {devices/vsource.sym} 160 240 0 0 {name=V1 value=DC\{vcm\} savecurrent=false}
C {devices/vsource.sym} -60 240 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/isource.sym} 90 240 2 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} 160 300 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} -60 300 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -60 170 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 350 -80 2 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -560 -390 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt_stat
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ_stat
"}
C {devices/lab_pin.sym} 200 -160 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 90 300 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 820 -60 2 0 {name=p15 sig_type=std_logic lab=vout}
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
C {sg13g2_pr/sg13_lv_pmos.sym} 580 -140 0 0 {name=M1
L=0.5u
W=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 90 170 0 0 {name=p12 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} 310 -60 0 0 {name=p17 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} 160 170 0 0 {name=p18 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 330 -260 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 200 -120 0 0 {name=p1 sig_type=std_logic lab=pos}
C {devices/capa.sym} 90 -20 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 90 40 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/ind.sym} 200 -10 0 0 {name=L2
m=1
value=10
footprint=1206
device=inductor}
C {devices/capa.sym} 820 120 0 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 820 20 0 0 {name=R3
value=2
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 820 170 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 600 140 0 0 {name=p7 sig_type=std_logic lab=vss}
C {sg13g2_pr/rhigh.sym} 600 90 0 0 {name=R4
W=0.5e-6
L=30e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 600 10 0 0 {name=R5
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/code.sym} -360 -60 0 0 {name=Open_loop_simulation only_toplevel=false 

value="

.control
pre_osdi /home/ac3e/Documents/psp103_nqs.osdi
let mc_runs = 1000
let run = 0
shell rm $HOME_DIR/simulations/csv/mc_ldo_pm.csv
shell rm $HOME_DIR/simulations/csv/mc_ldo_olgain.csv
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

print PM*180/PI >> $HOME_DIR/simulations/csv/mc_ldo_pm.csv
print DCG >> $HOME_DIR/simulations/csv/mc_ldo_olgain.csv
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
C {/home/ac3e/Documents/ihp_design/v3/OTA/ihp_ota_v3.sym} 330 -140 0 0 {name=x1}
C {devices/code_shown.sym} 40 -390 0 0 {name=NGSPICE only_toplevel=true 
value="
.param mm_ok=1
.param mc_ok=1
.param temp=27






"}
