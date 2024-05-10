v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -20 10 -10 {
lab=in_p}
N 10 50 10 70 {
lab=vss}
N 0 -20 10 -20 {
lab=in_p}
N 10 -30 10 -20 {
lab=in_p}
N 10 -110 10 -90 {
lab=in_p}
C {sg13g2_pr/rhigh.sym} 10 20 0 0 {name=R2
W=0.5e-6
L=30e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 10 -60 0 0 {name=R1
W=0.5e-6
L=10e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/iopin.sym} 10 70 2 0 {name=p1 lab=vss}
C {devices/iopin.sym} 0 -20 2 0 {name=p2 lab=in_p}
C {devices/iopin.sym} 10 -110 2 0 {name=p3 lab=vout}
