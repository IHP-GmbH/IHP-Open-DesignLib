v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -40 10 -30 {
lab=vdd}
N 10 30 10 60 {
lab=vout}
N -70 -0 -30 -0 {
lab=vmid2}
N 10 -0 20 0 {
lab=vdd}
N 20 -40 20 0 {
lab=vdd}
N 10 -40 20 -40 {
lab=vdd}
N 10 -60 10 -40 {
lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} -10 0 0 0 {name=M6
L=0.5u
W=20u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/iopin.sym} 10 -60 3 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 10 60 1 0 {name=p1 lab=vout}
C {devices/iopin.sym} -70 0 2 0 {name=p2 lab=vmid2}
