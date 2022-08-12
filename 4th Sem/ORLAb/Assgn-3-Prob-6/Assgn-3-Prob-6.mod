/*********************************************
 * OPL 20.1.0.0 Model
 * Author: hp
 * Creation Date: 20-Feb-2022 at 11:05:28 pm
 *********************************************/

 
dvar int+ x1;
dvar int+ y1;
dvar int+ y2;
dvar int+ z1;
dvar int+ z2;

     
 dexpr int z = 9000*x1+8400*y1+10500*y2+9600*z1+12000*z2;
 
 minimize z;
 
 subject to {
   x1<=200;
   12*y1+15*y2<=4500;
    12*z1+15*z2<=6000;
   x1+y1>=200;
   x1+y1+z1==400;
   y2+z2==500;
   
 }