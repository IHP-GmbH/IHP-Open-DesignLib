v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 0 330 0 {
lab=vcm}
N 290 0 290 80 {
lab=vcm}
N 370 40 370 80 {
lab=#net1}
N 410 20 410 40 {
lab=vss}
N 390 -90 390 -70 {
lab=vdd}
N 470 -20 520 -20 {
lab=vout}
N 520 -130 520 -20 {
lab=vout}
N -220 80 -220 110 {
lab=GND}
N -120 80 -120 110 {
lab=vss}
N 20 220 20 250 {
lab=vcm}
N 290 140 290 170 {
lab=vss}
N 370 140 370 170 {
lab=vss}
N -30 -40 -15 -40 {
lab=vcm}
N 20 70 20 80 {
lab=vin}
N 20 140 20 160 {
lab=vsen}
N 400 -130 520 -130 {
lab=vout}
N -120 -20 -120 20 {
lab=vdd}
N -220 -20 -220 20 {
lab=vss}
N 520 90 520 115 {
lab=vss}
N 80 -130 340 -130 {
lab=#net2}
N 80 -130 80 -40 {
lab=#net2}
N 50 -40 80 -40 {
lab=#net2}
N 80 -40 130 -40 {
lab=#net2}
N 180 -40 330 -40 {
lab=vin}
N 520 -20 520 30 {
lab=vout}
C {devices/vsource.sym} 290 110 0 0 {name=V1 value=DC\{vcm\} savecurrent=false}
C {devices/vsource.sym} 20 190 0 0 {name=V2 value="sin(0 \{vac\} 1Meg) dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} -120 50 0 0 {name=V4 value="DC \{vdd\}" savecurrent=false}
C {devices/vsource.sym} -220 50 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/isource.sym} 370 110 2 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} 20 250 0 0 {name=p1 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 290 170 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} -220 110 0 0 {name=l1 lab=GND}
C {devices/res.sym} 15 -40 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 20 110 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 370 -130 1 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -220 -20 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -120 -20 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 390 -90 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 310 0 0 0 {name=p8 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 410 40 2 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/capa.sym} 520 60 0 0 {name=C3
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 520 115 0 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 20 150 0 0 {name=p11 sig_type=std_logic lab=vsen}
C {devices/lab_pin.sym} 300 -40 0 0 {name=p13 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 370 170 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 520 -20 2 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -120 110 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/res.sym} 155 -40 1 0 {name=R3
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -30 -40 0 0 {name=p12 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 20 70 0 0 {name=p16 sig_type=std_logic lab=vin}
C {devices/code.sym} -30 -300 0 0 {name=SIMULATION1 only_toplevel=false 

value="


.param iref = 5u
.param vdd  = 1.8
.param vss  = 0.0
.param vcm  = 0.9
.param vac  = 60m

.param w857 = 3u
.param l857 = 1u

.param wpar = 15u
.param lpar = 2u
.param mpar = 1

.param w34  = 2u
.param l34  = 1u
.param m34  = 1

.param w6   = 35u
.param l6   = 0.5u
.param m6   = 1

.param w7   = w857*4
.param w5   = w857*1


* Include Models
*.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* OP Parameters & Singals to save
.save all

*Simulation
.control
pre_osdi /home/ac3e/Documents/psp103_nqs.osdi
  set color0 = white
  
  ac dec 100 1 10G
  setplot ac1
  meas ac GBW when vdb(vout)=0
  meas ac DCG find vdb(vout) at=1
  meas ac PM find vp(vout) when vdb(vout)=0
  print PM*180/PI
  meas ac GM find vdb(vout) when vp(vout)=0
  plot vdb(vout) \{vp(vout)*180/PI\}
  write tb_opamp_openloop_ac1.raw

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
  
print @n.x1.xm5.nsg13_lv_nmos[vgs]-@n.x1.xm5.nsg13_lv_nmos[vth]
print @n.x1.xm5.nsg13_lv_nmos[vds]
print @n.x1.xm5.nsg13_lv_nmos[ids]

print @n.x1.xm1.nsg13_lv_nmos[vgs]-@n.x1.xm1.nsg13_lv_nmos[vth]
print @n.x1.xm1.nsg13_lv_nmos[vds]
print @n.x1.xm1.nsg13_lv_nmos[gm]
print @n.x1.xm1.nsg13_lv_nmos[gm]/@n.x1.xm1.nsg13_lv_nmos[ids]

print @n.x1.xm2.nsg13_lv_nmos[vgs]-@n.x1.xm2.nsg13_lv_nmos[vth]
print @n.x1.xm2.nsg13_lv_nmos[vds]
print @n.x1.xm2.nsg13_lv_nmos[gm]

print @n.x1.xm3.nsg13_lv_pmos[vgs]-@n.x1.xm3.nsg13_lv_pmos[vth]
print @n.x1.xm3.nsg13_lv_pmos[vds]
print @n.x1.xm3.nsg13_lv_pmos[ids]

print @n.x1.xm4.nsg13_lv_pmos[vgs]-@n.x1.xm4.nsg13_lv_pmos[vth]
print @n.x1.xm4.nsg13_lv_pmos[vds]
print @n.x1.xm4.nsg13_lv_pmos[ids]

  setplot op1
  unset filetype
  write tb_opamp_openloop.raw

.endc

.control
tran 1e-6 1e-3
write test_tran.raw 
noise V(vout) V2 dec 10 10 100e3
print inoise_total onoise_total 
.endc

.control
alter V2 ac 0
alter v4 ac 1
tran 1e-6 1e-3
write test_tran.raw 
noise V(vout) V4 dec 10 10 100e3
print inoise_total onoise_total 
.endc

.end
"}
C {devices/code_shown.sym} 170 -510 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="

.param corner=0

.if (corner==0)
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.endif
"}
C {/home/ac3e/Documents/ihp_design/xschem/OTA/ihp_ota_v3.sym} 390 -20 0 0 {name=x1}
