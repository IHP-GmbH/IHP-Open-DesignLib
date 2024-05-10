v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -90 -10 -70 {
lab=vout}
N -10 -10 -10 70 {
lab=in_p}
N -10 130 -10 220 {
lab=vss}
C {sg13g2_pr/rhigh.sym} -10 100 0 0 {name=R2
W=0.5e-6
L=30e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} -10 -40 0 0 {name=R1
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/iopin.sym} -10 -90 3 0 {name=p1 lab=vout}
C {devices/iopin.sym} -10 220 1 0 {name=p2 lab=vss}
C {devices/iopin.sym} -10 30 2 0 {name=p3 lab=in_p
}
