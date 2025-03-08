v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -50 -130 -30 {
lab=vdd}
N -10 -50 110 -50 {
lab=vdd}
N 110 -50 110 -30 {
lab=vdd}
N -60 0 70 0 {
lab=vmid1}
N -130 30 -130 60 {
lab=vmid1}
N 110 30 110 60 {
lab=vmid2}
N -130 60 -60 60 {
lab=vmid1}
N -60 0 -60 60 {
lab=vmid1}
N -90 -0 -60 0 {
lab=vmid1}
N -10 -70 -10 -50 {
lab=vdd}
N -130 -50 -10 -50 {
lab=vdd}
N -140 -0 -130 -0 {
lab=vdd}
N -140 -30 -140 -0 {
lab=vdd}
N -140 -30 -130 -30 {
lab=vdd}
N 110 0 120 0 {
lab=vdd}
N 120 -30 120 0 {
lab=vdd}
N 110 -30 120 -30 {
lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} -110 0 0 1 {name=M1
L=1u
W=2u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 90 0 0 0 {name=M2
L=1u
W=2u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/iopin.sym} -10 -70 3 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -130 60 1 0 {name=p2 lab=vmid1}
C {devices/iopin.sym} 110 60 1 0 {name=p3 lab=vmid2
}
