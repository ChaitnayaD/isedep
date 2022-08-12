\ENCODING=ISO-8859-1
\Problem name: Configuration1

Minimize
 obj1: 9000 x1 + 8400 y1 + 10500 y2 + 9600 z1 + 12000 z2
Subject To
 c1: x1 <= 200
 c2: 12 y1 + 15 y2 <= 4500
 c3: 12 z1 + 15 z2 <= 6000
 c4: x1 + y1 >= 200
 c5: x1 + y1 + z1  = 400
 c6: y2 + z2  = 500
Bounds
      x1 >= 0
      y1 >= 0
      y2 >= 0
      z1 >= 0
      z2 >= 0
Generals
 x1  y1  y2  z1  z2 
End
