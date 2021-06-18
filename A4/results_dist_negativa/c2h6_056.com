%chk=c2h6_056.chk
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


d1=1.54019759898089537e+00
a1=1.11212994576171297e+02
t1=1.07338423789705843e+02
d2=1.09340355803183353e+00
a2=1.04586435793291500e+02
t2=-1.41996898204077638e+02
d3=1.10542386016253458e+00
d4=1.08992465301686914e+00
a3=1.13824596074126575e+02
d5=1.09751089656849010e+00
a4=1.06063587183927197e+02
t3=1.78901234849982075e+02
d6=1.09621792852528932e+00
a5=1.14645966996252056e+02
t4=1.13591749529564467e+02
d7=1.09399743862152055e+00
a6=1.14249719275282175e+02
t5=-1.23172069078708802e+02