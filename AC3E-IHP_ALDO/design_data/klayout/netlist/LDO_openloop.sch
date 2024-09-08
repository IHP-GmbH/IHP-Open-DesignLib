v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -160 -300 -50 {
lab=#net1}
N -230 -210 -110 -210 {
lab=#net1}
N -230 -210 -230 -160 {
lab=#net1}
N -260 -210 -230 -210 {
lab=#net1}
N -300 -160 -230 -160 {
lab=#net1}
N -300 -180 -300 -160 {
lab=#net1}
N -300 10 -300 50 {
lab=#net2}
N -70 10 -70 50 {
lab=#net2}
N -300 -290 -300 -240 {
lab=ldo_in}
N -70 -290 -70 -240 {
lab=ldo_in}
N -180 50 -180 80 {
lab=#net2}
N -300 50 -180 50 {
lab=#net2}
N -180 140 -180 180 {
lab=vss}
N -590 140 -590 180 {
lab=vss}
N -590 40 -590 80 {
lab=iref}
N -590 40 -520 40 {
lab=iref}
N -590 0 -590 40 {
lab=iref}
N -520 40 -520 110 {
lab=iref}
N -550 110 -520 110 {
lab=iref}
N -180 110 -120 110 {
lab=vss}
N -120 110 -120 180 {
lab=vss}
N -180 180 -120 180 {
lab=vss}
N -180 -290 -70 -290 {
lab=ldo_in}
N -70 -210 -50 -210 {
lab=ldo_in}
N -50 -290 -50 -210 {
lab=ldo_in}
N -70 -290 -50 -290 {
lab=ldo_in}
N -320 -210 -300 -210 {
lab=ldo_in}
N -320 -290 -320 -210 {
lab=ldo_in}
N -320 -290 -300 -290 {
lab=ldo_in}
N -610 110 -590 110 {
lab=vss}
N -610 110 -610 180 {
lab=vss}
N -610 180 -590 180 {
lab=vss}
N -520 110 -220 110 {
lab=iref}
N -590 180 -180 180 {
lab=vss}
N -370 -20 -340 -20 {
lab=vref}
N -30 -20 10 -20 {
lab=vin_p}
N -180 180 -180 210 {
lab=vss}
N -180 -310 -180 -290 {
lab=ldo_in}
N -300 -290 -180 -290 {
lab=ldo_in}
N -70 -90 -70 -50 {
lab=#net3}
N -120 -20 -70 -20 {
lab=vss}
N -180 50 -70 50 {
lab=#net2}
N -120 -20 -120 110 {
lab=vss}
N -300 -20 -120 -20 {
lab=vss}
N 340 -90 340 80 {
lab=vout}
N 340 -290 340 -180 {
lab=ldo_in}
N -50 -290 340 -290 {
lab=ldo_in}
N 210 110 300 110 {
lab=iref}
N 340 140 340 180 {
lab=vss}
N -120 180 340 180 {
lab=vss}
N 340 110 360 110 {
lab=vss}
N 360 110 360 180 {
lab=vss}
N 340 -150 360 -150 {
lab=ldo_in}
N 360 -290 360 -150 {
lab=ldo_in}
N 340 -290 360 -290 {
lab=ldo_in}
N 300 -90 340 -90 {
lab=vout}
N 340 -120 340 -90 {
lab=vout}
N -70 -180 -70 -90 {
lab=#net3}
N -70 -90 130 -90 {
lab=#net3}
N 130 -150 130 -90 {
lab=#net3}
N 130 -150 300 -150 {
lab=#net3}
N 340 -90 520 -90 {
lab=vout}
N 220 -90 240 -90 {
lab=#net4}
N 130 -90 160 -90 {
lab=#net3}
N 560 -290 560 -120 {
lab=ldo_in}
N 360 -290 560 -290 {
lab=ldo_in}
N 560 -90 570 -90 {
lab=ldo_in}
N 570 -290 570 -90 {
lab=ldo_in}
N 560 -290 570 -290 {
lab=ldo_in}
N 560 60 560 110 {
lab=vdiv_out}
N 560 -50 560 -40 {
lab=ldo_out}
N 340 180 360 180 {
lab=vss}
N 360 180 560 180 {
lab=vss}
N 560 170 560 180 {
lab=vss}
N 560 60 690 60 {
lab=vdiv_out}
N 560 20 560 60 {
lab=vdiv_out}
N 560 -50 720 -50 {
lab=ldo_out}
N 560 -60 560 -50 {
lab=ldo_out}
C {sg13g2_pr/sg13_lv_nmos.sym} -320 -20 2 1 {name=M1
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -50 -20 2 0 {name=M2
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -210 0 0 {name=M3
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -280 -210 0 1 {name=M4
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -200 110 2 1 {name=M5
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -570 110 2 0 {name=M8
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -590 0 1 0 {name=p1 lab=iref
}
C {devices/ipin.sym} -370 -20 0 0 {name=p2 lab=vref
}
C {devices/ipin.sym} 10 -20 2 0 {name=p3 lab=vin_p
}
C {devices/iopin.sym} -180 -310 3 0 {name=p4 lab=ldo_in}
C {devices/iopin.sym} -180 210 1 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} -390 110 0 0 {name=p7 sig_type=std_logic lab=iref}
C {sg13g2_pr/sg13_lv_pmos.sym} 320 -150 0 0 {name=M6
L=0.5u
W=20u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 110 2 1 {name=M7
L=2u
W=24u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 210 110 0 0 {name=p6 sig_type=std_logic lab=iref}
C {devices/opin.sym} 420 -90 1 0 {name=p8 lab=vout}
C {sg13g2_pr/cap_cmim.sym} 270 -90 1 0 {name=C2 model=cap_cmim W=45.0e-6 L=45.0e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/rhigh.sym} 190 -90 1 0 {name=R2
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 -90 0 0 {name=M9
L=0.5u
W=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 560 -10 0 0 {name=R1
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 560 140 0 0 {name=R3
W=0.5e-6
L=30e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/iopin.sym} 690 60 0 0 {name=p9 lab=vdiv_out
}
C {devices/iopin.sym} 720 -50 0 0 {name=p10 lab=ldo_out}
