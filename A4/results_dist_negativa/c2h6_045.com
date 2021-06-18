%chk=c2h6_045.chk
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


d1=1.56913386022356582e+00
a1=1.31848703810022073e+02
t1=1.04161395763575527e+02
d2=1.09697621388285893e+00
a2=9.17930279818674819e+01
t2=-1.50330396548916951e+02
d3=1.11042639574818347e+00
d4=1.09374472122105115e+00
a3=1.17659957600604940e+02
d5=1.09888647099066561e+00
a4=9.95577380077809551e+01
t3=1.79312318656502697e+02
d6=1.09108158321338133e+00
a5=1.05807393275996986e+02
t4=1.03480249893044800e+02
d7=1.08742645150264017e+00
a6=1.17979233513036959e+02
t5=-1.19967849863164986e+02