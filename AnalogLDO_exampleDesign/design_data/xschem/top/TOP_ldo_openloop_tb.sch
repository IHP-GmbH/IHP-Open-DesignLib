v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Off-Chip resistanace} 470 290 3 0 0.4 0.4 {}
N -530 250 -530 290 {
lab=iref}
N -10 -270 -10 -230 {
lab=vss}
N -680 350 -680 380 {
lab=GND}
N -460 350 -460 380 {
lab=vss}
N -530 350 -530 380 {
lab=vss}
N -680 250 -680 290 {
lab=vss}
N -460 250 -460 290 {
lab=vcm}
N 330 40 550 40 {
lab=vout}
N -180 20 -180 50 {
lab=pos}
N -180 110 -180 140 {
lab=vin}
N 550 150 550 190 {
lab=#net1}
N 550 250 550 270 {
lab=vss}
N 550 40 550 100 {
lab=vout}
N -70 120 -70 150 {
lab=vdiv}
N 630 190 630 270 {
lab=vss}
N 700 190 700 270 {
lab=vss}
N 700 40 740 40 {
lab=vout}
N 700 40 700 130 {
lab=vout}
N 630 40 700 40 {
lab=vout}
N 30 -500 30 -470 {
lab=iref}
N 10 -500 10 -470 {
lab=vcm}
N -10 -500 -10 -470 {
lab=vdd}
N 70 -500 70 -470 {
lab=pos}
N 90 -500 90 -470 {
lab=vdiv}
N -70 20 -70 60 {
lab=pos}
N -180 20 -70 20 {
lab=pos}
N -70 -20 -70 20 {
lab=pos}
N 330 -580 330 40 {
lab=vout}
N 50 -580 330 -580 {
lab=vout}
N 50 -580 50 -470 {
lab=vout}
N 630 40 630 130 {
lab=vout}
N 550 40 630 40 {
lab=vout}
C {devices/vsource.sym} -460 320 0 0 {name=V1 value=DC\{vcm\} savecurrent=false}
C {devices/vsource.sym} -680 320 0 0 {name=V5 value=DC\{vss\} savecurrent=false}
C {devices/isource.sym} -530 320 2 0 {name=I0 value=DC\{iref\}}
C {devices/lab_pin.sym} -460 380 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/gnd.sym} -680 380 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -680 250 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -10 -230 2 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -830 -290 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib tt
.lib $::SG13G2_MODELS/cornerRES.lib tt
.lib $::SG13G2_MODELS/cornerCAP.lib tt
"}
C {devices/lab_pin.sym} 10 -500 1 0 {name=p13 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -530 380 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 740 40 2 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/code.sym} -830 -170 0 0 {name=Simulation_parameters only_toplevel=false 

value="

Vs vdd 0 1.8
Vin vin 0 DC 0 AC 1

.end
"}
C {devices/lab_pin.sym} -530 250 0 0 {name=p12 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} 30 -500 1 0 {name=p17 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} -460 250 0 0 {name=p18 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -10 -500 1 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/capa.sym} -180 80 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -180 140 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/ind.sym} -70 90 0 0 {name=L2
m=1
value=10
footprint=1206
device=inductor}
C {devices/capa.sym} 550 220 0 0 {name=C1
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 550 120 0 0 {name=R3
value=2
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 550 270 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/code.sym} -840 40 0 0 {name=Transient_Simulation only_toplevel=false 

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
C {devices/code.sym} -630 40 0 0 {name=Open_loop_simulation only_toplevel=false 

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
C {devices/code.sym} -450 -170 0 0 {name=OTA_parameters only_toplevel=false 

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
C {devices/code.sym} -630 -170 0 0 {name=Load_parameters only_toplevel=false 

value="
.param R=12
*R10 vout 0 \{R\}
*IL vout 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL vout 0 50p

.end
"}
C {devices/lab_pin.sym} 630 270 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/res.sym} 630 160 0 0 {name=Resr1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 700 160 0 0 {name=Cc1
m=1
value=50p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 700 270 0 0 {name=p8 sig_type=std_logic lab=vss}
C {/home/ac3e/Documents/ihp_design/xschem/TOP.sym} 50 -370 0 0 {name=x1}
C {devices/lab_pin.sym} -180 140 0 0 {name=p10 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 70 -500 1 0 {name=p11 sig_type=std_logic lab=pos}
C {devices/lab_pin.sym} 90 -500 1 0 {name=p16 sig_type=std_logic lab=vdiv
}
C {devices/lab_pin.sym} -70 150 2 0 {name=p20 sig_type=std_logic lab=vdiv
}
C {devices/lab_pin.sym} -70 -20 2 0 {name=p1 sig_type=std_logic lab=pos}
