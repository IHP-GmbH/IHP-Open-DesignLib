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
N -200 0 -100 0 {
lab=inout_1}
N -100 -80 -100 0 {
lab=inout_1}
N -50 140 -0 140 {
lab=#net1}
N -0 110 0 140 {
lab=#net1}
N -170 140 -130 140 {
lab=en}
N 0 -150 -0 -120 {
lab=en}
N -170 -150 -0 -150 {
lab=en}
N -170 -150 -170 140 {
lab=en}
N -200 140 -170 140 {
lab=en}
N 0 40 0 70 {
lab=vss}
N 0 40 70 40 {
lab=vss}
N 70 40 70 100 {
lab=vss}
N 70 -110 70 -50 {
lab=vdd}
N 0 -50 70 -50 {
lab=vdd}
N 0 -80 0 -50 {
lab=vdd}
C {devices/iopin.sym} -200 0 2 0 {name=p1 lab=inout_1
}
C {devices/iopin.sym} 180 0 0 0 {name=p6 lab=inout_2

}
C {devices/ipin.sym} -200 140 0 0 {name=p2 lab=en}
C {devices/iopin.sym} 70 -110 3 0 {name=p3 lab=vdd
}
C {devices/iopin.sym} 70 100 1 0 {name=p4 lab=vss
}
C {sg13g2_stdcells-dev/sg13g2_inv_1.sym} -90 140 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_nmos.sym} 0 90 3 0 {name=M1
L=0.130u
W=5.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 -100 1 0 {name=M2
L=0.130u
W=5.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
