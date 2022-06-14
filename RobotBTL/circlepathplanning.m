function [q,v,gt,q_x,q_y,q_z,q_phi] = circlepathplanning(amax,v_max)
global x_end;
global y_end;
global z_end;
global phi_end;
global x_start;
global y_start;
global z_start;
global phi_start;
global Error;




center_x = (x_start + x_end)/2;
center_y = (y_start + y_end)/2;

BT = (x_end - x_start)^2 + (y_end - y_start)^2;
R = sqrt(BT)/2;
q_max = pi*R;

[n,delta_q,q,v,gt] = trajectory(q_max,amax,v_max);
if (Error == 1)
    q_x = 0;
    q_y = 0;
    q_z = 0;
    q_phi = 0;
    return
end
if( round((y_end - center_y),6) == 0)
    t0(1) = pi/2;
    t0(2) = -pi/2;
else
    t0(1) = atan((x_start - center_x)/(y_start - center_y));
    t0(2) = pi + t0(1);
end
for i = 1:2
    X = R*sin(t0(i)) + center_x;
    Y = R*cos(t0(i)) + center_y;
    A = round(X - x_start,6) ;   %x_start = 650
    B = round(Y - y_start,6) ;   %y_start= 0
    if ((A == 0)&&(B== 0))
        t = t0(i);
    end
end
   %q_x(1) = tmp_x;
   %q_y(1) = tmp_y; 
   % Qui hoach duong di hinh tron dua vao delta_q
   delta_q_z = (z_end - z_start);
   qz = z_start;
   dphi = linspace(phi_start,phi_end,n);
   for i = 1:n
       delta_t(i) = delta_q(i)/R;
       t = t - delta_t(i);
       q_x(i) = R*sin(t) + center_x ;
       q_y(i) = R*cos(t) + center_y ;
       q_z(i) = qz + delta_q(i)*(delta_q_z/q_max);
       qz = q_z(i);
       q_phi(i) = dphi(i);
    end
end