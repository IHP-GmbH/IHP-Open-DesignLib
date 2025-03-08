v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 0 30 0 {
lab=pt_s}
N 30 -50 30 0 {
lab=pt_s}
N 10 -50 30 -50 {
lab=pt_s}
N 10 -50 10 -30 {
lab=pt_s}
N -60 0 -30 -0 {
lab=pt_d}
N 10 30 10 50 {
lab=pt_d}
C {sg13g2_pr/sg13_lv_pmos.sym} -10 0 0 0 {name=M9
L=0.5u
W=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/iopin.sym} 10 -50 3 0 {name=p4 lab=pt_s}
C {devices/iopin.sym} 10 50 1 0 {name=p1 lab=pt_d}
C {devices/iopin.sym} -60 0 2 0 {name=p2 lab=pt_g}
