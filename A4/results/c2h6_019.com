%chk=c2h6_019.chk
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


d1=1.54772504891040152e+00
a1=1.09013615615886565e+02
t1=1.20000033150277744e+02
d2=1.10484140943750142e+00
a2=1.10013536616717829e+02
t2=-1.20000175727619123e+02
d3=1.10286848843643837e+00
d4=1.10170368475039071e+00
a3=1.09013521965398255e+02
d5=1.10437848661679805e+00
a4=1.09013396434996537e+02
t3=1.79999998253911969e+02
d6=1.10201931140327547e+00
a5=1.09013333167668463e+02
t4=1.20000026699861948e+02
d7=1.10138450070586624e+00
a6=1.09013312489015178e+02
t5=-1.20000021512229409e+02