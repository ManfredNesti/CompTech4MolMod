%chk=c2h6_033.chk
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


d1=1.69629226626728746e+00
a1=1.50283584784740299e+02
t1=9.89951613033118036e+01
d2=1.08960643823514314e+00
a2=8.85417549415512326e+01
t2=-1.57800078417384100e+02
d3=1.08554448249089508e+00
d4=1.08563395858669876e+00
a3=8.65026961531476957e+01
d5=1.08745557382643243e+00
a4=9.06549572547276341e+01
t3=1.79828595533455086e+02
d6=1.09399294458844043e+00
a5=9.08756736772169518e+01
t4=1.22257059201375398e+02
d7=1.10357179846124942e+00
a6=1.56115276316533510e+02
t5=-1.20000266356467023e+02
