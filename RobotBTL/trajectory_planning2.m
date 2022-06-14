xa = 0;
ya = 0;
za = 0;
xb = 3;
yb = 4;
zb = 5;
pm = sqrt((xa-xb)^2+(ya-yb)^2+(za-zb)^2);
alpha = atan2(abs(yb-ya),abs(xa-xb));
beta = atan2(abs(za-zb),sqrt((xa-xb)^2+(ya-yb)^2));
vm = input('nhap vmax:');
am = input('nhap amax:');

if(vm > sqrt(pm*am/2))
    vm = sqrt(pm*am/2);
end

t1 = vm/(am);
t_1 = 0:0.01:t1;
a1 = (am/t1)*t_1;
[ax ay az] = Linear_Interpolation(a1,alpha,beta);
v1 = (am/(2*t1))*t_1.^2;
[vx vy vz] = Linear_Interpolation(v1,alpha,beta);
p1 = (am/(6*t1))*t_1.^3;
[px py pz] = Linear_Interpolation(p1,alpha,beta);

t_2 = t1:0.01:2*t1;
a2 = 2*am-(am/t1)*t_2;
v2 = 2*am*t_2-(am/(2*t1))*t_2.^2-am*t1;
p2 = am*t_2.^2-(am/(6*t1))*t_2.^3-am*t1*t_2+am*t1^2/3;

t3 = (pmax-2*am*t1^2)/vm;
t_3 = 2*t1:0.01:t3+2*t1;
a3 = zeros(1,length(t_3));
v3 = vm*ones(1,length(t_3));
p3 = vm*t_3-am*t1^2;

T3 = t3 + 2*t1;
d1 = -am/t1;
d0 = -d1*T3;
d2 = vm - d0*T3 - d1*T3^2/2;
P3 = vm*T3-am*t1^2;
d3 = P3 - d0*T3^2/2-d1*T3^3/6-d2*T3;
t_4 = T3:0.01:T3+t1;
a4 = d0+d1*t_4;
v4 = d0*t_4+d1*t_4.^2/2+d2;
p4 = d0*t_4.^2/2+d1*t_4.^3/6+d2*t_4+d3;

T4 = T3 + t1;
T5 = T4 + t1;
e1 = am/t1;
e0 = -e1*T5;
V4 = d0*T4+d1*T4^2/2+d2;
e2 = V4 - e0*T4-e1*T4^2/2;
P4 = d0*T4^2/2+d1*T4^3/6+d2*T4+d3;
e3 = P4 - e0*T4^2/2-e1*T4^3/6-e2*T4;
t_5 = T4:0.01:T5;
a5 = e0+e1*t_5;
v5 = e0*t_5+e1*t_5.^2/2+e2;
p5 = e0*t_5.^2/2+e1*t_5.^3/6+e2*t_5+e3;

figure(1)
subplot(3,1,1);
plot(t_1,p1,'r',t_2,p2,'g',t_3,p3,'b',t_4,p4,'m',t_5,p5,'c');
subplot(3,1,2);
plot(t_1,v1,'r',t_2,v2,'g',t_3,v3,'b',t_4,v4,'m',t_5,v5,'c');
subplot(3,1,3);
plot(t_1,a1,'r',t_2,a2,'g',t_3,a3,'b',t_4,a4,'m',t_5,a5,'c');
grid on