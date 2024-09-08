v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 0 -40 -0 {
lab=vc}
N 20 0 50 0 {
lab=vout}
C {sg13g2_pr/cap_cmim.sym} -10 0 3 0 {name=C2 model=cap_cmim W=45.0e-6 L=45.0e-6 MF=1 spiceprefix=X}
C {devices/ipin.sym} -60 0 0 0 {name=p2 lab=vc
}
C {devices/ipin.sym} 50 0 2 0 {name=p1 lab=vout
}
