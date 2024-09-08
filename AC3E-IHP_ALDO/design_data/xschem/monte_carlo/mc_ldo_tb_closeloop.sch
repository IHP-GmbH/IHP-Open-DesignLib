v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Off-Chip resistanace} -10 20 3 0 0.4 0.4 {}
N -270 100 -270 130 {
lab=GND}
N -270 0 -270 40 {
lab=vss}
N 70 -210 160 -210 {
lab=vout}
N 70 -120 70 -80 {
lab=#net1}
N 70 -20 70 0 {
lab=vss}
N -390 -230 -370 -230 {
lab=#net2}
N -470 -230 -450 -230 {
lab=vdd}
N -470 -210 -370 -210 {
lab=iref}
N -470 -190 -370 -190 {
lab=vcm}
N -240 -150 -240 -120 {
lab=vss}
N -120 -210 -80 -210 {
lab=#net3}
N 160 -210 160 -140 {
lab=vout}
N 160 -80 160 0 {
lab=vss}
N -160 100 -160 130 {
lab=GND}
N -160 -0 -160 40 {
lab=iref}
N 70 -210 70 -180 {
lab=vout}
N -20 -210 70 -210 {
lab=vout}
N 250 -210 250 -140 {
lab=vout}
N 250 -80 250 0 {
lab=vss}
N 160 -210 250 -210 {
lab=vout}
C {devices/vsource.sym} -270 70 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/gnd.sym} -270 130 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -270 0 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -240 -120 3 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -1240 -570 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt_stat
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ_stat
.endif
"}
C {devices/lab_pin.sym} -470 -190 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 160 -210 2 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/code.sym} -1220 -280 0 0 {name=Simulation_parameters only_toplevel=true

value="

Vs vdd 0 1.8 AC 1
Vref vcm 0 0.9


.param mm_ok=1
.param mc_ok=1
.param temp=27
.save all


"}
C {devices/lab_pin.sym} -470 -210 0 0 {name=p17 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} -470 -230 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/ammeter.sym} -50 -210 3 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} -420 -230 3 0 {name=Vmeas1 savecurrent=true}
C {devices/code.sym} -1020 -280 0 0 {name=Load_parameters only_toplevel=false 

value="

.param R=12
*R10 vout 0 \{R\}
IL vout 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL vout 0 50p

"}
C {devices/code.sym} -820 -280 0 0 {name=OTA_parameters only_toplevel=false 

value="

.param vdd  = 1.8
.param vss  = 0.0
.param vac  = 60m

"}
C {devices/capa.sym} 70 -50 0 0 {name=CL
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 70 -150 0 0 {name=Resr
value=2
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 70 0 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/title.sym} -1020 350 0 0 {name=l2 author="Daniel Arevalos"}
C {devices/res.sym} 160 -110 0 0 {name=Resr1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 160 0 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -680 -570 0 0 {name=NGSPICE only_toplevel=true 
value="
.param mm_ok=1
.param mc_ok=1
.param temp=27






"}
C {devices/isource.sym} -160 70 2 0 {name=I0 value=5u}
C {devices/gnd.sym} -160 130 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -160 0 0 0 {name=p2 sig_type=std_logic lab=iref}
C {devices/code.sym} -1250 0 0 0 {name=MC_PSRR_Simulation only_toplevel=true

value="

.control
pre_osdi /home/ac3e/Documents/psp103_nqs.osdi

let mc_runs = 1000
let run = 0
shell rm $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_psrr.csv
***************** LOOP *********************
dowhile run < mc_runs
reset
set run=$&run
save all
ac dec 10 10 10G

meas ac DCG find vdb(vout) at=10

print DCG >> $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_psrr.csv
let run=run+1 
end
***************** LOOP *********************
.endc

"}
C {devices/code.sym} -990 -10 0 0 {name=MC_Line_Reg_Dropout_Simulation only_toplevel=true

value="

.control
reset

let mc_runs = 1000
let run = 0
shell rm $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_line_reg.csv
shell rm $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_dropout.csv
***************** LOOP *********************
dowhile run < mc_runs
reset
set run=$&run
dc Vs 0 2.1 0.01

meas dc V_ldo_1.6 FIND v(vout) WHEN v(vdd)=1.6
meas dc V_ldo_2 FIND v(vout) WHEN v(vdd)=2
let line_reg=(V_ldo_1.6-V_ldo_2)/0.4
print line_reg >> $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_line_reg.csv

let der = deriv(vout)
meas dc V_ldo_vdropout FIND v(vdd) WHEN der=0.02 CROSS=LAST
let dropout=V_ldo_vdropout-1.2
print dropout >> $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_dropout.csv

let run=run+1 
end
***************** LOOP *********************
.endc

"}
C {devices/code.sym} -1230 170 0 0 {name=MC_Load_Reg_Simulation only_toplevel=true

value="

.control
reset

let mc_runs = 1000
let run = 0
shell rm $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_load_reg.csv
***************** LOOP *********************
dowhile run < mc_runs
reset
set run=$&run
alter IL 50u
alter R10 3600k
tran 0.1u 100u

meas TRAN V_ldo_100u FIND v(vout) AT=5u
meas TRAN V_ldo_10m FIND v(vout) AT=100u
let load_reg=V_ldo_100u-V_ldo_10m

print load_reg/9.9 >> $HOME_DIR/xschem/monte_carlo/simulations/mc_ldo_load_reg.csv



let run=run+1 
end
***************** LOOP *********************
.endc

"}
C {devices/capa.sym} 250 -110 0 0 {name=Cc1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 250 0 0 0 {name=p3 sig_type=std_logic lab=vss}
C {/home/ac3e/Documents/ihp_design/xschem/ldo/ldo_closeloop.sym} -250 -210 0 0 {name=x1}
