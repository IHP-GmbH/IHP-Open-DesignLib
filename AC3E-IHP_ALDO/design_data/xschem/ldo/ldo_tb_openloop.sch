v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 740 -370 1540 30 {flags=graph
y1=-180
y2=200
ypos1=0
ypos2=2
divy=5
subdivy=1
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
sim_type=ac
color="12 5"
node="\\"vout db20()\\"
ph(vout)"
rawfile=$netlist_dir/tb_opamp_openloop_ac1.raw}
T {Off-Chip resistanace} 120 110 3 0 0.4 0.4 {}
N 130 250 130 290 {
lab=iref}
N -80 -80 -80 -60 {
lab=vss}
N -20 350 -20 380 {
lab=GND}
N 200 350 200 380 {
lab=vss}
N 130 350 130 380 {
lab=vss}
N -20 250 -20 290 {
lab=vss}
N 200 250 200 290 {
lab=vcm}
N -20 -140 200 -140 {
lab=vout}
N -190 -20 -190 20 {
lab=pos}
N -300 -20 -300 10 {
lab=pos}
N -300 -20 -190 -20 {
lab=pos}
N -300 70 -300 100 {
lab=vin}
N 200 -30 200 10 {
lab=#net1}
N 200 70 200 90 {
lab=vss}
N 200 -140 200 -80 {
lab=vout}
N -190 80 -190 110 {
lab=#net2}
N 280 10 280 90 {
lab=vss}
N 350 10 350 90 {
lab=vss}
N 350 -140 390 -140 {
lab=vout}
N 350 -140 350 -50 {
lab=vout}
N -300 -160 -270 -160 {
lab=vdd}
N -300 -120 -270 -120 {
lab=vcm}
N -300 -140 -270 -140 {
lab=iref}
N -190 -80 -190 -20 {
lab=pos}
N -190 110 -130 110 {
lab=#net2}
N -130 -80 -130 110 {
lab=#net2}
N 280 -140 350 -140 {
lab=vout}
N -120 350 -120 380 {
lab=vss}
N -120 250 -120 290 {
lab=vdd}
N -250 350 -250 380 {
lab=vss}
N -250 250 -250 290 {
lab=vin}
N 280 -140 280 -50 {
lab=vout}
N 200 -140 280 -140 {
lab=vout}
C {devices/vsource.sym} 200 320 0 0 {name=V1 value=DC\{vcm\} savecurrent=false}
C {devices/vsource.sym} -20 320 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/isource.sym} 130 320 2 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} 200 380 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} -20 380 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -20 250 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -80 -60 2 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -1000 -580 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/lab_pin.sym} 130 380 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 390 -140 2 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 130 250 0 0 {name=p12 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} -300 -140 0 0 {name=p17 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} 200 250 0 0 {name=p18 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -300 -160 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -190 -60 0 0 {name=p1 sig_type=std_logic lab=pos}
C {devices/capa.sym} -300 40 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -300 100 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/ind.sym} -190 50 0 0 {name=L2
m=1
value=10
footprint=1206
device=inductor}
C {devices/capa.sym} 200 40 0 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 200 -60 0 0 {name=R3
value=2
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 200 90 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/code.sym} -1010 -80 0 0 {name=Transient_Simulation only_toplevel=false spice_ignore=1

value="
.control
tran 10n 1u
plot v(vout) v(pos) v(vcm)
.endc
.end

.control
tran 1e-6 1e-3
write test_tran.raw 
noise v(vout) Vin dec 333 10 100e3
print inoise_total onoise_total
setplot noise1
plot onoise_spectrum
.endc
"}
C {devices/code.sym} -800 -80 0 0 {name=Open_loop_simulation only_toplevel=false 

value="

*Simulation
.save all
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
plot vdb(vout) \{vp(vout)*180/PI\}
write ldo_tb_openloop_ac.raw
wrdata ldo_tb_openloop_ac.csv vdb(vout) \{vp(vout)*180/PI\}
reset
op


print @n.x1.xm8.nsg13_lv_nmos[vgs]-@n.x1.xm8.nsg13_lv_nmos[vth]
print @n.x1.xm8.nsg13_lv_nmos[vds]

print @n.x1.XM7.nsg13_lv_nmos[vgs]-@n.x1.XM7.nsg13_lv_nmos[vth]
print @n.x1.XM7.nsg13_lv_nmos[vds]
print @n.x1.XM7.nsg13_lv_nmos[ids]

print @n.x1.xm6.nsg13_lv_pmos[vgs]-@n.x1.xm6.nsg13_lv_pmos[vth]
print @n.x1.xm6.nsg13_lv_pmos[vds]
print @n.x1.xm6.nsg13_lv_pmos[gm]
print @n.x1.xm6.nsg13_lv_pmos[gm]/@n.x1.xm6.nsg13_lv_pmos[ids]
print @n.x1.xm6.nsg13_lv_pmos[gm]/@n.x1.xm6.nsg13_lv_pmos[gds]
  
print @n.x1.xm5.nsg13_lv_nmos[vgs]-@n.x1.xm5.nsg13_lv_nmos[vth]
print @n.x1.xm5.nsg13_lv_nmos[vds]
print @n.x1.xm5.nsg13_lv_nmos[ids]

print @n.x1.xm1.nsg13_lv_nmos[vgs]-@n.x1.xm1.nsg13_lv_nmos[vth]
print @n.x1.xm1.nsg13_lv_nmos[vds]
print @n.x1.xm1.nsg13_lv_nmos[gm]

print @n.x1.xm2.nsg13_lv_nmos[vgs]-@n.x1.xm2.nsg13_lv_nmos[vth]
print @n.x1.xm2.nsg13_lv_nmos[vds]
print @n.x1.xm2.nsg13_lv_nmos[gm]

print @n.x1.xm3.nsg13_lv_pmos[vgs]-@n.x1.xm3.nsg13_lv_pmos[vth]
print @n.x1.xm3.nsg13_lv_pmos[vds]
print @n.x1.xm3.nsg13_lv_pmos[ids]

print @n.x1.xm4.nsg13_lv_pmos[vgs]-@n.x1.xm4.nsg13_lv_pmos[vth]
print @n.x1.xm4.nsg13_lv_pmos[vds]
print @n.x1.xm4.nsg13_lv_pmos[ids]

print v(vout)
print v(pos)

.endc

.end
"}
C {devices/lab_pin.sym} 280 90 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/res.sym} 280 -20 0 0 {name=Resr1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 350 -20 0 0 {name=Cc1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 350 90 0 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -300 -120 0 0 {name=p10 sig_type=std_logic lab=vcm}
C {devices/launcher.sym} 790 70 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ldo_tb_openloop_ac.raw ac"
}
C {devices/code_shown.sym} -1000 -400 0 0 {name=Simulation_parameters only_toplevel=false 

value="
.param temp=27

.param vin = 0
.param iref = 5u
.param vdd  = 1.8
.param vss  = 0.0
.param vcm  = 0.9
.param vac  = 60m
"}
C {devices/code_shown.sym} -1000 -180 0 0 {name=Load_parameters only_toplevel=false 

value="
.param R=1200
"}
C {devices/vsource.sym} -120 320 0 0 {name=V6 value="DC\{vdd\}" savecurrent=false}
C {devices/lab_pin.sym} -120 380 0 0 {name=p7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -120 250 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} -250 320 0 0 {name=Vs value="DC\{vin\} AC 1" savecurrent=false}
C {devices/lab_pin.sym} -250 380 0 0 {name=p13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -250 250 0 0 {name=p16 sig_type=std_logic lab=vin }
C {/workspaces/usm-vlsi-tools/shared_xserver/ihp_design/xschem/ldo/ldo_openloop.sym} -150 -140 0 0 {name=x1}
