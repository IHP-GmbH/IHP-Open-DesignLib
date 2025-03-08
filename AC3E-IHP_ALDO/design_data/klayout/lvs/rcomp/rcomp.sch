v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -10 -30 -10 {
lab=vmid2}
N 30 -10 60 -10 {
lab=vmid2}
C {sg13g2_pr/rhigh.sym} 0 -10 1 0 {name=R2
W=0.5e-6
L=3.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {devices/ipin.sym} -60 -10 0 0 {name=p1 lab=vmid2
}
C {devices/ipin.sym} 60 -10 2 0 {name=p2 lab=vc
}
