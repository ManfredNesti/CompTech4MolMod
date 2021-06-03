%chk=c2h6_005.chk
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


d1=3.44209048095339076e+00
a1=1.78987732080687721e+02
t1=1.19992105875793229e+02
d2=1.13336790939267207e+00
a2=1.09993331096928131e+02
t2=-1.78991863275027214e+02
d3=1.17661151607511960e+00
d4=1.16198295115319294e+00
a3=1.08992076205195929e+02
d5=1.10710074411738613e+00
a4=1.08994397493101104e+02
t3=1.79999942404134714e+02
d6=1.10688069602777772e+00
a5=1.08994304990650747e+02
t4=1.20000596902604187e+02
d7=1.17048670969555180e+00
a6=1.78990058604580639e+02
t5=-1.19999998254670743e+02
