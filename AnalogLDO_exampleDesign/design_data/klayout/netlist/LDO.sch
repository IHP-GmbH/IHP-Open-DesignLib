v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 -100 -210 10 {
lab=#net1}
N -140 -150 -20 -150 {
lab=#net1}
N -140 -150 -140 -100 {
lab=#net1}
N -170 -150 -140 -150 {
lab=#net1}
N -210 -100 -140 -100 {
lab=#net1}
N -210 -120 -210 -100 {
lab=#net1}
N -210 70 -210 110 {
lab=#net2}
N 20 70 20 110 {
lab=#net2}
N -210 -230 -210 -180 {
lab=ldo_in}
N 20 -230 20 -180 {
lab=ldo_in}
N -90 110 -90 140 {
lab=#net2}
N -210 110 -90 110 {
lab=#net2}
N -90 200 -90 240 {
lab=vss}
N -500 200 -500 240 {
lab=vss}
N -500 100 -500 140 {
lab=iref}
N -500 100 -430 100 {
lab=iref}
N -500 60 -500 100 {
lab=iref}
N -430 100 -430 170 {
lab=iref}
N -460 170 -430 170 {
lab=iref}
N -90 170 -30 170 {
lab=vss}
N -30 170 -30 240 {
lab=vss}
N -90 240 -30 240 {
lab=vss}
N -90 -230 20 -230 {
lab=ldo_in}
N 20 -150 40 -150 {
lab=ldo_in}
N 40 -230 40 -150 {
lab=ldo_in}
N 20 -230 40 -230 {
lab=ldo_in}
N -230 -150 -210 -150 {
lab=ldo_in}
N -230 -230 -230 -150 {
lab=ldo_in}
N -230 -230 -210 -230 {
lab=ldo_in}
N -520 170 -500 170 {
lab=vss}
N -520 170 -520 240 {
lab=vss}
N -520 240 -500 240 {
lab=vss}
N -430 170 -130 170 {
lab=iref}
N -500 240 -90 240 {
lab=vss}
N -280 40 -250 40 {
lab=vref}
N 60 40 100 40 {
lab=vin_p}
N -90 240 -90 270 {
lab=vss}
N -90 -250 -90 -230 {
lab=ldo_in}
N -210 -230 -90 -230 {
lab=ldo_in}
N 20 -30 20 10 {
lab=#net3}
N -30 40 20 40 {
lab=vss}
N -90 110 20 110 {
lab=#net2}
N -30 40 -30 170 {
lab=vss}
N -210 40 -30 40 {
lab=vss}
N 430 -30 430 140 {
lab=vout}
N 430 -230 430 -120 {
lab=ldo_in}
N 40 -230 430 -230 {
lab=ldo_in}
N 300 170 390 170 {
lab=iref}
N 430 200 430 240 {
lab=vss}
N -30 240 430 240 {
lab=vss}
N 430 170 450 170 {
lab=vss}
N 450 170 450 240 {
lab=vss}
N 430 -90 450 -90 {
lab=ldo_in}
N 450 -230 450 -90 {
lab=ldo_in}
N 430 -230 450 -230 {
lab=ldo_in}
N 390 -30 430 -30 {
lab=vout}
N 430 -60 430 -30 {
lab=vout}
N 20 -120 20 -30 {
lab=#net3}
N 20 -30 220 -30 {
lab=#net3}
N 220 -90 220 -30 {
lab=#net3}
N 220 -90 390 -90 {
lab=#net3}
N 430 -30 610 -30 {
lab=vout}
N 310 -30 330 -30 {
lab=#net4}
N 220 -30 250 -30 {
lab=#net3}
N 650 -230 650 -60 {
lab=ldo_in}
N 450 -230 650 -230 {
lab=ldo_in}
N 650 -30 660 -30 {
lab=ldo_in}
N 660 -230 660 -30 {
lab=ldo_in}
N 650 -230 660 -230 {
lab=ldo_in}
N 650 80 650 120 {
lab=vin_p}
N 650 0 650 20 {
lab=ldo_out}
N 650 120 650 170 {
lab=vin_p}
N 430 240 450 240 {
lab=vss}
N 100 120 650 120 {
lab=vin_p}
N 100 40 100 120 {
lab=vin_p}
N 450 240 650 240 {
lab=vss}
N 650 230 650 240 {
lab=vss}
N 650 20 810 20 {
lab=ldo_out}
C {sg13g2_pr/sg13_lv_nmos.sym} -230 40 2 1 {name=M1
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 40 2 0 {name=M2
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 -150 0 0 {name=M3
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -190 -150 0 1 {name=M4
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 170 2 1 {name=M5
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -480 170 2 0 {name=M8
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -500 60 1 0 {name=p1 lab=iref
}
C {devices/ipin.sym} -280 40 0 0 {name=p2 lab=vref
}
C {devices/ipin.sym} 100 40 2 0 {name=p3 lab=vin_p
}
C {devices/iopin.sym} -90 -250 3 0 {name=p4 lab=ldo_in}
C {devices/iopin.sym} -90 270 1 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} -300 170 0 0 {name=p7 sig_type=std_logic lab=iref}
C {sg13g2_pr/sg13_lv_pmos.sym} 410 -90 0 0 {name=M6
L=0.5u
W=20u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 410 170 2 1 {name=M7
L=2u
W=24u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 300 170 0 0 {name=p6 sig_type=std_logic lab=iref}
C {devices/opin.sym} 510 -30 1 0 {name=p8 lab=vout}
C {sg13g2_pr/cap_cmim.sym} 360 -30 1 0 {name=C2 model=cap_cmim W=45.0e-6 L=45.0e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/rhigh.sym} 280 -30 1 0 {name=R2
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/sg13_lv_pmos.sym} 630 -30 0 0 {name=M9
L=0.5u
W=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/rhigh.sym} 650 50 0 0 {name=R1
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 650 200 0 0 {name=R3
W=0.5e-6
L=30e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/iopin.sym} 810 20 0 0 {name=p9 lab=ldo_out}
