function Plotcoordinates(UnitVecFrameN, HomogeneousMat)

    HomogeneousMat = HomogeneousMat(:,4);
    HomogeneousMat(4) = [];             %% Get Translation vector
    HomogeneousMat = HomogeneousMat';   %Transpose into 1 row, 3 col vector
 
    drawArrow = @(x,y,z, color) quiver3(x(1), y(1), z(1), ...
                            x(2)-x(1),y(2)-y(1),z(2)-z(1), 1, ...
                            'Color', color, 'MaxHeadSize', 2,'LineWidth', 2);   
    for i = 1 : 3 
        pts= [HomogeneousMat; UnitVecFrameN(:,i)'];
        x = pts(:,1);
        y = pts(:,2);                    
        z = pts(:,3);            
        switch i
            case 1
                drawArrow(x, y, z, 'r')
            case 2
                drawArrow(x, y, z,'g')  
            case 3
                drawArrow(x, y, z,'b')  
        end
    end
end