v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -150 -60 -150 -40 {
lab=vss}
N 100 100 100 110 {
lab=pos}
N 100 90 100 100 {
lab=pos}
N -300 -80 -300 100 {
lab=pos}
N -300 -80 -230 -80 {
lab=pos}
N -300 -120 -230 -120 {
lab=vref}
N 100 -20 100 30 {
lab=ldo_out}
N -300 100 100 100 {
lab=pos}
N 100 -70 100 -20 {
lab=ldo_out}
N 100 -220 100 -130 {
lab=ldo_in}
N -170 -220 100 -220 {
lab=ldo_in}
N 100 -100 120 -100 {
lab=ldo_in}
N 120 -220 120 -100 {
lab=ldo_in}
N 100 -220 120 -220 {
lab=ldo_in}
N -190 -40 -190 -20 {
lab=iref}
N 100 170 100 190 {
lab=vss}
N 100 -20 170 -20 {
lab=ldo_out}
N -90 -100 60 -100 {
lab=vota}
N -170 -220 -170 -150 {
lab=ldo_in}
C {devices/lab_pin.sym} -150 -40 2 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -300 -120 0 0 {name=p13 sig_type=std_logic lab=vref}
C {sg13g2_pr/sg13_lv_pmos.sym} 80 -100 0 0 {name=M1
l=0.5u
w=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} -190 -20 0 0 {name=p17 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} -170 -220 0 0 {name=p19 sig_type=std_logic lab=ldo_in}
C {devices/lab_pin.sym} -300 -80 0 0 {name=p1 sig_type=std_logic lab=pos}
C {devices/lab_pin.sym} 100 190 0 0 {name=p3 sig_type=std_logic lab=vss}
C {sg13g2_pr/rhigh.sym} 100 140 0 0 {name=R2
w=0.5e-6
l=30e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 100 60 0 0 {name=R1
w=0.5e-6
l=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/iopin.sym} -520 -140 2 0 {name=p2 lab=vss}
C {devices/iopin.sym} -520 -210 2 0 {name=p6 lab=ldo_in}
C {devices/opin.sym} -480 -210 0 0 {name=p7 lab=ldo_out}
C {devices/lab_pin.sym} 170 -20 2 0 {name=p8 sig_type=std_logic lab=ldo_out}
C {devices/ipin.sym} -520 -190 0 0 {name=p10 lab=iref}
C {devices/ipin.sym} -520 -170 0 0 {name=p11 lab=vref}
C {devices/lab_pin.sym} -10 -100 1 0 {name=p4 sig_type=std_logic lab=vota}
C {/workspaces/usm-vlsi-tools/shared_xserver/ihp_design/xschem/ota/ota.sym} -170 -100 0 0 {name=x1}
