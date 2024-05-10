v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 -60 -280 -40 {
lab=ntap1_p}
N -280 20 -280 50 {
lab=ntap1_n}
N -150 20 -150 50 {
lab=ptap1_n}
N -150 -60 -150 -40 {
lab=ptap1_p}
N 0 -60 0 -40 {
lab=rsil_p}
N 0 20 0 50 {
lab=rsil_n}
N 150 -60 150 -40 {
lab=rppd_p}
N 150 20 150 50 {
lab=rppd_n}
N 330 -60 330 -40 {
lab=rhigh_p}
N 330 20 330 50 {
lab=xxx}
C {sg13g2_pr/rppd.sym} 150 -10 0 0 {name=R2
W=0.5e-6
L=2.5e-6
model=rppd
spiceprefix=X
m=1
R=7.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 330 -10 0 0 {name=R3
W=0.5e-6
L=2.0e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rsil.sym} 0 -10 0 0 {name=R1
W=0.5e-5
L=0.5e-5
model=rsil
spiceprefix=X
b=0
m=1

}
C {sg13g2_pr/ptap1.sym} -150 -10 0 0 {name=R4
model=ptap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
C {sg13g2_pr/ntap1.sym} -280 -10 0 0 {name=R5
model=ntap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
C {devices/iopin.sym} -280 -60 3 0 {name=p1 lab=ntap1_p
}
C {devices/iopin.sym} -150 -60 3 0 {name=p2 lab=ptap1_p}
C {devices/iopin.sym} 0 -60 3 0 {name=p3 lab=rsil_p}
C {devices/iopin.sym} 150 -60 3 0 {name=p4 lab=rppd_p}
C {devices/iopin.sym} 330 -60 3 0 {name=p5 lab=rhigh_p}
C {devices/iopin.sym} -280 50 1 0 {name=p6 lab=ntap1_n
}
C {devices/iopin.sym} -150 50 1 0 {name=p7 lab=ptap1_n}
C {devices/iopin.sym} 0 50 1 0 {name=p8 lab=rsil_n}
C {devices/iopin.sym} 150 50 1 0 {name=p9 lab=rppd_n}
C {devices/iopin.sym} 330 50 1 0 {name=p10 lab=rhigh_n}
