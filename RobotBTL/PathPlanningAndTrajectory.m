clc; cla; close all;

% Point A
xa = 400;
ya = 250;
za = 305;
yawa = 90;
% Point B
xb = 300;
yb = -500;
zb = 100;
yawb = 70;
% Point C
xc = 300;
yc = -200;

% mode: 0 = line, 1 = circular
mode = 1;

vm = 20;
am = 10;

if mode == 0 
%line
pm = sqrt((xa-xb)^2+(ya-yb)^2+(za-zb)^2);
else
%circular
[xi,yi,R] = FindCircle([xa ya], [xb yb], [xc yc]);
theta0 = atan((ya-yi)/(xa-xi));
if ((ya-yi)/(xa-xi)>0)&&(ya<yi)
    theta0 = theta0 - pi;
end
if ((ya-yi)/(xa-xi)<0)&&(ya>yi)
    theta0 = theta0 + pi;
end
theta1 = atan((yb-yi)/(xb-xi));
if ((yb-yi)/(xb-xi)>0)&&(yb<yi)
    theta1 = theta1 - pi;
end
if ((yb-yi)/(xb-xi)<0)&&(yb>yi)
    theta1 = theta1 + pi;
end

if theta0<theta1
    delta_theta = theta1-theta0;
    clock = 1;
elseif theta0>theta1
    delta_theta = theta0-theta1;
    clock = -1;
end

if delta_theta>pi 
    delta_theta = 2*pi - delta_theta;
    clock = -clock;
end
pm = R*delta_theta;
end

%Trajectory 
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


figure(1);
subplot(3,1,1);
plot(t_1,p1,'b',t_2,p2,'b',t_3,p3,'b',t_4,p4,'b',t_5,p5,'b');
title('s(t)');
subplot(3,1,2);
plot(t_1,v1,'b',t_2,v2,'b',t_3,v3,'b',t_4,v4,'b',t_5,v5,'b');
title('v(t)');
subplot(3,1,3);
plot(t_1,a1,'b',t_2,a2,'b',t_3,a3,'b',t_4,a4,'b',t_5,a5,'b');
title('a(t)');

t = [t_1, t_2, t_3, t_4, t_5];
p = [p1, p2, p3, p4, p5];

if mode == 0 
% %line interpolation
x = xa + p*(xb-xa)/pm;
y = ya + p*(yb-ya)/pm;
z = za + p*(zb-za)/pm;
yaw = 90*pi/180 + p*(yawb*pi/180-yawa*pi/180)/pm;
figure(2)
subplot(5,1,1);
plot(t,p,'b');
title('s(t)');
subplot(5,1,2);
plot(t,x,'b');
title('x(t)');
subplot(5,1,3);
plot(t,y,'b');
title('y(t)');
subplot(5,1,4);
plot(t,z,'b');
title('z(t)');
subplot(5,1,5);
plot(t,yaw*180/pi,'b');
title('yaw(t)');
K = length(t);
theta1 = [];
theta2 = [];
d3 = [];
theta4 = [];
for k=1:K
    [theta1(k), theta2(k), d3(k), theta4(k),Valid] = Param_deter(x(k),y(k),z(k),yaw(k));
    if Valid == "false"
        theta1(k) = 0;
        theta2(k) = 0;
        d3(k) = 0;
        theta4(k) = 0;
    end
end
figure(3);
subplot(4,1,1);
plot(t,theta1*180/pi,'b');
title('theta1_linear(t)');
subplot(4,1,2);
plot(t,theta2*180/pi,'b');
title('theta2_linear(t)');
subplot(4,1,3);
plot(t,d3,'b');
title('d3_linear(t)');
subplot(4,1,4);
plot(t,theta4*180/pi,'b');
title('theta4_linear(t)');
figure(7)
plot3(x,y,z,'b');
title('line 3D ');
hold on;
plot3(xa,ya,za,'r*');
hold on;
plot3(xb,yb,zb,'r*');
grid on;

else

%circular interpolation
x2 = xi + R*cos(clock*p/R + theta0);
y2 = yi + R*sin(clock*p/R + theta0);
z2 = za + p*(zb-za)/pm;
yaw = 90*pi/180 + p*(yawb*pi/180-yawa*pi/180)/pm;
figure(4)
subplot(5,1,1);
plot(t,p,'b');
title('s(t)');
subplot(5,1,2);
plot(t,x2,'b');
title('x2(t)');
subplot(5,1,3);
plot(t,y2,'b');
title('y2(t)');
subplot(5,1,4);
plot(t,z2,'b');
title('z2(t)');
subplot(5,1,5);
plot(t,yaw*180/pi,'b');
title('yaw(t)');

 K = length(t);
 theta1 = [];
 theta2 = [];
 d3 = [];
 theta4 = [];
for k=1:K
    [theta1(k), theta2(k), d3(k), theta4(k), Valid] = Param_deter(x2(k),y2(k),z2(k),yaw(k));
end
figure(5);
subplot(4,1,1);
plot(t,theta1*180/pi,'b');
title('theta1_circular(t)');
subplot(4,1,2);
plot(t,theta2*180/pi,'b');
title('theta2_circular(t)');
subplot(4,1,3);
plot(t,d3,'b');
title('d3_circular(t)');
subplot(4,1,4);
plot(t,theta4*180/pi,'b');
title('theta4_circular(t)');


figure(6)
plot3(x2,y2,z2,'b');
title('circular 3D');
hold on;
plot3(xa,ya,za,'r*');
hold on;
plot3(xb,yb,zb,'r*');
grid on;

figure(8)
plot(x2,y2,'b');
title('circular 2D');
hold on;
plot(xa,ya,'r*');
hold on;
plot(xb,yb,'r*');
hold on;
plot(xc,yc,'r*');
hold on;
plot(xi,yi,'r*');
grid on;

end
