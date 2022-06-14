%% draw arrow 3d
drawArrow = @(x,y,z, color) quiver3(x(1), y(1), z(1), ...
                            x(2)-x(1),y(2)-y(1),z(2)-z(1), 1, ...
                            'Color', color, 'MaxHeadSize', 1);
 x =[ 1 2];
y = [3 4];
z = [5 6];         
drawArrow(x, y, z, 'r')