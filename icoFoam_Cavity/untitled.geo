//+
lc = 0.01;
//+
Point(1) = {0, 0, 0, lc};
//+
Point(2) = {0.1, 0, 0, lc};
//+
Point(3) = {0.1, 0.1, 0, lc};
//+
Point(4) = {0, 0.1, 0, lc};
//+
Line(1) = {4, 3};
//+
Line(2) = {3, 2};
//+
Line(3) = {2, 1};
//+
Line(4) = {1, 4};
//+
Line Loop(5) = {1, 2, 3, 4};
//+
Plane Surface(6) = {5};
//+
Extrude {0, 0, 0.01} {
  Surface{6};
  Layers{2};
  Recombine;
}
//+
Physical Surface("fixedWalls") = {19, 27, 23};
//+
Physical Surface("movingWall") = {15};
//+
Physical Surface("frontAndBack") = {28, 6};
