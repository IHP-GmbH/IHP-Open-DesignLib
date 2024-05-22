v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 0 -30 0 {
lab=gate}
N 150 -50 150 10 {
lab=bulk}
N 10 30 10 70 {
lab=source}
N 10 0 60 0 {
lab=sub}
N 60 0 60 70 {
lab=sub}
N 10 -70 10 -30 {
lab=drain}
C {devices/iopin.sym} 10 -70 3 0 {name=p1 lab=drain

}
C {devices/iopin.sym} 10 70 1 0 {name=p6 lab=source
}
C {devices/iopin.sym} 150 -50 3 0 {name=p4 lab=bulk
}
C {devices/lab_pin.sym} 150 70 3 0 {name=p11 sig_type=std_logic lab=sub}
C {sg13g2_pr/ptap1.sym} 150 40 0 0 {name=R1
model=ptap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 0 2 1 {name=M3
L=0.130u
W=20u
ng=8
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_pin.sym} 60 70 3 0 {name=p12 sig_type=std_logic lab=sub}
C {devices/iopin.sym} -180 0 2 0 {name=p2 lab=gate

}
