function [q,v,gt,q_x,q_y,q_z,q_phi] = linepathplanning(amax,v_max)
global x_end;
global y_end;
global z_end;
global phi_end;
global x_start;
global y_start;
global z_start;
global phi_start;
global Error;



T= 0.02; 

delta = [x_end - x_start; y_end - y_start; z_end - z_start];
D = delta(1)^2 + delta(2)^2 + delta(3)^2;
q_max= sqrt(D);
cosa_x = (dot(delta,[1;0;0]))/sqrt(D);
cosa_y = (dot(delta,[0;1;0]))/sqrt(D);
cosa_z = (dot(delta,[0;0;1]))/sqrt(D);

[n,delta_q,q,v,gt] = trajectory(q_max,amax,v_max);

if (Error == 1)
    q_x = 0;
    q_y = 0;
    q_z = 0;
    return
else

    qx = x_start;
    qz = z_start;
    qy = y_start;
    dphi = linspace(phi_start,phi_end,n);
    for i=1:n
        q_x(i) = qx + delta_q(i)*cosa_x;
        qx = q_x(i);

        q_y(i) = qy + delta_q(i)*cosa_y;
        qy = q_y(i);

        q_z(i) = qz + delta_q(i)*cosa_z;
        qz = q_z(i);
        q_phi(i) = dphi(i);
    end
end














