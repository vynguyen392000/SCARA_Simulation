function [p,v,a,t] = my_trajectory(pm,vm,am)

if(vm > sqrt(pm*am/2))
    vm = sqrt(pm*am/2);
end
T_sample = 0.5;

%% Phase 1
t1 = vm/(am);   %th?i ?i?m T1
t_1 = 0:T_sample:t1;
a1 = (am/t1)*t_1;
v1 = (am/(2*t1))*t_1.^2;
p1 = (am/(6*t1))*t_1.^3;

%% Phase 2
t2 = 2*t1;  %Th?i ?i?m T2
t_2 = t1:T_sample:2*t1;
a2 = 2*am-(am/t1)*t_2;
v2 = 2*am*t_2-(am/(2*t1))*t_2.^2-am*t1;
p2 = am*t_2.^2-(am/(6*t1))*t_2.^3-am*t1*t_2+am*t1^2/3;

%% Phase 3
t3 = (pm-2*am*t1^2)/vm;       %kho?ng th?i gian t? T2 ??n T3
t_3 = 2*t1:T_sample:t3+2*t1;
a3 = zeros(1,length(t_3));
v3 = vm*ones(1,length(t_3));
p3 = vm*t_3-am*t1^2;

%% Phase 4
T3 = t3 + 2*t1;     %Th?i ?i?m T3
d1 = -am/t1;
d0 = -d1*T3;
d2 = vm - d0*T3 - d1*T3^2/2;
P3 = vm*T3-am*t1^2;         %quãng ???ng ?i ???c t?i th?i ?i?m T3
d3 = P3 - d0*T3^2/2-d1*T3^3/6-d2*T3;
t_4 = T3:T_sample:T3+t1;
a4 = d0+d1*t_4;
v4 = d0*t_4+d1*t_4.^2/2+d2;
p4 = d0*t_4.^2/2+d1*t_4.^3/6+d2*t_4+d3;

%% Phase 5
T4 = T3 + t1;                           %Th?i ?i?m T4
T5 = T4 + t1;                           %Th?i ?i?m T5
e1 = am/t1;
e0 = -e1*T5;
V4 = d0*T4+d1*T4^2/2+d2;                %V?n t?c c?a v4 t?i T4
e2 = V4 - e0*T4-e1*T4^2/2;
P4 = d0*T4^2/2+d1*T4^3/6+d2*T4+d3;      %Quãng ???ng c?a p4 t?i T4
e3 = P4 - e0*T4^2/2-e1*T4^3/6-e2*T4;
t_5 = T4:T_sample:T5;
a5 = e0+e1*t_5;
v5 = e0*t_5+e1*t_5.^2/2+e2;
p5 = e0*t_5.^2/2+e1*t_5.^3/6+e2*t_5+e3;

%% Trajectory
p = [p1 p2 p3 p4 p5];
v = [v1 v2 v3 v4 v5];
a = [a1 a2 a3 a4 a5];
t = [t_1 t_2 t_3 t_4 t_5];


