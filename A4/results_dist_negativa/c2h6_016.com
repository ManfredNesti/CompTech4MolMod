%chk=c2h6_016.chk
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


d1=1.50000234133438282e+00
a1=1.78418069258197619e+02
t1=1.19565862408650858e+02
d2=1.10264245575431041e+00
a2=1.09558689564344135e+02
t2=-1.78563443379920443e+02
d3=1.21548184265138204e+00
d4=1.16159934928683195e+00
a3=1.08518975464846335e+02
d5=1.10668564200941710e+00
a4=1.08611818842690326e+02
t3=1.79996893246033636e+02
d6=1.10802089190703135e+00
a5=1.08613274355849427e+02
t4=1.20073714844713948e+02
d7=1.26008627754698455e+00
a6=1.78565416096903050e+02
t5=-1.19999998257332294e+02
