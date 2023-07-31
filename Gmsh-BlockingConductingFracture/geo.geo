//+ Grid Size
lc = 0.01;
//+ Aperture Dim.
apr= 0.0001;
apt= 0.5+apr;
apb= 0.5-apr;
//+ Nodal Coordinates
Point(1)  = {0.0,0.5,0.0,lc};
Point(2)  = {1.0,0.5,0.0,lc};
Point(3)  = {1.0,1.0,0.0,lc};
Point(4)  = {0.0,0.0,0.0,lc};
Point(5)  = {1.0,0.0,0.0,lc};
Point(6)  = {1.0,0.9,0.0,lc};
Point(7)  = {0.0,0.7,0.0,lc};
Point(8)  = {0.2,0.7,0.0,lc};
Point(9)  = {0.8,0.9,0.0,lc};
Point(10) = {0.2,0.5,0.0,lc};
Point(11) = {0.5,apt,0.0,lc};
Point(12) = {0.8,0.5,0.0,lc};
Point(13) = {0.5,apb,0.0,lc};
Point(14) = {0.5,0.5,0.0,lc};
Point(15) = {0.0,1.0,0.0,lc};
//+ Lines


//+
Line(1) = {4, 5};
//+
Line(2) = {5, 2};
//+
Line(3) = {2, 6};
//+
Line(4) = {6, 3};
//+
Line(5) = {3, 15};
//+
Line(6) = {15, 7};
//+
Line(7) = {7, 1};
//+
Line(8) = {1, 4};
//+
Ellipse(9) = {10, 14, 14, 11};
//+
Ellipse(10) = {10, 14, 14, 13};
//+
Ellipse(11) = {11, 14, 14, 12};
//+
Ellipse(12) = {12, 14, 14, 13};
//+
//+
Curve Loop(1) = {6, 7, 8, 1, 2, 3, 4, 5};
//+
Curve Loop(2) = {11, 12, -10, 9};
//+
Plane Surface(1) = {1, 2};

Line(13) = {8, 9};

Line{13} In Surface{1};
//+
Physical Surface("PorousMedium") = {1};
//+
Physical Curve("ConductingFracture", 1) = {13};
