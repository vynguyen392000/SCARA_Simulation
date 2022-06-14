function [x,y,z,yaw,theta1,theta2,theta4,d3,theta1dot,theta2dot,d3dot,theta4dot,p,v,a,t] = linear_pathplanning(xa,ya,za,yawa,xb,yb,zb,yawb,vm,am)
cla;
pm = sqrt((xa-xb)^2+(ya-yb)^2+(za-zb)^2);
% Goc giua hinh chieu cua AB tren mat phang va Ox tren mp
alpha = atan2((yb-ya),(xb-xa));
% Goc giua AB va Oz tren mp
beta = atan2((zb-za),sqrt((xb-xa)^2+(yb-ya)^2));
%Trajectory
[p,v,a,t] = my_trajectory(pm,vm,am);
px = p*cos(beta)*cos(alpha);
py = p*cos(beta)*sin(alpha);
pz = p*sin(beta);
vx = v*cos(beta)*cos(alpha);
vy = v*cos(beta)*sin(alpha);
vz = v*sin(beta);

%% Path planning for end effector
x = xa + px
y = ya + py;
z = za + pz;
yaw = linspace(yawa*pi/180,yawb*pi/180,length(t));
t = t;
%% Path planning for joints
K = length(t);
theta1 = zeros(1,length(t));
theta2 = zeros(1,length(t));
theta4 = zeros(1,length(t));
d3 = zeros(1,length(t));
[theta1(1), theta2(1), d3(1), theta4(1)] = Inverse_Polation(x(1),y(1),z(1),yaw(1));
for i=2:K
    [theta1(i), theta2(i), d3(i), theta4(i)] = Inverse_Polation(x(i),y(i),z(i),yaw(i));
end
%% tinh van toc cua joint
theta1dot = zeros(1,length(t));
theta2dot = zeros(1,length(t));
theta4dot = zeros(1,length(t));
d3dot = zeros(1,length(t));
wx = zeros(1,length(t));%van toc goc cua roll
wy = zeros(1,length(t));%van toc goc cua pitch
wz = zeros(1,length(t));%van toc goc cua yaw
for i=2:K-1
    wz(i) = (yaw(i+1)-yaw(i))/0.01;
end
for i=1:K
    [theta1dot(i),theta2dot(i),d3dot(i),theta4dot(i)] = Joint_Velocity(theta1(i),theta2(i),d3(i),theta4(i),vx(i),vy(i),vz(i),wx(i),wy(i),wz(i));
end
% %% Plot trajectory
% figure(1)
% subplot(3,1,1);
% plot(t,p,'r');
% title('p(t)');
% subplot(3,1,2);
% plot(t,v,'r');
% title('v(t)');
% subplot(3,1,3);
% plot(t,a,'r');
% title('a(t)');
% grid on
% 
%% Plot ordinate of end effector
% figure(2)
% subplot(4,1,1);
% plot(t,x,'r');
% title('x(t)');
% subplot(4,1,2);
% plot(t,y,'r');
% title('y(t)');
% subplot(4,1,3);
% plot(t,z,'r');
% title('z(t)');
% subplot(4,1,4);
% plot(t,yaw*180/pi,'r');
% title('yaw(t)');
% 
% %% Plot joints position
% figure(3)
% subplot(4,1,1);
% plot(t,theta1,'r');
% title('theta1(t)');
% subplot(4,1,2);
% plot(t,theta2,'r');
% title('theta2(t)');
% subplot(4,1,3);
% plot(t,theta4,'r');
% title('theta4(t)');
% subplot(4,1,4);
% plot(t,d3,'r');
% title('d3(t)');
% 
% %% Plot joint velocity
% figure(4)
% subplot(4,1,1);
% plot(t,theta1dot,'r');
% title('theta1dot(t)');
% subplot(4,1,2);
% plot(t,theta2dot,'r');
% title('theta2dot(t)');
% subplot(4,1,3);
% plot(t,theta4dot,'r');
% title('theta4dot(t)');
% subplot(4,1,4);
% plot(t,d3dot,'r');
% title('d3dot(t)');