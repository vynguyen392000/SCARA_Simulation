function [xI,yI,R] = Determine_circle(A,B,C)
xA = A(1);
yA = A(2);
xB = B(1);
yB = B(2);
xC = C(1);
yC = C(2);

A = [2*xA 2*yA -1;
     2*xB 2*yB -1;
     2*xC 2*yC -1];
 
B = [xA^2 + yA^2; 
     xB^2 + yB^2; 
     xC^2 + yC^2];

X = (A^(-1))*B;
a = X(1);
b = X(2);
c = X(3);

xI = a;
yI = b;
R = sqrt(a^2 + b^2 -c);
       
    

%end

