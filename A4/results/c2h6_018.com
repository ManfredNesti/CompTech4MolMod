%chk=c2h6_018.chk
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


d1=1.50917836300625674e+00
a1=1.09023428674529356e+02
t1=1.20000022324170459e+02
d2=1.06338295473549493e+00
a2=1.10023621017293991e+02
t2=-1.20000360759667501e+02
d3=1.07141558114005431e+00
d4=1.07644020358413228e+00
a3=1.09023337647422892e+02
d5=1.06360453343176742e+00
a4=1.09022995118323479e+02
t3=1.79999998253414105e+02
d6=1.07419978736839994e+00
a5=1.09022955034977699e+02
t4=1.20000017808823003e+02
d7=1.07615049444795008e+00
a6=1.09022954179147774e+02
t5=-1.20000012608456558e+02