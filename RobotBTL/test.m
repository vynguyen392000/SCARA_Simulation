syms p am T1 b0 b1 b2 b3;
b3 = am*(T1^2)/3;
b2 = -am*T1;
b1 = -am/T1;
b0 = 2*am;
p = simplify(b3 + b2*2*T1 + b0*((2*T1)^2)/2 + b1*(8*(T1^3)/6));
p1= simplify(b2*2*T1)
p2 = simplify(b0*((2*T1)^2)/2)
p3 = simplify( b1*(8*(T1^3)/6))
pf= b3 + p1+p2+p3