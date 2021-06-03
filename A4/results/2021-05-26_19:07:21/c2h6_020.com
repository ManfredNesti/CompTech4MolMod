%chk=c2h6_020.chk
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


d1=1.48397486782233967e+00
a1=1.78418340178667563e+02
t1=1.19568399580062305e+02
d2=1.10476656749261237e+00
a2=1.09561842873038046e+02
t2=-1.78565924767792211e+02
d3=1.19568601832862176e+00
d4=1.16394305557830102e+00
a3=1.08524340510438279e+02
d5=1.11457930142248229e+00
a4=1.08616833598990709e+02
t3=1.79996847397285762e+02
d6=1.12505622732919308e+00
a5=1.08618816970941580e+02
t4=1.20067241181575127e+02
d7=1.13426262715537329e+00
a6=1.78559201758176386e+02
t5=-1.19999999494546159e+02
