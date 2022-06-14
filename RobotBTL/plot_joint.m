function s1= plot_joint(HomogeneousMat)
    [x, y, z] = sphere;
a = [HomogeneousMat(1,4) HomogeneousMat(2, 4) ...
        HomogeneousMat(3,4) 10];
s1=surf(x*a(1,4)+a(1,1),y*a(1,4)+a(1,2),z*a(1,4)+a(1,3),'EdgeColor','y');
end