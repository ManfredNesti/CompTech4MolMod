%chk=c2h6_048.chk
%mem=100MB

#p b3lyp/6-31+g(d,p) force nosym

c2h6 molecule

0 1
C1
C2 1 d1
H3 1 d2 2 a1
H4 1 d3 2 a2 3 t1
H5 1 d4 2 a3 3 t2
H6 2 d5 1 a4 3 t3
H7 2 d6 1 a5 6 t4
H8 2 d7 1 a6 6 t5


d1=1.56785368787494006e+00
a1=1.32232533006072316e+02
t1=1.04697055598605019e+02
d2=1.10756539639053719e+00
a2=9.26808403605010653e+01
t2=-1.50726073376121974e+02
d3=1.12796857959798613e+00
d4=1.08912750624864163e+00
a3=1.17551138741879569e+02
d5=1.10422989107963887e+00
a4=1.00067038766282195e+02
t3=1.79415120981243803e+02
d6=1.09020852349800124e+00
a5=1.06279614419906622e+02
t4=1.04077781220595483e+02
d7=1.07766451527075335e+00
a6=1.19104533700107353e+02
t5=-1.20070743324984733e+02