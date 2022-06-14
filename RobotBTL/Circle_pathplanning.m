xa = 400;
ya = 250;
za = 300;

xb = 500;
yb = 100;
zb = 100;

xi = (xa+xb)/2;
yi = (ya+yb)/2;
zi = (za+zb)/2;
R = sqrt((xa-xi)^2+(ya-yi)^2);
pm = pi*R;
vm = 10%input('nhap vmax:');
am = 10%input('nhap amax:');

if(vm > sqrt(pm*am/2))
    vm = sqrt(pm*am/2);
end

t1 = vm/(am);
t_1 = 0:0.01:t1;
a1 = (am/t1)*t_1;
v1 = (am/(2*t1))*t_1.^2;
p1 = (am/(6*t1))*t_1.^3;


t_2 = t1:0.01:2*t1;
a2 = 2*am-(am/t1)*t_2;
v2 = 2*am*t_2-(am/(2*t1))*t_2.^2-am*t1;
p2 = am*t_2.^2-(am/(6*t1))*t_2.^3-am*t1*t_2+am*t1^2/3;

t3 = (pm-2*am*t1^2)/vm;
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

p = [p1 p2 p3 p4 p5];
v = [v1 v2 v3 v4 v5];
a = [a1 a2 a3 a4 a5];
t = [t_1 t_2 t_3 t_4 t_5];
alpha = atan2((ya-yi),(xa-xi));
x = xi + R*cos(alpha+p/R);
y = yi + R*sin(alpha+p/R);
beta = atan2((zb-za),sqrt((xa-xb)^2+(ya-yb)^2));
z = za + p*sin(beta);
yawI = linspace(90*pi/180,70*pi/180,length(t));
K = length(t);
theta1 = zeros(1,length(t));
theta2 = zeros(1,length(t));
theta4 = zeros(1,length(t));
d3 = zeros(1,length(t));
[theta1(1), theta2(1), d3(1), theta4(1)] = Inverse_Polation(x(1),y(1),z(1),yawI(1));
for i=2:K
    [theta1(i), theta2(i), d3(i), theta4(i)] = Inverse_Polation(x(i),y(i),z(i),yawI(i));
end

% figure(1)
% subplot(3,1,1);
% plot(t_1,p1,'r',t_2,p2,'g',t_3,p3,'b',t_4,p4,'m',t_5,p5,'c');
% subplot(3,1,2);
% plot(t_1,v1,'r',t_2,v2,'g',t_3,v3,'b',t_4,v4,'m',t_5,v5,'c');
% subplot(3,1,3);
% plot(t_1,a1,'r',t_2,a2,'g',t_3,a3,'b',t_4,a4,'m',t_5,a5,'c');
% grid on

figure(2)
subplot(3,1,1);
plot(t,x,'r');
title('x(t)');

subplot(3,1,2);
plot(t,y,'r');
title('y(t)');

subplot(3,1,3);
plot(t,z,'r');
title('z(t)');

figure(3)
subplot(4,1,1);
plot(t,theta1,'r');
title('theta1(t)');
subplot(4,1,2);
plot(t,theta2,'r');
title('theta2(t)');
subplot(4,1,3);
plot(t,theta4,'r');
title('theta4(t)');
subplot(4,1,4);
plot(t,d3,'r');
title('d3(t)');
