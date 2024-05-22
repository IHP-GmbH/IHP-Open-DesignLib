v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -410 140 -260 140 {
lab=gate}
N -220 140 -160 140 {
lab=nwell}
N -220 40 -220 110 {
lab=drain}
N -220 170 -220 240 {
lab=source}
N -160 30 -160 140 {
lab=nwell}
N -80 40 -80 110 {
lab=bulk}
C {devices/iopin.sym} -410 140 2 0 {name=p1 lab=gate
}
C {devices/iopin.sym} -220 40 3 0 {name=p6 lab=drain


}
C {devices/iopin.sym} -220 240 1 0 {name=p3 lab=source
}
C {devices/lab_pin.sym} -160 30 1 0 {name=p9 sig_type=std_logic lab=nwell}
C {devices/lab_pin.sym} -80 170 3 0 {name=p8 sig_type=std_logic lab=nwell}
C {sg13g2_pr/ntap1.sym} -80 140 0 0 {name=R2
model=ntap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
C {sg13g2_pr/sg13_lv_pmos.sym} -240 140 2 1 {name=M4
L=0.130u
W=2.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/iopin.sym} -80 40 3 0 {name=p2 lab=bulk


}
