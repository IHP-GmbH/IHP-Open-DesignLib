v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Off-Chip resistanace} 310 110 3 0 0.4 0.4 {}
N -340 90 -340 130 {
lab=iref}
N -80 -180 -80 -160 {
lab=vss}
N -490 190 -490 220 {
lab=GND}
N -270 190 -270 220 {
lab=vss}
N -340 190 -340 220 {
lab=vss}
N -490 90 -490 130 {
lab=vss}
N -230 -200 -160 -200 {
lab=pos}
N -230 -240 -160 -240 {
lab=vcm}
N 170 -190 170 -140 {
lab=vout}
N 170 -340 170 -250 {
lab=vdd}
N -100 -340 170 -340 {
lab=vdd}
N -100 -340 -100 -270 {
lab=vdd}
N 170 -220 190 -220 {
lab=vdd}
N 190 -340 190 -220 {
lab=vdd}
N 170 -340 190 -340 {
lab=vdd}
N -120 -160 -120 -140 {
lab=iref}
N -270 90 -270 130 {
lab=vcm}
N 170 -140 390 -140 {
lab=vout}
N -230 -160 -230 -120 {
lab=pos}
N -340 -160 -340 -130 {
lab=pos}
N -340 -160 -230 -160 {
lab=pos}
N -230 -200 -230 -160 {
lab=pos}
N -340 -70 -340 -40 {
lab=vin}
N -20 -220 130 -220 {
lab=#net1}
N 390 -30 390 10 {
lab=#net2}
N 390 70 390 90 {
lab=vss}
N 390 -140 390 -80 {
lab=vout}
N 170 -30 170 -20 {
lab=#net3}
N 170 40 170 60 {
lab=vss}
N 170 -140 170 -100 {
lab=vout}
N -230 -30 170 -30 {
lab=#net3}
N -230 -60 -230 -30 {
lab=#net3}
N 170 -40 170 -30 {
lab=#net3}
N 500 -140 500 -80 {
lab=vout}
N 390 -140 500 -140 {
lab=vout}
N 500 -20 500 90 {
lab=vss}
N 390 90 500 90 {
lab=vss}
C {devices/vsource.sym} -270 160 0 0 {name=V1 value=DC\{vcm\} savecurrent=false}
C {devices/vsource.sym} -490 160 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/isource.sym} -340 160 2 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} -270 220 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} -490 220 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -490 90 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -80 -160 2 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -990 -470 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
"}
C {devices/lab_pin.sym} -230 -240 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -340 220 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 390 -140 2 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/code.sym} -990 -350 0 0 {name=Simulation_parameters only_toplevel=false 

value="

Vs vdd 0 1.8
Vin vin 0 DC 0 AC 1

.end
"}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -220 0 0 {name=M1
L=0.5u
W=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} -340 90 0 0 {name=p12 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} -120 -140 0 0 {name=p17 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} -270 90 0 0 {name=p18 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -100 -340 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -230 -200 0 0 {name=p1 sig_type=std_logic lab=pos}
C {devices/capa.sym} -340 -100 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -340 -40 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/ind.sym} -230 -90 0 0 {name=L2
m=1
value=10
footprint=1206
device=inductor}
C {devices/capa.sym} 390 40 0 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 390 -60 0 0 {name=R3
value=2
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 390 90 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 170 60 0 0 {name=p7 sig_type=std_logic lab=vss}
C {sg13g2_pr/rhigh.sym} 170 10 0 0 {name=R4
W=0.5e-6
L=30e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 170 -70 0 0 {name=R5
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/code.sym} -1000 -140 0 0 {name=Transient_Simulation only_toplevel=false 

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
C {devices/code.sym} -790 -140 0 0 {name=Open_loop_simulation only_toplevel=false 

value="

*Simulation
.control
pre_osdi /home/ac3e/Documents/psp103_nqs.osdi
reset
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

  setplot op1
  unset filetype
  write tb_opamp_openloop.raw

.endc

.end
"}
C {devices/code.sym} -610 -350 0 0 {name=OTA_parameters only_toplevel=false 

value="

.param iref = 5u
.param vdd  = 1.8
.param vss  = 0.0
.param vcm  = 0.9
.param vac  = 60m

.param w857 = 6u
.param l857 = 2u

.param wpar = 15u
.param lpar = 2u
.param mpar = 1

.param w34  = 2u
.param l34  = 1u
.param m34  = 1

.param w6   = 20u
.param l6   = 0.5u
.param m6   = 1

.param w7   = w857*4
.param w5   = w857*1

.end
"}
C {devices/code.sym} -790 -350 0 0 {name=Load_parameters only_toplevel=false 

value="
.param R=24k
*R10 vout 0 \{R\}
*IL vout 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL vout 0 50p

.end
"}
C {/home/ac3e/Documents/ihp_design/xschem/OTA/ihp_ota_v3.sym} -100 -220 0 0 {name=x1}
C {devices/res.sym} 500 -50 0 0 {name=R1
value=12
footprint=1206
device=resistor
m=1}
