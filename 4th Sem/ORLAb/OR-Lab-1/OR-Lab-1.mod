/********************************************
 * OPL 20.1.0.0 Model
 * Author: hp
 * Creation Date: 02-Feb-2022 at 3:23:20 pm
 *********************************************/
//decision variables
dvar float+ x;
dvar float+ y;

//objective function
dexpr float z= 4*x+2*y;

//build the model
minimize z;
subject to {
  c1 : 5*x+15*y >= 50;
  c2 : 20*x+5*y >=40;
  c3 : 15*x+2*y<=60;
  
}
