%chk=c2h6_032.chk
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


d1=1.53353645512925496e+00
a1=1.09370046574638309e+02
t1=1.20000119191774147e+02
d2=1.08872574561133306e+00
a2=1.10263410995808727e+02
t2=-1.19970867035123078e+02
d3=1.08932630671239661e+00
d4=1.09577636372251108e+00
a3=1.09370052198306624e+02
d5=1.09406026574245963e+00
a4=1.09386280071348864e+02
t3=1.79999998253087256e+02
d6=1.08807952599567104e+00
a5=1.09386742056820268e+02
t4=1.20000024748915763e+02
d7=1.09657532400153923e+00
a6=1.09366825803237617e+02
t5=-1.20000016294547336e+02
