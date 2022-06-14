function [x,y,z,yaw,theta1,theta2,theta4,d3,theta1dot,theta2dot,d3dot,theta4dot,p,v,a,t] = circular_pathplanning(xa,ya,za,yawa,xb,yb,zb,yawb,vm,am,mode)
cla;
if(mode)    
    %mode = 1: ve quy dao tiep xuc voi workspace
    %Toa do cua diem thu ba
    xc = 0%input('xc =');
    yc = 650%input('yc=');
    zc = za%input('zc=');
    [xi, yi, R]=Determine_circle([xa ya],[xb yb],[xc yc]);
    %Goc giua diem bat dau va tam duong tron
    alpha0 = atan((ya-yi)/(xa-xi));
    %Goc giua diem ket thuc va tam duong tron
    alpha1 = atan((yb-yi)/(xb-xi));
    if((alpha0>0)&&(xa<xb))
        delta = pi + alpha0 - alpha1;
        alpha0 = alpha0 - pi;
        direct = -1;
    elseif((alpha0<0)&&(xa>xb))
        delta = pi - alpha0 + alpha1;
        alpha1 = alpha1 - pi;
        direct = 1;
    elseif((alpha0<0)&&(xa<xb))
        delta = pi + alpha0 - alpha1;
        alpha0 = alpha0 + pi;
        direct = -1;
    elseif((alpha0>0)&&(xa>xb))
        delta = pi - alpha0 + alpha1;
        alpha1 = alpha1 + pi;
        direct = 1;
    end
    
elseif(mode == 0)
    %mode = 0 ve quy dao tong quat
    xc = 500;%input('xc =');
    yc = 500;%input('yc=');
    zc = 300;%input('zc=');
    [xi, yi, R]=Determine_circle([xa ya],[xb yb],[xc yc]);
    
    %Goc giua diem bat dau va tam duong tron
    alpha0 = atan((ya-yi)/(xa-xi));
    if ((ya-yi)/(xa-xi)>0)&&(ya<yi)
        alpha0 = alpha0 - pi;
    elseif ((ya-yi)/(xa-xi)<0)&&(ya>yi)
        alpha0 = alpha0 + pi;
    end
    %Goc giua diem ket thuc va tam duong tron
    alpha1 = atan((yb-yi)/(xb-xi));
    if ((yb-yi)/(xb-xi)>0)&&(yb<yi)
        alpha1 = alpha1 - pi;
    elseif ((yb-yi)/(xb-xi)<0)&&(yb>yi)
        alpha1 = alpha1 + pi;
    end
    %Goc giua diem thu ba va tam duong tron
    alpha2 = atan((yc-yi)/(xc-xi));
    if ((yc-yi)/(xc-xi)>0)&&(yc<yi)
        alpha2 = alpha2 - pi;
    elseif ((yc-yi)/(xc-xi)<0)&&(yc>yi)
        alpha2 = alpha2 + pi;
    end
    
    if alpha0<=alpha1
        delta = alpha1-alpha0;
        direct = 1;
    elseif alpha0>alpha1
        delta = alpha0-alpha1;
        direct = -1;
    end
    clock1 = 0;
    if (alpha0<alpha1)&&((alpha1<alpha2)||(alpha2<alpha0))
        clock1 = -1;
    end
    if (alpha0>alpha1)&&((alpha2<alpha1)||(alpha2>alpha0))
        clock1 = -1;
    end
    
    if (clock1 == -1)
        delta = 2*pi - delta;
        direct = -direct;
    end  
end
pm = delta*R
%% Trajectory
[p,v,a,t] = my_trajectory(pm,vm,am);
%% Path planning for end effector
x = xi + R*cos(alpha0+direct*p/R);
y = yi + R*sin(alpha0+direct*p/R);
z = za + p*(zb-za)/pm;
yaw = linspace(yawa*pi/180,yawb*pi/180,length(t));
vx = xi + R*cos(alpha0+direct*v/R);
vy = yi + R*sin(alpha0+direct*v/R);
vz = za + v*(zb-za)/pm;
%% Path planning for joints (Inverse)
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
% subplot(3,1,2);
% plot(t,v,'r');
% subplot(3,1,3);
% plot(t,a,'r');
% grid on

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
% grid on

% %% Plot joints
% figure(3)
% subplot(4,1,1);
% plot(t,theta1dot,'r');
% title('theta1(t)');
% subplot(4,1,2);
% plot(t,theta2dot,'r');
% title('theta2(t)');
% subplot(4,1,3);
% plot(t,theta4dot,'r');
% title('theta4(t)');
% subplot(4,1,4);
% plot(t,d3,'r');
% title('d3(t)');
% grid on

% %% Plot path 2D
% figure(4)
% plot(xa,ya,'r*');
% hold on
% plot(xb,yb,'r*');
% hold on
% plot(xi,yi,'r*');
% hold on
% plot(xc,yc,'r*');
% hold on
% plot(x,y,'b');
% grid on
% xlim([-700 700]);
% ylim([-700 700]);

%% Plot path 3D
% figure(5)
% plot3(xa,ya,za,'r*');
% hold on
% plot3(xb,yb,zb,'r*');
% hold on
% %plot3(xi,yi,zi,'r*');
% hold on
% plot3(x,y,z,'b');
% grid on