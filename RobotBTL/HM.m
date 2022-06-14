syms a1 d1 theta1 a2 theta2 a3 d3 theta3 d4 theta4

A0_1 = DH(0,pi/2,0,theta1);
A1_2 = DH(a2,0,0,theta2);
A2_3 = DH(a3,0,0,theta3);
A3_4 = DH(0,pi,d4,theta4);

T0_3 = simplify(A0_1*A1_2*A2_3);
% T0_3(1,3) = 0;
% T0_3(2,3) = 0;
% T0_3(3,2) = 0;
T0_3
% Pitch = atan2(-T0_3(3,1),sqrt((T0_3(3,2)^2)+(T0_3(3,3)^2)))
% Roll = atan2(T0_3(3,2)/cos(Pitch),T0_3(3,3)/cos(Pitch))
% Yaw = simplify(atan2(T0_3(2,1)/cos(Pitch),T0_3(1,1)/cos(Pitch)))
% m = simplify(cos(theta1)*sin(theta1)*cos(theta1+theta2)*sin(theta1+theta2))
a = simplify(cos(theta2)*cos(theta2+theta3)+sin(theta2)*sin(theta2+theta3))
b = simplify(a2*cos(theta2)+a3*cos(theta2+theta3))
