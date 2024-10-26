v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -100 -110 -100 -60 {
lab=#net1}
N 100 -100 100 -60 {
lab=vout}
N -100 -0 -100 30 {
lab=#net2}
N 0 30 100 30 {
lab=#net2}
N 100 0 100 30 {
lab=#net2}
N 140 -30 170 -30 {
lab=vinn}
N 0 -170 60 -170 {
lab=#net1}
N 0 -170 0 -110 {
lab=#net1}
N -10 -170 0 -170 {
lab=#net1}
N -100 -110 0 -110 {
lab=#net1}
N -100 -140 -100 -110 {
lab=#net1}
N 100 -100 160 -100 {
lab=vout}
N 100 -140 100 -100 {
lab=vout}
N -220 -30 -140 -30 {
lab=vinp}
N -220 40 170 40 {
lab=vinn}
N 170 -30 170 40 {
lab=vinn}
N -70 240 -70 290 {
lab=#net3}
N -90 240 -70 240 {
lab=#net3}
N -430 310 -400 310 {
lab=d_ena}
N -360 250 -360 280 {
lab=#net4}
N -360 250 -280 250 {
lab=#net4}
N -280 250 -280 320 {
lab=#net4}
N -280 320 -110 320 {
lab=#net4}
N -360 130 -130 130 {
lab=#net4}
N -360 130 -360 250 {
lab=#net4}
N -100 240 -90 240 {
lab=#net3}
N -140 90 -90 90 {
lab=ibias_20u}
N -90 90 -90 100 {
lab=ibias_20u}
N -140 90 -140 210 {
lab=ibias_20u}
N -350 90 -140 90 {
lab=ibias_20u}
N -360 -210 -360 130 {
lab=#net4}
N -360 -310 -360 -240 {
lab=vdd}
N -390 -310 -360 -310 {
lab=vdd}
N -360 -310 -100 -310 {
lab=vdd}
N -430 -240 -400 -240 {
lab=d_ena}
N -430 -200 -430 310 {
lab=d_ena}
N -460 310 -430 310 {
lab=d_ena}
N -430 -200 -200 -200 {
lab=d_ena}
N -430 -240 -430 -200 {
lab=d_ena}
N -200 -260 -200 -200 {
lab=d_ena}
N -200 -260 -50 -260 {
lab=d_ena}
N -100 -310 -10 -310 {
lab=vdd}
N -10 -230 -10 -170 {
lab=#net1}
N -60 -170 -10 -170 {
lab=#net1}
N -10 -310 -10 -260 {
lab=vdd}
N -10 -310 100 -310 {
lab=vdd}
N 0 30 0 210 {
lab=#net2}
N -100 30 0 30 {
lab=#net2}
N 30 -30 100 -30 {
lab=#net5}
N -90 160 -90 240 {
lab=#net3}
N -70 240 -40 240 {
lab=#net3}
N 100 -310 100 -170 {
lab=vdd}
N -100 -310 -100 -170 {
lab=vdd}
N 0 270 -0 360 {
lab=vss}
N -70 360 -0 360 {
lab=vss}
N -140 270 -140 360 {
lab=vss}
N -360 360 -140 360 {
lab=vss}
N -360 340 -360 360 {
lab=vss}
N -430 360 -360 360 {
lab=vss}
N -70 350 -70 360 {
lab=vss}
N -140 360 -70 360 {
lab=vss}
N 0 240 10 240 {
lab=#net5}
N 10 240 10 420 {
lab=#net5}
N -30 420 10 420 {
lab=#net5}
N -150 240 -140 240 {
lab=#net5}
N -150 240 -150 420 {
lab=#net5}
N -360 310 -350 310 {
lab=#net5}
N -350 310 -350 420 {
lab=#net5}
N -350 420 -150 420 {
lab=#net5}
N 30 -30 30 420 {
lab=#net5}
N -100 -30 30 -30 {
lab=#net5}
N 10 420 30 420 {
lab=#net5}
N -70 320 -60 320 {
lab=#net5}
N -60 320 -60 420 {
lab=#net5}
N -150 420 -60 420 {
lab=#net5}
N -90 130 -30 130 {
lab=#net5}
N -30 130 -30 420 {
lab=#net5}
N -60 420 -30 420 {
lab=#net5}
C {sg13g2_pr/sg13_hv_nmos.sym} 120 -30 0 1 {name=M1
l=1u
w=0.53u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -120 -30 0 0 {name=M2
l=1u
w=0.53u
ng=1
m=4
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -20 240 0 0 {name=M5
l=1u
w=0.76u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -80 -170 0 1 {name=M3
l=1u
w=1.45u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 80 -170 0 0 {name=M4
l=1u
w=1.45u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {opin.sym} 160 -100 0 0 {name=p1 lab=vout}
C {iopin.sym} -390 -310 0 1 {name=p2 lab=vdd
}
C {iopin.sym} -430 360 0 1 {name=p3 lab=vss}
C {ipin.sym} -330 90 0 0 {name=p4 lab=ibias_20u}
C {ipin.sym} -220 40 0 0 {name=p5 lab=vinn}
C {ipin.sym} -220 -30 0 0 {name=p6 lab=vinp}
C {sg13g2_pr/sg13_hv_nmos.sym} -120 240 0 1 {name=M6
l=1u
w=3.08u
ng=5
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -30 -260 0 0 {name=M7
l=1u
w=1.5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} -380 -240 0 0 {name=M8
l=1u
w=1.5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -110 130 0 0 {name=M9
l=1u
w=0.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -90 320 0 0 {name=M10
l=1u
w=0.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} -380 310 0 0 {name=M11
l=1u
w=0.5u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} -460 310 0 0 {name=p18 lab=d_ena}
C {sg13g2_pr/ptap1.sym} -200 390 0 0 {name=R2
model=ptap1
spiceprefix=X
R=262.847.0
Imax=0.3e-6
}
