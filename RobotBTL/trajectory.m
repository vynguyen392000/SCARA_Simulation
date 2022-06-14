function [n,delta_q,q,v,gt] = trajectory(q_max,amax,v_max)
%q_max la quang duong dich chuyen cua EF
%amax la gia toc toi da mong muon
%v_max la van toc toi da mong muon
%delta_q la vi phan quang duong dich chuyen cua EF
global TrajectoryMode;
global Error;

T = 0.02;
n1 = 0;
n2 = 0;
n3 = 0;
n4 = 0;
n5 = 0;

if (TrajectoryMode == 1) %Trapezoidal
    
    D1 = amax*q_max; 
    vmax_real = sqrt(D1);
    if (vmax_real < v_max)
        vmax = vmax_real;
    else
        vmax = v_max;
    end
    
    % Tim cac thoi diem t1,t2,t3
    t1 = vmax/amax;
    n1 = floor(t1/T);
    t2 = q_max/vmax;
    if floor(t2/T) > n1 
        n2 = floor(t2/T);
    else
        n2 = n1;
    end
    n3 = n1 + n2;
    
    
    % Quy hoach van toc hinh thang
    q(1) = 0;
    v(1) = 0;
    gt(1) = amax;
    for i = 1:n1
        q(i+1) = 0.5*amax*(i*T)^2;
        v(i+1) = amax*(i*T);
        gt(i+1) = amax;
        delta_q(i) = q(i+1) - q(i);
    end
    for i = (n1+1):n2
        q(i+1) = q(n1+1) + amax*(n1*T)*(i*T - n1*T);
        v(i+1) = vmax;
        gt(i+1) = 0;
        delta_q(i) = q(i+1) - q(i);
    end
    for i = (n2+1):n3
        q(i+1) = q(n2+1) - 0.5*amax*(i*T - n2*T)^2 + amax*(n1*T)*(i*T - n2*T);
        v(i+1) = vmax - amax*((i-n2)*T);
        gt(i+1) = -amax;
        delta_q(i) = q(i+1) - q(i);
    end
    n = n3;
else %S Curve
     %Qui hoach van toc hinh S curve
    t1 = v_max/amax;
    t2 = 2*t1;
    t3 = q_max/v_max;
    t4 = t3 +t1;
    t5 = t3+2*t1;
    if (t3<t2)
        Error = 1;
        delta_q = 0;
        n = 0;
        q = 0;
        v = 0;
        gt = 0;
        return
    else
        Error = 0;
        n1 = floor(t1/T);
        n2 = floor(t2/T);
        n3 = floor(t3/T);
        n4 = floor(t4/T);
        n5 = floor(t5/T);
        q(1) = 0;
        v(1) = 0;
        gt(1) = 0;
        k = (amax^2)/v_max;
        for i = 1:n1
            q(i+1) = (k*(i*T)^3)/6;
            v(i+1) = (q(i+1) - q(i))/T;
            gt(i+1) = (v(i+1)-v(i))/T;
            delta_q(i) = q(i+1) - q(i);
        end
        for i = n1+1:n2
            q(i+1) = q(n1+1) + (k*((T*n1)^2)*((i-n1)*T))/2 + (k*(n1*T)*(((i-n1)*T)^2))/2 -(k*(((i-n1)*T)^3))/6;
            v(i+1) = (q(i+1) - q(i))/T;
            gt(i+1) = (v(i+1)-v(i))/T;
            delta_q(i) = q(i+1) - q(i);
        end
        for i = n2+1:n3
            q(i+1) = q(n2+1) + v_max*(i-n2)*T;
            v(i+1) = (q(i+1) - q(i))/T;
            gt(i+1) = (v(i+1)-v(i))/T;
            delta_q(i) = q(i+1) - q(i);
        end
        for i = n3+1:n4
            q(i+1) = q(n3+1) + v_max*(i-n3)*T - (k*(((i-n3)*T)^3))/6;
            v(i+1) = (q(i+1) - q(i))/T;
            gt(i+1) = (v(i+1)-v(i))/T;
            delta_q(i) = q(i+1) - q(i);
        end
        for i = n4+1:n5
            q(i+1) = q(n4+1) + (v_max -(k*((n4-n3)*T)^2)/2)*(i-n4)*T - (k*(n4-n3)*T*((i-n4)*T)^2)/2 + (k*((i-n4)*T)^3)/6;
            v(i+1) = (q(i+1) - q(i))/T;
            gt(i+1) = (v(i+1)-v(i))/T;
            delta_q(i) = q(i+1) - q(i);
        end        
        n = n5;
    end
end