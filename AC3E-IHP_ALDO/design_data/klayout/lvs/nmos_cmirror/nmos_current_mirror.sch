v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 30 40 30 70 {
lab=vs}
N 30 130 30 170 {
lab=vss}
N -380 130 -380 170 {
lab=vss}
N -380 30 -380 70 {
lab=iref}
N -380 30 -310 30 {
lab=iref}
N -380 -10 -380 30 {
lab=iref}
N -310 30 -310 100 {
lab=iref}
N -340 100 -310 100 {
lab=iref}
N 30 100 90 100 {
lab=vss}
N 90 100 90 170 {
lab=vss}
N 30 170 90 170 {
lab=vss}
N -400 100 -380 100 {
lab=vss}
N -400 100 -400 170 {
lab=vss}
N -400 170 -380 170 {
lab=vss}
N -310 100 -10 100 {
lab=iref}
N -380 170 30 170 {
lab=vss}
N 30 170 30 200 {
lab=vss}
N 550 -100 550 70 {
lab=vout}
N 420 100 510 100 {
lab=iref}
N 550 130 550 170 {
lab=vss}
N 90 170 550 170 {
lab=vss}
N 550 100 570 100 {
lab=vss}
N 570 100 570 170 {
lab=vss}
N 550 170 570 170 {
lab=vss}
C {sg13g2_pr/sg13_lv_nmos.sym} 10 100 2 1 {name=M5
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -360 100 2 0 {name=M8
L=2u
W=6u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -380 -10 1 0 {name=p1 lab=iref
}
C {devices/iopin.sym} 30 200 1 0 {name=p5 lab=vss}
C {devices/lab_pin.sym} -180 100 0 0 {name=p7 sig_type=std_logic lab=iref}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 100 2 1 {name=M7
L=2u
W=24u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 420 100 0 0 {name=p6 sig_type=std_logic lab=iref}
C {devices/ipin.sym} 30 40 1 0 {name=p2 lab=vs
}
C {devices/ipin.sym} 550 -100 1 0 {name=p3 lab=vout
}
