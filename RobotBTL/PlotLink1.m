function  PlotLink1(HomogeneousMatA, d1)

OAx = HomogeneousMatA(1,4);
OAy = HomogeneousMatA(2,4);
OAz = HomogeneousMatA(3,4);

plot3([0 0], [0 0], [0 d1],'k','LineWidth',3);
plot3([0 OAx], [0 OAy], [d1 OAz],'c','LineWidth',3);


end