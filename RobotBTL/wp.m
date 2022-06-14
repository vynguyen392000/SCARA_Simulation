function s = wp(handles)
theta1_draw = linspace(-62*pi/180, 242*pi/180, 20);
theta2_draw = linspace(-147.5*pi/180, 147.5*pi/180, 20);
d3_draw = linspace(-305, 0, 400);
dem = 0;
x = zeros(1,400);
y = zeros(1,400);
    for i=1:20
        for j=1:20  
                dem = dem + 1;
                x(1,dem) = 250*cos(theta1_draw(i) + theta2_draw(j)) + 400*cos(theta1_draw(i));
                y(1,dem) = 250*sin(theta1_draw(i) + theta2_draw(j)) + 400*sin(theta1_draw(i));              
        end
    end
z = d3_draw+350;
[X,Y] = meshgrid(x,y);
[Y,Z] = meshgrid(y,z);
hold on;
s = surf(X,Y,Z,'FaceAlpha',0.1);
s.EdgeColor = 'none';
