function [theta1dot,theta2dot,d3dot,theta4dot] = Joint_Velocity(theta1,theta2,d3,theta4,vx,vy,vz,wx,wy,wz)
J = [-400*sin(theta1)-250*(sin(theta1+theta2)) -250*(sin(theta1+theta2)) 0 0;...
     400*cos(theta1)+250*(cos(theta1+theta2)) 250*(cos(theta1+theta2)) 0 0;...
     0 0 1 0;...
     0 0 0 0;...
     0 0 0 0;...
     1 1 0 1];
J_main = ((J'*J)^(-1))*J'
EE_matrix = [vx;vy;vz;wx;wy;wz];
%EE_matrix = [1;1;1;1;1;1];
Joint = J_main*EE_matrix;
theta1dot = Joint(1);
theta2dot = Joint(2);
d3dot = Joint(3);
theta4dot = Joint(4);
end

 
 