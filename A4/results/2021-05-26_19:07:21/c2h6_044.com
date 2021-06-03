%chk=c2h6_044.chk
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


d1=1.56877350412348848e+00
a1=1.31753026546955709e+02
t1=1.04117253918123751e+02
d2=1.09587198494973337e+00
a2=9.17344242717463771e+01
t2=-1.50267448694060789e+02
d3=1.10847435419769247e+00
d4=1.09425640112728728e+00
a3=1.17678192653928292e+02
d5=1.09839120256101919e+00
a4=9.95258249900063561e+01
t3=1.79308106126528742e+02
d6=1.09147740530874948e+00
a5=1.05787702872564026e+02
t4=1.03433458290080182e+02
d7=1.08873296428649402e+00
a6=1.17837366316225626e+02
t5=-1.19964804724432014e+02
