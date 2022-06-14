function s1= plot_joint1(d1)
    [x, y, z] = sphere;
a = [0  0   d1  10];
s1=surf(x*a(1,4)+a(1,1),y*a(1,4)+a(1,2),z*a(1,4)+a(1,3),'EdgeColor','y');
end