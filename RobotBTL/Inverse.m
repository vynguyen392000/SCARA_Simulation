function [theta1, theta2, d3, theta4, check] = Inverse(xEI,yEI,zEI,yawI)
check = 1;
c2 = (xEI^2+yEI^2-250^2-400^2)/(2*250*400);
if(abs(c2)>1)
    check = 0;
    theta2 = 0;
    s2 = 0;
else
    s2 = sqrt(1-c2^2);
    theta2 = atan2(s2,c2);
end
s1 = ((400+250*c2)*yEI - 250*s2*xEI)/((250*s2)^2+(400+250*c2)^2);
c1 = ((400+250*c2)*xEI + 250*s2*yEI)/((250*s2)^2+(400+250*c2)^2);
if((abs(c1)>1)&&(abs(s1)>1))
    check = 0;
    theta1 = 0;
    theta4 = 0;
    d3 = 0;
else
    theta1 = atan2(s1,c1);
    theta4 = yawI*pi/180 - theta1 - theta2;
    d3 = zEI - 305;
end
if ((theta1<-62*pi/180)||(theta1>242*pi/180)||(theta2<-147.5*pi/180)||(theta2>147.5*pi/180)||(d3<-305)||(d3>0)||(theta4<-2*pi)||(theta4>2*pi)) 
            check = 0;
end
