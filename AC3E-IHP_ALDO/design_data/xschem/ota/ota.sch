v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -140 -110 -30 {
lab=#net1}
N -40 -190 80 -190 {
lab=#net1}
N -40 -190 -40 -140 {
lab=#net1}
N -70 -190 -40 -190 {
lab=#net1}
N -110 -140 -40 -140 {
lab=#net1}
N -110 -160 -110 -140 {
lab=#net1}
N -110 30 -110 70 {
lab=#net2}
N 120 30 120 70 {
lab=#net2}
N -110 -270 -110 -220 {
lab=vdd}
N 120 -270 120 -220 {
lab=vdd}
N 10 70 10 100 {
lab=#net2}
N -110 70 10 70 {
lab=#net2}
N 10 160 10 200 {
lab=vss}
N -400 160 -400 200 {
lab=vss}
N -400 60 -400 100 {
lab=iref}
N -400 60 -330 60 {
lab=iref}
N -400 20 -400 60 {
lab=iref}
N -330 60 -330 130 {
lab=iref}
N -360 130 -330 130 {
lab=iref}
N 10 130 70 130 {
lab=vss}
N 70 130 70 200 {
lab=vss}
N 10 200 70 200 {
lab=vss}
N 10 -270 120 -270 {
lab=vdd}
N 120 -190 140 -190 {
lab=vdd}
N 140 -270 140 -190 {
lab=vdd}
N 120 -270 140 -270 {
lab=vdd}
N -130 -190 -110 -190 {
lab=vdd}
N -130 -270 -130 -190 {
lab=vdd}
N -130 -270 -110 -270 {
lab=vdd}
N -420 130 -400 130 {
lab=vss}
N -420 130 -420 200 {
lab=vss}
N -420 200 -400 200 {
lab=vss}
N -330 130 -30 130 {
lab=iref}
N -400 200 10 200 {
lab=vss}
N -180 0 -150 0 {
lab=vin_n}
N 160 -0 200 -0 {
lab=vin_p}
N 10 200 10 230 {
lab=vss}
N 10 -290 10 -270 {
lab=vdd}
N -110 -270 10 -270 {
lab=vdd}
N 120 -70 120 -30 {
lab=#net3}
N 70 0 120 0 {
lab=vss}
N 10 70 120 70 {
lab=#net2}
N 70 0 70 130 {
lab=vss}
N -110 -0 70 0 {
lab=vss}
N 530 -70 530 100 {
lab=vout}
N 530 -270 530 -160 {
lab=vdd}
N 140 -270 530 -270 {
lab=vdd}
N 400 130 490 130 {
lab=iref}
N 530 160 530 200 {
lab=vss}
N 70 200 530 200 {
lab=vss}
N 530 130 550 130 {
lab=vss}
N 550 130 550 200 {
lab=vss}
N 530 200 550 200 {
lab=vss}
N 530 -130 550 -130 {
lab=vdd}
N 550 -270 550 -130 {
lab=vdd}
N 530 -270 550 -270 {
lab=vdd}
N 490 -70 530 -70 {
lab=vout}
N 530 -100 530 -70 {
lab=vout}
N 410 -70 430 -70 {
lab=#net4}
N 320 -70 350 -70 {
lab=#net3}
N 120 -160 120 -70 {
lab=#net3}
N 120 -70 320 -70 {
lab=#net3}
N 320 -130 320 -70 {
lab=#net3}
N 320 -130 490 -130 {
lab=#net3}
N 530 -70 610 -70 {
lab=vout}
C {sg13g2_pr/sg13_lv_nmos.sym} -130 0 2 1 {name=M1
l=2u
w=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 0 2 0 {name=M2
l=2u
w=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 100 -190 0 0 {name=M3
l=1u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -190 0 1 {name=M4
l=1u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 130 2 1 {name=M5
l=2u
w=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -380 130 2 0 {name=M8
l=2u
w=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -400 20 1 0 {name=p1 lab=iref
}
C {devices/ipin.sym} -180 0 0 0 {name=p2 lab=vin_n
}
C {devices/ipin.sym} 200 0 2 0 {name=p3 lab=vin_p
}
C {devices/iopin.sym} 10 -290 3 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 10 230 1 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} -200 130 0 0 {name=p7 sig_type=std_logic lab=iref}
C {sg13g2_pr/sg13_lv_pmos.sym} 510 -130 0 0 {name=M6
l=0.5u
w=20u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 510 130 2 1 {name=M7
l=2u
w=24u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 400 130 0 0 {name=p6 sig_type=std_logic lab=iref}
C {devices/opin.sym} 610 -70 0 0 {name=p8 lab=vout}
C {sg13g2_pr/rhigh.sym} 380 -70 1 0 {name=R2
w=0.5e-6
l=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/cap_cmim.sym} 460 -70 3 0 {name=C2 model=cap_cmim w=45.0e-6 l=45.0e-6 MF=1 spiceprefix=X}
