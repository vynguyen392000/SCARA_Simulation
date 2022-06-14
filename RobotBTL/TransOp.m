function NewCoordinates = TransOp(Coordinates, HomogeneousMat)
Coordinates = [Coordinates; 1 1 1];
NewCoordinates = HomogeneousMat*Coordinates;
NewCoordinates = NewCoordinates(1:3,1:3);
end