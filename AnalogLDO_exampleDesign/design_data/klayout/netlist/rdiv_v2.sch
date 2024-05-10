v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 30 0 30 {
lab=in_p}
N 0 20 0 30 {
lab=in_p}
N 0 -60 0 -40 {
lab=vout}
C {sg13g2_pr/rhigh.sym} 0 -10 0 0 {name=R1
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/iopin.sym} -10 30 2 0 {name=p2 lab=in_p}
C {devices/iopin.sym} 0 -60 2 0 {name=p3 lab=vout}
