v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {
}
E {}
B 2 560 -650 1360 -250 {flags=graph,unlocked
y1=0.9
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
x1.pos
vcm
vdd"
color="7 8 12 4"
dataset=0
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/ldo_tb_closeloop_tran.raw}
B 2 560 -250 1360 150 {flags=graph,unlocked
y1=0.41904
y2=2.52024
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=2.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdd
vcm
x1.pos
vout"
color="12 8 10 7"

unitx=1
logx=0
logy=0
sim_type=dc
rawfile=$netlist_dir/ldo_tb_closeloop_dc.raw

dataset=0
rainbow=0
x1=0
hilight_wave=3}
B 2 1360 -650 2160 -250 {flags=graph,unlocked


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1

x2=10
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"vout db20()\\""
color=4

unitx=1
logx=1
logy=0
sim_type=ac

dataset=-1

y1=-62
y2=-20
x1=0
rawfile=$netlist_dir/ldo_tb_closeloop_ac.raw}
B 2 1360 -250 2160 150 {flags=graph,unlocked
y1=0.0022
y2=0.12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"i(Vmeas)\\"
\\"v(vout) 1.2 -\\""
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/ldo_tb_closeloop_load.raw
hilight_wave=0}
B 2 1355 150 2155 550 {flags=graph,unlocked
y1=1.38
y2=2.08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1

x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdd
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/ldo_tb_closeloop_settime.raw
digital=0
rainbow=0
x1=0}
T {Off-Chip Compensation
} 120 30 3 0 0.4 0.4 {}
N -70 180 -70 220 {
lab=iref}
N 100 280 100 310 {
lab=GND}
N 0 280 0 310 {
lab=vss}
N -70 280 -70 310 {
lab=vss}
N 100 180 100 220 {
lab=vss}
N 0 180 0 220 {
lab=vcm}
N 100 -230 190 -230 {
lab=vout}
N 190 -230 190 -200 {
lab=vout}
N 190 -140 190 -100 {
lab=#net1}
N 190 -40 190 -20 {
lab=vss}
N -270 -250 -250 -250 {
lab=#net2}
N -350 -250 -330 -250 {
lab=vdd}
N -350 -230 -250 -230 {
lab=iref}
N -350 -210 -250 -210 {
lab=vcm}
N -120 -170 -120 -140 {
lab=vss}
N 0 -230 40 -230 {
lab=#net3}
N 280 -230 280 -160 {
lab=vout}
N 190 -230 280 -230 {
lab=vout}
N 280 -100 280 -20 {
lab=vss}
N 350 -230 350 -160 {
lab=vout}
N 280 -230 350 -230 {
lab=vout}
N 350 -100 350 -20 {
lab=vss}
N -250 280 -250 310 {
lab=vss}
N -250 180 -250 220 {
lab=vdd}
C {devices/vsource.sym} 0 250 0 0 {name=V1 value=DC\{vcm\} savecurrent=false}
C {devices/vsource.sym} 100 250 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/isource.sym} -70 250 2 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} 0 310 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 100 310 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 100 180 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -120 -140 3 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -980 -490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="

.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/lab_pin.sym} -350 -210 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -70 310 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 350 -230 2 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -70 180 0 0 {name=p12 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} -350 -230 0 0 {name=p17 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} 0 180 0 0 {name=p18 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -350 -250 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/ammeter.sym} 70 -230 3 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} -300 -250 3 0 {name=Vmeas1 savecurrent=true}
C {devices/code.sym} -990 100 0 0 {name=Transient_simulation only_toplevel=false 

value="

.control
reset
save all
set color0 = white
tran 1n 1u
plot v(vout) v(x1.pos) v(vcm)
plot i(v.x1.vmeas1)
print @n.x1.xm1.nsg13_lv_pmos[vgs]
print @n.x1.xm1.nsg13_lv_pmos[vth]
print @n.x1.xm1.nsg13_lv_pmos[vgs]-@n.x1.xm1.nsg13_lv_pmos[vth]
print @n.x1.xm1.nsg13_lv_pmos[vds]
print @n.x1.xm1.nsg13_lv_pmos[gm]
wrdata ldo_tb_closeloop_tran.csv v(vout) v(x1.pos) v(vcm) v(vdd)
write ldo_tb_closeloop_tran.raw

.endc

*.control
*reset
*tran 1e-6 1e-3
*write test_tran.raw 
*noise v(vout) Vs dec 10 100 100e3
*print inoise_total onoise_total
*setplot noise1
*plot onoise_spectrum
*.endc

.end
"}
C {devices/code.sym} -790 100 0 0 {name=Line_reg_&_Dropout only_toplevel=false 

value="

.save all
.control
reset
dc Vs 0 2.1 0.01
*plot v(vout) v(vcm) v(vdd)
meas dc V_ldo_1.6 FIND v(vout) WHEN v(vdd)=1.6
meas dc V_ldo_2 FIND v(vout) WHEN v(vdd)=2 
let line_regulation = (V_ldo_1.6-V_ldo_2)/0.4
print line_regulation
let der = deriv(vout)
meas dc V_ldo_vdropout FIND v(vdd) WHEN der=0.02 CROSS=LAST
let dropout = V_ldo_vdropout-1.2
print dropout
write ldo_tb_closeloop_dc.raw
wrdata ldo_tb_closeloop_dc.csv v(vdd) v(vcm) v(x1.pos) v(vout)

.endc

.end
"}
C {devices/code.sym} -590 100 0 0 {name=PSRR_simulation only_toplevel=false 

value="

.control
reset
ac dec 100 1 10G
remzerovec
setplot ac1
meas ac GBW when vdb(vout)=0
meas ac DCG find vdb(vout) at=1
meas ac PM find vp(vout) when vdb(vout)=0
print PM*180/PI
meas ac GM find vdb(vout) when vp(vout)=0
*plot vdb(vout) \{vp(vout)*180/PI\}
write ldo_tb_closeloop_ac.raw
wrdata ldo_tb_closeloop_ac.csv vdb(vout) \{vp(vout)*180/PI\}

reset
op


print @n.x1.x1.xm8.nsg13_lv_nmos[vgs]-@n.x1.x1.xm8.nsg13_lv_nmos[vth]
print @n.x1.x1.xm8.nsg13_lv_nmos[vds]

print @n.x1.x1.XM7.nsg13_lv_nmos[vgs]-@n.x1.x1.XM7.nsg13_lv_nmos[vth]
print @n.x1.x1.XM7.nsg13_lv_nmos[vds]
print @n.x1.x1.XM7.nsg13_lv_nmos[ids]

print @n.x1.x1.xm6.nsg13_lv_pmos[vgs]-@n.x1.x1.xm6.nsg13_lv_pmos[vth]
print @n.x1.x1.xm6.nsg13_lv_pmos[vds]
print @n.x1.x1.xm6.nsg13_lv_pmos[gm]
print @n.x1.x1.xm6.nsg13_lv_pmos[gm]/@n.x1.x1.xm6.nsg13_lv_pmos[ids]
print @n.x1.x1.xm6.nsg13_lv_pmos[ids]
  
print @n.x1.x1.xm5.nsg13_lv_nmos[vgs]-@n.x1.x1.xm5.nsg13_lv_nmos[vth]
print @n.x1.x1.xm5.nsg13_lv_nmos[vds]
print @n.x1.x1.xm5.nsg13_lv_nmos[ids]

print @n.x1.x1.xm1.nsg13_lv_nmos[vgs]-@n.x1.x1.xm1.nsg13_lv_nmos[vth]
print @n.x1.x1.xm1.nsg13_lv_nmos[vds]
print @n.x1.x1.xm1.nsg13_lv_nmos[gm]

print @n.x1.x1.xm2.nsg13_lv_nmos[vgs]-@n.x1.x1.xm2.nsg13_lv_nmos[vth]
print @n.x1.x1.xm2.nsg13_lv_nmos[vds]
print @n.x1.x1.xm2.nsg13_lv_nmos[gm]

print @n.x1.x1.xm3.nsg13_lv_pmos[vgs]-@n.x1.x1.xm3.nsg13_lv_pmos[vth]
print @n.x1.x1.xm3.nsg13_lv_pmos[vds]
print @n.x1.x1.xm3.nsg13_lv_pmos[ids]

print @n.x1.x1.xm4.nsg13_lv_pmos[vgs]-@n.x1.x1.xm4.nsg13_lv_pmos[vth]
print @n.x1.x1.xm4.nsg13_lv_pmos[vds]
print @n.x1.x1.xm4.nsg13_lv_pmos[ids]

print v(vout)
print v(pos)

.endc

.end
"}
C {devices/code.sym} -990 250 0 0 {name=Load_reg only_toplevel=false 

value="

.control
reset
alter IL 50u
alter R10 3600k
tran 0.1u 100u
meas TRAN V_ldo_100u FIND v(vout) AT=5u
meas TRAN V_ldo_10m FIND v(vout) AT=100u
let load_reg= (V_ldo_100u-V_ldo_10m)/9.9
let load_current =(-1*i(Vs)-131.8e-6)
print load_reg
*plot i(Vmeas) v(vout)-1.2
write ldo_tb_closeloop_load.raw
wrdata ldo_tb_closeloop_load.csv i(Vmeas) v(vout)-1.2
.endc

.end
"}
C {devices/code.sym} -790 250 0 0 {name=settling_time only_toplevel=false 

value="

.control
alter R10 36k
reset
alter @IL[pwl]=[ 0 0 10u 0 20u 0 30u 0 ]
alter @Vs[pulse]=[ 1.8 1.6 50u 1u 1u 10u 100u ]
alter IL 0
tran 0.1u 100u
*plot v(vdd) v(vout)
write ldo_tb_closeloop_settime.raw
wrdata ldo_tb_closeloop_settime.csv v(vdd) v(vout)
.endc


.end
"}
C {devices/capa.sym} 190 -70 0 0 {name=Cc
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 190 -170 0 0 {name=Resr
value=2
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 190 -20 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/title.sym} -790 560 0 0 {name=l2 author="Daniel Arevalos"}
C {devices/launcher.sym} 620 320 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ldo_tb_closeloop_tran.raw tran"
}
C {devices/code.sym} -590 250 0 0 {name=Temp_sweep only_toplevel=false 

value="

*Simulation
.control
dc temp -40 125 1
*plot v(vout)
.endc

.end
"}
C {devices/lab_pin.sym} 280 -20 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/res.sym} 280 -130 0 0 {name=Resr1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 350 -130 0 0 {name=Cc1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 350 -20 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -970 -30 0 0 {name=Load_parameters1  only_toplevel=false 

value="
.param R=12
IL vout 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
"}
C {devices/code_shown.sym} -980 -220 0 0 {name=Simulation_parameters1 only_toplevel=false 

value="
.param temp=27
.save all
.param iref = 5u
.param vdd  = 1.8
.param vss  = 0.0
.param vcm  = 0.9
"}
C {devices/vsource.sym} -250 250 0 0 {name=Vs value="DC\{vdd\} AC 1" savecurrent=false}
C {devices/lab_pin.sym} -250 310 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -250 180 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {/workspaces/usm-vlsi-tools/shared_xserver/ihp_design/xschem/ldo/ldo_closeloop.sym} -130 -230 0 0 {name=x1}
