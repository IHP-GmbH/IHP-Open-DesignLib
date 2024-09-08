v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -50 280 -20 {
lab=vss}
N 340 -90 520 -90 {
lab=vout}
N 560 -90 580 -90 {
lab=ldo_in}
N 560 60 560 110 {
lab=vdiv_out}
N 560 -50 560 -40 {
lab=ldo_out}
N 560 170 560 200 {
lab=vss}
N 560 60 690 60 {
lab=vdiv_out}
N 560 20 560 60 {
lab=vdiv_out}
N 560 -50 720 -50 {
lab=ldo_out}
N 560 -60 560 -50 {
lab=ldo_out}
N 240 -30 240 -10 {
lab=iref}
N 260 -170 260 -140 {
lab=ldo_in}
N 180 -110 200 -110 {
lab=vref}
N 180 -70 200 -70 {
lab=vin_p}
N 560 -140 560 -120 {
lab=ldo_in}
N 580 -140 580 -90 {
lab=ldo_in}
N 560 -140 580 -140 {
lab=ldo_in}
N 560 -160 560 -140 {
lab=ldo_in}
C {devices/ipin.sym} 240 -10 3 0 {name=p1 lab=iref
}
C {devices/ipin.sym} 180 -70 0 0 {name=p3 lab=vin_p
}
C {devices/iopin.sym} 560 -160 3 0 {name=p4 lab=ldo_in}
C {devices/iopin.sym} 280 -20 1 0 {name=p5 lab=vss}
C {devices/opin.sym} 420 -90 1 0 {name=p8 lab=vout}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 -90 0 0 {name=M9
l=0.5u
w=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 560 -10 0 0 {name=R1
w=0.5e-6
l=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 560 140 0 0 {name=R3
w=0.5e-6
l=30e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/iopin.sym} 690 60 0 0 {name=p9 lab=vdiv_out
}
C {devices/iopin.sym} 720 -50 0 0 {name=p10 lab=ldo_out}
C {devices/iopin.sym} 260 -170 3 0 {name=p6 lab=ldo_in}
C {devices/iopin.sym} 560 200 1 0 {name=p7 lab=vss}
C {devices/ipin.sym} 180 -110 0 0 {name=p2 lab=vref
}
C {/workspaces/usm-vlsi-tools/shared_xserver/ihp_design/xschem/ota/ota.sym} 260 -90 0 0 {name=x1}
