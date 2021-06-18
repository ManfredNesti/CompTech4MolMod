%chk=c2h6_034.chk
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


d1=1.66966711681914015e+00
a1=1.50519250465160468e+02
t1=9.93219161087142055e+01
d2=1.08888169489782038e+00
a2=8.88585868686025151e+01
t2=-1.58024757140096568e+02
d3=1.08081809931415451e+00
d4=1.08575003874841181e+00
a3=8.70651965442087601e+01
d5=1.08756041583630081e+00
a4=9.09764765432257718e+01
t3=1.79826563836328489e+02
d6=1.09507436905695044e+00
a5=9.12441792314331082e+01
t4=1.22071078199863436e+02
d7=1.10321600268090436e+00
a6=1.56108884772603830e+02
t5=-1.19999947368161344e+02