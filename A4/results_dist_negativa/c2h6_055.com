%chk=c2h6_055.chk
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


d1=1.54102662234328758e+00
a1=1.10918258782303042e+02
t1=1.07386045200925935e+02
d2=1.09367219346097166e+00
a2=1.04785509395021606e+02
t2=-1.41880819882122864e+02
d3=1.10518955649029738e+00
d4=1.08977903760703843e+00
a3=1.13735250382828141e+02
d5=1.09746898072770804e+00
a4=1.06158038741495602e+02
t3=1.78891953955224494e+02
d6=1.09631847633264590e+00
a5=1.14770721002778728e+02
t4=1.13768478994968532e+02
d7=1.09357125763060581e+00
a6=1.14238088730412898e+02
t5=-1.23222087079082996e+02