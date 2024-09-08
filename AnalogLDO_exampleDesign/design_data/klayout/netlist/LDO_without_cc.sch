v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 -100 -170 10 {
lab=#net1}
N -100 -150 20 -150 {
lab=#net1}
N -100 -150 -100 -100 {
lab=#net1}
N -130 -150 -100 -150 {
lab=#net1}
N -170 -100 -100 -100 {
lab=#net1}
N -170 -120 -170 -100 {
lab=#net1}
N -170 70 -170 110 {
lab=#net2}
N 60 70 60 110 {
lab=#net2}
N -170 -230 -170 -180 {
lab=vdd}
N 60 -230 60 -180 {
lab=vdd}
N -50 110 -50 140 {
lab=#net2}
N -170 110 -50 110 {
lab=#net2}
N -50 200 -50 240 {
lab=vss}
N -460 200 -460 240 {
lab=vss}
N -460 100 -460 140 {
lab=iref}
N -460 100 -390 100 {
lab=iref}
N -460 60 -460 100 {
lab=iref}
N -390 100 -390 170 {
lab=iref}
N -420 170 -390 170 {
lab=iref}
N -50 170 10 170 {
lab=vss}
N 10 170 10 240 {
lab=vss}
N -50 240 10 240 {
lab=vss}
N -50 -230 60 -230 {
lab=vdd}
N 60 -150 80 -150 {
lab=vdd}
N 80 -230 80 -150 {
lab=vdd}
N 60 -230 80 -230 {
lab=vdd}
N -190 -150 -170 -150 {
lab=vdd}
N -190 -230 -190 -150 {
lab=vdd}
N -190 -230 -170 -230 {
lab=vdd}
N -480 170 -460 170 {
lab=vss}
N -480 170 -480 240 {
lab=vss}
N -480 240 -460 240 {
lab=vss}
N -390 170 -90 170 {
lab=iref}
N -460 240 -50 240 {
lab=vss}
N -240 40 -210 40 {
lab=vin_n}
N 100 40 140 40 {
lab=vin_p}
N -50 240 -50 270 {
lab=vss}
N -50 -250 -50 -230 {
lab=vdd}
N -170 -230 -50 -230 {
lab=vdd}
N 60 -30 60 10 {
lab=#net3}
N 10 40 60 40 {
lab=vss}
N -50 110 60 110 {
lab=#net2}
N 10 40 10 170 {
lab=vss}
N -170 40 10 40 {
lab=vss}
N 470 -30 470 140 {
lab=#net4}
N 470 -230 470 -120 {
lab=vdd}
N 80 -230 470 -230 {
lab=vdd}
N 340 170 430 170 {
lab=iref}
N 470 200 470 240 {
lab=vss}
N 10 240 470 240 {
lab=vss}
N 470 170 490 170 {
lab=vss}
N 490 170 490 240 {
lab=vss}
N 470 240 490 240 {
lab=vss}
N 470 -90 490 -90 {
lab=vdd}
N 490 -230 490 -90 {
lab=vdd}
N 470 -230 490 -230 {
lab=vdd}
N 430 -30 470 -30 {
lab=#net4}
N 470 -60 470 -30 {
lab=#net4}
N 60 -120 60 -30 {
lab=#net3}
N 60 -30 260 -30 {
lab=#net3}
N 260 -90 260 -30 {
lab=#net3}
N 260 -90 430 -90 {
lab=#net3}
N 470 -30 650 -30 {
lab=#net4}
N 350 -30 370 -30 {
lab=#net5}
N 260 -30 290 -30 {
lab=#net3}
N 690 -230 690 -60 {}
N 490 -230 690 -230 {}
N 690 -30 700 -30 {}
N 700 -230 700 -30 {}
N 690 -230 700 -230 {}
N 690 -0 690 240 {}
N 490 240 690 240 {}
C {sg13g2_pr/sg13_lv_nmos.sym} -190 40 2 1 {name=M1
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 80 40 2 0 {name=M2
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 40 -150 0 0 {name=M3
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -150 -150 0 1 {name=M4
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 170 2 1 {name=M5
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -440 170 2 0 {name=M8
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -460 60 1 0 {name=p1 lab=iref
}
C {devices/ipin.sym} -240 40 0 0 {name=p2 lab=vin_n
}
C {devices/ipin.sym} 140 40 2 0 {name=p3 lab=vin_p
}
C {devices/iopin.sym} -50 -250 3 0 {name=p4 lab=vdd}
C {devices/iopin.sym} -50 270 1 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} -260 170 0 0 {name=p7 sig_type=std_logic lab=iref}
C {sg13g2_pr/sg13_lv_pmos.sym} 450 -90 0 0 {name=M6
L=0.5u
W=20u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 450 170 2 1 {name=M7
L=2u
W=24u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 340 170 0 0 {name=p6 sig_type=std_logic lab=iref}
C {devices/opin.sym} 550 -30 1 0 {name=p8 lab=vout}
C {sg13g2_pr/cap_cmim.sym} 400 -30 3 0 {name=C2 model=cap_cmim W=45.0e-6 L=45.0e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/rhigh.sym} 320 -30 1 0 {name=R2
W=0.5e-6
L=3.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/sg13_lv_pmos.sym} 670 -30 0 0 {name=M9
L=0.5u
W=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
