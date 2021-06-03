%chk=c2h6_052.chk
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


d1=1.53611887294367344e+00
a1=1.18519722085938596e+02
t1=1.08082010975694246e+02
d2=1.12614074998623392e+00
a2=1.03344584994566603e+02
t2=-1.45687142254373839e+02
d3=1.17472355411671270e+00
d4=1.07805580984478655e+00
a3=1.15313843481667760e+02
d5=1.11364427082368245e+00
a4=1.05751429257805356e+02
t3=1.79748769544642442e+02
d6=1.09268830090939195e+00
a5=1.13606949100496578e+02
t4=1.11869320044264512e+02
d7=1.06725218567318514e+00
a6=1.18119689661571286e+02
t5=-1.22478837051356336e+02
