%chk=c2h6_038.chk
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


d1=1.53149612955447778e+00
a1=1.12922893402143828e+02
t1=1.20001237108401440e+02
d2=1.10241253466557598e+00
a2=1.12742492880368488e+02
t2=-1.19675204453401534e+02
d3=1.10115657632367414e+00
d4=1.09371148446580468e+00
a3=1.12923782658969571e+02
d5=1.09851670789179501e+00
a4=1.13104955780732794e+02
t3=1.79999998246553815e+02
d6=1.10307835916386865e+00
a5=1.13110423745025628e+02
t4=1.20000091849587292e+02
d7=1.09341308989079389e+00
a6=1.12890424068640897e+02
t5=-1.19999889152506185e+02