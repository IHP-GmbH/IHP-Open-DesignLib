v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -0 -20 160 -20 {
lab=#net1}
N 160 -40 160 -20 {
lab=#net1}
N 160 -110 160 -100 {
lab=#net2}
N 160 -110 310 -110 {
lab=#net2}
N 310 -110 310 -100 {
lab=#net2}
N 310 -40 310 -20 {
lab=#net3}
N 310 -20 460 -20 {
lab=#net3}
N 460 -40 460 -20 {
lab=#net3}
N 460 -110 460 -100 {
lab=in_p}
N 460 -110 550 -110 {
lab=in_p}
N 550 -110 550 -0 {
lab=in_p}
N -0 0 550 -0 {
lab=in_p}
N -0 -40 0 -20 {
lab=#net1}
N 0 -120 0 -100 {
lab=vout}
N 0 130 160 130 {
lab=#net4}
N 160 110 160 130 {
lab=#net4}
N 160 40 160 50 {
lab=#net5}
N 160 40 310 40 {
lab=#net5}
N 310 40 310 50 {
lab=#net5}
N 310 110 310 130 {
lab=#net6}
N 310 130 460 130 {
lab=#net6}
N 460 110 460 130 {
lab=#net6}
N 460 40 460 50 {
lab=#net7}
N 460 40 550 40 {
lab=#net7}
N 0 110 0 130 {
lab=#net4}
N 770 50 770 60 {
lab=#net8}
N 770 50 920 50 {
lab=#net8}
N 920 50 920 60 {
lab=#net8}
N 920 120 920 140 {
lab=#net9}
N 920 140 1070 140 {
lab=#net9}
N 1070 120 1070 140 {
lab=#net9}
N 1070 50 1070 60 {
lab=#net10}
N 1070 50 1160 50 {
lab=#net10}
N 1160 50 1160 160 {
lab=#net10}
N 610 40 610 60 {
lab=#net7}
N 1250 150 1410 150 {
lab=#net11}
N 1410 130 1410 150 {
lab=#net11}
N 1410 60 1410 70 {
lab=#net12}
N 1410 60 1560 60 {
lab=#net12}
N 1560 60 1560 70 {
lab=#net12}
N 1560 130 1560 150 {
lab=#net13}
N 1560 150 1710 150 {
lab=#net13}
N 1710 130 1710 150 {
lab=#net13}
N 1710 60 1710 70 {
lab=vss}
N 1710 60 1800 60 {
lab=vss}
N 1800 60 1800 170 {
lab=vss}
N 1250 130 1250 150 {
lab=#net11}
N 1250 50 1250 70 {
lab=#net10}
N 590 40 610 40 {
lab=#net7}
N 590 40 590 140 {
lab=#net7}
N 550 140 590 140 {
lab=#net7}
N 550 40 550 140 {
lab=#net7}
N 1160 160 1190 160 {
lab=#net10}
N 1190 50 1190 160 {
lab=#net10}
N 1190 50 1250 50 {
lab=#net10}
N 0 170 1800 170 {
lab=vss}
N 0 170 0 190 {
lab=vss}
N 0 0 0 50 {
lab=in_p}
N 610 120 610 140 {
lab=#net14}
N 610 140 770 140 {
lab=#net14}
N 770 120 770 140 {
lab=#net14}
C {devices/iopin.sym} 0 -120 3 0 {name=p1 lab=vout}
C {devices/iopin.sym} 0 190 1 0 {name=p2 lab=vss}
C {devices/iopin.sym} 0 0 2 0 {name=p3 lab=in_p
}
C {sg13g2_pr/rhigh.sym} 0 -70 0 0 {name=R1
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 160 -70 0 0 {name=R4
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 310 -70 0 0 {name=R5
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 460 -70 0 0 {name=R6
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 0 80 0 0 {name=R2
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 160 80 0 0 {name=R3
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 310 80 0 0 {name=R7
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 460 80 0 0 {name=R8
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 610 90 0 0 {name=R9
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 770 90 0 0 {name=R10
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 920 90 0 0 {name=R11
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 1070 90 0 0 {name=R12
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 1250 100 0 0 {name=R13
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 1410 100 0 0 {name=R14
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 1560 100 0 0 {name=R15
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
C {sg13g2_pr/rhigh.sym} 1710 100 0 0 {name=R16
W=0.5e-6
L=2.5e-6
model=rhigh
spiceprefix=X
m=1
R=1360.0
Imax=0.3e-6
}
