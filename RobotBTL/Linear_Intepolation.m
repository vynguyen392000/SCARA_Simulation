function [x,y,z] = Linear_Intepolation(p,alpha,beta)
x = p*cos(beta)*cos(alpha);
y = p*cos(beta)*sin(alpha);
z = p*sin(beta);
