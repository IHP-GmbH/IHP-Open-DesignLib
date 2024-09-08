v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 70 20 70 {
lab=vout}
N 10 30 10 70 {
lab=vout}
N 10 -60 20 -60 {
lab=vdd}
N 10 -60 10 -30 {
lab=vdd}
N -80 -0 -30 -0 {
lab=vota_out}
N 10 0 80 -0 {
lab=vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} -10 0 0 0 {name=M1
L=0.5u
W=8000.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/iopin.sym} 20 70 0 0 {name=p3 lab=vout
}
C {devices/iopin.sym} 20 -60 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -80 0 2 0 {name=p2 lab=vota_out}
C {devices/iopin.sym} 80 0 0 0 {name=p4 lab=vad}
