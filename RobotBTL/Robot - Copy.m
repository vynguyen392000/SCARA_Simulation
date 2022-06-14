%% Dung r ne lam tiep di
function PlotRobot(handles,theta1, theta2, d3, theta4)
%% I love you man
clear all
clc
clf
%%
 %var 

d1 = 34.65; %Base height
a = [ 40 25 0 0   ];       %a2 = length link 2, %a3 = length link 3
alpha = [ 0    pi    0     0   ];
d = [ d1     0    d3    30   ];           
theta = [ theta1  theta2     0  theta4   ];

A0_1 = DH( a(1), alpha(1), d(1), theta(1) );
A1_2 = DH( a(2), alpha(2), d(2), theta(2) );
A2_3 = DH( a(3), alpha(3), d(3), theta(3) );
A3_4 = DH( a(4), alpha(4), d(4), theta(4) );

A0_2 = A0_1*A1_2;
A0_3 = A0_2*A2_3;
A0_4 = A0_3*A3_4;

%% Plot links
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

PlotLink1(A0_1, d1);
j1 = plot_joint1(d1);
% Plot Link 2
PlotLinkn(A0_1,A0_2);
j2 = plot_joint(A0_2);
% % Plot Link 3 
PlotLinkn(A0_2,A0_3);
j3 = plot_joint(A0_3);
% % Plot Link 4 
PlotLinkn(A0_3,A0_4);
j4 = plot_joint(A0_4);

xlim([-1000 1000]);
ylim([-1000 1000]);
zlim([0 500]);
