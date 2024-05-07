v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -120 -110 -10 {
lab=#net1}
N -40 -170 80 -170 {
lab=#net1}
N -40 -170 -40 -120 {
lab=#net1}
N -70 -170 -40 -170 {
lab=#net1}
N -110 -120 -40 -120 {
lab=#net1}
N -110 -140 -110 -120 {
lab=#net1}
N -110 50 -110 90 {
lab=#net2}
N 120 50 120 90 {
lab=#net2}
N -110 -250 -110 -200 {
lab=vdd}
N 120 -250 120 -200 {
lab=vdd}
N 10 90 10 120 {
lab=#net2}
N -110 90 10 90 {
lab=#net2}
N 10 180 10 220 {
lab=vss}
N -400 180 -400 220 {
lab=vss}
N -400 80 -400 120 {
lab=iref}
N -400 80 -330 80 {
lab=iref}
N -400 40 -400 80 {
lab=iref}
N -330 80 -330 150 {
lab=iref}
N -360 150 -330 150 {
lab=iref}
N 10 150 70 150 {
lab=vss}
N 70 150 70 220 {
lab=vss}
N 10 220 70 220 {
lab=vss}
N 10 -250 120 -250 {
lab=vdd}
N 120 -170 140 -170 {
lab=vdd}
N 140 -250 140 -170 {
lab=vdd}
N 120 -250 140 -250 {
lab=vdd}
N -130 -170 -110 -170 {
lab=vdd}
N -130 -250 -130 -170 {
lab=vdd}
N -130 -250 -110 -250 {
lab=vdd}
N -420 150 -400 150 {
lab=vss}
N -420 150 -420 220 {
lab=vss}
N -420 220 -400 220 {
lab=vss}
N -330 150 -30 150 {
lab=iref}
N -400 220 10 220 {
lab=vss}
N -180 20 -150 20 {
lab=vin_n}
N 160 20 200 20 {
lab=vin_p}
N 10 220 10 250 {
lab=vss}
N 10 -270 10 -250 {
lab=vdd}
N -110 -250 10 -250 {
lab=vdd}
N 120 -50 120 -10 {
lab=#net3}
N 70 20 120 20 {
lab=vss}
N 10 90 120 90 {
lab=#net2}
N 70 20 70 150 {
lab=vss}
N -110 20 70 20 {
lab=vss}
N 530 -50 530 120 {
lab=vout}
N 530 -250 530 -140 {
lab=vdd}
N 140 -250 530 -250 {
lab=vdd}
N 400 150 490 150 {
lab=iref}
N 530 180 530 220 {
lab=vss}
N 70 220 530 220 {
lab=vss}
N 530 150 550 150 {
lab=vss}
N 550 150 550 220 {
lab=vss}
N 530 220 550 220 {
lab=vss}
N 530 -110 550 -110 {
lab=vdd}
N 550 -250 550 -110 {
lab=vdd}
N 530 -250 550 -250 {
lab=vdd}
N 490 -50 530 -50 {
lab=vout}
N 530 -80 530 -50 {
lab=vout}
N 120 -140 120 -50 {
lab=#net3}
N 120 -50 320 -50 {
lab=#net3}
N 320 -110 320 -50 {
lab=#net3}
N 320 -110 490 -110 {
lab=#net3}
N 530 -50 610 -50 {
lab=vout}
N 410 -50 430 -50 {}
N 320 -50 350 -50 {}
C {sg13g2_pr/sg13_lv_nmos.sym} -130 20 2 1 {name=M1
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 20 2 0 {name=M2
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 -170 0 0 {name=M3
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -170 0 1 {name=M4
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 150 2 1 {name=M5
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -380 150 2 0 {name=M8
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -400 40 1 0 {name=p1 lab=iref
}
C {devices/ipin.sym} -180 20 0 0 {name=p2 lab=vin_n
}
C {devices/ipin.sym} 200 20 2 0 {name=p3 lab=vin_p
}
C {devices/iopin.sym} 10 -270 3 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 10 250 1 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} -200 150 0 0 {name=p7 sig_type=std_logic lab=iref}
C {sg13g2_pr/sg13_lv_pmos.sym} 510 -110 0 0 {name=M6
L=0.5u
W=20u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 510 150 2 1 {name=M7
L=2u
W=24u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 400 150 0 0 {name=p6 sig_type=std_logic lab=iref}
C {devices/opin.sym} 610 -50 0 0 {name=p8 lab=vout}
C {sg13g2_pr/cap_cmim.sym} 460 -50 3 0 {name=C2 model=cap_cmim W=45.0e-6 L=45.0e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/rhigh.sym} 380 -50 1 0 {name=R2
W=0.5e-6
L=3.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
