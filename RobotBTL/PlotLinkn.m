function PlotLinkn(a,HomogeneousMatA, HomogeneousMatB)

OAx = HomogeneousMatA(1,4);
OAy = HomogeneousMatA(2,4);
OAz = HomogeneousMatA(3,4);

OBx = HomogeneousMatB(1,4);
OBy = HomogeneousMatB(2,4);
OBz = HomogeneousMatB(3,4);
if(a==1)
    plot3([OAx OBx], [OAy OBy], [OAz OBz],'k','LineWidth',3);
else
    plot3([OAx OBx], [OAy OBy], [OAz OBz],'c','LineWidth',3);
end