v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 30 -100 70 {
lab=vs}
N 130 30 130 70 {
lab=vs}
N 20 70 20 100 {
lab=vs}
N -100 70 20 70 {
lab=vs}
N -170 0 -140 0 {
lab=vin_n}
N 170 0 210 0 {
lab=vin_p}
N 20 70 130 70 {
lab=vs}
N 60 0 130 0 {
lab=gnd}
N -100 -60 -100 -30 {
lab=vmid1}
N 130 -60 130 -30 {
lab=vmid2}
N 60 0 60 100 {
lab=gnd}
N -100 0 60 0 {
lab=gnd}
C {sg13g2_pr/sg13_lv_nmos.sym} -120 0 2 1 {name=M1
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 0 2 0 {name=M2
L=2u
W=15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -170 0 0 0 {name=p2 lab=vin_n
}
C {devices/ipin.sym} 210 0 2 0 {name=p3 lab=vin_p
}
C {devices/iopin.sym} -100 -60 3 0 {name=p4 lab=vmid1}
C {devices/iopin.sym} 130 -60 3 0 {name=p5 lab=vmid2}
C {devices/iopin.sym} 20 100 1 0 {name=p1 lab=vs}
C {devices/iopin.sym} 60 100 1 0 {name=p6 lab=gnd}
