v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 70 140 70 {
lab=inout_2}
N 30 -80 140 -80 {
lab=inout_2}
N 140 0 140 70 {
lab=inout_2}
N 140 0 180 0 {
lab=inout_2}
N 140 -80 140 0 {
lab=inout_2}
N -100 -80 -30 -80 {
lab=inout_1}
N -100 70 -30 70 {
lab=inout_1}
N -100 0 -100 70 {
lab=inout_1}
N -100 -80 -100 0 {
lab=inout_1}
N -0 110 0 140 {
lab=#net1}
N -300 140 -260 140 {
lab=en}
N 0 -150 -0 -120 {
lab=en}
N -300 -150 -300 140 {
lab=en}
N 0 40 0 70 {
lab=vss}
N 0 40 70 40 {
lab=vss}
N 70 40 70 250 {
lab=vss}
N 0 -50 70 -50 {
lab=vdd}
N 0 -80 0 -50 {
lab=vdd}
N -370 230 -370 250 {
lab=vss}
N -370 140 -300 140 {
lab=en}
N -370 140 -370 170 {
lab=en}
N -410 140 -370 140 {
lab=en}
N -370 120 -370 140 {
lab=en}
N -370 -180 -370 60 {
lab=vdd}
N 70 -180 70 -50 {
lab=vdd}
N -410 0 -100 0 {
lab=inout_1}
N -300 -150 -0 -150 {
lab=en}
N 400 -310 400 -300 {
lab=vss}
N 290 -260 290 -250 {
lab=vdd}
N -210 210 -210 250 {
lab=vss}
N -210 180 -160 180 {
lab=vss}
N -160 180 -160 250 {
lab=vss}
N -260 180 -250 180 {
lab=en}
N -260 140 -260 180 {
lab=en}
N -210 140 -0 140 {
lab=#net1}
N -210 140 -210 150 {
lab=#net1}
N -260 80 -250 80 {
lab=en}
N -260 80 -260 140 {
lab=en}
N -210 110 -210 140 {
lab=#net1}
N -210 -30 -210 50 {
lab=vdd}
N -210 80 -170 80 {
lab=vdd}
N -170 -30 -170 80 {
lab=vdd}
N 240 -250 290 -250 {
lab=vdd}
N 400 -300 460 -300 {
lab=vss}
N 400 -300 400 -250 {
lab=vss}
N -210 250 -160 250 {
lab=vss}
N -160 250 70 250 {
lab=vss}
N 400 -190 400 250 {
lab=vss}
N 70 250 400 250 {
lab=vss}
N -210 -30 -170 -30 {
lab=vdd}
N -170 -180 70 -180 {
lab=vdd}
N -170 -180 -170 -30 {
lab=vdd}
N 70 -190 290 -190 {
lab=vdd}
N 70 -190 70 -180 {
lab=vdd}
N -370 -180 -170 -180 {
lab=vdd}
N -370 250 -210 250 {
lab=vss}
C {devices/iopin.sym} -410 0 2 0 {name=p1 lab=inout_1
}
C {devices/iopin.sym} 180 0 0 0 {name=p6 lab=inout_2

}
C {devices/ipin.sym} -410 140 0 0 {name=p2 lab=en}
C {devices/iopin.sym} 290 -260 3 0 {name=p3 lab=vdd
}
C {devices/iopin.sym} 400 -310 3 0 {name=p4 lab=vss
}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 90 3 0 {name=M1
L=0.130u
W=5.0u
ng=5
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 -100 1 0 {name=M2
L=0.130u
W=5.0u
ng=5
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/ptap1.sym} 400 -220 0 0 {name=R1
model=ptap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
C {sg13g2_pr/ntap1.sym} 290 -220 0 0 {name=R2
model=ntap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
C {sg13g2_pr/sg13_lv_nmos.sym} -230 180 2 1 {name=M3
L=0.130u
W=0.740u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -230 80 0 0 {name=M4
L=0.130u
W=1.120u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_pin.sym} 240 -250 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 460 -300 0 1 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -210 250 1 1 {name=p16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -210 -30 1 0 {name=p17 sig_type=std_logic lab=vdd}
C {sg13g2_pr/dantenna.sym} -370 200 0 0 {name=XD1
spiceprefix=X
model=dantenna
l=780n
w=780n
}
C {sg13g2_pr/dpantenna.sym} -370 90 0 0 {name=XD2
spiceprefix=X
model=dpantenna
l=780n
w=780n
}
