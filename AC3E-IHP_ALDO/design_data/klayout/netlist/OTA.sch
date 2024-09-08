v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -300 -140 -300 -30 {
lab=#net1}
N -230 -190 -110 -190 {
lab=#net1}
N -230 -190 -230 -140 {
lab=#net1}
N -260 -190 -230 -190 {
lab=#net1}
N -300 -140 -230 -140 {
lab=#net1}
N -300 -160 -300 -140 {
lab=#net1}
N -300 30 -300 70 {
lab=#net2}
N -70 30 -70 70 {
lab=#net2}
N -300 -270 -300 -220 {
lab=vdd}
N -70 -270 -70 -220 {
lab=vdd}
N -180 70 -180 100 {
lab=#net2}
N -300 70 -180 70 {
lab=#net2}
N -180 160 -180 200 {
lab=vss}
N -590 160 -590 200 {
lab=vss}
N -590 60 -590 100 {
lab=iref}
N -590 60 -520 60 {
lab=iref}
N -590 20 -590 60 {
lab=iref}
N -520 60 -520 130 {
lab=iref}
N -550 130 -520 130 {
lab=iref}
N -180 130 -120 130 {
lab=vss}
N -120 130 -120 200 {
lab=vss}
N -180 200 -120 200 {
lab=vss}
N -180 -270 -70 -270 {
lab=vdd}
N -70 -190 -50 -190 {
lab=vdd}
N -50 -270 -50 -190 {
lab=vdd}
N -70 -270 -50 -270 {
lab=vdd}
N -320 -190 -300 -190 {
lab=vdd}
N -320 -270 -320 -190 {
lab=vdd}
N -320 -270 -300 -270 {
lab=vdd}
N -610 130 -590 130 {
lab=vss}
N -610 130 -610 200 {
lab=vss}
N -610 200 -590 200 {
lab=vss}
N -520 130 -220 130 {
lab=iref}
N -590 200 -180 200 {
lab=vss}
N -370 0 -340 0 {
lab=vin_n}
N -30 0 10 0 {
lab=vin_p}
N -180 200 -180 230 {
lab=vss}
N -180 -290 -180 -270 {
lab=vdd}
N -300 -270 -180 -270 {
lab=vdd}
N -70 -70 -70 -30 {
lab=#net3}
N -120 0 -70 0 {
lab=vss}
N -180 70 -70 70 {
lab=#net2}
N -120 0 -120 130 {
lab=vss}
N -300 0 -120 0 {
lab=vss}
N 340 -70 340 100 {
lab=vout}
N 340 -270 340 -160 {
lab=vdd}
N -50 -270 340 -270 {
lab=vdd}
N 210 130 300 130 {
lab=iref}
N 340 160 340 200 {
lab=vss}
N -120 200 340 200 {
lab=vss}
N 340 130 360 130 {
lab=vss}
N 360 130 360 200 {
lab=vss}
N 340 -130 360 -130 {
lab=vdd}
N 360 -270 360 -130 {
lab=vdd}
N 340 -270 360 -270 {
lab=vdd}
N 300 -70 340 -70 {
lab=vout}
N 340 -100 340 -70 {
lab=vout}
N -70 -160 -70 -70 {
lab=#net3}
N -70 -70 130 -70 {
lab=#net3}
N 130 -130 130 -70 {
lab=#net3}
N 130 -130 300 -130 {
lab=#net3}
N 220 -70 240 -70 {
lab=#net4}
N 130 -70 160 -70 {
lab=#net3}
N 340 200 360 200 {
lab=vss}
N 340 -70 420 -70 {
lab=vout}
C {sg13g2_pr/sg13_lv_nmos.sym} -320 0 2 1 {name=M1
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -50 0 2 0 {name=M2
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -190 0 0 {name=M3
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -280 -190 0 1 {name=M4
L=1u
W=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -200 130 2 1 {name=M5
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -570 130 2 0 {name=M8
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -590 20 1 0 {name=p1 lab=iref
}
C {devices/ipin.sym} -370 0 0 0 {name=p2 lab=vin_n
}
C {devices/ipin.sym} 10 0 2 0 {name=p3 lab=vin_p
}
C {devices/iopin.sym} -180 -290 3 0 {name=p4 lab=vdd}
C {devices/iopin.sym} -180 230 1 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} -390 130 0 0 {name=p7 sig_type=std_logic lab=iref}
C {sg13g2_pr/sg13_lv_pmos.sym} 320 -130 0 0 {name=M6
L=0.5u
W=20u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 130 2 1 {name=M7
L=2u
W=24u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 210 130 0 0 {name=p6 sig_type=std_logic lab=iref}
C {devices/opin.sym} 420 -70 0 0 {name=p8 lab=vout}
C {sg13g2_pr/cap_cmim.sym} 270 -70 1 0 {name=C2 model=cap_cmim W=45.0e-6 L=45.0e-6 MF=1 spiceprefix=X}
C {sg13g2_pr/rhigh.sym} 190 -70 1 0 {name=R2
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
