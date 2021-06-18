%chk=c2h6_013.chk
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


d1=1.57250611209558389e+00
a1=1.77980566250677043e+02
t1=1.19235577145645976e+02
d2=1.23773428709623534e+00
a2=1.09219852196470171e+02
t2=-1.78231573421988884e+02
d3=1.43650105996855593e+00
d4=1.10710919733341862e+00
a3=1.08151047672909513e+02
d5=1.08174407890634683e+00
a4=1.08311884996039723e+02
t3=1.79994514719138067e+02
d6=1.11115569736923248e+00
a5=1.08313947162897406e+02
t4=1.20135638118750762e+02
d7=1.58897289411505338e+00
a6=1.78244823768097973e+02
t5=-1.19999998258829919e+02