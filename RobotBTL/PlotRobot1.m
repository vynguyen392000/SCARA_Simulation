
function [xE, yE, zE, RE, PE, YE] = PlotRobot1(handles1,theta1, theta2, d3, theta4)

%%

d1 = 305; %Base height
a = [ 400 250 0 0   ];       %a2 = link length 2, %a3 = link length 3
alpha = [ 0    0    0     pi   ];
d = [ d1     0    d3    0   ];           
theta = [ theta1  theta2     0  theta4   ];

A0_1 = DH( a(1), alpha(1), d(1), theta(1) );
A1_2 = DH( a(2), alpha(2), d(2), theta(2) );
A2_3 = DH( a(3), alpha(3), d(3), theta(3) );
A3_4 = DH( a(4), alpha(4), d(4), theta(4) );

A0_2 = A0_1*A1_2;
A0_3 = A0_2*A2_3;
A0_4 = A0_3*A3_4;

xE = A0_4(1,4);
yE= A0_4(2,4);
zE = A0_4(3,4);

PE = atan2(-A0_4(3,1),sqrt((A0_4(3,2))^2+(A0_4(3,3))^2))*180/pi;
RE = atan2(A0_4(3,2)/cos(PE),A0_4(3,3)/cos(PE))*180/pi;
YE = atan2(A0_4(2,1),A0_4(1,1))*180/pi;

view(3)
hold on
grid on

%% Plot Coordinates
A0_0 = [0 0 0 0 ; 0 0 0 0 ; 0 0 0 0; 0 0 0 0 ]';
Tipbase = [50 0 0; 0 50 0; 0 0 50]'; %End of Unit vectors x, y, z of base
% %plot  Coor base
Plotcoordinates(Tipbase,A0_0);

TipCoordi0_1 = TransOp(Tipbase,A0_1); % Find End of Unit vectors x, y, z of Frame 1 to Base
Plotcoordinates(TipCoordi0_1,A0_1);
 
TipCoordi0_2 = TransOp(Tipbase,A0_2); % Find End of Unit vectors x, y, z of Frame 2 to Base
Plotcoordinates(TipCoordi0_2,A0_2);
 
TipCoordi0_3 = TransOp(Tipbase,A0_3); % Find End of Unit vectors x, y, z of Frame 3 to Base
Plotcoordinates(TipCoordi0_3,A0_3);
 
TipCoordi0_4 = TransOp(Tipbase,A0_4); % Find End of Unit vectors x, y, z of Frame 4 to Base
Plotcoordinates(TipCoordi0_4,A0_4);
%Plot Link and Joint 1
PlotLink1(A0_1, d1);
j1 = plot_joint1(d1);

% Plot Link and Joint 2
PlotLinkn(0,A0_1,A0_2);
j2 = plot_joint(A0_2);

% Plot Link and Joint 3 
PlotLinkn(1,A0_2,A0_3);
j3 = plot_joint(A0_3);

%  Plot Link 4 
PlotLinkn(0,A0_3,A0_4);
j4 = plot_joint(A0_4);

xlim([-1000 1000]);
ylim([-1000 1000]);
zlim([0 500]);
